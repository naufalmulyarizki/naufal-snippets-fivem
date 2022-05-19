local whitelistedweapon = {'WEAPON_SNIPERRIFLE', 'WEAPON_HEAVYSNIPER', 'WEAPON_MARKSMANRIFLE', 'WEAPON_HEAVYSNIPER_MK2'}
local meleeweapon = {'WEAPON_UNARMED', 'WEAPON_DAGGER', 'WEAPON_BAT', 'WEAPON_BOTTLE', 'WEAPON_CROWBAR', 'WEAPON_FLASHLIGHT', 'WEAPON_HAMMER', 'WEAPON_HATCHET', 'WEAPON_KNUCKLE', 'WEAPON_KNIFE', 'WEAPON_MACHETE', 'WEAPON_SWITCHBLADE', 'WEAPON_NIGHTSTICK', 'WEAPON_WRENCH', 'WEAPON_BATTLEAXE', 'WEAPON_POOLCUE', 'WEAPON_STONE_HATCHET'}


Citizen.CreateThread(function()
    while true do
        local playerped = GetPlayerPed(-1)
        local pedweapon = GetSelectedPedWeapon(playerped)
        
        if not  isweaponwhitelisted(pedweapon) then
            if not ismeleeweapon(pedweapon) then
                HideHudComponentThisFrame(14) -- Reticule
            else
                Wait(100)
            end
        else
            Wait(100)
        end
        Wait(1)
    end
end)

function isweaponwhitelisted(currentweapon)
    for k,v in pairs(whitelistedweapon) do
        if GetHashKey(v) == currentweapon then
            return true
        end
    end
    return false
end

function ismeleeweapon(currentweapon)
    for k,v in pairs(meleeweapon) do
        if GetHashKey(v) == currentweapon then
            return true
        end
    end
    return false
end