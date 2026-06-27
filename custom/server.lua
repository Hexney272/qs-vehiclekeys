





local success, result = pcall(lib.load, ('custom.%s.server'):format(Config.Framework))

if not success then
    local fallbackSuccess, fallbackResult = pcall(lib.load, 'custom.standalone.server')
    if not fallbackSuccess then
        error(result, 0)
    end
    result = fallbackResult
end

_G.sfr = result
_G.sv_inventory = _G.sv_inventory or {}

---@param src number
---@param msg string
---@param kind 'info'|'error'|'success'
function Notification(src, msg, kind)
    TriggerClientEvent('vehiclekeys:notification', src, msg, kind)
end

Info('Framework server loaded:', Config.Framework)






