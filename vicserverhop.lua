repeat wait() until game:IsLoaded()

local floatpad = Instance.new("Part", game:GetService("Workspace"))
floatpad.CanCollide = false
floatpad.Anchored = true
floatpad.Transparency = 1
floatpad.Name = "FloatPad"

local loadedscript = game:HttpGet("https://raw.githubusercontent.com/Narnia1337/hi/main/vicseverhop.lua")

noclip = false
local farmVici = false

local function Tween(time, pos)
    noclip = true
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

local ccccount = 0

local function killViciousBeeFunc()
    for _, v in pairs(workspace.Particles:GetChildren()) do
        if string.find(v.Name, "Waiting Thorn") then
            pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end)
        end
    end
    for _, v in pairs(workspace.Monsters:GetChildren()) do
        if string.find(v.Name, "Vici") then
                ccccount = ccccount + 1
                if ccccount == 5 then
                    cccccount = 0
                    Tween(0.5,v.Torso.CFrame - Vector3.new(0, 10, 0))
                else
                Tween(0.5,v.Torso.CFrame + Vector3.new(0, 13, 0))
                end
            vici = true
        end
    end
end

local File = pcall(function()
    AllIDs = readfile("PrevServers.txt")
end)
if not File then
    writefile("PrevServers.txt", game.JobId)
end

local Cookie = "9827A1723F84D079A1CE26ED64A61BE8039FCB8593F9FB2AB70E76154E5772B65CF7464E0CD19994E8447CF4E2086AEA45A3B7B2A90D3DE70E32B57CB758076698025AC3461CFB9E039CD93A091C82520F7CD7A7054338442F816F76CC68AD935A5DD6A3E8B5474AE85ED90B45BE31490AA7565C586F6991C908F16DAEDAC71F41745997C904186F3E6CC0EFF4D32890EE278C35C13C123A14ECF822822CC95BD1675B2A51799E62636ED8223EA745B04D490AD40E00D7DDB7CCF67C4C07E8D0D1BB97510BBC980964A6FADB79F1012F2895F540F95784553A5481517AC028806BE08B4A7D349B0F21C1F07C38EA4E7B40CA4995FD0117CF110B8F924D90B381610DB33B00BC11D5989D164314605A71A2E91F085BD8CFB167DDA253E55587382C70E2EF0083065646298099A2464051CDCBC3FF6A954521C7FD92D067CC9E820366588BB9A2C212C44AE6342B7C5ED87E27FCE421F90689D004B11A7FEF00F52A64E26FD5691E66F0DEA36CCDA0352DD28B02CBB3B13340EC13509CA2E48C32F2B54A08A68B56BDBFCB2AC37ED201E6A1D7797905DC4B6ADD7EDB9FB7CF81C28E962D4E931288CD466589A99590A09CD1B1E54364F1EE4F7DD64EBB33BFF2A3D9F6968F57CDE55F02D6F6A72F935414CFFE5863B4F8C2CA3E6CA56AC0C525BCD3E6535D1BCCAB17EF2A86532C3C739FF6AA67A03612CD28D41133352CA036772091B726DA8166ECE0CAD960E198F166B20BE7DDCEE175FA5208396D2A120B05264AD1AB3E3712AECC4DE0003CD728A99DB8CCFBC44030045E810B774A8C72D63F29B04EF45414A3D0E0E41F350C9FA6880DD2B3FEBF3172C0912F681234968817F9BB65AE75699F258BFC6ACB80522FC97CC44F9ED58C2100C9465036B0BA25FE04AAE166DE6657B20B5841C608F00F8AF8B8F060FC803AC8BB222266B12CEC70F1DB9A"
local actualHour = os.date("!*t").hour
local Deleted = false

local function to12H(hour)
    hour = hour % 24
    return (hour - 1) % 12 + 1
end

local function getTime()
    local date = os.date("*t")
    return ("%02d:%02d"):format(((date.hour % 24) - 1) % 12 + 1, date.min)
end

local function AuthenticateAndReturn(url)
local servers = game.HttpService:JSONDecode(syn.request({
    ["Url"] = url;
    Headers = {
        ["content-type"] = "application/json",
        ["user-agent"] = "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) discord/0.0.305 Chrome/69.0.3497.128 Electron/4.0.8 Safari/537.36",
        ["cookie"] = ".ROBLOSECURITY="..Cookie,
    };
    ["Method"] = "GET";
}).Body)
return servers
end

print("ok1")

local previousCursor = 0

local function fetchIds()
    local retur = nil
    pcall(function()
    retur = readfile("PrevServers.txt")
    end)
    return retur
end

print("ok2")

local function addText(tex)
    local currenttext = nil
    local File = pcall(function()
    currenttext = readfile("PrevServers.txt")
    end)
    if not File then
    writefile("PrevServers.txt", tex)
    else
    writefile("PrevServers.txt", currenttext..tex)
    end
end

local hasteleportedithink = false

local function defTeleport(jobid)
    local success = pcall(function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, jobid, game:GetService("Players").LocalPlayer)
    end)
    if success then hasteleportedithink = true print("Teleporting") end
end

print("ok3")

local function requestTeleport(jobid)
    local current = fetchIds()
    if current ~= nil then
        if not string.find(current,jobid) then
        addText(jobid)
        print(jobid)
        defTeleport(jobid)
        else
            --already visited[?] server
        end
    else
        addText(jobid)
        defTeleport(jobid)
    end
end

print("ok4")
print(tostring(hasteleportedithink))

spawn(function()
    while wait(1) do
        if hasteleportedithink == true then
            wait(2)
            hasteleportedithink = false
        end
    end
end)

local processing = false

local function stawtTeleport()
while true do
if not hasteleportedithink then
local s,e = pcall(function()
repeat
processing = true
local Servers = nil
print("cycling")
if previousCursor == 0 then
Servers = AuthenticateAndReturn("https://games.roblox.com/v1/games/"..tostring(game.PlaceId).."/servers/Public?sortOrder=Desc&excludeFullGames=true&limit=50&startIndex=1")
else
Servers = AuthenticateAndReturn("https://games.roblox.com/v1/games/"..tostring(game.PlaceId).."/servers/Public?sortOrder=Desc&excludeFullGames=true&limit=50&startIndex="..tostring(previousCursor))
end

repeat wait() until Servers ~= nil
warn(previousCursor)
previousCursor = previousCursor + math.random(200,2000)
if previousCursor > 40000 then previousCursor = 1 end
for i,v in pairs(Servers.Collection) do
    if v.PlayersCapacity ~= "6 of 6 people max" then
      requestTeleport(v.Guid)
      warn("requested 2")
end
end
wait(0.075)
until hasteleportedithink == true
processing = false
end)
if not s then warn(e) end
end
wait(2)
end
end

local function isVici()
    local boo = false
        for _, v in pairs(workspace.Particles:GetDescendants()) do
        if string.find(v.Name, "Thorn") then
            boo = true
        end
    end
    for _, v in pairs(workspace.Monsters:GetChildren()) do
        if string.find(v.Name, "Vici") then
            boo = true
        end
    end
return boo
end

spawn(function()
while wait(0.2) do
    if farmVici then
        killViciousBeeFunc()
            for i=1,6 do
        game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(i)
    end
    end
end
end)

local function FarmViciousBee()
    local s,e = pcall(function()
    local obj2tp = nil
    for _, v in pairs(workspace.Particles:GetDescendants()) do
        if string.find(v.Name, "Thorn") then
            if v:IsA("Part") then
            boo = true
            end
        end
    end
    for _, v in pairs(workspace.Monsters:GetChildren()) do
        if string.find(v.Name, "Vici") then
            obj2tp = v.Torso
        end
    end
    pcall(function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = obj2tp.CFrame
    end)
    repeat farmVici = true wait(1) until isVici() == false
    farmVici = false
    end)
    if not s then Log("/n"..e) end
end

wait(0.5)

game:GetService('RunService').Heartbeat:connect(function() 
    if noclip then game.Players.LocalPlayer.Character.Humanoid.BodyTypeScale.Value = 0 floatpad.CanCollide = true floatpad.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y-3.75, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z) task.wait(0)  else floatpad.CanCollide = false end
end)

local function Log(Text,Color,NewLine)
    if Color ~= nil then
        rconsoleprint("@@"..Color.."@@")
    end
    if NewLine then rconsoleprint("\n") end
    rconsolename("Macro v2 Serverhopper")
    rconsoleprint(Text)
end

local rewardsToColor = { ["Stinger"] = "LIGHT_CYAN"; ["Honey"] = "YELLOW"; ["Left"] = "RED"; }

local function generateStyle(notiText)
    local color = "DARK_GRAY"
    for i,v in pairs(rewardsToColor) do
        if string.find(notiText,i) then color = v end
    end
    return color
end

local done = false

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.InProgress then
        if not done then
        local s,e = pcall(function()
        syn.queue_on_teleport(loadedscript) --repeat self
        end)
        if not s then syn.queue_on_teleport(loadedscript) end
        done = true
        end
    end
end)

local lootnum = 0

local succ,err = pcall(function()
if isVici() then
    repeat wait() until workspace:FindFirstChild(game:GetService("Players").LocalPlayer.Name):FindFirstChild("HumanoidRootPart")
    wait(1)
    Log(" ",nil,true)
    Log("========= Vicious Bee Found =========","LIGHT_GREEN",true)
    Log(" ",nil,true)
    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:WaitForChild("Alerts").ChildAdded:Connect(function(i)
        wait(0.5)
        if string.find(i.Text,"from Vic") then
            lootnum = lootnum + 1
            Log(i.Text,generateStyle(i.Text),true)
        end
    end)
    game:GetService("Players").PlayerRemoving:Connect(function(plr)
        if plr.Name == game:GetService("Players").LocalPlayer.Name then
            if lootnum == 0 then
                Log("Vicious Bee Despawned","RED",true) 
            end
        end
    end)
    FarmViciousBee()
    wait(0.5)
    stawtTeleport()
    else
    stawtTeleport()
end
end)

if not succ then stawtTeleport() Log("Vicious Bee Despawned","RED",true) end repeat wait() until game:IsLoaded()
