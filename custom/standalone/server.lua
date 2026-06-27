





local framework = {}

function framework:registerUsableItem(_, _)
end

function framework:getPlayerFromId(source)
    return { source = source }
end

function framework:getIdentifier(source)
    for _, id in ipairs(GetPlayerIdentifiers(source)) do
        if id and id ~= '' then
            return id
        end
    end
    return ('standalone_%s'):format(source)
end

function framework:getJobName(_)
    return 'unemployed'
end

function framework:removeItem(source, item, count, metadata, slot)
    if Config.Inventory ~= 'ox' then
        return false
    end

    return exports.ox_inventory:RemoveItem(source, item, count or 1, metadata, slot)
end

function framework:addItem(source, item, count, slot, info)
    if Config.Inventory ~= 'ox' then
        return false
    end

    return exports.ox_inventory:AddItem(source, item, count or 1, info, slot)
end

function framework:getInventory(source)
    if Config.Inventory ~= 'ox' then
        return {}
    end

    return exports.ox_inventory:GetInventoryItems(source) or {}
end

function framework:getItem(source, item)
    if Config.Inventory ~= 'ox' then
        return { count = 0 }
    end

    return {
        count = exports.ox_inventory:Search(source, 'count', item) or 0
    }
end

function framework:playerIsAdmin(source)
    return IsPlayerAceAllowed(source, 'command')
end

function framework:getPlayers()
    return GetPlayers()
end

function framework:getSourceFromIdentifier(_)
    return nil
end

function framework:getUserName(source)
    return ('ID %s'):format(source), ''
end

function framework:getAdminVehicleStats(_)
    return {
        total = 0,
        inGarage = 0,
        outside = 0
    }
end

function framework:getAdminVehiclesPage(_)
    return {
        vehicles = {},
        total = 0
    }
end

function framework:getAdminVehicleByPlate(_)
    return nil
end

function framework:getRecoveryOwnedVehicles(_)
    return {}
end

function framework:isPlateTaken(_)
    return false
end

function framework:getTakenPlates(_)
    return {}
end

function framework:updateVehiclePlate(_, _)
    return false
end

return framework






