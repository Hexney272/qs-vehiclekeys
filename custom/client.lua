





local success, result = pcall(lib.load, ('custom.%s.client'):format(Config.Framework))

if not success then
    local fallbackSuccess, fallbackResult = pcall(lib.load, 'custom.standalone.client')
    if not fallbackSuccess then
        error(result, 0)
    end
    result = fallbackResult
end

_G.cfr = result

---@param msg string
---@param kind 'info'|'error'|'success'
function Notification(msg, kind)
    if kind == 'error' then
        lib.notify({ title = 'Vehicle Keys', description = msg, type = 'error' })
    elseif kind == 'success' then
        lib.notify({ title = 'Vehicle Keys', description = msg, type = 'success' })
    else
        lib.notify({ title = 'Vehicle Keys', description = msg, type = 'info' })
    end
end

RegisterNetEvent('vehiclekeys:notification', function(msg, kind)
    Notification(msg, kind)
end)

local texts = {}
if GetResourceState('qs-textui') == 'started' then
    function DrawText3D(x, y, z, text, id, key)
        local _id = id
        if not texts[_id] then
            CreateThread(function()
                texts[_id] = 5
                while texts[_id] > 0 do
                    texts[_id] = texts[_id] - 1
                    Wait(0)
                end
                texts[_id] = nil
                exports['qs-textui']:DeleteDrawText3D(id)
                Debug('Deleted text', id)
            end)
            TriggerEvent('textui:DrawText3D', x, y, z, text, id, key)
        end
        texts[_id] = 5
    end
else
    function DrawText3D(x, y, z, text)
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(true)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry('STRING')
        SetTextCentre(true)
        AddTextComponentString(text)
        SetDrawOrigin(x, y, z, 0)
        DrawText(0.0, 0.0)
        local factor = text:len() / 370
        DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
        ClearDrawOrigin()
    end
end

local function openVehiclekeysInteractionMenu()
    local options = {
        {
            icon = 'FaKey',
            title = i18n.t('commands.usekey'),
            onSelect = function()
                interaction:close()
                UseCommandKey()
            end
        },
        {
            icon = 'FaPeopleArrows',
            title = i18n.t('commands.key_transfer'),
            onSelect = function()
                interaction:close()
                ExecuteCommand('keytransfer')
            end
        }
    }

    local vehicle = GetVehiclePedIsIn(cache.ped, false)
    if Config.Anchor and Config.Anchor.Enabled and vehicle ~= 0 and IsPedInAnyBoat(cache.ped) and GetPedInVehicleSeat(vehicle, -1) == cache.ped then
        options[#options + 1] = {
            icon = 'FaAnchor',
            title = i18n.t('anchor.menu_toggle'),
            onSelect = function()
                interaction:close()
                ToggleBoatAnchor()
            end
        }
    end

    interaction:open(options)
end

RegisterCommand('vehiclekeys_interaction', function()
    local vehicle = GetVehiclePedIsIn(cache.ped, false)
    if not vehicle or vehicle == 0 then
        return Notification(i18n.t('notify.no_vehicle'), 'error')
    end

    openVehiclekeysInteractionMenu()
end, false)

RegisterKeyMapping('vehiclekeys_interaction', 'VehicleKeys Interaction Menu', 'keyboard', 'F4')


Info('Framework client loaded:', Config.Framework)






