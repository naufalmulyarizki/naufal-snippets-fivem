RegisterNetEvent('gcphone:usephone')
AddEventHandler('gcphone:usephone', function()
  hasPhone(function (hasPhone)
    if hasPhone == true then
      TooglePhone()
    else
      ShowNoPhoneWarning()
    end
  end)
end)