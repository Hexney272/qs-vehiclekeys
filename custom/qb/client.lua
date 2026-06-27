





local framework = {}
local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}

CreateThread(function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(jobData)
    PlayerData.job = jobData
end)

function framework:getPlayerData()
    return QBCore.Functions.GetPlayerData()
end

function framework:getIdentifier()
    return PlayerData?.citizenid
end

function framework:getJobName()
    return PlayerData?.job?.name or 'unemployed'
end

function framework:getPlayers()
    return QBCore.Functions.GetPlayers()
end

return framework






