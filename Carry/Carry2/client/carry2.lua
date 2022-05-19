RegisterCommand("carry2",function(source, args)
    --print("carrying")
    if not carryingBackInProgress then
        carryingBackInProgress = true
        local player = PlayerPedId()
        loadAnimDict("anim@heists@ornate_bank@grab_cash")
        TaskPlayAnim(PlayerPedId(), "anim@heists@ornate_bank@grab_cash", "intro", 1.0, 1.0, -1, 49, 0, 0, 0, 0)
        Citizen.Wait(800)
        ClearPedTasks(PlayerPedId())
        lib = 'timetable@amanda@ig_3'
        anim1 = 'ig_3_base_tracy'
        lib2 = 'timetable@ron@ig_3_couch'
        anim2 = 'base'
        distans = 0.1
        distans2 = 0.05
        height = 0.8
        spin = 0.0
        length = 100000
        controlFlagMe = 49
        controlFlagTarget = 33
        animFlagTarget = 1
        local closestPlayer = GetClosestPlayer(1)
        target = GetPlayerServerId(closestPlayer)
        if closestPlayer ~= -1 and closestPlayer ~= nil then
            carryingBackInProgress = true
            TriggerServerEvent('CarryPeople:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
        else
            drawNativeNotification("No one nearby to carry!")
        end
    else
        carryingBackInProgress = false
        ClearPedSecondaryTask(GetPlayerPed(-1))
        DetachEntity(GetPlayerPed(-1), true, false)
        local closestPlayer = GetClosestPlayer(3)
        target = GetPlayerServerId(closestPlayer)
        TriggerServerEvent("CarryPeople:stop",target)
    end
end,false)