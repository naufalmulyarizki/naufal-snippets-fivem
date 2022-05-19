if Config.EnableToggleReticle == true then
	local ayank = Config.ToggleInterval

	RegisterCommand(Config.ToggleOnCommand, function(source, args, rawCommand)
		Citizen.CreateThread(function()
			local isSniper = false
			while true do
				Citizen.Wait(ayank)
				local ped = PlayerPedId()
	
				local currentWeaponHash = GetSelectedPedWeapon(ped)
	
				if currentWeaponHash == 100416529 then
					isSniper = true
				elseif currentWeaponHash == 205991906 then
					isSniper = true
				elseif currentWeaponHash == -952879014 then
					isSniper = true
				elseif currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
					isSniper = true
				else
					isSniper = false
				end
	
				if not isSniper then
					ShowHudComponentThisFrame(14)
				end
			end	
		end)    
	end, false)
	
	RegisterCommand(Config.ToggleOffCommand, function(source, args, rawCommand)
		Citizen.CreateThread(function()
			local isSniper = false
			while true do
				Citizen.Wait(ayank)
	
				local ped = PlayerPedId()
	
				local currentWeaponHash = GetSelectedPedWeapon(ped)
	
				if currentWeaponHash == 100416529 then
					isSniper = true
				elseif currentWeaponHash == 205991906 then
					isSniper = true
				elseif currentWeaponHash == -952879014 then
					isSniper = true
				elseif currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
					isSniper = true
				else
					isSniper = false
				end
	
				if not isSniper then
					HideHudComponentThisFrame(14)
				end
			end	
		end)  
	end, false)
end