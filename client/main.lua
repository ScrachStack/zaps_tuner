if Config.UsePlateChangeCommand then 
RegisterCommand('changeplate', function()
    local input = lib.inputDialog('Change Plate', { {type = 'input', label = 'Enter your plate', required = true, min = 1, max = 8} })

    if not input or not input[1] then
        lib.notify({
            title = 'Change Plate',
            description = 'No plate entered.',
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#C1C2C5',
            },
            icon = 'times',
            iconColor = '#C53030'
        })
        return
    end
    local lowerInput = string.lower(input[1])
    for _, word in ipairs(Config.PlateBlacklist) do
        if string.find(lowerInput, word) then
            lib.notify({
                title = 'Change Plate',
                description = 'Inappropriate Text (Blacklisted).',
                position = 'top',
                style = {
                    backgroundColor = '#141517',
                    color = '#C1C2C5',
                },
                icon = 'times',
                iconColor = '#C53030'
            })
            return
        end
    end

    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if vehicle and vehicle ~= 0 then
        SetVehicleNumberPlateText(vehicle, input[1])
        lib.notify({
            title = 'Change Plate',
            description = 'Plate changed successfully.',
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#C1C2C5',
            },
            icon = 'check',
            iconColor = '#29a329'
        })
    else
        lib.notify({
            title = 'Change Plate',
            description = 'You are not in a vehicle.',
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#C1C2C5',
            },
            icon = 'times',
            iconColor = '#C53030'
        })
    end
end, false)
end
