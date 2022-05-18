Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) 
        local playerPed = PlayerPedId()
           SetPedCanRagdoll(playerPed, false) -- No Ragdoll
           SetEntityOnlyDamagedByPlayer(playerPed, true) -- Anti VDM
    end
end)