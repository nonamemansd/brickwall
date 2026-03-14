local link = "https://work.ink/23kL/gpo-auto-fish-more"
local correctKey = "6352-7462-6583-74626"

setclipboard(link)

local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

-- BLUR
local blur = Instance.new("BlurEffect")
blur.Size = 0
blur.Parent = Lighting
TweenService:Create(blur, TweenInfo.new(.6), {Size = 18}):Play()

-- LIGHTNING FRAME
local lightning = Instance.new("Frame")
lightning.Size = UDim2.new(1,0,1,0)
lightning.BackgroundColor3 = Color3.fromRGB(255,255,255)
lightning.BackgroundTransparency = 1
lightning.ZIndex = 0
lightning.Parent = player:WaitForChild("PlayerGui")

-- LIGHTNING SOUND
local lightningSound = Instance.new("Sound")
lightningSound.SoundId = "rbxassetid://9118823405" -- subtle thunder
lightningSound.Volume = 0.5
lightningSound.Parent = lightning

local lightningActive = true

-- LIGHTNING + SCREEN SHAKE
task.spawn(function()
	while lightningActive do
		wait(math.random(4,8))
		if lightningActive then
			TweenService:Create(lightning, TweenInfo.new(0.05), {BackgroundTransparency=0.2}):Play()
			lightningSound:Play()
			-- subtle shake
			local originalPos = player:WaitForChild("PlayerGui").CameraOffset or Vector3.new(0,0,0)
			for i=1,3 do
				player.CameraOffset = Vector3.new(math.random(-2,2)/30, math.random(-2,2)/30,0)
				wait(0.03)
			end
			player.CameraOffset = originalPos
			wait(0.05)
			TweenService:Create(lightning, TweenInfo.new(0.2), {BackgroundTransparency=1}):Play()
		end
	end
end)

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- SNOW BACKGROUND (behind GUI)
local SnowFrame = Instance.new("Frame")
SnowFrame.Size = UDim2.new(1,0,1,0)
SnowFrame.BackgroundTransparency = 1
SnowFrame.ZIndex = 0 -- ensures it stays behind GUI
SnowFrame.Parent = ScreenGui

local snowEnabled = true
local lastX = 0

-- SNOW SOUND
local snowSound = Instance.new("Sound")
snowSound.SoundId = "rbxassetid://9127449956" -- soft snow/rain sound works fine
snowSound.Looped = true
snowSound.Volume = 0.2
snowSound.Parent = SnowFrame
snowSound:Play()

-- SPAWN SNOW
local function createSplash(xPos)
	local splash = Instance.new("Frame")
	splash.Size = UDim2.new(0,18,0,6) -- bigger splash
	splash.Position = UDim2.new(xPos,0,1,-6)
	splash.BackgroundColor3 = Color3.fromRGB(220,240,255)
	splash.BorderSizePixel = 0
	splash.BackgroundTransparency = 0.05
	splash.ZIndex = 0
	splash.Parent = SnowFrame

	local expand = TweenService:Create(splash, TweenInfo.new(.35), {
		Size = UDim2.new(0,28,0,6),
		BackgroundTransparency = 1
	})
	expand:Play()
	expand.Completed:Connect(function() splash:Destroy() end)
end

local function createSnowflake()
	if not snowEnabled then return end

	local x
	repeat
		x = math.random()
	until math.abs(x - lastX) > 0.05
	lastX = x

	local size = math.random(4,7)
	local transparency = math.random(15,25)/100

	local flake = Instance.new("Frame")
	flake.Size = UDim2.new(0,size,0,size)
	flake.Position = UDim2.new(x,0,-0.1,0)
	flake.BackgroundColor3 = Color3.fromRGB(240,240,255)
	flake.BackgroundTransparency = transparency
	flake.BorderSizePixel = 0
	flake.ZIndex = 0
	flake.ClipsDescendants = false
	flake.Rotation = math.random(0,360)
	flake.AnchorPoint = Vector2.new(0.5,0)
	flake.Parent = SnowFrame

	local fallTime = math.random(8,12)
	local endPos = UDim2.new(x,0,1.05,0)
	local tween = TweenService:Create(flake, TweenInfo.new(fallTime, Enum.EasingStyle.Linear), {Position = endPos, Rotation = math.random(0,360)})
	tween:Play()

	tween.Completed:Connect(function()
		createSplash(x)
		flake:Destroy()
	end)
end

task.spawn(function()
	while snowEnabled do
		createSnowflake()
		task.wait(.07) -- slightly slower for realistic snow
	end
end)

-- MAIN FRAME (GUI)
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0,0,0,0)
Frame.Position = UDim2.new(0.5,0,0.5,0)
Frame.AnchorPoint = Vector2.new(0.5,0.5)
Frame.BackgroundColor3 = Color3.fromRGB(20,20,25)
Frame.ZIndex = 1 -- ensure GUI is in front of snow
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0,14)

local Stroke = Instance.new("UIStroke")
Stroke.Thickness = 2
Stroke.Parent = Frame

TweenService:Create(Frame, TweenInfo.new(.6, Enum.EasingStyle.Back), {Size = UDim2.new(0,420,0,240)}):Play()

-- TITLE
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,55)
Title.BackgroundTransparency = 1
Title.Text = "Linky Hub"
Title.Font = Enum.Font.Arcade
Title.TextSize = 30
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.ZIndex = 2
Title.Parent = Frame

local TitleGradient = Instance.new("UIGradient")
TitleGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(120,200,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(200,120,255))
}
TitleGradient.Parent = Title

local glow = Instance.new("UIStroke")
glow.Thickness = 1
glow.Color = Color3.fromRGB(180,180,255)
glow.Parent = Title

-- KEYBOX
local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.7,0,0,40)
KeyBox.Position = UDim2.new(0.05,0,0.38,0)
KeyBox.PlaceholderText = "Enter Key"
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 16
KeyBox.TextColor3 = Color3.new(1,1,1)
KeyBox.BackgroundColor3 = Color3.fromRGB(30,30,35)
KeyBox.ZIndex = 2
KeyBox.Parent = Frame
Instance.new("UICorner", KeyBox).CornerRadius = UDim.new(0,8)

-- BUTTON SOUND
local clickSound = Instance.new("Sound")
clickSound.SoundId = "rbxassetid://156750593"
clickSound.Volume = 1
clickSound.Parent = Frame

-- COPY BUTTON
local CopyButton = Instance.new("TextButton")
CopyButton.Size = UDim2.new(0.2,0,0,40)
CopyButton.Position = UDim2.new(0.77,0,0.38,0)
CopyButton.Text = "Copy"
CopyButton.Font = Enum.Font.GothamBold
CopyButton.TextSize = 14
CopyButton.BackgroundColor3 = Color3.fromRGB(70,70,255)
CopyButton.TextColor3 = Color3.new(1,1,1)
CopyButton.ZIndex = 2
CopyButton.Parent = Frame
Instance.new("UICorner", CopyButton).CornerRadius = UDim.new(0,8)

-- SUBMIT BUTTON
local Submit = Instance.new("TextButton")
Submit.Size = UDim2.new(0.9,0,0,40)
Submit.Position = UDim2.new(0.05,0,0.62,0)
Submit.Text = "Submit Key"
Submit.Font = Enum.Font.GothamBold
Submit.TextSize = 16
Submit.BackgroundColor3 = Color3.fromRGB(120,0,255)
Submit.TextColor3 = Color3.new(1,1,1)
Submit.ZIndex = 2
Submit.Parent = Frame
Instance.new("UICorner", Submit).CornerRadius = UDim.new(0,8)

-- NOTE TEXT
local Note = Instance.new("TextLabel")
Note.Size = UDim2.new(1,0,0,18)
Note.Position = UDim2.new(0,0,0.82,0)
Note.BackgroundTransparency = 1
Note.Text = "Please paste the link in your browser and follow the steps"
Note.Font = Enum.Font.Gotham
Note.TextSize = 13
Note.TextColor3 = Color3.fromRGB(180,180,180)
Note.ZIndex = 2
Note.Parent = Frame

-- STATUS
local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1,0,0,18)
Status.Position = UDim2.new(0,0,0.9,0)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 14
Status.Text = ""
Status.ZIndex = 2
Status.Parent = Frame

-- HOVER
local function hover(button)
	local original = button.Size
	button.MouseEnter:Connect(function()
		TweenService:Create(button, TweenInfo.new(.15), {Size = original + UDim2.new(0,4,0,4)}):Play()
	end)
	button.MouseLeave:Connect(function()
		TweenService:Create(button, TweenInfo.new(.15), {Size = original}):Play()
	end)
end

hover(CopyButton)
hover(Submit)

-- COPY
CopyButton.MouseButton1Click:Connect(function()
	clickSound:Play()
	setclipboard(link)
	Status.Text = "Link Copied!"
	Status.TextColor3 = Color3.fromRGB(120,255,120)
end)

-- KEY CHECK
Submit.MouseButton1Click:Connect(function()
	clickSound:Play()
	if KeyBox.Text == correctKey then
		-- STOP EVERYTHING
		snowEnabled = false
		snowSound:Stop()
		lightningActive = false
		lightningSound:Stop()
		lightning:Destroy()

		for _,v in pairs(SnowFrame:GetChildren()) do
			if v:IsA("Frame") then
				v:Destroy()
			end
		end
		SnowFrame:Destroy()

		Status.Text = "Access Granted"
		Status.TextColor3 = Color3.fromRGB(120,255,120)

		TweenService:Create(Frame, TweenInfo.new(.4), {Size = UDim2.new(0,0,0,0)}):Play()
		TweenService:Create(blur, TweenInfo.new(.5), {Size = 0}):Play()
		wait(.45)
		blur:Destroy()
		Frame:Destroy()

		loadstring(game:HttpGet("https://raw.githubusercontent.com/MaybeNotMandy/GPO/refs/heads/main/Candy"))()
	else
		Status.Text = "Invalid Key"
		Status.TextColor3 = Color3.fromRGB(255,80,80)
	end
end)

-- RAINBOW OUTLINE
local hue = 0
RunService.RenderStepped:Connect(function()
	hue += 0.002
	if hue > 1 then hue = 0 end
	Stroke.Color = Color3.fromHSV(hue,1,1)
end)
