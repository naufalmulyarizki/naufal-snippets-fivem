ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
    
end)
RegisterCommand("fixanim", function(source, args, rawCommand)
    local ped = GetPlayerPed(-1)
    local isDead = false

    if not IsEntityInAir(ped) then
        if not IsPedRagdoll(ped) then
            if not IsPedInAnyVehicle(ped) then
                ClearPedTasksImmediately(ped)
                ClearPedSecondaryTask(ped)
                SetPedCanPlayGestureAnims(ped, true)
            else
                ESX.ShowNotification("Kamu tidak bisa menggunakan ini di kendaraan")
            end
        else
            ESX.ShowNotification('Kamu tidak bisa menggunakan ini ketika kamu tidak berdiri')
        end
    else
        ESX.ShowNotification('Kamu tidak bisa menggunakan ini ketika kamu sedang di udara')
    end

end, false)