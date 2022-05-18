local vehicleClassWhitelist = {0, 1, 2, 3, 4, 5, 6, 7, 9}

function ToggleDrift(state)
    local ped = PlayerPedId()

    if IsPedInAnyVehicle(ped) then
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        local speed = GetEntitySpeed(vehicle) * 3.6

        if speed <= 100.0 then
            if (GetPedInVehicleSeat(vehicle, -1) == ped) and IsVehicleOnAllWheels(vehicle) and IsVehicleClassWhitelisted(GetVehicleClass(vehicle)) then
                SetVehicleReduceGrip(vehicle, state)
            elseif (GetPedInVehicleSeat(vehicle, -1) == ped) and IsVehicleClassWhitelisted(GetVehicleClass(vehicle)) and state == false then
                SetVehicleReduceGrip(vehicle, state)
            end
        end
    end
end

RegisterCommand('+drift', function() ToggleDrift(true) end)
RegisterCommand('-drift', function() ToggleDrift(false) end)
RegisterKeyMapping('+drift', 'Toggle vehicle drift', 'keyboard', 'LSHIFT')

function IsVehicleClassWhitelisted(vehicleClass)
    for index, value in ipairs(vehicleClassWhitelist) do
        if value == vehicleClass then
            return true
        end
    end

    return false
end