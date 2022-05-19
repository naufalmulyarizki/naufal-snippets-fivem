function SetWeaponDrops()
	local handle, ped = FindFirstPed()
	local finished = false

	repeat
		if not IsEntityDead(ped) then
			SetPedDropsWeaponsWhenDead(ped, false)
		end
		finished, ped = FindNextPed(handle)
	until not finished

	EndFindPed(handle)
end

local yank = Config.Interval
if Config.DisableWeaponDrop == true then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(yank)
			SetWeaponDrops()
		end
	end)
end