local yahaha = Config.Interval
if Config.DisableAutoHelmet == true then
  Citizen.CreateThread( function()
    while true do
      Citizen.Wait(yahaha)
      local p = PlayerPedId()
      local pV = GetVehiclePedIsUsing(p)
      if pV ~= 0 then 
        SetPedConfigFlag(p, 35, false) 
      end
    end    
  end)
end