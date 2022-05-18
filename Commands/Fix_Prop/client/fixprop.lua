RegisterCommand('propfix', function()
    for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DetachEntity(obj, true, false)
            DeleteObject(v)
            DeleteEntity(v)
        end
    end
end)