if GetResourceState('es_extended') ~= 'missing' then
    esx = true 
else 
    esx = false
end
if esx then 
    -- esx 1.1 users
-- ESX = nil

-- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX = exports["es_extended"]:getSharedObject()
print("[Zaps] Tuner Started. | Framework Loaded ESX.")
else 
print("[Zaps] Tuner Started. | Framework Loaded QB-CORE.")
  QBCore = exports['qb-core']:GetCoreObject()
end
