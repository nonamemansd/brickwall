local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "Tase Hub",
   LoadingTitle = "Tase Hub",
   LoadingSubtitle = "by banibacks",
   ConfigurationSaving = {Enabled = false}
})

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local Aimbot = false
local AimFOV = 150
local ESP = false
local NameTags = false
local SpeedValue = 16
local InfJump = false
local TeamCheck = false
local RainbowFOV = false

local BulletSpeed = 2500
local Prediction = true
local AimKey = Enum.KeyCode.LeftControl

local function GetTeamColor(player)

    if player.Team and player.Team.Name == "Police" then
        return Color3.fromRGB(0,120,255)

    elseif player.Team and player.Team.Name == "Prisoner" then
        return Color3.fromRGB(255,170,0)

    elseif player.Team and player.Team.Name == "Criminal" then
        return Color3.fromRGB(255,0,0)

    else
        return Color3.fromRGB(255,255,255)
    end

end

local function WallCheck(position, character)

    local origin = Camera.CFrame.Position
    local direction = (position - origin)

    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Blacklist
    params.FilterDescendantsInstances = {LocalPlayer.Character}

    local ray = workspace:Raycast(origin, direction, params)

    if ray then
        if ray.Instance:IsDescendantOf(character) then
            return true
        else
            return false
        end
    end

    return true
end

local Circle = Drawing.new("Circle")
Circle.Visible = false
Circle.Thickness = 2
Circle.Radius = AimFOV
Circle.Color = Color3.fromRGB(255,0,0)
Circle.Filled = false

local CombatTab = Window:CreateTab("Combat")
local MoveTab = Window:CreateTab("Movement")
local VisualTab = Window:CreateTab("Visuals")

CombatTab:CreateToggle({
   Name = "Aimbot",
   CurrentValue = false,
   Callback = function(v)
      Aimbot = v
      Circle.Visible = v
   end
})

CombatTab:CreateSlider({
   Name = "Aim FOV",
   Range = {50,500},
   Increment = 10,
   CurrentValue = 150,
   Callback = function(v)
      AimFOV = v
   end
})

CombatTab:CreateToggle({
   Name = "Team Check",
   CurrentValue = false,
   Callback = function(v)
      TeamCheck = v
   end
})

MoveTab:CreateSlider({
   Name = "SpeedHack",
   Range = {16,120},
   Increment = 2,
   CurrentValue = 16,
   Callback = function(v)
      SpeedValue = v
   end
})

MoveTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Callback = function(v)
      InfJump = v
   end
})

VisualTab:CreateToggle({
   Name = "Player ESP",
   CurrentValue = false,
   Callback = function(v)
      ESP = v
   end
})

VisualTab:CreateToggle({
   Name = "Name Tags",
   CurrentValue = false,
   Callback = function(v)
      NameTags = v
   end
})

VisualTab:CreateToggle({
   Name = "Rainbow FOV",
   CurrentValue = false,
   Callback = function(v)
      RainbowFOV = v
   end
})

VisualTab:CreateButton({
   Name = "FPS Boost",
   Callback = function()
      for _,v in pairs(workspace:GetDescendants()) do
         if v:IsA("BasePart") then
            v.Material = Enum.Material.SmoothPlastic
            v.Reflectance = 0
         end
      end
   end
})

RunService.RenderStepped:Connect(function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.WalkSpeed = SpeedValue
    end
end)

UIS.JumpRequest:Connect(function()
    if InfJump and LocalPlayer.Character then
        LocalPlayer.Character.Humanoid:ChangeState("Jumping")
    end
end)

RunService.RenderStepped:Connect(function()

    local screenCenter = Vector2.new(
        Camera.ViewportSize.X/2,
        Camera.ViewportSize.Y/2
    )

    Circle.Position = screenCenter
    Circle.Radius = AimFOV

    if RainbowFOV then
        Circle.Color = Color3.fromHSV(tick()%5/5,1,1)
    end

    if not Aimbot then return end
    if not UIS:IsKeyDown(AimKey) then return end

    local closestPart = nil
    local shortestDistance = AimFOV

    for _,player in pairs(Players:GetPlayers()) do

        if player ~= LocalPlayer
        and player.Character
        and player.Character:FindFirstChild("Head")
        and player.Character:FindFirstChild("Humanoid")
        and player.Character.Humanoid.Health > 0 then

            if TeamCheck and player.Team == LocalPlayer.Team then
                continue
            end

            local head = player.Character.Head
            local pos, visible = Camera:WorldToViewportPoint(head.Position)

            if visible and WallCheck(head.Position, player.Character) then

                local distance = (Vector2.new(pos.X,pos.Y) - screenCenter).Magnitude

                if distance < shortestDistance then
                    shortestDistance = distance
                    closestPart = head
                end

            end
        end
    end

    if closestPart then

        local aimPosition = closestPart.Position

        if Prediction then
            local velocity = closestPart.AssemblyLinearVelocity
            local distance = (Camera.CFrame.Position - closestPart.Position).Magnitude
            local time = distance / BulletSpeed

            aimPosition = closestPart.Position + (velocity * time)
        end

        Camera.CFrame = CFrame.new(Camera.CFrame.Position, aimPosition)

    end

end)

RunService.RenderStepped:Connect(function()

    for _,p in pairs(Players:GetPlayers()) do

        if p ~= LocalPlayer and p.Character then

            local color = GetTeamColor(p)
            local h = p.Character:FindFirstChild("ZenithESP")

            if ESP then
                if not h then
                    local highlight = Instance.new("Highlight")
                    highlight.Name = "ZenithESP"
                    highlight.FillColor = color
                    highlight.Parent = p.Character
                else
                    h.FillColor = color
                end
            else
                if h then
                    h:Destroy()
                end
            end

            local head = p.Character:FindFirstChild("Head")

            if head then

                local tag = head:FindFirstChild("ZenithName")

                if NameTags then

                    if not tag then
                        local bill = Instance.new("BillboardGui")
                        bill.Name = "ZenithName"
                        bill.Size = UDim2.new(0,120,0,40)
                        bill.AlwaysOnTop = true
                        bill.Parent = head

                        local text = Instance.new("TextLabel")
                        text.Size = UDim2.new(1,0,1,0)
                        text.BackgroundTransparency = 1
                        text.TextScaled = true
                        text.TextColor3 = color
                        text.Text = p.Name
                        text.Parent = bill
                    else
                        tag.TextLabel.TextColor3 = color
                    end

                else
                    if tag then tag:Destroy() end
                end
            end

        end
    end

end)
