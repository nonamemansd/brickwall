local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")

local plr = Players.LocalPlayer
local camera = Workspace.CurrentCamera

-- =================================================================
-- 1. SETUP GUI (DELTA OPTIMIZED)
-- =================================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DeltaAirwalkMenu"
ScreenGui.ResetOnSpawn = false -- PENTING: Agar GUI tidak hilang saat mati
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Coba masukkan ke CoreGui (lebih aman), jika gagal masukkan ke PlayerGui
pcall(function()
    ScreenGui.Parent = CoreGui
end)

if not ScreenGui.Parent then
    ScreenGui.Parent = plr:WaitForChild("PlayerGui")
end

-- TOMBOL MINI (OPEN/CLOSE) - Bisa digeser agar tidak menghalangi tombol HP
local OpenButton = Instance.new("TextButton")
OpenButton.Name = "OpenButton"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
OpenButton.Position = UDim2.new(0, 50, 0, 50) -- Posisi awal aman
OpenButton.Size = UDim2.new(0, 50, 0, 50)
OpenButton.Font = Enum.Font.SourceSansBold
OpenButton.Text = "MENU"
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.TextSize = 14
OpenButton.Active = true
OpenButton.Draggable = true -- Bisa digeser pakai jari

local UICornerOpen = Instance.new("UICorner")
UICornerOpen.CornerRadius = UDim.new(0, 8)
UICornerOpen.Parent = OpenButton

-- FRAME UTAMA (MENU)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.Position = UDim2.new(0.5, -110, 0.5, -100) -- Tengah Layar
MainFrame.Size = UDim2.new(0, 220, 0, 200)
MainFrame.Visible = false -- Awalnya tertutup
MainFrame.Active = true
MainFrame.Draggable = true -- Bisa digeser

local UICornerFrame = Instance.new("UICorner")
UICornerFrame.CornerRadius = UDim.new(0, 10)
UICornerFrame.Parent = MainFrame

-- JUDUL MENU
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 5)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "DELTA SCRIPT"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22

-- [1] TOMBOL AIRWALK (TOGGLE)
local AirwalkBtn = Instance.new("TextButton")
AirwalkBtn.Name = "AirwalkBtn"
AirwalkBtn.Parent = MainFrame
AirwalkBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50) -- Merah (OFF)
AirwalkBtn.Position = UDim2.new(0.1, 0, 0.25, 0)
AirwalkBtn.Size = UDim2.new(0.8, 0, 0, 45) -- Lebih besar untuk sentuhan
AirwalkBtn.Font = Enum.Font.SourceSansBold
AirwalkBtn.Text = "AIRWALK: OFF"
AirwalkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
AirwalkBtn.TextSize = 18

local UICornerAW = Instance.new("UICorner")
UICornerAW.CornerRadius = UDim.new(0, 6)
UICornerAW.Parent = AirwalkBtn

-- [2] TOMBOL DELETE MAP
local DeleteMapBtn = Instance.new("TextButton")
DeleteMapBtn.Name = "DeleteMapBtn"
DeleteMapBtn.Parent = MainFrame
DeleteMapBtn.BackgroundColor3 = Color3.fromRGB(255, 140, 0) -- Oranye
DeleteMapBtn.Position = UDim2.new(0.1, 0, 0.55, 0)
DeleteMapBtn.Size = UDim2.new(0.8, 0, 0, 45) -- Lebih besar untuk sentuhan
DeleteMapBtn.Font = Enum.Font.SourceSansBold
DeleteMapBtn.Text = "DELETE GEOMETRY"
DeleteMapBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
DeleteMapBtn.TextSize = 18

local UICornerDel = Instance.new("UICorner")
UICornerDel.CornerRadius = UDim.new(0, 6)
UICornerDel.Parent = DeleteMapBtn

-- INFO TEXT
local Info = Instance.new("TextLabel")
Info.Parent = MainFrame
Info.BackgroundTransparency = 1
Info.Position = UDim2.new(0, 0, 0.85, 0)
Info.Size = UDim2.new(1, 0, 0, 20)
Info.Font = Enum.Font.SourceSans
Info.Text = "Control: Analog / WASD"
Info.TextColor3 = Color3.fromRGB(150, 150, 150)
Info.TextSize = 14

-- =================================================================
-- 2. LOGIKA AIRWALK (OPTIMIZED)
-- =================================================================

local airwalkEnabled = false
local bodyVelocity = nil
local bodyGyro = nil
local Speed = 50

-- Fungsi Gerak (Support Mobile/Analog & Keyboard)
function getMovementVector()
	local moveVector = Vector3.new(0, 0, 0)
	local lookVector = camera.CFrame.LookVector
	local rightVector = camera.CFrame.RightVector
	
	-- Ambil input dari Character Humanoid MoveDirection (Otomatis support Analog HP)
	if plr.Character and plr.Character:FindFirstChild("Humanoid") then
		local moveDir = plr.Character.Humanoid.MoveDirection
		if moveDir.Magnitude > 0 then
			moveVector = moveDir
		end
	end

	-- Tambahan tombol keyboard (Opsional untuk PC)
	if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
		moveVector = moveVector + Vector3.new(0, 1, 0)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
		moveVector = moveVector - Vector3.new(0, 1, 0)
	end
    
    -- Tombol UI untuk naik turun di HP (Opsional, tapi analog biasanya cukup)
    -- Jika di HP, arahkan kamera ke atas untuk naik, ke bawah untuk turun saat bergerak.
    if UserInputService.TouchEnabled then
        -- Logika sederhana: jika airwalk nyala, ikuti arah kamera murni
        if moveVector.Magnitude > 0 then
            moveVector = camera.CFrame.LookVector * moveVector.Magnitude
        end
    end

	return moveVector
end

RunService.RenderStepped:Connect(function()
	if airwalkEnabled and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
		local rootPart = plr.Character.HumanoidRootPart
		local humanoid = plr.Character:FindFirstChild("Humanoid")

		if not bodyVelocity or bodyVelocity.Parent ~= rootPart then
			bodyVelocity = Instance.new("BodyVelocity")
			bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
			bodyVelocity.Parent = rootPart
		end

		if not bodyGyro or bodyGyro.Parent ~= rootPart then
			bodyGyro = Instance.new("BodyGyro")
			bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
			bodyGyro.D = 10
			bodyGyro.P = 10000
			bodyGyro.Parent = rootPart
		end

		if humanoid then 
			humanoid.PlatformStand = true 
			-- Ubah state agar tidak mencoba jatuh
			humanoid:ChangeState(Enum.HumanoidStateType.Physics)
		end

		local moveDir = getMovementVector()
		
		-- Jika tidak ada input gerak, berhenti di tempat
		if moveDir.Magnitude == 0 then
			bodyVelocity.Velocity = Vector3.new(0, 0, 0)
		else
			bodyVelocity.Velocity = moveDir * Speed
		end
		
		bodyGyro.CFrame = CFrame.new(rootPart.Position, rootPart.Position + camera.CFrame.LookVector)
	else
		if bodyVelocity then bodyVelocity:Destroy() bodyVelocity = nil end
		if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
		if plr.Character and plr.Character:FindFirstChild("Humanoid") then
			plr.Character.Humanoid.PlatformStand = false
            plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
		end
	end
end)

-- =================================================================
-- 3. INTERAKSI TOMBOL
-- =================================================================

-- Tombol Airwalk
AirwalkBtn.MouseButton1Click:Connect(function()
	airwalkEnabled = not airwalkEnabled
	if airwalkEnabled then
		AirwalkBtn.Text = "AIRWALK: ON"
		AirwalkBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
	else
		AirwalkBtn.Text = "AIRWALK: OFF"
		AirwalkBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
	end
end)

-- Tombol Delete Map
DeleteMapBtn.MouseButton1Click:Connect(function()
	local map = Workspace:FindFirstChild("Map")
	if map and map:FindFirstChild("Geometry") then
		map.Geometry:Destroy()
		DeleteMapBtn.Text = "SUKSES DIHAPUS!"
		DeleteMapBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		wait(1)
		DeleteMapBtn.Text = "DELETE GEOMETRY"
		DeleteMapBtn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	else
		DeleteMapBtn.Text = "TIDAK DITEMUKAN"
		wait(1)
		DeleteMapBtn.Text = "DELETE GEOMETRY"
	end
end)

-- Tombol Buka/Tutup Menu
local isMenuOpen = false
OpenButton.MouseButton1Click:Connect(function()
	isMenuOpen = not isMenuOpen
	MainFrame.Visible = isMenuOpen
	if isMenuOpen then
		OpenButton.Text = "X"
		OpenButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
	else
		OpenButton.Text = "MENU"
		OpenButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	end
end)
