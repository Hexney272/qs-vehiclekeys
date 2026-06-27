





---@class DispatchPayload
---@field title string
---@field message string
---@field coords vector3

---@return string[]
local function getPoliceJobList()
    local jobs = {}
    if type(Config.PoliceJobs) ~= 'table' then
        return jobs
    end

    for key, value in pairs(Config.PoliceJobs) do
        if type(key) == 'number' and type(value) == 'string' and value ~= '' then
            jobs[#jobs + 1] = value
        elseif value == true and type(key) == 'string' and key ~= '' then
            jobs[#jobs + 1] = key
        end
    end

    return jobs
end

---@param jobName string
---@param policeJobs string[]
---@return boolean
local function isPoliceJob(jobName, policeJobs)
    if type(jobName) ~= 'string' or jobName == '' then
        return false
    end

    for i = 1, #policeJobs do
        if policeJobs[i] == jobName then
            return true
        end
    end

    return false
end

---@param coords any
---@return vector3?
local function normalizeCoords(coords)
    if type(coords) == 'vector3' then
        return vec3(coords.x + 0.0, coords.y + 0.0, coords.z + 0.0)
    end

    if type(coords) == 'table' and coords.x and coords.y and coords.z then
        return vec3((coords.x or 0.0) + 0.0, (coords.y or 0.0) + 0.0, (coords.z or 0.0) + 0.0)
    end

    return nil
end

---@param data table
---@return DispatchPayload?
local function normalizePayload(data)
    if type(data) ~= 'table' then
        return nil
    end

    local coords = normalizeCoords(data.coords)
    if not coords then
        return nil
    end

    return {
        title = tostring(data.title or 'Vehicle Keys'),
        message = tostring(data.message or 'Suspicious vehicle activity reported'),
        coords = coords
    }
end

---@param payload DispatchPayload
local function dispatchDefault(payload)
    local settings = Config.DispatchSettings and Config.DispatchSettings.Default or {}
    local blip = settings.Blip or {}
    local policeJobs = getPoliceJobList()

    for _, playerSource in pairs(sfr:getPlayers() or {}) do
        local sourceId = tonumber(playerSource)
        if sourceId and isPoliceJob(sfr:getJobName(sourceId), policeJobs) then
            TriggerClientEvent('vehiclekeys:client:dispatch:default', sourceId, {
                title = payload.title,
                message = payload.message,
                coords = payload.coords,
                blip = {
                    sprite = tonumber(blip.Sprite) or 161,
                    colour = tonumber(blip.Colour) or 1,
                    scale = tonumber(blip.Scale) or 1.2,
                    durationMs = tonumber(blip.DurationMs) or 20000
                }
            })
        end
    end
end

---@param payload DispatchPayload
local function dispatchQsDispatch(payload)
    local settings = Config.DispatchSettings and Config.DispatchSettings.QsDispatch or {}
    local blip = settings.Blip or {}
    local policeJobs = getPoliceJobList()

    TriggerEvent('qs-dispatch:server:CreateDispatchCall', {
        job = policeJobs,
        callLocation = payload.coords,
        callCode = {
            code = tostring(settings.Code or '10-42'),
            snippet = tostring(settings.Snippet or 'Vehicle Theft')
        },
        message = payload.message,
        flashes = false,
        image = nil,
        blip = {
            sprite = tonumber(blip.Sprite) or 490,
            scale = tonumber(blip.Scale) or 1.5,
            colour = tonumber(blip.Colour) or 1,
            flashes = false,
            text = payload.title,
            time = tonumber(blip.DurationMs) or (3 * 60 * 1000)
        },
        otherData = {
            {
                text = payload.title,
                icon = 'fas fa-car-side'
            }
        }
    })
end

---@param payload DispatchPayload
local function dispatchQsSmartphone(payload)
    TriggerEvent('vehiclekeys:server:phoneDispatch', payload.coords, payload.message)
end

---@param payload DispatchPayload
local function dispatchOrigen(payload)
    local settings = Config.DispatchSettings and Config.DispatchSettings.Origen or {}
    local policeJobs = getPoliceJobList()

    TriggerEvent('SendAlert:police', {
        coords = payload.coords,
        title = payload.title,
        type = tostring(settings.Type or 'GENERAL'),
        message = payload.message,
        job = policeJobs
    })
end

---@param data table
function DispatchVehicleKeys(data)
    local payload = normalizePayload(data)
    if not payload then
        return
    end

    local provider = tostring(Config.Dispatch or 'default')
    if provider == 'qs-dispatch' then
        return dispatchQsDispatch(payload)
    end

    if provider == 'qs-smartphone' then
        return dispatchQsSmartphone(payload)
    end

    if provider == 'origen' then
        return dispatchOrigen(payload)
    end

    return dispatchDefault(payload)
end






