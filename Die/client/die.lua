RegisterCommand('die', function()
    local playerPed = PlayerPedId()
    SetEntityHealth(playerPed, 0)
end, false)