-- ================= SAFE LOAD =================
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait() until game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")

-- ================= UNIVERSAL REQUEST =================
local request = request or http_request or (syn and syn.request)

local function httpget(url)
    if request then
        local res = request({
            Url = url,
            Method = "GET"
        })
        return res.Body or res.body
    else
        return game:HttpGet(url)
    end
end

-- ================= LOAD LIB =================
local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(httpget(repo .. "Library.lua"))()
if not Library then return end

-- ================= SETTINGS =================
_G.Settings = {
    Enabled = true,
    Size = 10,
    Transparency = 0.65,
    PlayerColor = Color3.fromRGB(0,170,255),
    MobColor = Color3.fromRGB(255,0,0),
    UpdateRate = 0.15,
    AutoRestore = true,
    SpeedEnabled = false,
    SpeedValue = 55,
    RecoilEnabled = false,
    NoCooldownEnabled = false,
    TeamCheck = true
}

-- ================= SERVICES =================
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer
local MobsFolder = workspace:FindFirstChild("Mobs")

-- ================= CHARACTER =================
local Character, HRP, Humanoid

local function removeSpeed()
    if HRP then
        local v = HRP:FindFirstChild("SpeedVelocity")
        if v then v:Destroy() end
    end
end

local function applySpeed()
    if not (_G.Settings.SpeedEnabled and HRP) then return end
    if not HRP:FindFirstChild("SpeedVelocity") then
        local bv = Instance.new("BodyVelocity")
        bv.Name = "SpeedVelocity"
        bv.MaxForce = Vector3.new(1,0,1) * 1e5
        bv.P = 1000
        bv.Parent = HRP
    end
end

local function onCharacterAdded(char)
    Character = char
    HRP = char:WaitForChild("HumanoidRootPart")
    Humanoid = char:WaitForChild("Humanoid")
    task.wait(0.5)
    removeSpeed()
    applySpeed()
end

onCharacterAdded(LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

-- ================= GUI =================
local Window = Library:CreateWindow({
    Title = "Vodka Hub",
    Footer = "Mobile Safe",
    Center = true,
    AutoShow = true
})

-- RightShift toggle support
if Window.SetToggleKey then
    Window:SetToggleKey(Enum.KeyCode.RightShift)
end

-- Notification
pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "Vodka Hub",
        Text = "To hide the GUI, press Right Shift",
        Duration = 5
    })
end)

-- Fallback toggle if library doesn't support it
local guiVisible = true
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.RightShift then
        if not Window.SetToggleKey then
            guiVisible = not guiVisible
            for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
                if v.Name:lower():find("vodka") then
                    v.Enabled = guiVisible
                end
            end
        end
    end
end)

local Tabs = {
    Main = Window:AddTab("Main", "target"),
    Visual = Window:AddTab("Visual", "eye")
}

-- ================= HITBOX =================
local HitboxBox = Tabs.Main:AddLeftGroupbox("Hitbox Expander")

HitboxBox:AddToggle("HitboxToggle", {
    Text = "Enable Hitbox",
    Default = true,
    Callback = function(v)
        _G.Settings.Enabled = v
    end
})

HitboxBox:AddSlider("HitboxSize", {
    Text = "Hitbox Size",
    Min = 2,
    Max = 30,
    Default = 10,
    Rounding = 1,
    Callback = function(v)
        _G.Settings.Size = v
    end
})

HitboxBox:AddToggle("TeamCheckToggle", {
    Text = "Team Check",
    Default = true,
    Callback = function(v)
        _G.Settings.TeamCheck = v
    end
})

-- ================= SPEED =================
local SpeedBox = Tabs.Main:AddLeftGroupbox("Speed Hack")

SpeedBox:AddToggle("SpeedToggle", {
    Text = "Enable Speed",
    Default = false,
    Callback = function(v)
        _G.Settings.SpeedEnabled = v
        if v then
            applySpeed()
        else
            removeSpeed()
        end
    end
})

SpeedBox:AddSlider("SpeedAmount", {
    Text = "Speed Value",
    Min = 10,
    Max = 150,
    Default = 55,
    Rounding = 0,
    Callback = function(v)
        _G.Settings.SpeedValue = v
    end
})

-- ================= VISUAL =================
local VisualBox = Tabs.Visual:AddLeftGroupbox("Weapon / Ability")

VisualBox:AddToggle("NoRecoil", {
    Text = "No Recoil",
    Default = false,
    Callback = function(v)
        _G.Settings.RecoilEnabled = v
        if v then
            for _, t in next, getgc(true) do
                if typeof(t) == "table" and rawget(t, "Spread") then
                    rawset(t, "Spread", 0)
                    rawset(t, "BaseSpread", 0)
                    rawset(t, "MinCamRecoil", Vector3.zero)
                    rawset(t, "MaxCamRecoil", Vector3.zero)
                    rawset(t, "MinRotRecoil", Vector3.zero)
                    rawset(t, "MaxRotRecoil", Vector3.zero)
                    rawset(t, "MinTransRecoil", Vector3.zero)
                    rawset(t, "MaxTransRecoil", Vector3.zero)
                end
            end
        end
    end
})

VisualBox:AddToggle("NoCooldown", {
    Text = "No Cooldown",
    Default = false,
    Callback = function(v)
        _G.Settings.NoCooldownEnabled = v
        if v then
            for _, t in next, getgc(true) do
                if typeof(t) == "table" and rawget(t, "CD") then
                    rawset(t, "CD", 0)
                end
            end
        end
    end
})

-- ================= DISCORD =================
local CommunityBox = Tabs.Main:AddLeftGroupbox("Community")

CommunityBox:AddButton("Copy Discord Invite", function()
    if setclipboard then
        setclipboard("https://discord.gg/dJJ3psbAxw")
    end
end)

CommunityBox:AddLabel("If you want more features, join the Discord.", true)

-- ================= SPEED LOOP =================
RunService.RenderStepped:Connect(function()
    if not (_G.Settings.SpeedEnabled and HRP and Humanoid) then return end
    local bv = HRP:FindFirstChild("SpeedVelocity")
    if not bv then return end

    local dir = Humanoid.MoveDirection
    if dir.Magnitude > 0 then
        bv.Velocity = Vector3.new(dir.X, 0, dir.Z) * _G.Settings.SpeedValue
    else
        bv.Velocity = Vector3.zero
    end
end)

-- ================= TEAM CHECK =================
local function isEnemy(plr)
    if not _G.Settings.TeamCheck then return true end
    if not plr.Team or not LocalPlayer.Team then return true end
    return plr.Team ~= LocalPlayer.Team
end

-- ================= HITBOX =================
local Cache = {}
local lastUpdate = 0

local function backup(part)
    if not Cache[part] then
        Cache[part] = {
            Size = part.Size,
            Transparency = part.Transparency,
            CanCollide = part.CanCollide,
            Material = part.Material,
            Color = part.Color,
            Reflectance = part.Reflectance,
            CastShadow = part.CastShadow
        }
    end
end

local function apply(part, color)
    backup(part)
    part.Size = Vector3.new(_G.Settings.Size,_G.Settings.Size,_G.Settings.Size)
    part.Transparency = _G.Settings.Transparency
    part.Material = Enum.Material.Neon
    part.Color = color
    part.CanCollide = false
    part.CastShadow = false
end

local function restore(part)
    local data = Cache[part]
    if data then
        for k,v in pairs(data) do
            pcall(function() part[k] = v end)
        end
        Cache[part] = nil
    end
end

local function highlight(model, color)
    local h = model:FindFirstChild("HighlightESP")
    if not h then
        h = Instance.new("Highlight")
        h.Name = "HighlightESP"
        h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        h.Parent = model
        h.Adornee = model
    end
    h.FillColor = color
    h.FillTransparency = 0.25
    h.OutlineTransparency = 0
end

RunService.Heartbeat:Connect(function(dt)
    lastUpdate += dt
    if lastUpdate < _G.Settings.UpdateRate then return end
    lastUpdate = 0

    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character and isEnemy(plr) then
            local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                if _G.Settings.Enabled then
                    apply(hrp, _G.Settings.PlayerColor)
                    highlight(plr.Character, _G.Settings.PlayerColor)
                elseif _G.Settings.AutoRestore then
                    restore(hrp)
                end
            end
        end
    end

    if MobsFolder then
        for _, mob in ipairs(MobsFolder:GetChildren()) do
            local hrp = mob:FindFirstChild("HumanoidRootPart")
            if hrp then
                if _G.Settings.Enabled then
                    apply(hrp, _G.Settings.MobColor)
                    highlight(mob, _G.Settings.MobColor)
                elseif _G.Settings.AutoRestore then
                    restore(hrp)
                end
            end
        end
    end
end)