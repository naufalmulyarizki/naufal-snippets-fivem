ESX.RegisterUsableItem('phone', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('gcphone:usephone', source)

end)