





local framework = {}

function framework:getPlayerData()
    return {}
end

function framework:getIdentifier()
    return ('standalone_%s'):format(GetPlayerServerId(PlayerId()))
end

function framework:getJobName()
    return 'unemployed'
end

function framework:getPlayers()
    return GetActivePlayers()
end

return framework






