





if Config.Inventory ~= 'ox' then
    return
end

exports('useKey', function(data)
    local metadata = data and data.metadata
    if not metadata then
        return
    end
    UseCommandKey(metadata.plate, metadata.model)
end)

exports('useLockpick', function()
    UseLockpick(false)
end)

exports('useAdvancedLockpick', function()
    UseLockpick(true)
end)

exports('usePlate', function(data)
    local metadata = data and data.metadata
    if not metadata or not metadata.plate then
        return
    end

    UsePlate(metadata.plate)
end)

exports('useGps', function()
    UseGpsTrackerItem()
end)

exports('useTracker', function()
    OpenTrackerMenu()
end)






