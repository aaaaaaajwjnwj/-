---   XS HUB
local wait = task.wait
local spawn = task.spawn
local Players = game:GetService("Players")
local Player = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local VirtualInputManager = game:GetService('VirtualInputManager')
local TeleportService = game:GetService("TeleportService")
local Player = game:GetService("Players").LocalPlayer

---(Farming)----

local function getNearestZombies()
    local nearest = nil
    local dist = math.huge
    local ZombiesList = game:GetService("Workspace").Zombies:GetChildren()

    if next(ZombiesList) ~= nil then
        for i, v in pairs(ZombiesList) do
            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and not v:FindFirstChild("IsClone") then
                    local m = (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                    if m < dist then
                        dist = m
                        nearest = v
                    end
                end
            end
        end

    return nearest
end

local function getNearestBosses()
    local nearest = nil
    local dist = math.huge
    local isBossFolder = game:GetService("Workspace"):FindFirstChild("Map"):FindFirstChild("BossFolder")

    if isBossFolder then
        local BossList = game:GetService("Workspace").Map.BossFolder:GetChildren()

        if next(BossList) ~= nil then
            for i, v in pairs(BossList) do
                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and not v:FindFirstChild("IsClone") then
                        local m = (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                        if m < dist then
                            dist = m
                            nearest = v
                        end
                    end
                end
            end
        end

    return nearest
end
function autoammo()
game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Reloaded", "3")
end

function MXDMG()
     pcall(function() 
            for i, v in pairs(getgc(true)) do
                if type(v) == 'table' and rawget(v, 'damage') then
                    for j = 1, 2 do
                        if v.damage[j] then
                            for k = 1, 2 do
                              if v.damage[j][k] then
                                 v.damage[j][k] = 100000
                              end
                          end
                      end
                  end
              end
          end
     end)
end

function MXDMG2()
pcall(function() 
   for i, v in pairs(getgc(true)) do
       if type(v) == 'table' and rawget(v, 'magsize') then
            v.vdamage = 10000
            v.vdamage2 = 10000
              end
          end
     end)
end

function NoBoltReload()
    pcall(function()
            for i,v in pairs(getgc(true)) do
                if type(v) == 'table' and rawget(v, 'boltanim') then
                    for j = 1, 15 do
                        if v.boltanim[j] and v.boltanim[j][6] then
                            v.boltanim[j][6] = 0.09
                        end
                        if j == 6 or j == 8 then
                            if v.boltanim[j] and v.boltanim[j][8] then
                              v.boltanim[j][8] = 0.09
                          end
                     end
                 end
                 v.gripanim[6] = 0
             end
         end
    end)
end

function FastFiring()
local spread1 = {
  Increase = 0,
  Decrease = 0,
  Max = 0,
  Min = 0
}

local rec = {
  Tilt = { 0, 0 },
  Side = { 0, 0 },
  Vertical = { 0, 0 },
  Back = { 0, 0 },
  Aimed = 0,
  FirstShot = 0
}

pcall(function()
for i,v in pairs(getgc(true)) do
   if type(v) == 'table' and rawget(v, 'magsize') then
       v.magsize = math.huge
       v.storedammo = math.huge
       v.rpm = math.huge
       v.spread = spread1
       v.recoil = rec
       v.mode = "Auto"
   end
end
end)
end

function FastFiringV2()
local spread1 = {
  Increase = 0,
  Decrease = 0,
  Max = 0,
  Min = 0
}

local rec = {
  Tilt = { 0, 0 },
  Side = { 0, 0 },
  Vertical = { 0, 0 },
  Back = { 0, 0 },
  Aimed = 0,
  FirstShot = 0
}

pcall(function()
for i,v in pairs(getgc(true)) do
   if type(v) == 'table' and rawget(v, 'magsize') then
         v.magsize = math.huge
         v.storedammo = math.huge
         v.rpm = math.huge
         v.spread = spread1
         v.recoil = rec
         v.Rocket = true
         v.velocity = 200
         v.vpenetration = 600
         v.mode = "Rocket"
         v.VisibleRocket = true
         v.vdamage = 10000
         v.vdamage2 = 10000
         v.radius = 50
         v.TracerPart = "Tracer_RocketS"
         v.gravity = 196
            end
        end
    end)
end

function NoReloadAnims()
       pcall(function()
            for i,v in pairs(getgc(true)) do
                if type(v) == 'table' and rawget(v, 'reloadanim') then
                    for j = 1, 15 do
                        if v.reloadanim[j] and v.reloadanim[j][6] then
                            v.reloadanim[j][6] = 0
                        end
                        if j == 6 or j == 8 then
                            if v.reloadanim[j] and v.reloadanim[j][8] then
                              v.reloadanim[j][8] = 0
                          end
                     end
                 end
             end
         end
    end)
end

function FastSwingers()
     pcall(function()
          for i, v in pairs(getgc(true)) do
              if type(v) == 'table' and rawget(v, 'swinganims') then
                     for j = 1, 4 do
                        for k = 1, 4 do
                            if v.swinganims[j] and v.swinganims[j][k] and v.swinganims[j][k][6] then
                                v.swinganims[j][k][6] = 0
                            end
                        end
                    end
                 v.range = 999999999
            end
        end
    end)
end

local fastfire = false
local LoadAmmo = false
local Aimbot = false
local MaxDmg = false
local NoReloader= false
local NoBolt = false
local fastswinging = false
local AutoCollectPresents = false

local OpenUI = Instance.new("ScreenGui") 
local ImageButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner") 
OpenUI.Name = "OpenUI" 
OpenUI.Parent = game:GetService("CoreGui") 
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
ImageButton.Parent = OpenUI 
ImageButton.BackgroundColor3 = Color3.fromRGB(105, 105, 105) 
ImageButton.BackgroundTransparency = 0.8
ImageButton.Position = UDim2.new(0.9, 0, 0.1, 0) 
ImageButton.Size = UDim2.new(0, 50, 0, 50) 
ImageButton.Image = "rbxassetid://18478212250" 
ImageButton.Draggable = true 
ImageButton.Transparency = 1
UICorner.CornerRadius = UDim.new(0, 200) 
UICorner.Parent = ImageButton 
ImageButton.MouseButton1Click:Connect(function()
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(true, "RightControl", false, game)
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(false, "RightControl", false, game)
end)

local identifiedexec = ""
if identifyexecutor then
	identifiedexec = select(1, identifyexecutor())
end
local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/XT114514/rbx/main/vape.lua"))()
local win = UILib:Window("脚本丨僵尸起义 " .. identifiedexec, Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)

local Tab = win:Tab("战斗类")
local Tab2 = win:Tab("基础功能")
local Tab3 = win:Tab("显示功能")

Tab:Toggle("全枪快速射击", false, function(Value)
    fastfire = Value
  repeat
  if fastfire then
   wait(10)
    spawn(FastFiring)
    end
   until fastfire == false
end)

Tab:Toggle("全枪自动换弹", false, function(Value)
  LoadAmmo = Value
    
    repeat
    if LoadAmmo then
    wait(0.2)
    spawn(autoammo)
    end
    until LoadAmmo == false    
    end)

Tab:Toggle("步枪不换弹夹", false, function(Value)
   NoReloader = Value
    repeat
    if NoReloader then
    wait(10)
        spawn(NoReloadAnims)
       end
    until NoReloader == false
    end)
  
Tab:Toggle("狙击枪不换弹夹", false, function(Value)
  NoBolt = Value
    repeat
    if NoBolt then
    wait(10)
        spawn(NoBoltReload)
       end
    until NoBolt == false
    end)

Tab:Toggle("快速挥刀(装备刀)", false, function(Value)
  fastswinging = Value
    repeat
    if fastswinging then
        wait(10)
         spawn(FastSwingers)
         end
        until fastswinging == false
    end)
  
local KillAllTarget = false
local KillTarget = false
    
local function shootAtPlayer(targetPlayer)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local targetPos = targetPlayer.Character.HumanoidRootPart.Position

        local shootData = {
            ["ModelType"] = "Character",
            ["TargetPos"] = targetPos,
            ["Model"] = game:GetService("Players").LocalPlayer.Character,
            ["PlayerName"] = game:GetService("Players").LocalPlayer.Name,
            ["SourcePos"] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
            ["SourcePart"] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            ["WeaponName"] = "PzF 3"
        }

        game:GetService("ReplicatedStorage").RemoteEventF:FireServer(shootData)
    else
        print("找不到该玩家")
    end
end

Tab:Toggle("杀死全部玩家", false, function(Value)
  KillAllTarget = Value
while wait(0.1) and KillAllTarget do
-- Define the username to avoid
local avoidUsername = notshoottarget

-- Loop through all players and shoot at each one except the one with the avoidUsername
for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    if player ~= game:GetService("Players").LocalPlayer and player.Name ~= avoidUsername and player.Name ~= "Peleeelallee" and player.Name ~= "Guilfordy_sagalol" then -- Make sure not to shoot yourself or the specified player
        shootAtPlayer(player)
       end
    end
  end
end)

local function getPlayerByName(name)
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Name == name and player.Name ~= "Peleeelallee" and player.Name ~= "Guilfordy_sagalol" then
            return player
        end
    end
    return nil
end

Tab:Toggle("杀死指定玩家", false, function(Value)
  KillTarget = Value
while wait(0.1) and KillTarget do
local getPlayer = ShootTarget -- Replace "UserName" with the actual username of the player you want to target

local targetPlayer = getPlayerByName(getPlayer)

if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
    local targetPos = targetPlayer.Character.HumanoidRootPart.Position

    local shootData = {
        ["ModelType"] = "Character",
        ["TargetPos"] = targetPos,
        ["Model"] = game:GetService("Players").LocalPlayer.Character,
        ["PlayerName"] = game:GetService("Players").LocalPlayer.Name,
        ["SourcePos"] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
        ["SourcePart"] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        ["WeaponName"] = "PzF 3"
    }

    game:GetService("ReplicatedStorage").RemoteEventF:FireServer(shootData)
else
    print("没有找到玩家")
end
   end
end)

Tab:Textbox("输入玩家用户名",false,function(Value)
  ShootTarget = Value
end)

Tab2:Toggle("自动收集奖励", false, function(Value)
  AutoCollectPresents = Value
while AutoCollectPresents and wait(0.1) do
if game:GetService("Workspace"):FindFirstChild("Map") and game:GetService("Workspace"):FindFirstChild("Map"):FindFirstChild("Decorations") then
   for i, v  in pairs(game:GetService("Workspace").Map.Decorations:GetDescendants()) do
        if v:FindFirstChildWhichIsA("TouchTransmitter") then
              firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
             wait(0.1)
              firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
            end
         end
     end
    end
end)

local HitPart = false
local HitPart2 = false
local HitPartType = "HumanoidRootPart"
local DistanceToBring = 25
local ShowHitPart = false

-- Distances Position
local DistanceX = 25
local DistanceY = 4
local DistanceZ = 25

Tab2:Toggle("隔空打怪", false, function(Value)
  HitPart = Value
    while HitPart and wait(0.1) do
        local player = game:GetService("Players").LocalPlayer
        local charpart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        
        if charpart then
            for i, v in pairs(game:GetService("Workspace").Zombies:GetChildren()) do
                local zombieRootPart = v:FindFirstChild("HumanoidRootPart")
                local zombieHumanoid = v:FindFirstChild("Humanoid")
                
                local clone = nil
                for _, part in pairs(v:GetChildren()) do
                    if part:IsA("BasePart") and part:FindFirstChild("IsClone") then
                        clone = part
                        break
                    end
                end
                
                if zombieRootPart then
                    local distance = (charpart.Position - zombieRootPart.Position).Magnitude
                    local distanceX = math.abs(charpart.Position.X - zombieRootPart.Position.X)
                    local distanceY = math.abs(charpart.Position.Y - zombieRootPart.Position.Y)
                    local distanceZ = math.abs(charpart.Position.Z - zombieRootPart.Position.Z)
                    
                    if distance <= DistanceToBring and distanceX <= DistanceX and distanceY <= DistanceY and distanceZ <= DistanceZ then
                        if not clone then
                            local BypassCFrameKick = zombieRootPart:Clone()
                            BypassCFrameKick.Anchored = true
                            BypassCFrameKick.Name = HitPartType
                            BypassCFrameKick.OriginalSize.Value = Vector3.new(3, 3, 3)
                            BypassCFrameKick.Size = Vector3.new(3, 3, 3)             
                            
                            local isClone = Instance.new("BoolValue")
                            isClone.Name = "IsClone"
                            isClone.Parent = BypassCFrameKick
                            
                            BypassCFrameKick.Parent = v
                            clone = BypassCFrameKick
                        end
                        local offset = charpart.CFrame:VectorToWorldSpace(Vector3.new(0, 0, -6))
                        clone.Position = charpart.Position + offset
                        clone.Name = HitPartType
                            if ShowHitPart then
                             clone.Transparency = 0.7
                          else
                             clone.Transparency = 1
                        end
                    end
                end
            end
        end
    end
end)

Tab2:Toggle("隔空打boss", false, function(Value)
  HitPart2 = Value
    while HitPart2 and wait(0.1) do
        local player = game:GetService("Players").LocalPlayer
        local charpart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        local isBossFolder = game:GetService("Workspace"):FindFirstChild("Map"):FindFirstChild("BossFolder")
        
        if charpart and isBossFolder then
            for i, v in pairs(game:GetService("Workspace").Map.BossFolder:GetChildren()) do
                local bossRootPart = v:FindFirstChild("HumanoidRootPart")
                local bosshumanoid = v:FindFirstChild("Humanoid")
                
                local clone = nil
                for _, part in pairs(v:GetChildren()) do
                    if part:IsA("BasePart") and part:FindFirstChild("IsClone") then
                        clone = part
                        break
                    end
                end
                
                if bossRootPart then
                    local distance = (charpart.Position - bossRootPart.Position).Magnitude
                    
                    if distance <= 10000 then
                        if not clone then
                            local BypassCFrameKick = bossRootPart:Clone()
                            BypassCFrameKick.Anchored = true
                            BypassCFrameKick.Name = "HumanoidRootPart"
                            BypassCFrameKick.OriginalSize.Value = Vector3.new(4, 4, 4)
                            BypassCFrameKick.Size = Vector3.new(4, 4, 4)
                            
                            local isClone = Instance.new("BoolValue")
                            isClone.Name = "IsClone"
                            isClone.Parent = BypassCFrameKick
                            
                            BypassCFrameKick.Parent = v
                            clone = BypassCFrameKick
                        end
                        local offset = charpart.CFrame:VectorToWorldSpace(Vector3.new(0, 0, -8))
                        clone.Position = charpart.Position + offset
                            if ShowHitPart then
                             clone.Transparency = 0.7
                          else
                             clone.Transparency = 1
                        end
                    end
                end
            end
        end
    end
end)

Tab2:Toggle("显示范围", false, function(Value)
  ShowHitPart = Value
end)

local Player = game:GetService("Players").LocalPlayer

local RangeShoot = 25
local function ShootNearestZombies()
    local nearest = nil
    local nearestDistance = RangeShoot  -- Store the initial range here
    local ZombiesList = game:GetService("Workspace").Zombies:GetChildren()

    for _, v in ipairs(ZombiesList) do
        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and not v:FindFirstChild("IsClone") then
            local distance = (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
            if distance < nearestDistance then
                nearestDistance = distance
                nearest = v
            end
        end
    end

    return nearest
end

Tab2:Toggle("杀戮光环", false, function(Value)
  ShootZombies = Value
    
if ShootZombies then
MXDMG2()
MXDMG()
end

    while ShootZombies and wait(DelayShoot) do
        local nearestZombie = ShootNearestZombies()
        
        if nearestZombie then
            local rayOrigin = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
            local rayDirection = (nearestZombie.HumanoidRootPart.Position - rayOrigin).unit * 550
            
            local raycastParams = RaycastParams.new()
            raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
            
            local ignoreList = {Player.Character}
            for _, plr in ipairs(game:GetService("Players"):GetPlayers()) do
                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    table.insert(ignoreList, plr.Character)
                end
            end
            raycastParams.FilterDescendantsInstances = ignoreList

            local raycastResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)

            -- If we hit something, and it's part of the nearest zombie, or if it didn't hit anything (so it's clear path)
            if (raycastResult and raycastResult.Instance:IsDescendantOf(nearestZombie)) or not raycastResult then
                local ohstring1 = "Explosive"
                local ohstring2 = "Rocket"
                local ohstring3 = "VisibleRocket"
                local ohstring4 = "RPG"
                local shootData = {
                    ["ModelType"] = "Character",
                    ["TargetPos"] = nearestZombie.HumanoidRootPart.Position,
                    ["Model"] = Player.Character,
                    ["PlayerName"] = Player.Name,
                    ["SourcePos"] = Vector3.new(0, -1, 0),
                    ["SourcePart"] = {}, 
                    ["WeaponName"] = {}
                }

                --[[Patched by ServerSide Script
                local explosion = Instance.new("Explosion")
                explosion.Position = nearestZombie.HumanoidRootPart.Position
                explosion.BlastRadius = 4
                explosion.BlastPressure = 1
                explosion.ExplosionType = Enum.ExplosionType.NoCraters
                explosion.Parent = game:GetService("Workspace").Ignore.Debris

                explosion.Hit:Connect(function(hitPart)
                    if hitPart and hitPart:IsA("BasePart") then
                        hitPart:BreakJoints()
                    end
                end]]

                game:GetService("ReplicatedStorage").RemoteEventF:FireServer(shootData)
            end
        end
    end
end)

Tab2:Textbox("打怪距离设置",false,function(Value)
  DistanceToBring = tonumber(value) or 25
    DistanceX = tonumber(value) or 25
    DistanceZ = tonumber(value) or 25
end)

Tab2:Textbox("射击范围设置",false,function(Value)
  RangeShoot = tonumber(value) or 25
end)

local ESP = false

Tab3:Toggle("显示僵尸", false, function(Value)
  ESP = Value

    spawn(function()
        while wait(0.2) do
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Zombies:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') and not v:FindFirstChild("IsClone") then
                        local evilHumanoid = v:FindFirstChild("Humanoid")  -- Change "Humanoid" to "EvilHumanoid"
                        
                        if ESP then
                            if not v:FindFirstChild("MobEap") then
                                local BillboardGui = Instance.new("BillboardGui")
                                BillboardGui.Parent = v
                                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                BillboardGui.Active = true
                                BillboardGui.Name = "MobEap"
                                BillboardGui.AlwaysOnTop = true
                                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                         --[[     local frame = Instance.new("Frame")
                                frame.ZIndex = 10
                                frame.BackgroundTransparency = 0.3
                                frame.Size = UDim2.new(0, 30, 0, 30)  -- Adjusted size to make the circle smaller
                                frame.Position = UDim2.new(0.5, -13, 0.5, -5)  -- Positioning relative to center
                                frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                                frame.Parent = BillboardGui
                            
                                local uiCorner = Instance.new("UICorner")
                                uiCorner.CornerRadius = UDim.new(0.5, 0)
                                uiCorner.Parent = frame
                            ]]
                            
                                local TextLabel = Instance.new("TextLabel")
                                TextLabel.Parent = BillboardGui
                                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.BackgroundTransparency = 1.000
                                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                                TextLabel.TextScaled = false
                                TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
                                TextLabel.Font = Enum.Font.GothamBold
                                TextLabel.TextSize = 14  -- Adjust the text size to your preference

                                v.MobEap = BillboardGui  -- Store the BillboardGui in MobEap for later use
                            end

                            local distance = math.floor((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)

                            if evilHumanoid then
                                local health = math.floor(evilHumanoid.Health)
                                v.MobEap.TextLabel.Text = v.Name.." - "..distance.." M\n血量: "..health
                            else
                                v.MobEap.TextLabel.Text = v.Name.." - "..distance.." M"
                            end
                        else
                            if v:FindFirstChild("MobEap") then
                                v.MobEap:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end)
end)

local ESP2 = false

Tab3:Toggle("显示boss", false, function(Value)
  ESP2 = Value

spawn(function()
    while wait(0.2) do
        pcall(function()
          local isBossFolder = game:GetService("Workspace"):FindFirstChild("Map"):FindFirstChild("BossFolder")
            if ESP2 and isBossFolder then
                for i, v in pairs(game:GetService("Workspace").Map.BossFolder:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') and not v:FindFirstChild("IsClone") then
                        local evilHumanoid = v:FindFirstChild("Humanoid")  -- Change "Humanoid" to "EvilHumanoid"
                        
                        if not v:FindFirstChild("MobEap") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "MobEap"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                            
                         --[[   local frame = Instance.new("Frame")
                                frame.ZIndex = 10
                                frame.BackgroundTransparency = 0.3
                                frame.Size = UDim2.new(0, 50, 0, 50)  -- Adjusted size to make the circle smaller
                                frame.Position = UDim2.new(0.5, -20, 0.5, -15)  -- Positioning relative to center
                                frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                                frame.Parent = BillboardGui

                                local uiCorner = Instance.new("UICorner")
                                uiCorner.CornerRadius = UDim.new(0.5, 0)
                                uiCorner.Parent = frame
                             ]]
                             
                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.TextScaled = false
                            TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextSize = 14  -- Adjust the text size to your preference

                            v.MobEap = BillboardGui  -- Store the BillboardGui in MobEap for later use
                        end

                        local distance = math.floor((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)

                        if evilHumanoid then
                            local health = math.floor(evilHumanoid.Health)
                            v.MobEap.TextLabel.Text = v.Name.." - "..distance.." M\n血量: "..health
                        else
                            v.MobEap.TextLabel.Text = v.Name.." - "..distance.." M"
                        end
                    end
                end
            else
                for i, v in pairs(game:GetService("Workspace").Map.BossFolder:GetChildren()) do
                    if v:FindFirstChild("MobEap") then
                        v.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)
    end)