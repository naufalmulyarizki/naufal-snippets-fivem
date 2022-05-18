ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
    
end)

-- Jam OOC
RegisterCommand('jam', function()
    ESX.TriggerServerCallback('fivemid-pajak:getWaktu', function(jam)
        if jam ~= nil then
       
        --exports['mythic_notify']:DoHudText('inform', ''..jam..'')
        ESX.ShowNotification(''..jam..' Waktu Indonesia Barat')
        end
    end)
end)

-- Jam IC
RegisterCommand("waktu", function(source, args, rawCommand)
    local jam = GetClockHours()
    local menit = GetClockMinutes()
    ESX.ShowNotification(''..jam..'Sekarang Jam ' .. jam .. ' menit ' .. menit)
end, false)

