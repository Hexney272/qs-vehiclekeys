





local framework = {}
local ESX = exports['es_extended']:getSharedObject()

local function extractModelLabel(vehicleJson)
    if type(vehicleJson) ~= 'string' or vehicleJson == '' then
        return 'UNKNOWN'
    end

    local ok, data = pcall(json.decode, vehicleJson)
    if not ok or type(data) ~= 'table' then
        return 'UNKNOWN'
    end

    local modelName = data.modelname or data.name or data.model
    if type(modelName) == 'string' and modelName ~= '' then
        if Utils.IsVehicleHash(modelName) then
            return Utils.ResolveVehicleModel(tonumber(modelName))
        end

        return Utils.NormalizeModel(modelName)
    end

    if type(modelName) == 'number' then
        return Utils.ResolveVehicleModel(modelName)
    end

    return 'UNKNOWN'
end

function framework:registerUsableItem(item, cb)
    ESX.RegisterUsableItem(item, cb)
end

function framework:getPlayerFromId(source)
    return ESX.GetPlayerFromId(source)
end

function framework:getIdentifier(source)
    local player = self:getPlayerFromId(source)
    return player and player.identifier or nil
end

function framework:getJobName(source)
    local player = self:getPlayerFromId(source)
    if not player then
        return 'unemployed'
    end

    local job = player.getJob and player.getJob() or nil
    return job and job.name or 'unemployed'
end

function framework:removeItem(source, item, count, metadata, slot)
    local amount = count or 1
    if Config.Inventory == 'ox' then
        return exports.ox_inventory:RemoveItem(source, item, amount, metadata, slot)
    end

    local player = self:getPlayerFromId(source)
    if not player then
        return false
    end

    player.removeInventoryItem(item, amount)
    return true
end

function framework:addItem(source, item, count, slot, info)
    local amount = count or 1
    if Config.Inventory == 'ox' then
        return exports.ox_inventory:AddItem(source, item, amount, info, slot)
    end

    local player = self:getPlayerFromId(source)
    if not player then
        return false
    end

    if player.canCarryItem and not player.canCarryItem(item, amount) then
        return false
    end

    player.addInventoryItem(item, amount, info, slot)
    return true
end

function framework:getInventory(source)
    if Config.Inventory == 'ox' then
        return exports.ox_inventory:GetInventoryItems(source) or {}
    end

    local player = self:getPlayerFromId(source)
    if not player then
        return {}
    end

    return player.getInventory() or {}
end

function framework:getItem(source, item)
    if Config.Inventory == 'ox' then
        return {
            count = exports.ox_inventory:Search(source, 'count', item) or 0
        }
    end

    local player = self:getPlayerFromId(source)
    if not player then
        return { count = 0 }
    end

    local data = player.getInventoryItem(item)
    if not data then
        return { count = 0 }
    end

    return data
end

function framework:playerIsAdmin(source)
    local player = self:getPlayerFromId(source)
    if not player then
        return false
    end
    local group = player.getGroup()
    return group == 'admin' or group == 'superadmin'
end

function framework:getPlayers()
    return ESX.GetPlayers()
end

function framework:getSourceFromIdentifier(identifier)
    if type(identifier) ~= 'string' or identifier == '' then
        return nil
    end

    if ESX.GetPlayerFromIdentifier then
        local player = ESX.GetPlayerFromIdentifier(identifier)
        if player and player.source then
            return player.source
        end
    end

    for _, playerSource in pairs(ESX.GetPlayers() or {}) do
        local player = self:getPlayerFromId(tonumber(playerSource))
        if player and player.identifier == identifier then
            return tonumber(playerSource)
        end
    end

    return nil
end

function framework:getUserName(source)
    local player = self:getPlayerFromId(source)
    if not player then
        return ('ID %s'):format(source), ''
    end

    local fullName = player.getName and player.getName() or ('ID %s'):format(source)
    local firstName, lastName = fullName:match('^(%S+)%s+(.+)$')
    if not firstName then
        firstName = fullName
        lastName = ''
    end

    return firstName, lastName
end

local ADMIN_VEHICLE_SELECT = [[
    SELECT
        ov.plate,
        ov.owner,
        ov.stored,
        ov.vehicle,
        u.firstname,
        u.lastname
    FROM owned_vehicles ov
    LEFT JOIN users u ON u.identifier = ov.owner
]]

---@param search string?
---@param filter string?
---@param applyFilter boolean?
---@return string, table
local function buildAdminVehicleWhere(search, filter, applyFilter)
    local clauses = {}
    local params = {}
    local trimmedSearch = Utils.Trim(search or '')

    if trimmedSearch ~= '' then
        local pattern = ('%%%s%%'):format(trimmedSearch)
        clauses[#clauses + 1] = '(ov.plate LIKE ? OR ov.owner LIKE ? OR u.firstname LIKE ? OR u.lastname LIKE ?)'
        params[#params + 1] = pattern
        params[#params + 1] = pattern
        params[#params + 1] = pattern
        params[#params + 1] = pattern
    end

    if applyFilter then
        if filter == 'in' then
            clauses[#clauses + 1] = '(ov.stored IS NULL OR ov.stored != 0)'
        elseif filter == 'out' then
            clauses[#clauses + 1] = 'ov.stored = 0'
        end
    end

    if #clauses == 0 then
        return '', params
    end

    return ' WHERE ' .. table.concat(clauses, ' AND '), params
end

---@param row table
---@return table?
local function mapAdminVehicleRow(row)
    if type(row) ~= 'table' then
        return nil
    end

    local plate = Utils.NormalizePlate(row.plate or '')
    if plate == '' then
        return nil
    end

    local firstName = row.firstname and tostring(row.firstname) or ''
    local lastName = row.lastname and tostring(row.lastname) or ''
    local ownerName = (firstName .. ' ' .. lastName):gsub('^%s+', ''):gsub('%s+$', '')
    if ownerName == '' then
        ownerName = tostring(row.owner or '')
    end

    return {
        plate = plate,
        ownerIdentifier = tostring(row.owner or ''),
        ownerName = ownerName,
        model = extractModelLabel(row.vehicle),
        isOut = tonumber(row.stored) == 0
    }
end

function framework:getAdminVehicleStats(search)
    local whereClause, params = buildAdminVehicleWhere(search, nil, false)
    local query = ([[
        SELECT
            COUNT(*) AS total,
            SUM(CASE WHEN ov.stored = 0 THEN 1 ELSE 0 END) AS outside_count,
            SUM(CASE WHEN ov.stored IS NULL OR ov.stored != 0 THEN 1 ELSE 0 END) AS in_garage_count
        FROM owned_vehicles ov
        LEFT JOIN users u ON u.identifier = ov.owner
        %s
    ]]):format(whereClause)

    local result = MySQL.query.await(query, params) or {}
    local row = result[1] or {}

    return {
        total = tonumber(row.total) or 0,
        inGarage = tonumber(row.in_garage_count) or 0,
        outside = tonumber(row.outside_count) or 0
    }
end

function framework:getAdminVehiclesPage(params)
    params = params or {}
    local search = params.search or ''
    local filter = params.filter or 'all'
    local offset = math.max(tonumber(params.offset) or 0, 0)
    local limit = math.max(tonumber(params.limit) or 30, 1)

    local whereClause, whereParams = buildAdminVehicleWhere(search, filter, true)
    local total = 0

    if offset == 0 then
        local countQuery = ('SELECT COUNT(*) AS total FROM owned_vehicles ov LEFT JOIN users u ON u.identifier = ov.owner%s'):format(whereClause)
        local countResult = MySQL.query.await(countQuery, whereParams) or {}
        total = tonumber(countResult[1] and countResult[1].total) or 0
    end

    local pageParams = {}
    for i = 1, #whereParams do
        pageParams[i] = whereParams[i]
    end
    pageParams[#pageParams + 1] = limit
    pageParams[#pageParams + 1] = offset

    local pageQuery = ('%s%s ORDER BY ov.plate ASC LIMIT ? OFFSET ?'):format(ADMIN_VEHICLE_SELECT, whereClause)
    local rows = MySQL.query.await(pageQuery, pageParams) or {}
    local vehicles = {}

    for i = 1, #rows do
        local vehicle = mapAdminVehicleRow(rows[i])
        if vehicle then
            vehicles[#vehicles + 1] = vehicle
        end
    end

    return {
        vehicles = vehicles,
        total = total
    }
end

function framework:getAdminVehicleByPlate(plate)
    local normalizedPlate = Utils.NormalizePlate(plate)
    if normalizedPlate == '' then
        return nil
    end

    local query = ('%s WHERE ov.plate = ? LIMIT 1'):format(ADMIN_VEHICLE_SELECT)
    local rows = MySQL.query.await(query, { normalizedPlate }) or {}
    return mapAdminVehicleRow(rows[1])
end

function framework:getRecoveryOwnedVehicles(source)
    local identifier = self:getIdentifier(source)
    if type(identifier) ~= 'string' or identifier == '' then
        return {}
    end

    local rows = MySQL.query.await([[
        SELECT plate, vehicle
        FROM owned_vehicles
        WHERE owner = ?
    ]], { identifier }) or {}

    local vehicles = {}
    for i = 1, #rows do
        local row = rows[i]
        if type(row) ~= 'table' then
            goto continue
        end

        local plate = Utils.NormalizePlate(row.plate or '')
        if plate ~= '' then
            local model = extractModelLabel(row.vehicle)
            vehicles[#vehicles + 1] = {
                plate = plate,
                model = model,
                label = ('%s [%s]'):format(model, plate)
            }
        end

        ::continue::
    end

    return vehicles
end

function framework:isPlateTaken(plate)
    local result = MySQL.query.await('SELECT plate FROM owned_vehicles WHERE plate = ? LIMIT 1', {
        plate
    })

    return result and result[1] ~= nil
end

function framework:getTakenPlates(plates)
    if not plates or #plates == 0 then
        return {}
    end

    local placeholderParts = {}
    for i = 1, #plates do
        placeholderParts[i] = '?'
    end
    local placeholders = table.concat(placeholderParts, ',')

    local query = ('SELECT plate FROM owned_vehicles WHERE plate IN (%s)'):format(placeholders)
    local result = MySQL.query.await(query, plates) or {}
    local taken = {}

    for i = 1, #result do
        taken[result[i].plate] = true
    end

    return taken
end

---@param plate string
---@return table|nil
local function findOwnedVehicleByPlate(plate)
    local normalized = Utils.NormalizePlate(plate)
    if normalized == '' then
        return nil
    end

    local compact = normalized:gsub('%s+', '')

    return MySQL.single.await([[
        SELECT plate, vehicle
        FROM owned_vehicles
        WHERE plate = ?
           OR UPPER(TRIM(plate)) = ?
           OR REPLACE(UPPER(TRIM(plate)), ' ', '') = ?
        LIMIT 1
    ]], { normalized, normalized, compact })
end

function framework:updateVehiclePlate(oldPlate, newPlate)
    local normalizedOld = Utils.NormalizePlate(oldPlate)
    local normalizedNew = Utils.NormalizePlate(newPlate)

    if normalizedOld == '' or normalizedNew == '' or normalizedOld == normalizedNew then
        return false
    end

    local row = findOwnedVehicleByPlate(normalizedOld)
    if not row then
        return false
    end

    local dbPlate = row.plate
    local vehicleData = row.vehicle and json.decode(row.vehicle) or {}
    if type(vehicleData) ~= 'table' then
        vehicleData = {}
    end

    vehicleData.plate = normalizedNew

    local affected = MySQL.update.await('UPDATE owned_vehicles SET plate = ?, vehicle = ? WHERE plate = ?', {
        normalizedNew,
        json.encode(vehicleData),
        dbPlate
    })

    if (affected or 0) < 1 then
        return false
    end

    return true, dbPlate
end

return framework






