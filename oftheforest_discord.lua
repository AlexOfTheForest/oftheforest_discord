Citizen.CreateThread(function()
    while true do

        local player = PlayerPedId()               -- Get current player
        local playerID = GetPlayerServerId(PlayerId())  -- Get player server ID
        local x, y, z = table.unpack(GetEntityCoords(player, true)) -- Get player position
        local currentStreetHash, _ = GetStreetNameAtCoord(x, y, z)  -- Get street hash key
        local currentStreetName = GetStreetNameFromHashKey(currentStreetHash) -- Get street name
        local action = ""

        if IsPedRunning(player) then
            action = "Running"
        elseif IsPedSwimming(player) then
            action = "Swimming"
        elseif IsPedInAnyVehicle(player, false) then
            action = "Cruising"
        else
            action = "Idle"
        end


        SetDiscordRichPresenceAction(0, "DISCORD", "https://discord.gg/yourserver")
        SetDiscordRichPresenceAction(1, "PLAY", "fivem://connect/YOUR_SERVER_IP")

        SetRichPresence("Player ID: " .. playerID .. " | " .. action .. " at " .. currentStreetName)

        Citizen.Wait(10000)
    end
end)
