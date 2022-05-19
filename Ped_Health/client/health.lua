AddEventHandler('playerSpawned', function(spawn)
    local ped = PlayerPedId()
    if GetPedMaxHealth(ped) ~= Config.MaxHealth and not IsEntityDead(ped) then
        SetPedMaxHealth(ped, Config.MaxHealth)
        SetEntityHealth(ped, GetEntityHealth(ped) + Config.HealthBoost)
    end
end)
