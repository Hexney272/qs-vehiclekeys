





local framework = {}
local QBCore = exports['qb-core']:GetCoreObject()

local function extractModelLabel(modsJson)
    if type(modsJson) ~= 'string' or modsJson == '' then
        return 'UNKNOWN'
    end

    local ok, data = pcall(json.decode, modsJson)
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
    QBCore.Functions.CreateUseableItem(item, cb)
end

function framework:getPlayerFromId(source)
    return QBCore.Functions.GetPlayer(source)
end

function framework:getIdentifier(source)
    local player = self:getPlayerFromId(source)
    return player and player.PlayerData and player.PlayerData.citizenid or nil
end

function framework:getJobName(source)
    local player = self:getPlayerFromId(source)
    if not player then
        return 'unemployed'
    end

    local job = player.PlayerData and player.PlayerData.job or nil
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

    player.Functions.RemoveItem(item, amount, slot)
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

    return player.Functions.AddItem(item, amount, slot, info)
end

function framework:getInventory(source)
    if Config.Inventory == 'ox' then
        return exports.ox_inventory:GetInventoryItems(source) or {}
    end

    local player = self:getPlayerFromId(source)
    if not player then
        return {}
    end

    return player.PlayerData.items or {}
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

    local data = player.Functions.GetItemByName(item)
    if not data then
        return { count = 0 }
    end

    data.count = data.amount or 0
    return data
end

function framework:playerIsAdmin(source)
    return QBCore.Functions.HasPermission(source, 'admin')
        or QBCore.Functions.HasPermission(source, 'god')
        or IsPlayerAceAllowed(source, 'command')
end

function framework:getPlayers()
    return QBCore.Functions.GetPlayers()
end

function framework:getSourceFromIdentifier(identifier)
    if type(identifier) ~= 'string' or identifier == '' then
        return nil
    end

    if QBCore.Functions.GetPlayerByCitizenId then
        local player = QBCore.Functions.GetPlayerByCitizenId(identifier)
        if player and player.PlayerData and player.PlayerData.source then
            return player.PlayerData.source
        end
    end

    for _, playerSource in pairs(QBCore.Functions.GetPlayers() or {}) do
        local player = self:getPlayerFromId(tonumber(playerSource))
        local citizenid = player and player.PlayerData and player.PlayerData.citizenid or nil
        if citizenid == identifier then
            return tonumber(playerSource)
        end
    end

    return nil
end

function framework:getUserName(source)
    local player = self:getPlayerFromId(source)
    if not player or not player.PlayerData or not player.PlayerData.charinfo then
        return ('ID %s'):format(source), ''
    end

    local charInfo = player.PlayerData.charinfo
    local firstName = tostring(charInfo.firstname or ('ID %s'):format(source))
    local lastName = tostring(charInfo.lastname or '')
    return firstName, lastName
end

local ADMIN_VEHICLE_SELECT = [[
    SELECT
        pv.plate,
        pv.citizenid,
        pv.state,
        pv.mods,
        JSON_UNQUOTE(JSON_EXTRACT(p.charinfo, '$.firstname')) AS firstname,
        JSON_UNQUOTE(JSON_EXTRACT(p.charinfo, '$.lastname')) AS lastname
    FROM player_vehicles pv
    LEFT JOIN players p ON p.citizenid = pv.citizenid
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
        clauses[#clauses + 1] = '(pv.plate LIKE ? OR pv.citizenid LIKE ? OR JSON_UNQUOTE(JSON_EXTRACT(p.charinfo, \'$.firstname\')) LIKE ? OR JSON_UNQUOTE(JSON_EXTRACT(p.charinfo, \'$.lastname\')) LIKE ?)'
        params[#params + 1] = pattern
        params[#params + 1] = pattern
        params[#params + 1] = pattern
        params[#params + 1] = pattern
    end

    if applyFilter then
        if filter == 'in' then
            clauses[#clauses + 1] = '(pv.state IS NULL OR pv.state != 0)'
        elseif filter == 'out' then
            clauses[#clauses + 1] = 'pv.state = 0'
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
        ownerName = tostring(row.citizenid or '')
    end

    return {
        plate = plate,
        ownerIdentifier = tostring(row.citizenid or ''),
        ownerName = ownerName,
        model = extractModelLabel(row.mods),
        isOut = tonumber(row.state) == 0
    }
end

function framework:getAdminVehicleStats(search)
    local whereClause, params = buildAdminVehicleWhere(search, nil, false)
    local query = ([[
        SELECT
            COUNT(*) AS total,
            SUM(CASE WHEN pv.state = 0 THEN 1 ELSE 0 END) AS outside_count,
            SUM(CASE WHEN pv.state IS NULL OR pv.state != 0 THEN 1 ELSE 0 END) AS in_garage_count
        FROM player_vehicles pv
        LEFT JOIN players p ON p.citizenid = pv.citizenid
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
        local countQuery = ('SELECT COUNT(*) AS total FROM player_vehicles pv LEFT JOIN players p ON p.citizenid = pv.citizenid%s'):format(whereClause)
        local countResult = MySQL.query.await(countQuery, whereParams) or {}
        total = tonumber(countResult[1] and countResult[1].total) or 0
    end

    local pageParams = {}
    for i = 1, #whereParams do
        pageParams[i] = whereParams[i]
    end
    pageParams[#pageParams + 1] = limit
    pageParams[#pageParams + 1] = offset

    local pageQuery = ('%s%s ORDER BY pv.plate ASC LIMIT ? OFFSET ?'):format(ADMIN_VEHICLE_SELECT, whereClause)
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

    local query = ('%s WHERE pv.plate = ? LIMIT 1'):format(ADMIN_VEHICLE_SELECT)
    local rows = MySQL.query.await(query, { normalizedPlate }) or {}
    return mapAdminVehicleRow(rows[1])
end

function framework:getRecoveryOwnedVehicles(source)
    local identifier = self:getIdentifier(source)
    if type(identifier) ~= 'string' or identifier == '' then
        return {}
    end

    local rows = MySQL.query.await([[
        SELECT plate, mods
        FROM player_vehicles
        WHERE citizenid = ?
    ]], { identifier }) or {}

    local vehicles = {}
    for i = 1, #rows do
        local row = rows[i]
        if type(row) ~= 'table' then
            goto continue
        end

        local plate = Utils.NormalizePlate(row.plate or '')
        if plate ~= '' then
            local model = extractModelLabel(row.mods)
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
    local result = MySQL.query.await('SELECT plate FROM player_vehicles WHERE plate = ? LIMIT 1', {
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

    local query = ('SELECT plate FROM player_vehicles WHERE plate IN (%s)'):format(placeholders)
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
        SELECT plate, mods
        FROM player_vehicles
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
    local vehicleData = row.mods and json.decode(row.mods) or {}
    if type(vehicleData) ~= 'table' then
        vehicleData = {}
    end

    vehicleData.plate = normalizedNew

    local affected = MySQL.update.await('UPDATE player_vehicles SET plate = ?, mods = ? WHERE plate = ?', {
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






