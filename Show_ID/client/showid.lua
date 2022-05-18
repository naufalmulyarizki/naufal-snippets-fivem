Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if    (IsControlPressed(0, 303)) then
            local nearbyPlayers = GetNeareastPlayers()
            for k, v in pairs(nearbyPlayers) do
                local x, y, z = table.unpack(v.coords)
                DrawText3D2(x, y, z + 1.03, v.playerId .. '') 
            end
        end
    end
end)

function GetNeareastPlayers()
    local players = {}

    for _, i in ipairs(GetActivePlayers()) do        -- do stuff
        table.insert(players, 
        { 
            playerName = GetPlayerName(i), 
            playerId = GetPlayerServerId(i), 
            coords = GetEntityCoords(GetPlayerPed(i)) 
        })
    end

    return players
end

function DrawText3D2(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if onScreen then
        local dist = GetDistanceBetweenCoords(GetGameplayCamCoords(), x, y, z, 1)
        local scale = 1.5 * (1 / dist) * (1 / GetGameplayCamFov()) * 100

        SetTextScale(scale, scale)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropShadow(0, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextEdge(4, 0, 0, 0, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end