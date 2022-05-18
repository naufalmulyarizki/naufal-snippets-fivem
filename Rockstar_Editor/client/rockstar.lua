ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
    
end)

local PlayerData              = {}

Citizen.CreateThread(function()
   while true do
      Citizen.Wait(5)

      if IsControlJustPressed(0, 57) then -- "F10"
        	OpenRockstarMenu()
      end
      
   end
end)

function OpenRockstarMenu()
	
	local elements = {
      {label = 'Record', value = 'Record'},
      {label = 'Save Record', value = 'Save'},
      {label = 'Stop Record', value = 'Stop'},
      {label = 'Rockstar Editor', value = 'Rockstar'}
   }
   
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'client', {
      title    = 'Rockstar Editor',
		align    = 'bottom-right',
		elements = elements,
   }, function(data, menu)

      if data.current.value == 'Record' then
         StartRecording(1)
         ESX.UI.Menu.CloseAll()
      elseif data.current.value == 'Save' then
         StopRecordingAndSaveClip()
         ESX.UI.Menu.CloseAll()
      elseif data.current.value == 'Stop' then
         StopRecordingAndDiscardClip()
         ESX.UI.Menu.CloseAll()
      elseif data.current.value == 'Rockstar' then
         NetworkSessionLeaveSinglePlayer()
		   ActivateRockstarEditor()
         ESX.UI.Menu.CloseAll()
		end

      ESX.UI.Menu.CloseAll()
   end, function(data, menu)
		menu.close()
	  end)
end

local recording = false
RegisterCommand("rekam", function(source, args, rawCommand)
    if not recording then
        StartRecording(1)
        recording = true
    else
        StopRecordingAndSaveClip()
        recording = false
    end
end, false)