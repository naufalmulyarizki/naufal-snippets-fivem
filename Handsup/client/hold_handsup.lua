RegisterKeyMapping("+handsup", "Angkat Tangan", "keyboard", "x")
RegisterCommand(
    "+handsup",
    function()
        if DoesEntityExist(GetPlayerPed(-1)) then
            Citizen.CreateThread(
                function()
                    RequestAnimDict("random@mugging3")
                    while not HasAnimDictLoaded("random@mugging3") do
                        Citizen.Wait(100)
                    end
                    TaskPlayAnim(GetPlayerPed(-1),
                        "random@mugging3",
                        "handsup_standing_base",8.0, -8, -1,49,0, 0, 0,  0)
                end)
        end
    end,
    false
)
RegisterCommand( "-handsup",function()
        ClearPedSecondaryTask(GetPlayerPed(-1))
end,false)
