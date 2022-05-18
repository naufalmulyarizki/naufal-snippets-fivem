Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPedSprinting(PlayerPedId()) and IsControlJustReleased(0, 74) then
            if IsPedInAnyVehicle(PlayerPedId()) then
            else
                local ForwardVector = GetEntityForwardVector(PlayerPedId())
                local Tackled = {}

                SetPedToRagdollWithFall(PlayerPedId(), 1000, 1500, 0, ForwardVector, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

                while IsPedRagdoll(PlayerPedId()) do
                    Citizen.Wait(0)
                    for Key, Value in ipairs(getTouchedPlayers()) do
                        if not Tackled[Value] then
                            Tackled[Value] = true
                            TriggerServerEvent('Tackle:Server:TacklePlayer', GetPlayerServerId(Value), ForwardVector, GetPlayerName(PlayerId()))
                        end
                    end
                end
            end
        end
    end
end)

RegisterNetEvent('Tackle:Client:TacklePlayer')
AddEventHandler('Tackle:Client:TacklePlayer',function(ForwardVector)
    SetPedToRagdollWithFall(PlayerPedId(), 3000, 3000, 0, ForwardVector, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
end)

function getPlayers()
    local players = {}

    for _, i in ipairs(GetActivePlayers()) do
        table.insert(players, i)
    end

    return players
end

function getTouchedPlayers()
    local touchedPlayer = {}
    for Key, Value in ipairs(getPlayers()) do
        if IsEntityTouchingEntity(PlayerPedId(), GetPlayerPed(Value)) then
            table.insert(touchedPlayer, Value)
        end
    end
    return touchedPlayer
end