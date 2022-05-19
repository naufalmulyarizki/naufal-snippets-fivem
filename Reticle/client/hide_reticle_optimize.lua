Citizen.CreateThread(function()
    while true do
       local playerped = GetPlayerPed(-1)
     
       if GetSelectedPedWeapon(playerped) ~= GetHashKey("WEAPON_SNIPERRIFLE") or GetSelectedPedWeapon(playerped) ~= GetHashKey("WEAPON_HEAVYSNIPER") or GetSelectedPedWeapon(playerped) ~= GetHashKey("WEAPON_MARKSMANRIFLE") or GetSelectedPedWeapon(playerped) ~= GetHashKey("WEAPON_HEAVYSNIPER_MK2") then
          HideHudComponentThisFrame(14) -- Reticule
       end
       Wait(0)
    end
 end)