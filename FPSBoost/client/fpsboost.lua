function OptimizeFPS()
    ClearAllBrokenGlass()
    ClearAllHelpMessages()
    LeaderboardsReadClearAll()
    ClearBrief()
    ClearGpsFlags()
    ClearPrints()
    ClearSmallPrints()
    ClearReplayStats()
    LeaderboardsClearCacheData()
    ClearFocus()
    ClearHdArea()
    ClearPedBloodDamage(PlayerPedId())
    ClearPedWetness(PlayerPedId())
    ClearPedEnvDirt(PlayerPedId())
    ResetPedVisibleDamage(PlayerPedId())
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)
        OptimizeFPS()
    end
end)