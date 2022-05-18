local ayang = Config.Interval
if Config.DisableWeaponReward == true then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(ayang)
			DisablePlayerVehicleRewards(PlayerId())
		end
	end)
end