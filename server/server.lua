if esx then 
ESX.RegisterUsableItem(Config.Item, function(source)
    TriggerClientEvent('zaps:useChip', source)
end)

else
    QBCore.Functions.CreateUseableItem(Config.Item, function(source, item)
        TriggerClientEvent('zaps:useChip', source)
    end)
end 
