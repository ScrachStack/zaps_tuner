
RegisterNetEvent('zaps:useChip')
AddEventHandler('zaps:useChip', function()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if vehicle and vehicle ~= 0 then
        local plate = GetVehicleNumberPlateText(vehicle)
        local speed = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fInitialDriveMaxFlatVel')
        SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fInitialDriveMaxFlatVel', speed + 50.0)

        lib.notify({
            title = 'Tuner Chip',
            description = string.format(Locales[Config.Locale]['chip_used'], plate),
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#C1C2C5',
            },
            icon = 'speedometer',
            iconColor = '#29a329'
        })

    else
        lib.notify({
            title = 'Tuner Chip',
            description = Locales[Config.Locale]['no_vehicle'],
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#C1C2C5',
            },
            icon = 'ban',
            iconColor = '#C53030'
        })
    end
end)
