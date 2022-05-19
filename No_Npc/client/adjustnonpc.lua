Promet = 0.0 --Driving Vehicles
NPCOVI = 0 --Npc's on the street
ParkiranaVozila = 0.0 --Parked vehicles
EnableDispatch = false --Dispatch
EnableBoats = false 
EnableTrains = true
EnableGarbageTrucks = false
UkljuciPoliciju = false --Police , should be false

CreateThread(function()
    for i = 1, 15 do
     EnableDispatchService(i, EnableDispatch)
    end
    SetRandomBoats(EnableBoats)
    SetRandomTrains(EnableTrains)
    SetGarbageTrucks(EnableGarbageTrucks)
    SetCreateRandomCops(UkljuciPoliciju)
    SetCreateRandomCopsNotOnScenarios(UkljuciPoliciju)
    SetCreateRandomCopsOnScenarios(UkljuciPoliciju)
    SetDispatchCopsForPlayer(PlayerId(), UkljuciPoliciju)
    SetPedPopulationBudget(NPCOVI)
    SetVehiclePopulationBudget(Promet)
    SetNumberOfParkedVehicles(ParkiranaVozila)
end)