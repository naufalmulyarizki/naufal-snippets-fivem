local limit = 20

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local inVehicle = IsPedSittingInAnyVehicle(ped)
        local vehicle = GetVehiclePedIsIn(ped,false)
        if inVehicle then
            local currentSpeed = GetEntitySpeed(vehicle) * 2.00
            local overspeed = currentSpeed - limit
            local shake = 0
            while currentSpeed > limit do
                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', shake)
                currentSpeed = GetEntitySpeed(vehicle) * 2.00
                overspeed = currentSpeed - limit
                shake = overspeed/1000
                Wait(500)
            end
        end
        Wait(1000)
    end
end)