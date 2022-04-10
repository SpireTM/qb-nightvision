QBCore = nil
local QBCore = exports['qb-core']:GetCoreObject()

-- Usable item
QBCore.Functions.CreateUseableItem("nightvision", function(source)
local Player = QBCore.Functions.GetPlayer(source)
    if Player ~= nil then
        TriggerClientEvent("qb-nightvision:togsu", source)
    end
end)

-- Usable item thermalvision
QBCore.Functions.CreateUseableItem("thermalvision", function(source)
local Player = QBCore.Functions.GetPlayer(source)
    if Player ~= nil then
        TriggerClientEvent("qb-thermalvision:togsu", source)
    end
end)
