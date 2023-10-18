if GetResourceState('es_extended') ~= 'missing' then
    esx = true 
else 
    esx = false
    
end
if esx then 
ESX = exports["es_extended"]:getSharedObject()
print("[Zaps] Tuner Started. | Framework Loaded ESX.")
-- for users on esx 1.1
--CreateThread(function()
  --  while ESX == nil do
    --    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      --  Citizen.Wait(0)
    --end
--end)
else 

print("[Zaps] Tuner Started. | Framework Loaded QB-CORE.")

  QBCore = exports['qb-core']:GetCoreObject()

end

if GetResourceState('es_extended') ~= 'missing' or GetResourceState('qb-core') ~= 'missing' then 
standalone = true
else 
    standalone = false
end 
