local lagiAngkatTangan = false
local dict = "random@mugging3"
    
RequestAnimDict(dict)
while not HasAnimDictLoaded(dict) do
    Citizen.Wait(100)
end

RegisterCommand('angkatTangan', function()
    if not lagiAngkatTangan then
        TaskPlayAnim(PlayerPedId(), dict, "handsup_standing_base", 1.5, 1.5, -1, 50, 0, false, false, false)
    else
        ClearPedTasks(PlayerPedId())
    end
    lagiAngkatTangan = not lagiAngkatTangan
end)

RegisterKeyMapping('angkatTangan', 'Hotkey untuk Angkat Tangan', 'keyboard', 'X')
