local _, weapon = GetCurrentPedWeapon(PlayerPedId(), 1)

if _GetWeaponDamageModifier(weapon) > 1.0 then -- bisa juga set ke damage tertinggi di dalam server. misal paling tinggi 0.56, berarti damage > 0.57 then ..
  --Trigger ke serverside mu untuk drop player dan log ke  discord
  Wait(2000)
end
