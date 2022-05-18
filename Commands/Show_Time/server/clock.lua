ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('fivemid-pajak:getWaktu', function(source, cb, target, data) 
    local stringToFormat = "Sekarang jam %X."
    local jamS = os.time()
    local result = os.date(stringToFormat, jamS)
    cb(result)
end)