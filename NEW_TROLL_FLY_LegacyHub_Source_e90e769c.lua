-- [[ MURDER VIP UPD 20 - RAZI SCANNER EDITION ]]

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "Murd_Razi_Update_20"
ScreenGui.IgnoreGuiInset = true

-- وظيفة الريمبو الموحد
local function GetRainbowColor()
    return Color3.fromHSV((tick() * 0.5) % 1, 1, 1)
end

-- الزر الدائري (razi)
local ToggleBtn = Instance.new("TextButton", ScreenGui)
ToggleBtn.Size = UDim2.new(0, 55, 0, 55)
ToggleBtn.Position = UDim2.new(0.1, 0, 0.1, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.Text = "razi"
ToggleBtn.Font = Enum.Font.SourceSansBold
ToggleBtn.TextSize = 18
ToggleBtn.Active = true
ToggleBtn.Draggable = true
local CircleCorner = Instance.new("UICorner", ToggleBtn)
CircleCorner.CornerRadius = UDim.new(1, 0)

-- الواجهة الرئيسية
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 250, 0, 250) -- تم زيادة الطول للزر الجديد
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -125)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true
local FrameCorner = Instance.new("UICorner", MainFrame)
FrameCorner.CornerRadius = UDim.new(0, 15)

local FrameBorder = Instance.new("UIStroke", MainFrame)
FrameBorder.Thickness = 3
FrameBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "MURDER VIP UPD 20"
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 20

-- تحديث الألوان
task.spawn(function()
    while true do
        local rainbow = GetRainbowColor()
        Title.TextColor3 = rainbow
        FrameBorder.Color = rainbow
        ToggleBtn.TextColor3 = rainbow
        task.wait(0.01)
    end
end)

local Layout = Instance.new("UIListLayout", MainFrame)
Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
Layout.Padding = UDim.new(0, 10)
Layout.SortOrder = Enum.SortOrder.LayoutOrder

-- 1. زر AUTO Collect Egg
local autoCollect = false
local CollectBtn = Instance.new("TextButton", MainFrame)
CollectBtn.Size = UDim2.new(0.9, 0, 0, 45)
CollectBtn.Text = "AUTO Collect Egg: OFF"
CollectBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CollectBtn.TextColor3 = Color3.new(1, 1, 1)
CollectBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", CollectBtn)

CollectBtn.MouseButton1Click:Connect(function()
    autoCollect = not autoCollect
    CollectBtn.Text = autoCollect and "AUTO Collect Egg: ON" or "AUTO Collect Egg: OFF"
    CollectBtn.TextColor3 = autoCollect and Color3.fromRGB(0, 255, 0) or Color3.new(1, 1, 1)
end)

-- 2. زر AUTO Teleport Egg
local autoTp = false
local TpBtn = Instance.new("TextButton", MainFrame)
TpBtn.Size = UDim2.new(0.9, 0, 0, 45)
TpBtn.Text = "AUTO Teleport Egg: OFF"
TpBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TpBtn.TextColor3 = Color3.new(1, 1, 1)
TpBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", TpBtn)

TpBtn.MouseButton1Click:Connect(function()
    autoTp = not autoTp
    TpBtn.Text = autoTp and "AUTO Teleport Egg: ON" or "AUTO Teleport Egg: OFF"
    TpBtn.TextColor3 = autoTp and Color3.fromRGB(0, 255, 0) or Color3.new(1, 1, 1)
end)

-- 3. زر Copy Discord🔗
local DiscordBtn = Instance.new("TextButton", MainFrame)
DiscordBtn.Size = UDim2.new(0.9, 0, 0, 45)
DiscordBtn.Text = "Copy Discord🔗"
DiscordBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
DiscordBtn.TextColor3 = Color3.new(1, 1, 1)
DiscordBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", DiscordBtn)

DiscordBtn.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/5TdyT8R8Z")
    local oldText = DiscordBtn.Text
    DiscordBtn.Text = oldText .. " ✅"
    task.wait(1)
    DiscordBtn.Text = oldText
end)

-- وظيفة اللمس الوهمي
local function fakeTouch(part)
    local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if root and part:FindFirstChild("TouchInterest") then
        firetouchinterest(root, part, 0)
        task.wait(0.1)
        firetouchinterest(root, part, 1)
    end
end

-- وظيفة التجميع في الخلفية (1 ثانية)
task.spawn(function()
    while true do
        if autoCollect then
            pcall(function()
                for i = 1, 200 do
                    local eggName = "Egg" .. i
                    for _, v in pairs(workspace:GetDescendants()) do
                        if v.Name == eggName and v:IsA("BasePart") then
                            fakeTouch(v)
                        end
                    end
                end
            end)
        end
        task.wait(1)
    end
end)

-- وظيفة الانتقال التلقائي في الخلفية (0.9 ثانية)
task.spawn(function()
    while true do
        if autoTp then
            pcall(function()
                local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if root then
                    for i = 1, 200 do
                        local eggName = "Egg" .. i
                        local target = workspace:FindFirstChild(eggName, true)
                        if target and target:IsA("BasePart") then
                            root.CFrame = target.CFrame
                            task.wait(0.1) -- وقفة بسيطة للتأكد من الوصول
                        end
                    end
                end
            end)
        end
        task.wait(0.9)
    end
end)

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
