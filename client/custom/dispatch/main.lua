





---@param payload table
local function showDefaultDispatch(payload)
    local title = tostring(payload and payload.title or i18n.t('notify.dispatch_title'))
    local message = tostring(payload and payload.message or i18n.t('notify.dispatch_hotwire'))
    local coords = payload and payload.coords or GetEntityCoords(cache.ped)
    local blip = payload and payload.blip or {}

    Notification(('%s: %s'):format(title, message), 'info')

    local dispatchBlip = AddBlipForCoord(coords.x + 0.0, coords.y + 0.0, coords.z + 0.0)
    SetBlipSprite(dispatchBlip, tonumber(blip.sprite) or 161)
    SetBlipScale(dispatchBlip, tonumber(blip.scale) or 1.2)
    SetBlipColour(dispatchBlip, tonumber(blip.colour) or 1)
    SetBlipFlashes(dispatchBlip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(title)
    EndTextCommandSetBlipName(dispatchBlip)

    SetTimeout(tonumber(blip.durationMs) or 20000, function()
        if DoesBlipExist(dispatchBlip) then
            RemoveBlip(dispatchBlip)
        end
    end)
end

RegisterNetEvent('vehiclekeys:client:dispatch:default', function(payload)
    showDefaultDispatch(payload or {})
end)






