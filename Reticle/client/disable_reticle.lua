function HashInTable(hash)
    for k, v in pairs(Config.ScopedWeapons) do 
        if hash == v then 
            return true 
        end 
    end 
    return false 
end 

function ManageReticle()
    local _, hash = GetCurrentPedWeapon(PlayerPedId(), true)
    if not HashInTable(hash) then 
        HideHudComponentThisFrame(14)
	end 
end 

local interval = Config.ReticleInterval
if Config.DisableReticle == true then
	CreateThread(function()
		while true do
			ManageReticle()

			Wait(interval)
		end
	end)
end