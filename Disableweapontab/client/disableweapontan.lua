Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        HideHudComponentThisFrame(19)
        HideHudComponentThisFrame(20)
        BlockWeaponWheelThisFrame()
        DisableControlAction(0, 37,true)
    end
end)