if game.PlaceId == 286090429 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Arsenal.lua"))()
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Lithium XV",
        Text = "Game not supported yet.",
        Duration = 3
    })
end
