--// Services
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

--// GUI
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.ResetOnSpawn = false

-- Main Frame
local Frame = Instance.new("Frame", ScreenGui)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
Frame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
Frame.BackgroundTransparency = 1

Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12)

local Stroke = Instance.new("UIStroke", Frame)
Stroke.Color = Color3.fromRGB(60, 60, 70)

-- Top Bar
local TopBar = Instance.new("Frame", Frame)
TopBar.Size = UDim2.new(1, 0, 0, 40)
TopBar.BackgroundTransparency = 1

local Title = Instance.new("TextLabel", TopBar)
Title.Text = "Modware Hub"
Title.Size = UDim2.new(1, 0, 1, 0)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamSemibold
Title.TextSize = 20
Title.TextColor3 = Color3.fromRGB(235,235,235)

-- Description
local Desc = Instance.new("TextLabel", Frame)
Desc.Text = "Best Script In The Game"
Desc.Position = UDim2.new(0,0,0,40)
Desc.Size = UDim2.new(1,0,0,20)
Desc.BackgroundTransparency = 1
Desc.Font = Enum.Font.Gotham
Desc.TextSize = 14
Desc.TextColor3 = Color3.fromRGB(140,140,150)

-- Key Box
local KeyBox = Instance.new("TextBox", Frame)
KeyBox.PlaceholderText = "Enter key..."
KeyBox.Position = UDim2.new(0.1,0,0.45,0)
KeyBox.Size = UDim2.new(0.8,0,0,38)
KeyBox.BackgroundColor3 = Color3.fromRGB(28,28,32)
KeyBox.TextColor3 = Color3.fromRGB(255,255,255)
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 14
Instance.new("UICorner", KeyBox).CornerRadius = UDim.new(0,8)

-- Buttons
local function makeButton(text, pos)
	local btn = Instance.new("TextButton", Frame)
	btn.Text = text
	btn.Size = UDim2.new(0.35,0,0,36)
	btn.Position = pos
	btn.BackgroundColor3 = Color3.fromRGB(40,120,200)
	btn.TextColor3 = Color3.new(1,1,1)
	btn.Font = Enum.Font.GothamSemibold
	btn.TextSize = 14
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0,8)

	btn.MouseEnter:Connect(function()
		TweenService:Create(btn, TweenInfo.new(0.25), {
			BackgroundColor3 = Color3.fromRGB(60,140,220)
		}):Play()
	end)

	btn.MouseLeave:Connect(function()
		TweenService:Create(btn, TweenInfo.new(0.25), {
			BackgroundColor3 = Color3.fromRGB(40,120,200)
		}):Play()
	end)

	return btn
end

local CheckKey = makeButton("Check Key", UDim2.new(0.1,0,0.7,0))
local GetKey = makeButton("Get Key", UDim2.new(0.55,0,0.7,0))

--// Notifications
local function notify(text)
	local Notif = Instance.new("Frame", ScreenGui)
	Notif.Size = UDim2.new(0, 220, 0, 40)
	Notif.Position = UDim2.new(1, 250, 1, -60)
	Notif.BackgroundColor3 = Color3.fromRGB(25,25,30)
	Notif.AnchorPoint = Vector2.new(1,1)

	Instance.new("UICorner", Notif).CornerRadius = UDim.new(0,8)

	local Label = Instance.new("TextLabel", Notif)
	Label.Size = UDim2.new(1, -10, 1, 0)
	Label.Position = UDim2.new(0,10,0,0)
	Label.BackgroundTransparency = 1
	Label.Text = text
	Label.Font = Enum.Font.Gotham
	Label.TextSize = 14
	Label.TextColor3 = Color3.fromRGB(220,220,220)
	Label.TextXAlignment = Enum.TextXAlignment.Left

	-- Slide in
	TweenService:Create(Notif, TweenInfo.new(0.4), {
		Position = UDim2.new(1, -20, 1, -60)
	}):Play()

	task.wait(2)

	-- Slide out
	TweenService:Create(Notif, TweenInfo.new(0.4), {
		Position = UDim2.new(1, 250, 1, -60)
	}):Play()

	task.wait(0.4)
	Notif:Destroy()
end

--// Dragging
local dragging, startPos, startFramePos

TopBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		startPos = input.Position
		startFramePos = Frame.Position
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - startPos
		Frame.Position = UDim2.new(
			startFramePos.X.Scale,
			startFramePos.X.Offset + delta.X,
			startFramePos.Y.Scale,
			startFramePos.Y.Offset + delta.Y
		)
	end
end)

--// Animate In
TweenService:Create(Frame, TweenInfo.new(0.8), {
	BackgroundTransparency = 0
}):Play()

TweenService:Create(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
	Size = UDim2.new(0, 420, 0, 230)
}):Play()

--// Particles (local)
local Holder = Instance.new("Frame", Frame)
Holder.Size = UDim2.new(1,0,1,0)
Holder.BackgroundTransparency = 1
Holder.ClipsDescendants = true

for i = 1, 20 do
	task.spawn(function()
		while true do
			local dot = Instance.new("Frame", Holder)
			dot.Size = UDim2.new(0,2,0,2)
			dot.BackgroundColor3 = Color3.fromRGB(200,200,255)
			dot.Position = UDim2.new(math.random(),0,1,0)
			dot.BackgroundTransparency = 0.4

			local tween = TweenService:Create(dot, TweenInfo.new(math.random(3,6)), {
				Position = UDim2.new(math.random(),0,0,0),
				BackgroundTransparency = 1
			})

			tween:Play()
			tween.Completed:Wait()
			dot:Destroy()
		end
	end)
end

--// Key System
local correctKey = "SAILOR-3847-SDOG-3994"

CheckKey.MouseButton1Click:Connect(function()
	if KeyBox.Text == correctKey then
		notify("Correct Key ✔")

		TweenService:Create(Frame, TweenInfo.new(0.4), {
			Size = UDim2.new(0,0,0,0),
			BackgroundTransparency = 1
		}):Play()

		task.wait(0.4)
		Frame:Destroy()

		loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/b7fcc785d0e8ed057192db5f7827f773dac5022059958fe6c503bf95cc8e76ff/download"))()
	else
		KeyBox.Text = ""
		KeyBox.PlaceholderText = "Invalid key"
		notify("Invalid Key")
	end
end)

GetKey.MouseButton1Click:Connect(function()
	setclipboard("https://link-target.net/1288118/azure-latch")
	notify("Key Link Copied")
end)
