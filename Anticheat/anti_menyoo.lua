local dictTextures = {
  "MenyooExtras",
  "rampage_tr_main",
  "rampage_tr_animated",
  "heisthud",
  "digitaloverlay",
  "fm",
}

local filesReady = {
  "rampage_tr_main.ytd",
  "rampage_tr_animated.ytd",
  "rampage_tr_main.ytd",
  "rampage_tr_main.ytd",
  "rampage_tr_main.ytd",
}

Citizen.CreateThread(function()
  while true do
    local loaded = ""
    local detected = false

    for k,v in pairs(dictTextures) do
      if HasStreamedTextureDictLoaded(v) then
        loaded = v
        detected = true
      end
    end

    for k,v in pairs(filesReady) do
      if IsStreamingFileReady(v) then
        loaded = v
        detected = true
      end
    end

    if detected then
      -- Trigger ke Drop Player dan bikin log di serverside
      Wait(1*60000)
    end 
    Wait(3000)
  end
end)
