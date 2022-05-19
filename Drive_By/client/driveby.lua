local passengerDriveBy = Config.AllowPassengerShoot
local interval = Config.DriveByInterval

Citizen.CreateThread(function()
	while Config.DisableShootAtVehicle == true do
		local letsleep = interval

		local playerPed = PlayerPedId()
		local car = GetVehiclePedIsIn(playerPed, false)
		if car then
			letsleep = 0
			if GetPedInVehicleSeat(car, -1) == playerPed then
				SetPlayerCanDoDriveBy(PlayerId(), false)
			elseif passengerDriveBy then
				SetPlayerCanDoDriveBy(PlayerId(), passengerDriveBy)
			else
				SetPlayerCanDoDriveBy(PlayerId(), false)
			end
		end
		Citizen.Wait(letsleep)
	end
end)