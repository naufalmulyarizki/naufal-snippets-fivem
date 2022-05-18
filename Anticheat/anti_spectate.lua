Citizen.CreateThread(function()
  while true do
    if _NetworkIsInSpectatorMode() then
      --Trigger ke serverside mu untuk drop player dan log ke  discord
      Wait(1*60000)
    end
    Wait(2000)
  end
end)
