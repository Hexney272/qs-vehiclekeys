





local framework = {}
local ESX = exports['es_extended']:getSharedObject()
local PlayerData = {}

CreateThread(function()
    PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded', function(playerData)
    PlayerData = playerData
end)

RegisterNetEvent('esx:setJob', function(jobData)
    PlayerData.job = jobData
end)

function framework:getPlayerData()
    return ESX.GetPlayerData()
end

function framework:getIdentifier()
    return PlayerData?.identifier
end

function framework:getJobName()
    return PlayerData?.job?.name or 'unemployed'
end

function framework:getPlayers()
    return ESX.Game.GetPlayers()
end

return framework






