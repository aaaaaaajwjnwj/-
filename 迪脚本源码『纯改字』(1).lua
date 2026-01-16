game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "帅脚本",
  Text = "欢迎使用帅脚本",
  Duration = 1,
  Callback = bindable,
  Button1 = "脚本功能多",
  Button2 = "感谢您的使用",
})
wait(1.5)
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "帅脚本",
  Text = "帅脚本更新日期12月26日修复问题 本来想搞成检测服务器ID的 后面还是因为麻烦 就不搞了",
  Icon = "rbxassetid://18941716391",
  Duration = 1,
  Callback = bindable,
  Button2 = "请勿倒卖",
})
wait(1.5)
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "帅脚本",
  Text = "每周都不会更新几个服务器 更新慢 请不见谅",
  Duration = 2,
  Callback = bindable,
  Button1 = "祝您使用愉快",
  Button2 = "玩的开心",
})
wait(1.5)
local VirtualUserService = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
  
  VirtualUserService:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
  wait(1)
  VirtualUserService:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "帅脚本",
  Text = "已自动开启反挂机",
  Duration = 2,
  Callback = bindable,
  Button1 = "开启成功",
  Button2 = "谢谢使用",
})
local RevenantLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
RevenantLib.DefaultColor = Color3.fromRGB(255, 0, 0)
RevenantLib:Notification({
  Text = "帅脚本作者赠予: 如果你使用该脚本100%是泄露出去的只有内部人员才知道\u{e000}",
  Duration = 20,
})
wait(1)
RevenantLib:Notification({
  Text = "帅脚本帮助者:😂 同学贡献0\u{e000}",
  Duration = 20,
})
wait(1)
RevenantLib:Notification({
  Text = "谢谢大家一直以来的支持^ω^",
  Duration = 6,
})
local PlayerConfig = {
  playernamedied = "",
  dropdown = {},
  LoopTeleport = false,
  message = "",
  sayCount = 1,
  sayFast = false,
  autoSay = false,
}
local MovementConfig = {
  tpwalkslow = 0,
  tpwalkmobile = 0,
  tpwalkquick = 0,
  tpwalkslowenable = false,
  tpwalkmobileenable = false,
  tpwalkquickenable = false,
  spinspeed = 0,
  HitboxStatue = false,
  HitboxSize = 0,
  HitboxTransparency = 1,
  HitboxBrickColor = "Really red",
  DefaultFPS = 60,
  CurrentFPS = 60,
  FPSLocked = false,
  FPSVisible = false,
}
local ColorConfig = {
  ['红色']= Color3.fromRGB(255, 0, 0),
  ['蓝色'] = Color3.fromRGB(0, 0, 255),
  ['黄色'] = Color3.fromRGB(255, 255, 0),
  ['绿色'] = Color3.fromRGB(0, 255, 0),
  ['青色'] = Color3.fromRGB(0, 255, 255),
  ['橙色'] = Color3.fromRGB(255, 165, 0),
  ['紫色'] = Color3.fromRGB(128, 0, 128),
  ['白色'] = Color3.fromRGB(255, 255, 255),
  ['黑色'] = Color3.fromRGB(0, 0, 0),
}
local AimConfig = {
  fovsize = 50,
  fovlookAt = false,
  fovcolor = Color3.fromRGB(0, 255, 0),
  fovthickness = 2,
  Visible = false,
  distance = 200,
  ViewportSize = 2,
  Transparency = 5,
  Position = "Head",
  teamCheck = false,
  wallCheck = false,
  aliveCheck = false,
  prejudgingselfsighting = false,
  prejudgingselfsightingdistance = 100,
  smoothness = 5,
  aimSpeed = 5,
  targetLock = false,
  hitMarker = false,
  dynamicFOV = false,
  dynamicFOVScale = 1.5,
  priorityMode = "Smart",
  aimMode = "AI",
  autoFire = false,
  fireRate = 10,
  bulletDelay = 0.1,
  weaponSwitch = false,
  threatPriority = false,
  healthPriority = false,
}
local BodyPartMap = {
  ['头部'] = "Head",
  ['脖子'] = "HumanoidRootPart",
  ['躯干'] = "Torso",
  ['左臂'] = "Left Arm",
  ['右臂'] = "Right Arm",
  ['左腿'] = "Left Leg",
  ['右腿'] = "Right Leg",
  ['左手'] = "LeftHand",
  ['右手'] = "RightHand",
  ['左小臂'] = "LeftLowerArm",
  ['右小臂'] = "RightLowerArm",
  ['左大臂'] = "LeftUpperArm",
  ['右大臂'] = "RightUpperArm",
  ['左脚'] = "LeftFoot",
  ['左小腿'] = "LeftLowerLeg",
  ['上半身'] = "UpperTorso",
  ['左大腿'] = "LeftUpperLeg",
  ['右脚'] = "RightFoot",
  ['右小腿'] = "RightLowerLeg",
  ['下半身'] = "LowerTorso",
  ['右大腿'] = "RightUpperLeg",
}
function shuaxinlb(includeSelf)
  
  PlayerConfig.dropdown = {}
  if includeSelf == true then
    for _, player in pairs(game.Players:GetPlayers()) do
      table.insert(PlayerConfig.dropdown, player.Name)
    end
  else
    local localPlayer = game.Players.LocalPlayer
    for _, player in pairs(game.Players:GetPlayers()) do
      if player ~= localPlayer then
        table.insert(PlayerConfig.dropdown, player.Name)
      end
    end
  end
end
shuaxinlb(true)
function Notify(title, text, icon, duration)
  
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = title,
    Text = text,
    Icon = icon,
    Duration = duration,
  })
end
local function SafeCall(func, ...)
  
  local success, result = pcall(func, ...)
  if not success then
    return nil
  end
  return result
end
local FOVCircle = nil
local FOVLine1 = nil
local FOVLine2 = nil
local function InitFOV(radius, color, thickness, transparency)
  
  local RunService = game:GetService("RunService")
  local UserInputService = game:GetService("UserInputService")
  local Players = game:GetService("Players")
  local Camera = game.Workspace.CurrentCamera
  if FOVCircle then
    FOVCircle:Remove()
    FOVCircle = nil
  end
  FOVCircle = Drawing.new("Circle")
  FOVCircle.Visible = true
  FOVCircle.Thickness = thickness
  FOVCircle.Color = color
  FOVCircle.Filled = false
  FOVCircle.Radius = radius
  FOVCircle.Position = Camera.ViewportSize / 2
  FOVCircle.Transparency = transparency
  FOVLine1 = Drawing.new("Line")
  FOVLine1.Visible = false
  FOVLine1.Thickness = 2
  FOVLine1.Color = Color3.fromRGB(255, 0, 0)
  FOVLine1.Transparency = 1
  FOVLine2 = Drawing.new("Line")
  FOVLine2.Visible = true
  FOVLine2.Thickness = 1
  FOVLine2.Color = Color3.fromRGB(255, 255, 255)
  FOVLine2.Transparency = 1
  local function UpdateFOVDisplay()
    
    local viewportSize = Camera.ViewportSize
    FOVCircle.Position = viewportSize / 2
    if AimConfig.dynamicFOV then
      FOVCircle.Radius = AimConfig.fovsize * AimConfig.dynamicFOVScale
    else
      FOVCircle.Radius = AimConfig.fovsize
    end
    FOVLine2.From = Vector2.new(viewportSize.X / 2 - 5, viewportSize.Y / 2)
    FOVLine2.To = Vector2.new(viewportSize.X / 2 + 5, viewportSize.Y / 2)
    FOVLine2.From = Vector2.new(viewportSize.X / 2, viewportSize.Y / 2 - 5)
    FOVLine2.To = Vector2.new(viewportSize.X / 2, viewportSize.Y / 2 + 5)
  end
  UserInputService.InputBegan:Connect(function(input)
    
    if input.KeyCode == Enum.KeyCode.Delete then
      RunService:UnbindFromRenderStep("FOVUpdate")
      FOVCircle:Remove()
      FOVCircle = nil
      FOVLine1:Remove()
      FOVLine1 = nil
      FOVLine2:Remove()
      FOVLine2 = nil
    end
  end)
  RunService.RenderStepped:Connect(function()
    
    UpdateFOVDisplay()
  end)
end
local function CleanupFOV()
  
  if FOVCircle then
    FOVCircle:Remove()
    FOVCircle = nil
  end
  if FOVLine1 then
    FOVLine1:Remove()
    FOVLine1 = nil
  end
  if FOVLine2 then
    FOVLine2:Remove()
    FOVLine2 = nil
  end
end
local function UpdateFOVSettings()
  
  if FOVCircle then
    FOVCircle.Thickness = AimConfig.fovthickness
    FOVCircle.Radius = AimConfig.fovsize
    FOVCircle.Color = AimConfig.fovcolor
    FOVCircle.Transparency = AimConfig.Transparency / 10
  end
end
local function IsSameTeam(player)
  
  return player.Team == game.Players.LocalPlayer.Team
end
local function IsAlive(player)
  
  return player.Character and player.Character:FindFirstChild("Humanoid") and 0 < player.Character.Humanoid.Health
end
local function CheckWall(player, bodyPart)
  
  
  if not AimConfig.wallCheck then
    return true
  end
  local localCharacter = game.Players.LocalPlayer.Character
  if not localCharacter then
    return false
  end
  local targetPart = player.Character and player.Character:FindFirstChild(bodyPart)
  if not targetPart then
    return false
  end
  local ray = Ray.new(game.Workspace.CurrentCamera.CFrame.Position, targetPart.Position - game.Workspace.CurrentCamera.CFrame.Position)
  local workspace = game.Workspace
  local hitPart, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {
    localCharacter
  })
  local isVisible
  if hitPart then
    isVisible = hitPart:IsDescendantOf(player.Character)
  else
    isVisible = true
  end
  return isVisible
end
local function PredictPosition(player, part)
  
  return part.Position + part.AssemblyLinearVelocity * ((part.Position - game.Workspace.CurrentCamera.CFrame.Position)).Magnitude / 1000
end
local function IsInFOV(position)
  
  local camera = game.Workspace.CurrentCamera
  local viewportPoint = camera:WorldToViewportPoint(position)
  return (Vector2.new(viewportPoint.X, viewportPoint.Y) - camera.ViewportSize / 2).Magnitude <= AimConfig.fovsize
end
local function GetBestTarget(bodyPart)
  
  local bestScore = -math.huge
  local bestTarget = nil	
  for _, player in ipairs(game.Players:GetPlayers()) do
    if (not AimConfig.aliveCheck or IsAlive(player)) and player ~= game.Players.LocalPlayer then
      local targetPart = player.Character and player.Character:FindFirstChild(bodyPart)
      if targetPart then
        local distance = (targetPart.Position - game.Workspace.CurrentCamera.CFrame.Position).Magnitude
        -- ...existing code...
        local speed = targetPart.AssemblyLinearVelocity.Magnitude
        local camera = workspace.CurrentCamera
        local screenPoint, isVisible = camera:WorldToViewportPoint(targetPart.Position) -- screenPoint 是 Vector3
        local crosshairDistance = math.huge
        
        if isVisible and screenPoint then
            local viewportPos = Vector2.new(screenPoint.X, screenPoint.Y)
            crosshairDistance = (viewportPos - camera.ViewportSize / 2).Magnitude
        end
        
        local priorityScore = 0
        if AimConfig.priorityMode == "Distance" then
            priorityScore = -distance
        -- ...existing code...
        elseif AimConfig.priorityMode == "Crosshair" then
          priorityScore = -crosshairDistance
        elseif AimConfig.priorityMode == "Speed" then
          priorityScore = speed
        elseif AimConfig.priorityMode == "Smart" then
          priorityScore = -distance * 0.5 + speed * 0.3 - crosshairDistance * 0.2
        end
        if AimConfig.threatPriority then
          priorityScore = priorityScore * (player:GetAttribute("ThreatLevel") or 1)
        end
        if AimConfig.healthPriority then
          priorityScore = priorityScore * 1 / player.Character.Humanoid.Health
        end
        if bestScore < priorityScore and distance <= AimConfig.distance and (not AimConfig.teamCheck or AimConfig.teamCheck and not IsSameTeam(player)) and (not AimConfig.wallCheck or AimConfig.wallCheck and CheckWall(player, bodyPart)) then
          bestScore = priorityScore
          bestTarget = player
        end
      end
    end
  end
  return bestTarget
end
local function AimAI()
  
  local target = GetBestTarget(AimConfig.Position)
  if target and target.Character:FindFirstChild(AimConfig.Position) then
    local targetPart = target.Character[AimConfig.Position]
    local targetPosition = targetPart.Position
    if IsInFOV(targetPosition) then
      if AimConfig.prejudgingselfsighting then
        targetPosition = PredictPosition(target, targetPart)
      end
      if (not AimConfig.teamCheck or not IsSameTeam(target)) and (not AimConfig.wallCheck or CheckWall(target, AimConfig.Position)) then
        local smoothnessFactor = math.max(0.1, 1 / AimConfig.smoothness)
        local aimSpeedFactor = math.max(0.1, AimConfig.aimSpeed * 0.1)
        local currentCFrame = game.Workspace.CurrentCamera.CFrame
        game.Workspace.CurrentCamera.CFrame = currentCFrame:Lerp(CFrame.new(currentCFrame.Position, targetPosition), smoothnessFactor * aimSpeedFactor)
        if FOVLine1 then
          local viewportPoint = game.Workspace.CurrentCamera:WorldToViewportPoint(targetPosition)
          FOVLine1.From = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.X / 2, game.Workspace.CurrentCamera.ViewportSize.Y / 2)
          FOVLine1.To = Vector2.new(viewportPoint.X, viewportPoint.Y)
          FOVLine1.Visible = true
        end
        if AimConfig.autoFire then
          local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
          if tool and 1 / AimConfig.fireRate <= tick() - (tool:GetAttribute("LastFireTime") or 0) then
            tool:Activate()
            tool:SetAttribute("LastFireTime", tick())
          end
        end
      end
    elseif FOVLine1 then
      FOVLine1.Visible = false
    end
  elseif FOVLine1 then
    FOVLine1.Visible = false
  end
end
local function AimFunction()
  
  local target = GetBestTarget(AimConfig.Position)
  if target and target.Character:FindFirstChild(AimConfig.Position) then
    local targetPart = target.Character[AimConfig.Position]
    local targetPosition = targetPart.Position
    if IsInFOV(targetPosition) then
      local timeToTarget = ((targetPart.Position - game.Workspace.CurrentCamera.CFrame.Position)).Magnitude / 1000
      local predictedPosition = targetPosition + targetPart.AssemblyLinearVelocity * timeToTarget + 0.5 * Vector3.new(0, -workspace.Gravity, 0) * timeToTarget ^ 2
      if (not AimConfig.teamCheck or not IsSameTeam(target)) and (not AimConfig.wallCheck or CheckWall(target, AimConfig.Position)) then
        local smoothnessFactor = math.max(0.1, 1 / AimConfig.smoothness)
        local aimSpeedFactor = math.max(0.1, AimConfig.aimSpeed * 0.1)
        local currentCFrame = game.Workspace.CurrentCamera.CFrame
        game.Workspace.CurrentCamera.CFrame = currentCFrame:Lerp(CFrame.new(currentCFrame.Position, predictedPosition), smoothnessFactor * aimSpeedFactor)
        if FOVLine1 then
          local viewportPoint = game.Workspace.CurrentCamera:WorldToViewportPoint(predictedPosition)
          FOVLine1.From = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.X / 2, game.Workspace.CurrentCamera.ViewportSize.Y / 2)
          FOVLine1.To = Vector2.new(viewportPoint.X, viewportPoint.Y)
          FOVLine1.Visible = true
        end
        if AimConfig.autoFire then
          local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
          if tool and 1 / AimConfig.fireRate <= tick() - (tool:GetAttribute("LastFireTime") or 0) then
            tool:Activate()
            tool:SetAttribute("LastFireTime", tick())
          end
        end
      end
    elseif FOVLine1 then
      FOVLine1.Visible = false
    end
  elseif FOVLine1 then
    FOVLine1.Visible = false
  end
end
local function UpdateDynamicFOV()
  
  if AimConfig.dynamicFOV then
    local target = GetBestTarget(AimConfig.Position)
    if target and target.Character:FindFirstChild(AimConfig.Position) then
      AimConfig.fovsize = math.clamp(20 / ((target.Character[AimConfig.Position].Position - game.Workspace.CurrentCamera.CFrame.Position)).Magnitude / 50 * (1 + target.Character[AimConfig.Position].AssemblyLinearVelocity.Magnitude / 100), 10, 100)
      UpdateFOVSettings()
    end
  end
end
game:GetService("RunService").RenderStepped:Connect(function()
  
  if AimConfig.fovlookAt then
    if AimConfig.aimMode == "AI" then
      AimAI()
    elseif AimConfig.aimMode == "Function" then
      AimFunction()
    end
    UpdateDynamicFOV()
  end
end)
local MotionBlurEnabled = false
local BlurEffectInstance = nil
local BlurAmount = 15
local BlurAmplifier = 5
local BlurSmoothness = 0.15
local BlurThreshold = 0.05
local BlurIntensity = 1
local BlurColor = Color3.new(0, 0, 0)
local BlurDirection = Vector2.new(1, 0)
local BlurUV = {
  0,
  0,
  1,
  1
}
local PreviousLookVector = Vector3.zero
local LastUpdateTime = tick()
local BlurTypes = {
  "MotionBlur",
  "RadialBlur",
  "DirectionalBlur"
}
local CurrentBlurType = BlurTypes[1]
local BlurPresets = {
  {
    name = "默认",
    amount = 15,
    amplifier = 5,
    smoothness = 0.15,
    threshold = 0.05,
  },
  {
    name = "强烈",
    amount = 25,
    amplifier = 10,
    smoothness = 0.05,
    threshold = 0.02,
  },
  {
    name = "柔和",
    amount = 8,
    amplifier = 3,
    smoothness = 0.2,
    threshold = 0.1,
  }
}
local function CreateBlurEffect(parent)
  
  if BlurEffectInstance then
    BlurEffectInstance:Destroy()
  end
  BlurEffectInstance = Instance.new("BlurEffect", parent)
  BlurEffectInstance.Name = "EnhancedMotionBlur"
  BlurEffectInstance.Size = 0
end
local function UpdateMotionBlur(camera, humanoid)
  
  if not BlurEffectInstance or not MotionBlurEnabled then
    return 
  end
  local currentLookVector = camera.CFrame.LookVector
  local lookVectorChange = (currentLookVector - PreviousLookVector).Magnitude
  if BlurThreshold < lookVectorChange then
    BlurEffectInstance.Size = BlurEffectInstance.Size + (math.abs(lookVectorChange) * BlurAmount * BlurAmplifier - BlurEffectInstance.Size) * BlurSmoothness
  else
    BlurEffectInstance.Size = BlurEffectInstance.Size * (1 - BlurSmoothness)
  end
  PreviousLookVector = currentLookVector
end
local function SetBlurType(blurType)
  
  CurrentBlurType = blurType
  if BlurEffectInstance then
    BlurEffectInstance:Destroy()
    CreateBlurEffect(workspace.CurrentCamera)
  end
end
local function ApplyBlurPreset(preset)
  
  BlurAmount = preset.amount
  BlurAmplifier = preset.amplifier
  BlurSmoothness = preset.smoothness
  BlurThreshold = preset.threshold
end
local TeleportWalkThreads = 5
local TeleportWalkEnabled = false
local TeleportWalkRunning = false
local LocalPlayer = game:GetService("Players").LocalPlayer
local HeartbeatService = game:GetService("RunService").Heartbeat
local function TeleportWalk(character, humanoid)
  
  if TeleportWalkEnabled == true then
    TeleportWalkRunning = false
    HeartbeatService:Wait()
    task.wait(0.1)
    HeartbeatService:Wait()
    for threadIndex = 1, TeleportWalkThreads, 1 do
      spawn(function()
        
        TeleportWalkRunning = true
        while TeleportWalkRunning do
          local deltaTime = HeartbeatService:Wait()
          if deltaTime then
            if character then
              if humanoid then
                if humanoid.Parent then
                  local moveMagnitude = humanoid.MoveDirection.Magnitude
                  if moveMagnitude > 0 then
                    character:TranslateBy(humanoid.MoveDirection)
                  end
                else
                  break
                end
              else
                break
              end
            else
              break
            end
          else
            break
          end
        end
      end)
    end
  end
end
LocalPlayer.CharacterAdded:Connect(function(character)
  
  local characterInstance = LocalPlayer.Character
  if characterInstance then
    task.wait(0.7)
    characterInstance.Humanoid.PlatformStand = false
    characterInstance.Animate.Disabled = false
  end
end)
local UILibrary = loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/%E7%9A%AE%E8%84%9A%E6%9C%ACUI%E6%BA%90%E7%A0%81.lua]]))():new("帅脚本")
local InfoTab = UILibrary:Tab("『信息』", "18930406865")
local PlayerInfoSection = InfoTab:section("玩家信息", true)
PlayerInfoSection:Label("您的注入器:" .. identifyexecutor())
PlayerInfoSection:Label("您的用户名:" .. game.Players.LocalPlayer.Character.Name)
PlayerInfoSection:Label("您的名称:" .. game.Players.LocalPlayer.DisplayName)
PlayerInfoSection:Label("您当前服务器的ID:" .. game.GameId)
PlayerInfoSection:Label("您的用户ID:" .. game.Players.LocalPlayer.UserId)
PlayerInfoSection:Label("您的客户端ID:" .. game:GetService("RbxAnalyticsService"):GetClientId())
PlayerInfoSection:Toggle("开/关帅脚本用户名称显示", "Toggle", false, function(enabled)
  
  if enabled then
    XM = true
    while XM do
      local screenGui = Instance.new("ScreenGui", game.CoreGui)
      local textLabel = Instance.new("TextLabel", screenGui)
      local gradient = Instance.new("UIGradient")
      screenGui.Name = "UserGui"
      screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
      screenGui.Enabled = true
      textLabel.Name = "UserLabel"
      textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
      textLabel.BackgroundTransparency = 1
      textLabel.BorderColor3 = Color3.new(0, 0, 0)
      textLabel.Position = UDim2.new(0.8, 0.8, 0.0009, 0)
      textLabel.Size = UDim2.new(0, 135, 0, 50)
      textLabel.Font = Enum.Font.GothamSemibold
      textLabel.Text = "尊贵的帅脚本用户: " .. game.Players.LocalPlayer.DisplayName
      textLabel.TextColor3 = Color3.new(1, 1, 1)
      textLabel.TextScaled = true
      textLabel.TextSize = 14
      textLabel.TextWrapped = true
      textLabel.Visible = true
      gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.1, Color3.fromRGB(255, 127, 0)),
        ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255, 255, 0)),
        ColorSequenceKeypoint.new(0.3, Color3.fromRGB(0, 255, 0)),
        ColorSequenceKeypoint.new(0.4, Color3.fromRGB(0, 255, 255)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 0, 255)),
        ColorSequenceKeypoint.new(0.6, Color3.fromRGB(139, 0, 255)),
        ColorSequenceKeypoint.new(0.7, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.8, Color3.fromRGB(255, 127, 0)),
        ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 255, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0))
      })
      gradient.Rotation = 10
      gradient.Parent = textLabel
      game:GetService("TweenService"):Create(gradient, TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1), {
        Rotation = 360,
      }):Play()
      wait(0.1)
    end
  else
    XM = false
  end
end)
local AuthorInfoSection = InfoTab:section("作者信息", true)
AuthorInfoSection:Label("甩脚本")
AuthorInfoSection:Label("永不跑路的脚本")
AuthorInfoSection:Label("作者: 小帅")
AuthorInfoSection:Label("作者QQ: 等待添加")
AuthorInfoSection:Label("QQ主群: 1075226283")
AuthorInfoSection:Label("QQ副群: 空")
AuthorInfoSection:Label("QQ二群: 空")
AuthorInfoSection:Label("QQ三群: ")
AuthorInfoSection:Label("四群: ")
AuthorInfoSection:Label("解卡群: ")
AuthorInfoSection:Label("解卡群二群: ")
AuthorInfoSection:Label("十分感谢小帅对我的支持与帮助")
AuthorInfoSection:Label("XX给我提供了许多的功能源码")
AuthorInfoSection:Label("谢谢您的支持与帮助^ω^")
AuthorInfoSection:Button("复制作者QQ", function()
  
  setclipboard("1075226283")
end)
AuthorInfoSection:Button("复制迪脚本QQ主群", function()
  
  setclipboard("8")
end)
AuthorInfoSection:Button("复制迪脚本QQ副群", function()
  
  setclipboard("1")
end)
AuthorInfoSection:Button("复制迪脚本QQ二群", function()
  
  setclipboard("1")
end)
AuthorInfoSection:Button("复制迪脚本QQ三群", function()
  
  setclipboard("1")
end)
AuthorInfoSection:Button("复制迪脚本QQ四群", function()
  
  setclipboard("6")
end)
AuthorInfoSection:Button("复制解卡群", function()
  
  setclipboard("2")
end)
AuthorInfoSection:Button("复制解卡群二群", function()
  
  setclipboard("9")
end)
local UISettingsSection = InfoTab:section("UI设置", true)
UISettingsSection:Toggle("脚本框架变小一点", "", false, function(enabled)
  
  if enabled then
    game:GetService("CoreGui").frosty.Main.Style = "DropShadow"
  else
    game:GetService("CoreGui").frosty.Main.Style = "Custom"
  end
end)
UISettingsSection:Button("关闭脚本", function()
  
  game:GetService("CoreGui").frosty:Destroy()
end)
local AnnouncementSection = UILibrary:Tab("『公告』", "18930406865"):section("公告", true)
AnnouncementSection:Label("此脚本为免费")
AnnouncementSection:Label("只有内部人员才知道")
AnnouncementSection:Label("内部人员就几个人")
AnnouncementSection:Label("严禁泄露 泄露无父无母")
AnnouncementSection:Label("有时间就会更新")
local GeneralTab = UILibrary:Tab("『通用』", "18930406865")
local LocalPlayerSection = GeneralTab:section("本地玩家", true)
local sliderMethod = "Slider"
local sliderLabel = "设置速度"
LocalPlayerSection[sliderMethod](LocalPlayerSection, sliderLabel, "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(walkSpeed)
  
  spawn(function()
    
    while task.wait() do
      local humanoid = game.Players.LocalPlayer.Character.Humanoid
      humanoid.WalkSpeed = walkSpeed
    end
  end)
end)
sliderMethod = "Slider"
sliderLabel = "设置跳跃高度"
LocalPlayerSection:Slider("设置跳跃高度", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(jumpPower)
  
  spawn(function()
    
    while task.wait() do
      local humanoid = game.Players.LocalPlayer.Character.Humanoid
      humanoid.JumpPower = jumpPower
    end
  end)
end)
sliderMethod = "Slider"
sliderLabel = "设置血量"
LocalPlayerSection:Slider("设置血量", "Sliderflag", 100, 100, 10000, false, function(health)
  
  game.Players.LocalPlayer.Character.Humanoid.Health = health
end)
sliderMethod = "Slider"
sliderLabel = "设置血量上限"
LocalPlayerSection:Slider("设置血量上限", "Slider", 100, 100, 10000, false, function(maxHealth)
  
  game.Players.LocalPlayer.Character.Humanoid.MaxHealth = maxHealth
end)
sliderMethod = "Slider"
sliderLabel = "设置缩放距离"
LocalPlayerSection:Slider("设置缩放距离", "ZOOOOOM OUT!", 128, 128, 200000, false, function(zoomDistance)
  
  game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = zoomDistance
end)
sliderMethod = "Slider"
sliderLabel = "设置缩放焦距(正常70)"
LocalPlayerSection:Slider("设置缩放焦距(正常70)", "Sliderflag", 70, 0.1, 250, false, function(fieldOfView)
  
  game.Workspace.CurrentCamera.FieldOfView = fieldOfView
end)
sliderMethod = "Slider"
sliderLabel = "设置帧率FPS"
LocalPlayerSection:Slider("设置帧率FPS", "Sliderflag", 300, 300, 100000, false, function(fps)
  
  setfpscap(fps)
end)
sliderMethod = "Slider"
sliderLabel = "设置玩家头部大小"
LocalPlayerSection:Slider("设置玩家头部大小", "Head", 1, 0, 1000, false, function(headSize)
  
  local headSizeConfig = {
    Size = headSize,
  }
  -- ...existing code...
  local Players = game:GetService("Players")
  local localPlayer = Players.LocalPlayer
  function IsPlayerAlive(player)
      if not player then
          return false
      end
      local character = player.Character
      if not character then
          return false
      end
      local head = character:FindFirstChild("Head")
      local humanoid = character:FindFirstChildWhichIsA("Humanoid") or character:FindFirstChild("Humanoid")
      if head and humanoid and humanoid.Health and humanoid.Health > 0 then
          return true
      end
      return false
  end
  for _, player in pairs(Players:GetPlayers()) do
    if player ~= localPlayer and IsPlayerAlive(player) then
      player.Character.Head.Massless = true
      player.Character.Head.Size = Vector3.new(headSizeConfig.Size, headSizeConfig.Size, headSizeConfig.Size)
    end
-- ...existing code...
    player.CharacterAdded:Connect(function()
      
      while not IsPlayerAlive(player) do
        wait()
      end
      player.Character.Head.Massless = true
      player.Character.Head.Size = Vector3.new(headSizeConfig.Size, headSizeConfig.Size, headSizeConfig.Size)
    end)
    
  end
  Players.PlayerAdded:Connect(function(newPlayer)
    
    newPlayer.CharacterAdded:Wait()
    if IsPlayerAlive(newPlayer) then
      newPlayer.Character.Head.Massless = true
      newPlayer.Character.Head.Size = Vector3.new(headSizeConfig.Size, headSizeConfig.Size, headSizeConfig.Size)
    end
    newPlayer.CharacterAdded:Connect(function()
      
      while not IsPlayerAlive(newPlayer) do
        wait()
      end
      newPlayer.Character.Head.Massless = true
      newPlayer.Character.Head.Size = Vector3.new(headSizeConfig.Size, headSizeConfig.Size, headSizeConfig.Size)
    end)
  end)
end)
textboxMethod = "Textbox"
textboxLabel = "设置重力"
LocalPlayerSection:Textbox("设置重力", "Gravity", "输入", function(gravity)
  
  spawn(function()
    
    while task.wait() do
      local workspace = game.Workspace
      workspace.Gravity = gravity
    end
  end)
end)
textboxMethod = "Textbox"
textboxLabel = "设置快速跑步"
LocalPlayerSection:Textbox("设置快速跑步", "run", "输入", function(speedValue)
  
  Speed = speedValue
end)
LocalPlayerSection:Toggle("开启快速跑步(开/关)", "switch", false, function(enabled)
  
  if enabled == true then
    sudu = game:GetService("RunService").Heartbeat:Connect(function()
      
      if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent and 0 < game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude then
        game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 0.5)
      end
    end)
  elseif not enabled and sudu then
    sudu:Disconnect()
    sudu = nil
  end
end)
local GeneralSection = GeneralTab:section("通用", true)
GeneralSection:Toggle("夜视", "Light", false, function(enabled)
  
  spawn(function()
    
    while task.wait() do
      local lighting = game.Lighting
      if enabled then
        lighting.Ambient = Color3.new(1, 1, 1)
      else
        lighting.Ambient = Color3.new(0, 0, 0)
      end
    end
  end)
end)
GeneralSection:Button("透视", function()
  
  loadstring(game:HttpGet("https://pastefy.app/LE2hzECZ/raw"))()
end)
local dropdownMethod = "Dropdown"
local dropdownLabel = "选择帧率FPS"
GeneralSection:Dropdown("选择帧率FPS", "CameraType", {
  "FPS 5",
  "FPS 15",
  "FPS 30 ",
  "FPS 45",
  "FPS 60",
  "FPS 90",
  "FPS 120",
  "FPS 240",
  "最大FPS"
}, function(selectedFPS)
  
  if selectedFPS == "FPS 5" then
    setfpscap(5)
  elseif selectedFPS == "FPS 15" then
    setfpscap(15)
  elseif selectedFPS == "FPS 30" then
    setfpscap(30)
  elseif selectedFPS == "FPS 45" then
    setfpscap(45)
  elseif selectedFPS == "FPS 60" then
    setfpscap(60)
  elseif selectedFPS == "FPS 90" then
    setfpscap(90)
  elseif selectedFPS == "FPS 120" then
    setfpscap(120)
  elseif selectedFPS == "FPS 240" then
    setfpscap(240)
  elseif selectedFPS == "最大FPS" then
    setfpscap(10000)
  end
end)
GeneralSection:Toggle("开启杀戮光环", "Toggle", false, function(enabled)
  
  local Players = nil	
  local isRunning = nil	
  if enabled then
    local existingConnections = getgenv().configs and getgenv().configs.connections
    if existingConnections then
      local disableEvent = getgenv().configs.Disable
      for _, connection in pairs(existingConnections) do
        connection:Disconnect()
      end
      disableEvent:Fire()
      disableEvent:Destroy()
      table.clear(getgenv().configs)
    end
    local disableEvent = Instance.new("BindableEvent")
    getgenv().configs = {
      connections = {},
      Disable = disableEvent,
      Size = Vector3.new(10, 10, 10),
      DeathCheck = true,
    }
    Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local localPlayer = Players.LocalPlayer
    isRunning = true
    local overlapParams = OverlapParams.new()
    overlapParams.FilterType = Enum.RaycastFilterType.Include
    local function GetCharacter(player)
      
      if not player then
        player = localPlayer
      end
      return player.Character
    end
    -- ...existing code...
    local function GetHumanoid(model)
      
      if not model then
        return nil
      end

      -- safe check for Instance-like objects
      if type(model) == "userdata" and model.IsA then
        if model:IsA("Player") then
          -- if a Player was passed, use its character
          model = GetCharacter(model)
        end

        if model and type(model) == "userdata" and model.IsA then
          if model:IsA("Model") then
            return model:FindFirstChildWhichIsA("Humanoid") or model:FindFirstChild("Humanoid")
          elseif model:IsA("Humanoid") then
            return model
          end
        end
      end

      return nil
    end
-- ...existing code...
    local function IsAlive(humanoid)
      
      return humanoid and 0 < humanoid.Health
    end
    local function HasTouchTransmitter(tool)
      
      return tool and tool:FindFirstChildWhichIsA("TouchTransmitter", true)
    end
    local function GetOtherCharacters(excludeCharacter)
      
      local characters = {}
      for _, player in pairs(Players:GetPlayers()) do
        table.insert(characters, GetCharacter(player))
      end
      for index, character in pairs(characters) do
        if character == excludeCharacter then
          table.remove(characters, index)
          break
        end
      end
      return characters
    end
    local function ActivateTool(tool, part, targetPart)
      
      if tool:IsDescendantOf(workspace) then
        tool:Activate()
        firetouchinterest(part, targetPart, 1)
        firetouchinterest(part, targetPart, 0)
      end
    end
    table.insert(getgenv().configs.connections, disableEvent.Event:Connect(function()
      
      isRunning = false
    end))
    while isRunning do
      local localCharacter = GetCharacter()
      if IsAlive(GetHumanoid(localCharacter)) then
        local tool = localCharacter and localCharacter:FindFirstChildWhichIsA("Tool")
        local touchTransmitter = tool and HasTouchTransmitter(tool)
        if touchTransmitter then
          local toolPart = touchTransmitter.Parent
          local otherCharacters = GetOtherCharacters(localCharacter)
          overlapParams.FilterDescendantsInstances = otherCharacters
          for _, part in pairs(workspace:GetPartBoundsInBox(toolPart.CFrame, toolPart.Size + getgenv().configs.Size, overlapParams)) do
            local characterModel = part:FindFirstAncestorWhichIsA("Model")
            if table.find(otherCharacters, characterModel) then
              if getgenv().configs.DeathCheck and IsAlive(GetHumanoid(characterModel)) then
                ActivateTool(tool, toolPart, part)
              elseif not getgenv().configs.DeathCheck then
                ActivateTool(tool, toolPart, part)
              end
            end
          end
        end
      end
      RunService.Heartbeat:Wait()
    end
    
  else
    local disableEvent = getgenv().configs.Disable
    if disableEvent then
      disableEvent:Fire()
      disableEvent:Destroy()
    end
    local configs = getgenv().configs
    local connections = configs.connections
    for _, connection in pairs(connections) do
      connection:Disconnect()
    end
    table.clear(connections)
    Run = false
  end
end)
GeneralSection:Button("隐身道具", function()
  
  loadstring(game:HttpGet([[https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)]], true))()
end)
-- ...existing code...
GeneralSection:Toggle("循环恢复血量", "HF", false, function(enabled)
  if enabled then
    getgenv().HFLoop = true
    task.spawn(function()
      while getgenv().HFLoop do
        local lp = game.Players.LocalPlayer
        local hum = lp and lp.Character and lp.Character:FindFirstChildWhichIsA("Humanoid")
        if hum and hum.Parent then
          hum.Health = 9000000000
        end
        task.wait(0.5)
      end
    end)
  else
    getgenv().HFLoop = false
  end
end)
-- ...existing code...
GeneralSection:Button("锁定视野", function()
  
  loadstring(game:HttpGet("https://pastefy.app/nekmtvpA/raw"))()
end)
GeneralSection:Toggle("解锁最大视野", "Cam", false, function(enabled)
  
  Cam1 = enabled
  if Cam1 then
    Cam2()
  end
end)
function Cam2()
  
  while Cam1 do
    wait(0.1)
    local localPlayer = game:GetService("Players").LocalPlayer
    localPlayer.CameraMaxZoomDistance = 9000000000
  end
  while not Cam1 do
    wait(0.1)
    local localPlayer = game:GetService("Players").LocalPlayer
    localPlayer.CameraMaxZoomDistance = 32
  end
end
GeneralSection:Toggle("子弹追踪", "silent", false, function(enabled)
  
  local camera = nil	
  local Players = nil	
  local localPlayer = nil	
  local originalNamecall = nil	
  local originalIndex = nil	
  if enabled then
    camera = workspace.CurrentCamera
    Players = game.Players
    localPlayer = Players.LocalPlayer
    local mouse = localPlayer:GetMouse()
    function ClosestPlayer()
      
      local closestDistance = math.huge
      local closestPlayer = nil
      for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Team ~= localPlayer.Team and player.Character then
          local head = player.Character:FindFirstChild("Head")
          if head then
            local screenPoint, isVisible = camera:WorldToScreenPoint(head.Position)
            if isVisible then
              local distance = (Vector2.new(screenPoint.X, screenPoint.Y) - Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)).Magnitude
              if distance < closestDistance then
                closestDistance = distance
                closestPlayer = player
              end
            end
          end
        end
      end
      return closestPlayer
    end
    local metatable = getrawmetatable(game)
    originalNamecall = metatable.__namecall
    originalIndex = metatable.__index
    setreadonly(metatable, false)
    metatable.__namecall = newcclosure(function(self, ...)
      
      local args = {
        ...
      }
      if getnamecallmethod() == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local targetPlayer = ClosestPlayer()
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
          args[1] = Ray.new(camera.CFrame.Position, ((targetPlayer.Character.Head.Position - camera.CFrame.Position)).Unit * 1000)
          return originalNamecall(self, unpack(args))
        end
      end
      return originalNamecall(self, ...)
    end)
    metatable.__index = newcclosure(function(self, key)
      
      if key == "Clips" then
        return workspace.Map
      end
      return originalIndex(self, key)
    end)
    setreadonly(metatable, true)
    
  else
    camera = workspace.CurrentCamera
    Players = game.Players
    localPlayer = Players.LocalPlayer
    local mouse = localPlayer:GetMouse()
    function ClosestPlayer()
      
      local closestDistance = math.huge
      local closestPlayer = nil
      for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Team ~= localPlayer.Team and player.Character then
          local head = player.Character:FindFirstChild("Head")
          if head then
            local screenPoint, isVisible = camera:WorldToScreenPoint(head.Position)
            if isVisible then
              local distance = (Vector2.new(screenPoint.X, screenPoint.Y) - Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)).Magnitude
              if distance < closestDistance then
                closestDistance = distance
                closestPlayer = player
              end
            end
          end
        end
      end
      return closestPlayer
    end
    local gameInstance = game
    local metatable = getrawmetatable(gameInstance)
    originalNamecall = metatable.__namecall
    originalIndex = metatable.__index
    setreadonly(metatable, false)
    metatable.__namecall = newcclosure(function(self, ...)
      
      local args = {
        ...
      }
      if getnamecallmethod() == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local targetPlayer = ClosestPlayer()
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
          args[1] = Ray.new(camera.CFrame.Position, ((targetPlayer.Character.Head.Position - camera.CFrame.Position)).Unit * 1000)
          return originalNamecall(self, unpack(args))
        end
      end
      return originalNamecall(self, ...)
    end)
    metatable.__index = newcclosure(function(self, key)
      
      if key == "Clips" then
        return workspace.Map
      end
      return originalIndex(self, key)
    end)
    setreadonly(metatable, true)
    
  end
end)
GeneralSection:Button("查看游戏中的所有玩家（包括血量条）", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/G2zb992X", true))()
end)
GeneralSection:Button("工具包", function()
  
  loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)
GeneralSection:Button("老外传送至玩家身边", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Teleport%20Gui.lua"))()
end)
GeneralSection:Button("翻译脚本帅脚本更新12月26", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ddjlb7598/nb/refs/heads/main/%E7%9A%AE%E8%84%9A%E6%9C%AC%E6%9C%80%E6%96%B0%E5%B7%B2%E4%BF%AE%E5%A4%8D%E5%8F%AF%E7%94%A8%E7%A0%B4%E8%A7%A3%E7%89%88%E6%BA%90%E7%A0%81-Rb%E4%BF%AE%E5%A4%8D%EF%BC%8Cxipro%E7%A0%B4%E8%A7%A3%20(1).lua"))()
end)
GeneralSection:Button("shuai飞天创始者本人自制有动作", function()
  
  loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()
end)
GeneralSection:Toggle("穿墙", "NoClip", false, function(enabled)
  
  local workspace = game:GetService("Workspace")
  local Players = game:GetService("Players")
  if enabled then
    Clipon = true
  else
    Clipon = false
  end
  Stepped = game:GetService("RunService").Stepped:Connect(function()
    
    if Clipon then
      for _, child in pairs(workspace:GetChildren()) do
        if child.Name == Players.LocalPlayer.Name then
          for _, part in pairs(workspace[Players.LocalPlayer.Name]:GetChildren()) do
            if part:IsA("BasePart") then
              part.CanCollide = false
            end
          end
        end
      end
    else
      Stepped:Disconnect()
    end
  end)
end)
GeneralSection:Button("帅飞行皮飞行没有动作", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaoshuai77/xiaosuai77/main/07cdd3eeaf4d4928.txt_2024-08-09_090317.OTed.lua]]))()
end)
GeneralSection:Button("帅飞车", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaoshuai77/xiaoshuai77/main/Pi-feiche.lua"))()
end)
GeneralSection:Button("帅自瞄", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaoshuai77/xiaoshuai77/main/3683e49998644fb7.txt_2024-08-09_094310.OTed.lua]]))()
end)
GeneralSection:Button("迪甩飞", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaoshuai77/xiaoshuai77/main/%E7%9A%AE%E7%94%A9%E9%A3%9E.lua]]))()
end)
GeneralSection:Button("甩飞所有人", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
GeneralSection:Button("死亡笔记", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaoshuai77/xiaoshuai77/main/1_1.txt_2024-08-08_153358.OTed.lua]]))()
end)
GeneralSection:Button("铁拳", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt]]))()
end)
GeneralSection:Button("电脑键盘", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt]], true))()
end)
GeneralSection:Toggle("无法移动", "Fake flag", false, function(enabled)
  
  local localPlayer = game.Players.LocalPlayer
  local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
  if enabled then
    for _, child in pairs(character:GetChildren()) do
      if child:IsA("BasePart") then
        child.Anchored = true
      end
    end
  else
    for _, child in pairs(character:GetChildren()) do
      if child:IsA("BasePart") then
        child.Anchored = false
      end
    end
  end
end)
GeneralSection:Button("自杀", function()
  
  game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
GeneralSection:Button("踏空行走", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))()
end)
GeneralSection:Button("通用ESP", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP"))()
end)
GeneralSection:Button("踢人脚本(仅娱乐)", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaoshuai77/xiaoshuai77/main/c8320f69b6aa4f5d.txt_2024-08-08_214628.OTed.lua]]))()
end)
GeneralSection:Button("动画中心", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui]], true))()
end)
GeneralSection:Button("爬墙", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
GeneralSection:Button("替身", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain]]))()
end)
GeneralSection:Button("操人脚本", function()
  
  loadstring(game:HttpGet("https://pastefy.app/BkeffrT5/raw"))()
end)
GeneralSection:Button("圈圈自瞄(可调)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/YnfF3sje/raw"))()
end)
GeneralSection:Button("iw指令", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
GeneralSection:Toggle("人物不可见状态(隐身)", "Invisible Character", false, function(enabled)
  
  local localPlayer = game.Players.LocalPlayer
  for _, child in pairs((localPlayer.Character or localPlayer.CharacterAdded:Wait()):GetChildren()) do
    local isBasePart = child:IsA("BasePart")
    if isBasePart then
      if enabled then
        isBasePart = 1
      else
        isBasePart = 0
      end
      child.Transparency = isBasePart
      child.CanCollide = not enabled
    elseif child:IsA("Accessory") then
      local handle = child.Handle
      local transparency = nil	
      if enabled then
        transparency = 1
      else
        transparency = 0
      end
      handle.Transparency = transparency
    end
  end
end)
GeneralSection:Toggle("获取所有玩家背包", "GetBackPack", false, function(enabled)
  
  if enabled then
    while enabled do
      for _, player in pairs(game.Players:GetChildren()) do
        wait()
        for _, tool in pairs(player.Backpack:GetChildren()) do
          tool.Parent = game.Players.LocalPlayer.Backpack
          wait()
        end
      end
    end
  end
end)
GeneralSection:Button("获取当前道具", function()
  
  loadstring(game:HttpGet("https://pastefy.app/3FU05Dyt/raw"))()
end)
GeneralSection:Button("装备全部道具", function()
  
  loadstring(game:HttpGet("https://pastefy.app/uBqVR9JC/raw"))()
end)
GeneralSection:Button("删除道具", function()
  
  loadstring(game:HttpGet("https://pastefy.app/r4LHK4p0/raw"))()
end)
GeneralSection:Button("删除所有道具", function()
  
  loadstring(game:HttpGet("https://pastefy.app/8HB71Lbj/raw"))()
end)
GeneralSection:Toggle("自动互动", "AutoInteract", false, function(enabled)
  
  if enabled then
    autoInteract = true
    while autoInteract do
      for _, descendant in pairs(workspace:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
          fireproximityprompt(descendant)
        end
      end
      task.wait(0.25)
    end
  else
    autoInteract = false
  end
end)
GeneralSection:Button("快速互动", function()
  
  game.ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
    
    prompt.HoldDuration = 0
  end)
end)
GeneralSection:Toggle("圆圈高亮透视", "ESP", false, function(enabled)
  
  for _, player in pairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer then
      if enabled then
        local highlight = Instance.new("Highlight")
        highlight.Parent = player.Character
        highlight.Adornee = player.Character
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Parent = player.Character
        billboardGui.Adornee = player.Character
        billboardGui.Size = UDim2.new(0, 100, 0, 100)
        billboardGui.StudsOffset = Vector3.new(0, 3, 0)
        billboardGui.AlwaysOnTop = true
        local textLabel = Instance.new("TextLabel")
        textLabel.Parent = billboardGui
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = player.Name
        textLabel.TextColor3 = Color3.new(1, 1, 1)
        textLabel.TextStrokeTransparency = 0.5
        textLabel.TextScaled = true
        local imageLabel = Instance.new("ImageLabel")
        imageLabel.Parent = billboardGui
        imageLabel.Size = UDim2.new(0, 50, 0, 50)
        imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        imageLabel.BackgroundTransparency = 1
        imageLabel.Image = "rbxassetid://2200552246"
      else
        if player.Character:FindFirstChildOfClass("Highlight") then
          player.Character:FindFirstChildOfClass("Highlight"):Destroy()
        end
        if player.Character:FindFirstChildOfClass("BillboardGui") then
          player.Character:FindFirstChildOfClass("BillboardGui"):Destroy()
        end
      end
    end
  end
end)
GeneralSection:Toggle("无限跳", "IJ", false, function(enabled)
  
  getgenv().InfJ = enabled
  game:GetService("UserInputService").JumpRequest:connect(function()
    
    if InfJ == true then
      game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
  end)
end)
GeneralSection:Toggle("无敌", "LSTM", false, function(enabled)
  if enabled then
    local camera = workspace.CurrentCamera
    local cameraCFrame = camera.CFrame
    local character = LocalPlayer and LocalPlayer.Character
    local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
    if humanoid then
      local clonedHumanoid = humanoid:Clone()
      clonedHumanoid.Parent = character
      clonedHumanoid:SetStateEnabled(Enum.HumanoidStateType.Health, false)
      clonedHumanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
      clonedHumanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
      clonedHumanoid.BreakJointsOnDeath = true
      humanoid:Destroy()
      LocalPlayer.Character = nil
      LocalPlayer.Character = character
      camera.CameraSubject = clonedHumanoid

      task.wait() -- 稍作等待以确保对象稳定
      local targetCFrame = cameraCFrame or camera.CFrame
      camera.CFrame = targetCFrame

      clonedHumanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
      local animate = character:FindFirstChild("Animate")
      if animate then
        animate.Disabled = true
        task.wait()
        animate.Disabled = false
      end
      clonedHumanoid.Health = clonedHumanoid.MaxHealth
    end
  else
    local lpChar = game.Players.LocalPlayer and game.Players.LocalPlayer.Character
    local lpHum = lpChar and lpChar:FindFirstChildWhichIsA("Humanoid")
    if lpHum then
      lpHum.Health = 100
    end
  end
end)
GeneralSection:Toggle("上帝模式", "No Description", false, function(enabled)
  local Players = game:GetService("Players")
  local localPlayer = Players and Players.LocalPlayer
  if not localPlayer then
    return
  end

  local function getCharacter()
    return localPlayer.Character or localPlayer.CharacterAdded:Wait()
  end

  local character = localPlayer.Character
  if not character then
    character = getCharacter()
  end

  if enabled then
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    if hrp and not character:FindFirstChild("GodModeHRPClone") then
      local clone = hrp:Clone()
      clone.Name = "GodModeHRPClone"
      clone.Parent = character
    end
  else
    if character then
      local clone = character:FindFirstChild("GodModeHRPClone")
      if clone then
        clone:Destroy()
      end
    end
  end
end)
GeneralSection:Toggle("靠近自动攻击(需要拿起武器)", "Toggle", false, function(enabled)
  
  local Players = nil	
  local isRunning = nil	
  if enabled then
    local r1_585 = getgenv().configs and getgenv().configs.connections
    if r1_585 then
      local r2_585 = getgenv().configs.Disable
      r3_585 = pairs
      for r6_585, r7_585 in r3_585(r1_585) do
        r7_585:Disconnect()
      end
      r2_585:Fire()
      r2_585:Destroy()
      table.clear(getgenv().configs)
    end
    local r2_585 = Instance.new("BindableEvent")
    r3_585 = getgenv()
    r3_585.configs = {
      connections = {},
      Disable = r2_585,
      Size = Vector3.new(10, 10, 10),
      DeathCheck = true,
    }
    r3_585 = game:GetService("Players")
    local r4_585 = game:GetService("RunService")
    local r5_585 = r3_585.LocalPlayer
    r6_585 = true
    local r7_585 = OverlapParams.new()
    r7_585.FilterType = Enum.RaycastFilterType.Include
    local function r8_585(r0_591)
      
      if not r0_591 then
        r0_591 = r5_585
      end
      return r0_591.Character
    end
-- ...existing code...
    local function r9_585(r0_590)
      -- 安全版：接受 Player / Model / Humanoid，并返回 Humanoid 或 nil
      if not r0_590 then
        return nil
      end

      -- 如果传入的是 Player，则获取其角色（使用文件中已有的 r8_585）
      local candidate = r0_590
      if type(candidate) == "userdata" and candidate.IsA then
        if candidate:IsA("Player") then
          candidate = r8_585(candidate)
        end

        if candidate and type(candidate) == "userdata" and candidate.IsA then
          if candidate:IsA("Model") then
            return candidate:FindFirstChildWhichIsA("Humanoid") or candidate:FindFirstChild("Humanoid")
          elseif candidate:IsA("Humanoid") then
            return candidate
          end
        end
      end

      return nil
    end
-- ...existing code...
    local function r10_585(r0_587)
      
      return r0_587 and 0 < r0_587.Health
    end
    local function r11_585(r0_588)
      
      return r0_588 and r0_588:FindFirstChildWhichIsA("TouchTransmitter", true)
    end
    local function r12_585(r0_589)
      
      local r1_589 = {}
      for r5_589, r6_589 in pairs(r3_585:GetPlayers()) do
        table.insert(r1_589, r8_585(r6_589))
      end
      for r5_589, r6_589 in pairs(r1_589) do
        if r6_589 == r0_589 then
          table.remove(r1_589, r5_589)
          break
        end
      end
      return r1_589
    end
    local function r13_585(r0_592, r1_592, r2_592)
      
      if r0_592:IsDescendantOf(workspace) then
        r0_592:Activate()
        firetouchinterest(r1_592, r2_592, 1)
        firetouchinterest(r1_592, r2_592, 0)
      end
    end
    table.insert(getgenv().configs.connections, r2_585.Event:Connect(function()
      
      r6_585 = false
    end))
    while r6_585 do
      local r14_585 = r8_585()
      if r10_585(r9_585(r14_585)) then
        local r15_585 = r14_585 and r14_585:FindFirstChildWhichIsA("Tool")
        local r16_585 = r15_585 and r11_585(r15_585)
        if r16_585 then
          local r17_585 = r16_585.Parent
          local r18_585 = r12_585(r14_585)
          r7_585.FilterDescendantsInstances = r18_585
          for r23_585, r24_585 in pairs(workspace:GetPartBoundsInBox(r17_585.CFrame, r17_585.Size + getgenv().configs.Size, r7_585)) do
            local r25_585 = r24_585:FindFirstAncestorWhichIsA("Model")
            if table.find(r18_585, r25_585) then
              if getgenv().configs.DeathCheck and r10_585(r9_585(r25_585)) then
                r13_585(r15_585, r17_585, r24_585)
              elseif not getgenv().configs.DeathCheck then
                r13_585(r15_585, r17_585, r24_585)
              end
            end
          end
        end
      end
      r4_585.Heartbeat:Wait()
    end
    
  else
    local r1_585 = getgenv().configs.Disable
    if r1_585 then
      r1_585:Fire()
      r1_585:Destroy()
    end
    r3_585 = getgenv
    r3_585 = r3_585()
    r3_585 = r3_585.configs
    r3_585 = r3_585.connections
    for r5_585, r6_585 in pairs(r3_585) do
      r6_585:Disconnect()
    end
    r3_585 = getgenv
    r3_585 = r3_585()
    r3_585 = r3_585.configs
    r3_585 = r3_585.connections
    table.clear(r3_585)
    Run = false
  end
end)
GeneralSection:Button("坐下", function()
  
  game.Players.LocalPlayer.Character.Humanoid.Sit = true
end)
GeneralSection:Toggle("声音折磨", "Sound", false, function(enabled)
  
  getgenv().spamSoond = enabled
  if enabled then
    spamSound()
  end
end)
function spamSound()
  
  while getgenv().spamSoond == true do
    local soundInstance = Instance.new("Sound")
    local descendants = game:GetDescendants()
    for _, descendant in next, descendants do
      if descendant:IsA("Sound") then
        descendant:Play()
      end
    end
    soundInstance:Remove()
    task.wait()
  end
end
GeneralSection:Toggle("七彩建筑", "BasePart", false, function(enabled)
  
  local baseParts = nil	
  if enabled then
    Break = false
    r1_665 = {}
    local r2_665 = Enum.Material:GetEnumItems()
    for r6_665, r7_665 in pairs(game.Workspace:GetDescendants()) do
      if r7_665:IsA("BasePart") then
        table.insert(r1_665, r7_665)
      end
    end
    game.Workspace.DescendantAdded:Connect(function(r0_666)
      
      if r0_666:IsA("BasePart") then
        table.insert(r1_665, r0_666)
      end
    end)
    while task.wait(0.025) do
      local r3_665 = pairs
      local r4_665 = r1_665
      for r6_665, r7_665 in r3_665(r4_665) do
        r7_665.Material = r2_665[math.random(1, #r2_665)]
        r7_665.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
        if Break then
        end
      end
    end
    
  else
    r1_665 = true
    Break = r1_665
  end
end)
GeneralSection:Button("吸人(无法关闭)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/fF3DMBNF/raw"))()
end)
GeneralSection:Button("人物螺旋上天", function()
  
  loadstring(game:HttpGet("https://pastefy.app/xV1T3PAi/raw"))()
end)
GeneralSection:Button("无限R币", function()
  
  loadstring(game:HttpGet("https://pastefy.app/SxhPVOyM/raw"))()
end)
GeneralSection:Button("聊天气泡美化", function()
  
  loadstring(game:HttpGet("https://pastefy.app/lCEPuiQO/raw"))()
end)
GeneralSection:Button("人物绘制", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/pmgp7mdm"))()
end)
GeneralSection:Toggle("人物显示", "RWXS", false, function(enabled)
  
  getgenv().enabled = enabled
  getgenv().filluseteamcolor = true
  getgenv().outlineuseteamcolor = true
  getgenv().fillcolor = Color3.new(1, 0, 0)
  getgenv().outlinecolor = Color3.new(1, 1, 1)
  getgenv().filltrans = 0.5
  getgenv().outlinetrans = 0.5
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)
GeneralSection:Button("无后坐快速射击", function()
  
  loadstring(game:HttpGet("https://pastefy.app/Vbnh3Ycg/raw"))()
end)
GeneralSection:Button("无限子弹", function()
  
  loadstring(game:HttpGet("https://pastefy.app/bYg3smqm/raw"))()
end)
GeneralSection:Button("弹人(实体)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/4r9e4F3p/raw"))()
end)
GeneralSection:Button("弹人(半实体)", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/UTWcDtzj"))()
end)
GeneralSection:Button("获得管理员权限", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
end)
GeneralSection:Button("重新加入游戏", function()
  
  loadstring(game:HttpGet("https://pastefy.app/XXabqNiv/raw"))()
end)
GeneralSection:Button("显示FPS", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/g54KFcUU"))()
end)
GeneralSection:Button("显示时间", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/RycMWV3a"))()
end)
GeneralSection:Button("F3X", function()
  
  loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)
GeneralSection:Button("保存游戏", function()
  
  saveinstance()
end)
GeneralSection:Button("离开游戏", function()
  
  game:Shutdown()
end)
GeneralSection:Button("玩家加入与退出提示", function()
  
  loadstring(game:HttpGet("https://pastefy.app/KexNS25n/raw"))()
end)
GeneralSection:Label("修改时间")
GeneralSection:Button("凌晨12点", function()
  
  loadstring(game:HttpGet("https://pastefy.app/xFX51PIw/raw"))()
end)
GeneralSection:Button("下午4点", function()
  
  loadstring(game:HttpGet("https://pastefy.app/sIrAGJxJ/raw"))()
end)
GeneralSection:Button("中午11点", function()
  
  loadstring(game:HttpGet("https://pastefy.app/rccCMBch/raw"))()
end)
GeneralSection:Button("早上6点", function()
  
  loadstring(game:HttpGet("https://pastefy.app/h9VLRgYR/raw"))()
end)
GeneralSection:Label("轰炸Webhook")
textboxMethod = "Textbox"
textboxLabel = "Webhook链接"
GeneralSection:Textbox("Webhook链接", "text", "输入", function(webhookUrl)
  
  local webhook = ""
  webhook = webhookUrl
end)
GeneralSection:Button("复制轰炸", function()
  
  setclipboard("", 9999)
end)
GeneralSection:Label("设置相机")
dropdownMethod = "Dropdown"
dropdownLabel = "选择相机方式"
GeneralSection:Dropdown("选择相机方式", "CameraType", {
  "自定义 ",
  "附加 ",
  "固定",
  "跟随",
  "动态观察",
  "可脚本化",
  "跟踪",
  "观看"
}, function(cameraType)
  
  if cameraType == "自定义" then
    game.Workspace.CurrentCamera.CameraType = "Custom"
  elseif cameraType == "附加" then
    game.Workspace.CurrentCamera.CameraType = "Attach"
  elseif cameraType == "固定" then
    game.Workspace.CurrentCamera.CameraType = "Fixed"
  elseif cameraType == "跟随" then
    game.Workspace.CurrentCamera.CameraType = "Follow"
  elseif cameraType == "动态观察" then
    game.Workspace.CurrentCamera.CameraType = "Orbital"
  elseif cameraType == "可脚本化" then
    game.Workspace.CurrentCamera.CameraType = "Scriptable"
  elseif cameraType == "跟踪" then
    game.Workspace.CurrentCamera.CameraType = "Track"
  elseif cameraType == "观看" then
    game.Workspace.CurrentCamera.CameraType = "Watch"
  end
end)
GeneralSection:Toggle("切板摄像机的遮挡模式", "DevCameraOcclusionMode", false, function(r0_607)
  
  if state then
    game:GetService("Players").LocalPlayer.DevCameraOcclusionMode = "Invisicam"
  else
    game:GetService("Players").LocalPlayer.DevCameraOcclusionMode = "Zoom"
  end
end)
dropdownMethod = "Dropdown"
dropdownLabel = "相机"
GeneralSection:Dropdown("相机", "Camera", {
  "经典",
  "第一人称"
}, function(cameraMode)
  
  if cameraMode == "经典" then
    game:GetService("Players").LocalPlayer.CameraMode = "Classic"
  elseif cameraMode == "第一人称" then
    game:GetService("Players").LocalPlayer.CameraMode = "LockFirstPerson"
  end
end)
local SpinRangeTab = UILibrary:Tab("『旋转与范围』", "18930406865")
local SpinRangeSection = SpinRangeTab:section("旋转与范围", true)
SpinRangeSection:Label("旋转")
textboxMethod = "Textbox"
textboxLabel = "设置旋转速度"
SpinRangeSection:Textbox("设置旋转速度", "TextBoxFlag", "输入", function(speed)
  
  bin.speed = tonumber(speed) or 100
end)
SpinRangeSection:Toggle("开启/关闭旋转", "Spinbot", false, function(enabled)
  
  local localPlayer = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until localPlayer.Character
  local humanoidRootPart = localPlayer.Character:WaitForChild("HumanoidRootPart")
  localPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
  if enabled then
    local angularVelocity = Instance.new("AngularVelocity")
    angularVelocity.Attachment0 = humanoidRootPart:WaitForChild("RootAttachment")
    angularVelocity.MaxTorque = math.huge
    angularVelocity.AngularVelocity = Vector3.new(0, bin.speed, 0)
    angularVelocity.Parent = humanoidRootPart
    angularVelocity.Name = "Spinbot"
  else
    local spinbot = humanoidRootPart:FindFirstChild("Spinbot")
    if spinbot then
      spinbot:Destroy()
    end
  end
end)
SpinRangeSection:Label("范围")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
getgenv().HitboxSize = 15
getgenv().HitboxTransparency = 0.9
getgenv().HitboxStatus = false
getgenv().TeamCheck = false
SpinRangeSection:Toggle("开启/关闭范围", "HitboxStatus", false, function(enabled)
  
  getgenv().HitboxStatus = enabled
  game:GetService("RunService").RenderStepped:connect(function()
    
    if HitboxStatus == true and TeamCheck == false then
      for _, player in next, game:GetService("Players"):GetPlayers() do
        if player.Name ~= game:GetService("Players").LocalPlayer.Name then
          pcall(function()
            
            player.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
            player.Character.HumanoidRootPart.Transparency = HitboxTransparency
            player.Character.HumanoidRootPart.BrickColor = BrickColor.new(MovementConfig.HitboxBrickColor)
            player.Character.HumanoidRootPart.Material = "Neon"
            player.Character.HumanoidRootPart.CanCollide = false
          end)
        end
        
      end
    elseif HitboxStatus == true and TeamCheck == true then
      for _, player in next, game:GetService("Players"):GetPlayers() do
        if game:GetService("Players").LocalPlayer.Team ~= player.Team then
          pcall(function()
            
            player.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
            player.Character.HumanoidRootPart.Transparency = HitboxTransparency
            player.Character.HumanoidRootPart.BrickColor = BrickColor.new(MovementConfig.HitboxBrickColor)
            player.Character.HumanoidRootPart.Material = "Neon"
            player.Character.HumanoidRootPart.CanCollide = false
          end)
        end
        
      end
    else
      for _, player in next, game:GetService("Players"):GetPlayers() do
        if player.Name ~= game:GetService("Players").LocalPlayer.Name then
          pcall(function()
            
            player.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
            player.Character.HumanoidRootPart.Transparency = 1
            player.Character.HumanoidRootPart.BrickColor = BrickColor.new(MovementConfig.HitboxBrickColor)
            player.Character.HumanoidRootPart.Material = "Plastic"
            player.Character.HumanoidRootPart.CanCollide = false
          end)
        end
        
      end
    end
  end)
end)
textboxMethod = "Textbox"
textboxLabel = "范围大小设置"
SpinRangeSection:Textbox("范围大小设置", "HitboxSize", "输入", function(size)
  
  getgenv().HitboxSize = size
end)
SpinRangeSection:Toggle("队伍检测", "TeamCheck", false, function(enabled)
  
  getgenv().TeamCheck = enabled
  ESP_SETTINGS.Teamcheck = true
end)
textboxMethod = "Textbox"
textboxLabel = "范围透明度设置（调0更好区分队伍)"
SpinRangeSection:Textbox("范围透明度设置（调0更好区分队伍)", "HitboxTransparency", "输入", function(transparency)
  
  getgenv().HitboxTransparency = transparency
end)
dropdownMethod = "Dropdown"
dropdownLabel = "选择范围颜色"
SpinRangeSection:Dropdown("选择范围颜色", "Hitbox", {
  "Really blue",
  "Really black",
  "Really red",
  "Really pink",
  "Really brown",
  "Really yellow",
  "Really green",
  "Really orange",
  "Really purple",
  "Really light gray"
}, function(color)
  
  MovementConfig.HitboxBrickColor = color
end)
local QuickSettingsSection = SpinRangeTab:section("快捷设置范围与旋转", true)
QuickSettingsSection:Label("范围")
QuickSettingsSection:Button("范围清空", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/RqrTrPF5"))()
end)
QuickSettingsSection:Button("范围10", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/DT94B37a"))()
end)
QuickSettingsSection:Button("范围20", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/Kyyt1e4g"))()
end)
QuickSettingsSection:Button("范围50", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/pMtKEgWd"))()
end)
QuickSettingsSection:Button("范围100", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/aLBSXPYE"))()
end)
QuickSettingsSection:Button("范围150", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/RWxsQuU9"))()
end)
QuickSettingsSection:Button("范围200", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/hbp3RV2p"))()
end)
QuickSettingsSection:Button("范围300", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/x8cZhegq"))()
end)
QuickSettingsSection:Button("范围400", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/LixK0gG3"))()
end)
QuickSettingsSection:Button("范围500", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/yXWMGLYJ"))()
end)
QuickSettingsSection:Label("旋转")
QuickSettingsSection:Button("旋转清零", function()
  
  loadstring(game:HttpGet("https://pastefy.app/UOWFy58g/raw"))()
end)
QuickSettingsSection:Button("旋转10", function()
  
  loadstring(game:HttpGet("https://pastefy.app/pX8CKeHn/raw"))()
end)
QuickSettingsSection:Button("旋转30", function()
  
  loadstring(game:HttpGet("https://pastefy.app/1Ob0oE2h/raw"))()
end)
QuickSettingsSection:Button("旋转50", function()
  
  loadstring(game:HttpGet("https://pastefy.app/4UL7XrJU/raw"))()
end)
QuickSettingsSection:Button("旋转100", function()
  
  loadstring(game:HttpGet("https://pastefy.app/6agZDErY/raw"))()
end)
QuickSettingsSection:Button("旋转150", function()
  
  loadstring(game:HttpGet("https://pastefy.app/MqAalYjs/raw"))()
end)
QuickSettingsSection:Button("旋转200", function()
  
  loadstring(game:HttpGet("https://pastefy.app/00mtNBML/raw"))()
end)
QuickSettingsSection:Button("旋转250", function()
  
  loadstring(game:HttpGet("https://pastefy.app/CR2woYXY/raw"))()
end)
QuickSettingsSection:Button("旋转300", function()
  
  loadstring(game:HttpGet("https://pastefy.app/5SbEaumY/raw"))()
end)
QuickSettingsSection:Button("旋转400", function()
  
  loadstring(game:HttpGet("https://pastefy.app/pjkZd07i/raw"))()
end)
QuickSettingsSection:Button("旋转500", function()
  
  loadstring(game:HttpGet("https://pastefy.app/9emFsJ7N/raw"))()
end)
local HubScriptsSection = UILibrary:Tab("『HUB脚本』", "18930406865"):section("HUB脚本", true)
HubScriptsSection:Button("EZ-HUB", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/debug42O/Ez-Industries-Launcher-Data/master/Launcher.lua]], true))()
end)
HubScriptsSection:Button("reen script", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xDepressionx/Free-Script/main/KingLegacy.lua"))()
end)
HubScriptsSection:Button("Maru_Hub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/raw-scriptpastebin/raw/main/B_Genesis"))()
end)
HubScriptsSection:Button("Xenon_Hub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/legacy"))()
end)
HubScriptsSection:Button("ipper_hub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/King%20Leagacy"))()
end)
HubScriptsSection:Button("trike_hub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Strikehubv2z/StormSKz/main/All_in_one"))()
end)
HubScriptsSection:Button("unfair hub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua", true))()
end)
HubScriptsSection:Button(" Shadow Hub V2", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Alexcirer/Alexcirer/main/V%20d"))()
end)
HubScriptsSection:Button("Zen_Hub", function()
  
  loadstring(game:HttpGet("https://shz.al/~aboutnnn/Zen_Hub.lua"))()
end)
HubScriptsSection:Button("PlaybackX Hub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt"))()
end)
HubScriptsSection:Button("Tianhe\'s script hub", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/xdQVhQdm"))()
end)
HubScriptsSection:Button("Mango hub", function()
  
  loadstring(game:HttpGet("https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta"))()
end)
HubScriptsSection:Button("VG hub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
end)
HubScriptsSection:Button("Owl-Hub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
end)
HubScriptsSection:Button("HOHO_hub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end)
local TeleportSection = UILibrary:Tab("『传送与甩飞』", "18930406865"):section("传送与甩飞玩家", true)
dropdownMethod = "Dropdown"
dropdownLabel = "选择玩家名称"
local playerDropdown = TeleportSection:Dropdown("选择玩家名称", "Dropdown", PlayerConfig.dropdown, function(selectedPlayer)
  
  PlayerConfig.playernamedied = selectedPlayer
end)
TeleportSection:Button("刷新玩家名称", function()
  
  shuaxinlb(true)
  playerDropdown:SetOptions(PlayerConfig.dropdown)
end)
TeleportSection:Button("传送到玩家旁边", function()
  
  local localRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
  local targetPlayer = game.Players:FindFirstChild(PlayerConfig.playernamedied)
  if targetPlayer and targetPlayer.Character and targetPlayer.Character.HumanoidRootPart then
    localRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
    Notify("帅脚本", "已经传送到玩家身边", "rbxassetid://18941716391", 5)
  else
    Notify("帅脚本", "无法传送 原因: 玩家已消失", "rbxassetid://18941716391", 5)
  end
end)
TeleportSection:Toggle("循环锁定传送", "Loop", false, function(enabled)
  
  if enabled then
    PlayerConfig.LoopTeleport = true
    Notify("帅脚本", "已开启循环传送", "rbxassetid://18941716391", 5)
    while PlayerConfig.LoopTeleport do
      local localRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
      local targetPlayer = game.Players:FindFirstChild(PlayerConfig.playernamedied)
      if targetPlayer and targetPlayer.Character and targetPlayer.Character.HumanoidRootPart then
        localRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
      end
      wait()
    end
  else
    PlayerConfig.LoopTeleport = false
    Notify("帅脚本", "已关闭循环传送", "rbxassetid://18941716391", 5)
  end
end)
TeleportSection:Button("把玩家传送过来", function()
  
  local localRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
  local targetPlayer = game.Players:FindFirstChild(PlayerConfig.playernamedied)
  if targetPlayer and targetPlayer.Character and targetPlayer.Character.HumanoidRootPart then
    targetPlayer.Character.HumanoidRootPart.CFrame = localRootPart.CFrame + Vector3.new(0, 3, 0)
    Notify("帅脚本", "已将玩家传送过来", "rbxassetid://18941716391", 5)
  else
    Notify("帅脚本", "无法传送 原因: 玩家已消失", "rbxassetid://18941716391", 5)
  end
end)
TeleportSection:Toggle("循环传送玩家过来", "Loop", false, function(enabled)
  
  if enabled then
    PlayerConfig.LoopTeleport = true
    Notify("甩脚本", "已开启循环传送玩家过来", "rbxassetid://", 5)
    while PlayerConfig.LoopTeleport do
      local localRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
      local targetPlayer = game.Players:FindFirstChild(PlayerConfig.playernamedied)
      if targetPlayer and targetPlayer.Character and targetPlayer.Character.HumanoidRootPart then
        targetPlayer.Character.HumanoidRootPart.CFrame = localRootPart.CFrame + Vector3.new(0, 3, 0)
      end
      wait()
    end
  else
    PlayerConfig.LoopTeleport = false
    Notify("帅脚本", "已关闭循环传送玩家过来", "rbxassetid://18941716391", 5)
  end
end)
TeleportSection:Toggle("吸全部玩家", "Get All", false, function(enabled)
  
  if enabled then
    while enabled do
      for _, player in next, game:GetService("Players"):GetPlayers() do
        if player.Name ~= game:GetService("Players").LocalPlayer.Name then
          local localPosition = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
          local lookVector = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector
          player.Character.HumanoidRootPart.CFrame = CFrame.new(localPosition + lookVector * 3, localPosition + lookVector * 4)
          wait()
        end
      end
    end
  end
end)
TeleportSection:Toggle("查看玩家", "look player", false, function(enabled)
  
  if enabled then
    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players"):FindFirstChild(PlayerConfig.playernamedied).Character.Humanoid
    Notify("帅脚本", "已开启查看玩家", "rbxassetid://18941716391", 5)
  else
    game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    Notify("帅脚本", "已关闭查看玩家", "rbxassetid://18941716391", 5)
  end
end)
TeleportSection:Button("甩飞一次", function()
  
  if PlayerConfig.playernamedied ~= nil and PlayerConfig.playernamedied ~= nil then
    local targetNames = {
      PlayerConfig.playernamedied
    }
    local Players = game:GetService("Players")
    local localPlayer = Players.LocalPlayer
    local isAllOrOthers = false
    local function FindPlayerByName(name)
      
      name = name:lower()
      if name == "all" or name == "others" then
        isAllOrOthers = true
        return 
      end
      if name == "random" then
        local allPlayers = Players:GetPlayers()
        if table.find(allPlayers, localPlayer) then
          table.remove(allPlayers, table.find(allPlayers, localPlayer))
        end
        return allPlayers[math.random(#allPlayers)]
      end
      if name ~= "random" and name ~= "all" and name ~= "others" then
        for _, player in next, Players:GetPlayers() do
          if player ~= localPlayer then
            if player.Name:lower():match("^" .. name) then
              return player
            end
            if player.DisplayName:lower():match("^" .. name) then
              return player
            end
          end
        end
      else
        return 
      end
    end
    local function SendNotification(title, text, duration)
      
      game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration,
      })
    end
    local function ThrowPlayer(targetPlayer)
      
      local localCharacter = localPlayer.Character
      local localHumanoid = localCharacter and localCharacter:FindFirstChildOfClass("Humanoid")
      local localRootPart = localHumanoid and localHumanoid.RootPart
      local targetCharacter = targetPlayer.Character
      local targetHumanoid = nil
      local targetRootPart = nil
      local targetHead = nil
      local targetAccessory = nil
      local accessoryHandle = nil
      if targetCharacter:FindFirstChildOfClass("Humanoid") then
        targetHumanoid = targetCharacter:FindFirstChildOfClass("Humanoid")
      end
      if targetHumanoid and targetHumanoid.RootPart then
        targetRootPart = targetHumanoid.RootPart
      end
      if targetCharacter:FindFirstChild("Head") then
        targetHead = targetCharacter.Head
      end
      if targetCharacter:FindFirstChildOfClass("Accessory") then
        targetAccessory = targetCharacter:FindFirstChildOfClass("Accessory")
      end
      if Accessoy and targetAccessory:FindFirstChild("Handle") then
        accessoryHandle = targetAccessory.Handle
      end
      if localCharacter and localHumanoid and localRootPart then
        if localRootPart.Velocity.Magnitude < 50 then
          getgenv().OldPos = localRootPart.CFrame
        end
        if targetHumanoid and targetHumanoid.Sit and not isAllOrOthers then
          return SendNotification("玩家消失", "已停止", 5)
        end
        if targetHead then
          workspace.CurrentCamera.CameraSubject = targetHead
        elseif not targetHead and accessoryHandle then
          workspace.CurrentCamera.CameraSubject = accessoryHandle
        elseif targetHumanoid and targetRootPart then
          workspace.CurrentCamera.CameraSubject = targetHumanoid
        end
        if not targetCharacter:FindFirstChildWhichIsA("BasePart") then
          return 
        end
        local function ApplyThrowForce(part, offset, rotation)
          
          localRootPart.CFrame = CFrame.new(part.Position) * offset * rotation
          localCharacter:SetPrimaryPartCFrame(CFrame.new(part.Position) * offset * rotation)
          localRootPart.Velocity = Vector3.new(90000000, 900000000, 90000000)
          localRootPart.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
        end
        local function PerformThrowAnimation(part)
          
          local timeoutDuration = 2
          local startTime = tick()
          local rotationAngle = 0
          while localRootPart do
            local velocityMagnitude = part.Velocity.Magnitude
            if velocityMagnitude < 50 then
              rotationAngle = rotationAngle + 100
              ApplyThrowForce(part, CFrame.new(0, 1.5, 0) + targetHumanoid.MoveDirection * part.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(rotationAngle), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, -1.5, 0) + targetHumanoid.MoveDirection * part.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(rotationAngle), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(2.25, 1.5, -2.25) + targetHumanoid.MoveDirection * part.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(rotationAngle), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(-2.25, -1.5, 2.25) + targetHumanoid.MoveDirection * part.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(rotationAngle), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, 1.5, 0) + targetHumanoid.MoveDirection, CFrame.Angles(math.rad(rotationAngle), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, -1.5, 0) + targetHumanoid.MoveDirection, CFrame.Angles(math.rad(rotationAngle), 0, 0))
                task.wait()
              else
              ApplyThrowForce(part, CFrame.new(0, 1.5, targetHumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, -1.5, -targetHumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, 1.5, targetHumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, 1.5, targetRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, -1.5, -targetRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, 1.5, targetRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0))
                task.wait()
              ApplyThrowForce(part, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                task.wait()
              end
            velocityMagnitude = part.Velocity.Magnitude
            if velocityMagnitude <= 500 then
              local partParent = part.Parent
              if partParent == targetPlayer.Character then
                partParent = targetPlayer.Parent
                if partParent == Players then
                  local hasCharacter = not targetPlayer.Character
                  if hasCharacter ~= targetCharacter then
                    local isSitting = targetHumanoid.Sit
                    if not isSitting then
                      local health = localHumanoid.Health
                      if health > 0 then
                        local currentTime = tick()
                        if startTime + timeoutDuration < currentTime then
                          break
                        end
                      else
                        break
                      end
                    else
                      break
                    end
                  else
                    break
                  end
                else
                  break
                end
              else
                break
              end
            else
              break
            end
          end
        end
        workspace.FallenPartsDestroyHeight = 0 / 0
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Name = "EpixVel"
        bodyVelocity.Parent = localRootPart
        bodyVelocity.Velocity = Vector3.new(900000000, 900000000, 900000000)
        bodyVelocity.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
        localHumanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        if targetRootPart and targetHead then
          if (targetRootPart.CFrame.p - targetHead.CFrame.p).Magnitude > 5 then
            PerformThrowAnimation(targetHead)
          else
            PerformThrowAnimation(targetRootPart)
          end
        elseif targetRootPart and not targetHead then
          PerformThrowAnimation(targetRootPart)
        elseif not targetRootPart and targetHead then
          PerformThrowAnimation(targetHead)
        elseif not targetRootPart and not targetHead and targetAccessory and accessoryHandle then
          PerformThrowAnimation(accessoryHandle)
        else
          return SendNotification("帅脚本", "已开/关", 5)
        end
        bodyVelocity:Destroy()
        localHumanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = localHumanoid
        repeat
          localRootPart.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
          localCharacter:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, 0.5, 0))
          localHumanoid:ChangeState("GettingUp")
          table.foreach(localCharacter:GetChildren(), function(_, child)
            
            if child:IsA("BasePart") then
              local zeroVector = Vector3.new()
              child.RotVelocity = Vector3.new()
              child.Velocity = zeroVector
            end
          end)
          task.wait()
        until (localRootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
        
      else
        SendNotification("玩家消失", "已停止", 5)
      end
    end
    if targetNames[1] then
      for _, name in next, targetNames, nil do
        local foundPlayer = FindPlayerByName(name)
        if foundPlayer then
          ThrowPlayer(foundPlayer)
        end
      end
    else
      return 
    end
    if isAllOrOthers then
      for _, player in next, Players:GetPlayers() do
        if player ~= localPlayer then
          ThrowPlayer(player)
        end
      end
    end
    for _, name in next, targetNames, nil do
      local foundPlayer = FindPlayerByName(name)
      if foundPlayer and foundPlayer ~= localPlayer then
        if foundPlayer.UserId ~= 1414978355 then
          ThrowPlayer(foundPlayer)
        else
          SendNotification("检测到玩家消失", "己停止", 5)
        end
      elseif not FindPlayerByName(name) and not isAllOrOthers then
        SendNotification("未获取到玩家或工具", "已停止", 5)
      end
    end
    
  end
end)
TeleportSection:Toggle("循环甩飞", "AutoFling", false, function(r0_53)
  
  if PlayerConfig.playernamedied ~= nil and PlayerConfig.playernamedied ~= nil then
    getgenv().autofling = r0_53
    spawn(function()
      
      while autofling do
        wait()
        pcall(function()
          
          local r0_55 = {
            PlayerConfig.playernamedied
          }
          local r1_55 = game:GetService("Players")
          local r2_55 = r1_55.LocalPlayer
          local r3_55 = false
          local function r4_55(r0_61)
            
            r0_61 = r0_61:lower()
            if r0_61 == "all" or r0_61 == "others" then
              r3_55 = true
              return 
            end
            if r0_61 == "random" then
              local r1_61 = r1_55:GetPlayers()
              if table.find(r1_61, r2_55) then
                table.remove(r1_61, table.find(r1_61, r2_55))
              end
              return r1_61[math.random(#r1_61)]
            end
            if r0_61 ~= "random" and r0_61 ~= "all" and r0_61 ~= "others" then
              local r1_61 = next
              local r2_61, r3_61 = r1_55:GetPlayers()
              for r4_61, r5_61 in r1_61, r2_61, r3_61 do
                if r5_61 ~= r2_55 then
                  if r5_61.Name:lower():match("^" .. r0_61) then
                    return r5_61
                  end
                  if r5_61.DisplayName:lower():match("^" .. r0_61) then
                    return r5_61
                  end
                end
              end
            else
              return 
            end
          end
          local function r5_55(r0_60, r1_60, r2_60)
            
            game:GetService("StarterGui"):SetCore("SendNotification", {
              Title = r0_60,
              Text = r1_60,
              Duration = r2_60,
            })
          end
          local function r6_55(r0_56)
            
            local r1_56 = r2_55.Character
            local r2_56 = r1_56 and r1_56:FindFirstChildOfClass("Humanoid")
            local r3_56 = r2_56 and r2_56.RootPart
            local r4_56 = r0_56.Character
            local r5_56 = nil
            local r6_56 = nil
            local r7_56 = nil
            local r8_56 = nil
            local r9_56 = nil
            if r4_56:FindFirstChildOfClass("Humanoid") then
              r5_56 = r4_56:FindFirstChildOfClass("Humanoid")
            end
            if r5_56 and r5_56.RootPart then
              r6_56 = r5_56.RootPart
            end
            if r4_56:FindFirstChild("Head") then
              r7_56 = r4_56.Head
            end
            if r4_56:FindFirstChildOfClass("Accessory") then
              r8_56 = r4_56:FindFirstChildOfClass("Accessory")
            end
            if Accessoy and r8_56:FindFirstChild("Handle") then
              r9_56 = r8_56.Handle
            end
            if r1_56 and r2_56 and r3_56 then
              if r3_56.Velocity.Magnitude < 50 then
                getgenv().OldPos = r3_56.CFrame
              end
              if r5_56 and r5_56.Sit and not r3_55 then
                return r5_55("迪脚本", "错误❌", 5)
              end
              if r7_56 then
                workspace.CurrentCamera.CameraSubject = r7_56
              elseif not r7_56 and r9_56 then
                workspace.CurrentCamera.CameraSubject = r9_56
              elseif r5_56 and r6_56 then
                workspace.CurrentCamera.CameraSubject = r5_56
              end
              if not r4_56:FindFirstChildWhichIsA("BasePart") then
                return 
              end
              local function r10_56(r0_58, r1_58, r2_58)
                
                r3_56.CFrame = CFrame.new(r0_58.Position) * r1_58 * r2_58
                r1_56:SetPrimaryPartCFrame(CFrame.new(r0_58.Position) * r1_58 * r2_58)
                r3_56.Velocity = Vector3.new(90000000, 900000000, 90000000)
                r3_56.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
              end
              local function r11_56(r0_57)
                
                local r1_57 = 2
                local r2_57 = tick()
                local r3_57 = 0
                while r3_56 do
                  local r4_57 = r5_56
                  if r4_57 then
                    r4_57 = r0_57.Velocity.Magnitude
                    if r4_57 < 50 then
                      r3_57 = r3_57 + 100
                      r10_56(r0_57, CFrame.new(0, 1.5, 0) + r5_56.MoveDirection * r0_57.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_57), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, -1.5, 0) + r5_56.MoveDirection * r0_57.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_57), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(2.25, 1.5, -2.25) + r5_56.MoveDirection * r0_57.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_57), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(-2.25, -1.5, 2.25) + r5_56.MoveDirection * r0_57.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_57), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, 1.5, 0) + r5_56.MoveDirection, CFrame.Angles(math.rad(r3_57), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, -1.5, 0) + r5_56.MoveDirection, CFrame.Angles(math.rad(r3_57), 0, 0))
                      task.wait()
                    else
                      r10_56(r0_57, CFrame.new(0, 1.5, r5_56.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, -1.5, -r5_56.WalkSpeed), CFrame.Angles(0, 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, 1.5, r5_56.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, 1.5, r6_56.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, -1.5, -r6_56.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, 1.5, r6_56.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0))
                      task.wait()
                      r10_56(r0_57, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                      task.wait()
                    end
                    r4_57 = r0_57.Velocity.Magnitude
                    if r4_57 <= 500 then
                      r4_57 = r0_57.Parent
                      if r4_57 == r0_56.Character then
                        r4_57 = r0_56.Parent
                        if r4_57 == r1_55 then
                          r4_57 = not r0_56.Character
                          if r4_57 ~= r4_56 then
                            r4_57 = r5_56.Sit
                            if not r4_57 then
                              r4_57 = r2_56.Health
                              if r4_57 > 0 then
                                r4_57 = tick()
                                if r2_57 + r1_57 < r4_57 then
                                  break
                                end
                              else
                                break
                              end
                            else
                              break
                            end
                          else
                            break
                          end
                        else
                          break
                        end
                      else
                        break
                      end
                    else
                      break
                    end
                  else
                    break
                  end
                end
              end
              workspace.FallenPartsDestroyHeight = 0 / 0
              local r12_56 = Instance.new("BodyVelocity")
              r12_56.Name = "EpixVel"
              r12_56.Parent = r3_56
              r12_56.Velocity = Vector3.new(900000000, 900000000, 900000000)
              r12_56.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
              r2_56:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
              if r6_56 and r7_56 then
                if (r6_56.CFrame.p - r7_56.CFrame.p).Magnitude > 5 then
                  r11_56(r7_56)
                else
                  r11_56(r6_56)
                end
              elseif r6_56 and not r7_56 then
                r11_56(r6_56)
              elseif not r6_56 and r7_56 then
                r11_56(r7_56)
              elseif not r6_56 and not r7_56 and r8_56 and r9_56 then
                r11_56(r9_56)
              else
                return r5_55("帅脚本", "已开/关", 5)
              end
              r12_56:Destroy()
              r2_56:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
              workspace.CurrentCamera.CameraSubject = r2_56
              repeat
                r3_56.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
                r1_56:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, 0.5, 0))
                r2_56:ChangeState("GettingUp")
                table.foreach(r1_56:GetChildren(), function(r0_59, r1_59)
                  
                  if r1_59:IsA("BasePart") then
                    local r2_59 = Vector3.new()
                    r1_59.RotVelocity = Vector3.new()
                    r1_59.Velocity = r2_59
                  end
                end)
                task.wait()
              until (r3_56.Position - getgenv().OldPos.p).Magnitude < 25
              workspace.FallenPartsDestroyHeight = getgenv().FPDH
              
            else
-- ...existing code...
              local r10_56 = r5_55
              local r11_56 = "玩家消失"
              local r12_56 = "已停止"
              local r13_56 = 5
              r10_56(r11_56, r12_56, r13_56)
-- ...existing code...
            end
          end
          if r0_55[1] then
            for r10_55, r11_55 in next, r0_55, nil do
              r4_55(r11_55)
            end
          else
            return 
          end
          if r3_55 then
            local r7_55 = next
            local r8_55, r9_55 = r1_55:GetPlayers()
            for r10_55, r11_55 in r7_55, r8_55, r9_55 do
              r6_55(r11_55)
            end
          end
          for r10_55, r11_55 in next, r0_55, nil do
            if r4_55(r11_55) and r4_55(r11_55) ~= r2_55 then
              if r4_55(r11_55).UserId ~= 1414978355 then
                local r12_55 = r4_55(r11_55)
                if r12_55 then
                  r6_55(r12_55)
                end
              else
                r5_55("检测到玩家消失", "已停止", 5)
              end
            elseif not r4_55(r11_55) and not r3_55 then
              r5_55("未获取到玩家或工具", "已停止", 5)
            end
          end
        end)
      end
    end)
  end
end)
TeleportSection:Toggle("开启指定自瞄目标", "Aimbot", false, function(r0_462)
  
  if r0_462 then
    while r0_462 do
      local r1_462 = workspace.CurrentCamera
      local r2_462 = game.Players:FindFirstChild(PlayerConfig.playernamedied)
      local r3_462 = r2_462 and r2_462.Character and r2_462.Character.HumanoidRootPart
      if r3_462 and r1_462 then
        r1_462.CFrame = CFrame.new(r1_462.CFrame.Position, r1_462.CFrame.Position + (r3_462.Position - r1_462.CFrame.Position).unit)
        wait()
      else
        break
      end
    end
  end
end)

r50_0 = UILibrary

r71_0 = r50_0:Tab("『自动说话』", "18930406865"):section("自动说话", true)
local r74_0 = "Textbox"
r74_0 = "你要说的话"
r71_0:Textbox("你要说的话", "TextBoxFlag", "填写你想要说的话", function(r0_664)
  
  bin.message = r0_664
end)
r74_0 = "Textbox"
r74_0 = "说话次数"
r71_0:Textbox("说话次数", "TextBoxFlag", "输入说话次数", function(r0_683)
  
  bin.sayCount = tonumber(r0_683) or 1
end)
r71_0:Button("说话", function()
  
  bin.sayFast = true
  for r3_481 = 1, bin.sayCount, 1 do
    if bin.sayFast then
      game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(bin.message, "All")
      wait(0.1)
    end
  end
  bin.sayFast = false
end)
r71_0:Button("停止说话", function()
  
  bin.sayFast = false
end)
r71_0:Toggle("全自动说话", "ToggleFlag", false, function(r0_443)
  
  bin.autoSay = r0_443
  if r0_443 then
    while bin.autoSay do
      game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(bin.message, "All")
      wait(0.1)
    end
  else
    bin.autoSay = false
  end
end)
r71_0:Label("骂人区")
r71_0:Label("Roblox发言有限制 连续7条后要冷却10秒")
_G.szj = true
function szj()
  
  while _G.szj == true do
    wait(1)
    local r0_300 = {
      [1] = "是不是",
      [2] = "All",
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(r0_300))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "沙不沙",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "乐不乐",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "糙溺麻",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "词穷仔",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "逗不逗",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "喔楠菲",
      [2] = "All",
    }))
  end
end
r71_0:Toggle("三字经", "MR", false, function(r0_120)
  
  _G.szj = r0_120
  szj()
end)
_G.sz = true
function sz()
  
  while _G.sz == true do
    wait()
    wait(1)
    local r0_242 = {
      [1] = "狗仗人势",
      [2] = "All",
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(r0_242))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "猪狗不如",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "狼心狗肺",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "厚颜无耻",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "恬不知耻",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "司跌司麻",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "阳奉阴违",
      [2] = "All",
    }))
  end
end
r71_0:Toggle("四字成语", "MR", false, function(r0_397)
  
  _G.sz = r0_397
  sz()
end)
_G.sb = true
function sb()
  
  while _G.sb == true do
    wait()
    wait(1)
    local r0_377 = {
      [1] = "损人不利己",
      [2] = "All",
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(r0_377))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "害人又害己",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "活着浪费空气，司了浪费土地",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "给你爱因斯坦的脑子都没有用",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "整天不干正事",
      [2] = "All",
    }))
    wait(1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({
      [1] = "没用的东西",
      [2] = "All",
    }))
  end
end
r71_0:Toggle("骂人语录(我老师爱用×＿×)", "MR", false, function(r0_189)
  
  _G.sb = r0_189
  sb()
end)
local r73_0 = r50_0:Tab("『时间』", "18930406865"):section("时间", true)
r74_0 = r73_0:Label("1")
local r75_0 = r73_0:Label("2")
local r76_0 = r73_0:Label("3")
local r77_0 = r73_0:Label("4")
local r78_0 = r73_0:Label("5")

  
  task.spawn(function()
    
    
    while true do
      r74_0.Text = "当前时间: " .. os.date("%Y-%m-%d %H:%M:%S")
      local r3_442 = os.time({
        year = 2025,
        month = 1,
        day = 29,
        hour = 0,
        min = 0,
        sec = 0,
      }) - os.time()
      if r3_442 > 0 then
        r75_0.Text = string.format("春节倒计时: %d天%d小时%d分钟%d秒", math.floor(r3_442 / 86400), math.floor(r3_442 % 86400 / 3600), math.floor(r3_442 % 3600 / 60), r3_442 % 60)
      else
        r75_0.Text = "过年啦！！！"
      end
      wait(1)
    end
  end)


  
  task.spawn(function()
    
    
    while true do
      local r2_634 = os.time({
        year = 2026,
        month = 1,
        day = 1,
        hour = 0,
        min = 0,
        sec = 0,
      }) - os.time()
      if r2_634 > 0 then
        r76_0.Text = string.format("跨年倒计时: %d天%d小时%d分钟%d秒", math.floor(r2_634 / 86400), math.floor(r2_634 % 86400 / 3600), math.floor(r2_634 % 3600 / 60), r2_634 % 60)
      else
        r76_0.Text = "跨年啦！！！"
      end
      wait(1)
    end
  end)


  
  task.spawn(function()
    
    
    while true do
      local r2_78 = os.time({
        year = 2025,
        month = 1,
        day = 28,
        hour = 0,
        min = 0,
        sec = 0,
      }) - os.time()
      if r2_78 > 0 then
        r77_0.Text = string.format("除夕倒计时: %d天%d小时%d分钟%d秒", math.floor(r2_78 / 86400), math.floor(r2_78 % 86400 / 3600), math.floor(r2_78 % 3600 / 60), r2_78 % 60)
      else
        r77_0.Text = "除夕啦！！！"
      end
      wait(1)
    end
  end)


  
  task.spawn(function()
    
    
    while true do
      local r2_671 = os.time({
        year = 2025,
        month = 2,
        day = 12,
        hour = 0,
        min = 0,
        sec = 0,
      }) - os.time()
      if r2_671 > 0 then
        r78_0.Text = string.format("元宵节倒计时: %d天%d小时%d分钟%d秒", math.floor(r2_671 / 86400), math.floor(r2_671 % 86400 / 3600), math.floor(r2_671 % 3600 / 60), r2_671 % 60)
      else
        r78_0.Text = "元宵节啦！！！"
      end
      wait(1)
    end
  end)

local r84_0 = r50_0:Tab("『透视ESP』", "18930406865"):section("透视ESP", true)
r84_0:Label("①透视ESP")
r84_0:Label("每个服务器都可以用 『推荐开启』")
local r85_0 = game:GetService("RunService")
local r86_0 = game:GetService("Players")
local r87_0 = r86_0.LocalPlayer
local r88_0 = false
local r89_0 = false
local r90_0 = false
local r91_0 = false
local r92_0 = false
local function r93_0(r0_451)
  
  local r1_451 = Instance.new("BillboardGui")
  local r2_451 = Instance.new("TextLabel")
  r1_451.Name = "NameESP"
  r1_451.Adornee = r0_451.Character:WaitForChild("Head")
  r1_451.Size = UDim2.new(0, 100, 0, 50)
  r1_451.StudsOffset = Vector3.new(0, 3, 0)
  r1_451.AlwaysOnTop = true
  r2_451.Parent = r1_451
  r2_451.BackgroundTransparency = 1
  r2_451.Text = r0_451.Name
  r2_451.Size = UDim2.new(1, 0, 1, 0)
  r2_451.TextColor3 = Color3.new(1, 1, 1)
  r2_451.TextScaled = true
  local r3_451 = Instance.new("TextLabel")
  r3_451.Parent = r1_451
  r3_451.BackgroundTransparency = 1
  r3_451.Position = UDim2.new(0, 0, 0, 30)
  r3_451.Size = UDim2.new(1, 0, 0.5, 0)
  r3_451.TextColor3 = Color3.new(1, 1, 1)
  r3_451.TextScaled = true
  local function r4_451()
    
    if r1_451.Parent then
      r3_451.Text = string.format("距离%.2f米", (r87_0.Character.HumanoidRootPart.Position - r0_451.Character.HumanoidRootPart.Position).Magnitude)
    end
  end
  spawn(function()
    
    while r1_451.Parent do
      r4_451()
      wait(0.1)
    end
  end)
  r1_451.Parent = r0_451.Character:WaitForChild("Head")
end
local function r94_0(r0_282)
  
  if r0_282.Character and r0_282.Character:FindFirstChild("Head") and r0_282.Character.Head:FindFirstChild("NameESP") then
    r0_282.Character.Head.NameESP:Destroy()
  end
end
local function r95_0(r0_86)
  
  local r1_86 = Instance.new("Highlight")
  r1_86.Name = "HighlightESP"
  r1_86.Adornee = r0_86.Character
  r1_86.FillTransparency = 0.5
  r1_86.OutlineColor = Color3.new(1, 1, 1)
  r1_86.OutlineTransparency = 0
  r1_86.Parent = r0_86.Character
  local function r2_86()
    
    if r0_86.Team and r0_86.Team.TeamColor then
      r1_86.FillColor = r0_86.Team.TeamColor.Color
    else
      r1_86.FillColor = Color3.new(1, 1, 1)
    end
  end
  r2_86()
  r0_86:GetPropertyChangedSignal("Team"):Connect(r2_86)
end
local function r96_0(r0_413)
  
  if r0_413.Character and r0_413.Character:FindFirstChild("Head") and r0_413.Character:FindFirstChild("HighlightESP") then
    r0_413.Character.HighlightESP:Destroy()
  end
end
local function r97_0(r0_646)
  
  local r1_646 = Drawing.new("Line")
  r1_646.Visible = false
  r1_646.Color = Color3.new(1, 1, 1)
  r1_646.Thickness = 1
  r1_646.Transparency = 1
  r85_0.RenderStepped:Connect(function()
    
    if r90_0 and r0_646.Character and r0_646.Character:FindFirstChild("HumanoidRootPart") and r87_0.Character and r87_0.Character:FindFirstChild("HumanoidRootPart") then
      r1_646.Visible = true
      local r1_647, r2_647 = workspace.CurrentCamera:WorldToViewportPoint(r0_646.Character.HumanoidRootPart.Position)
      if r2_647 then
        r1_646.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
        r1_646.To = Vector2.new(r1_647.X, r1_647.Y)
      else
        r1_646.Visible = false
      end
    else
      r1_646.Visible = false
    end
  end)
  r0_646.CharacterRemoving:Connect(function()
    
    r1_646:Remove()
  end)
end
local function r98_0(r0_37)
  
  if r0_37:FindFirstChild("TracerESP") then
    r0_37.TracerESP:Destroy()
  end
end
local function r99_0(r0_252)
  
  local r1_252 = Instance.new("BoxHandleAdornment")
  r1_252.Name = "BoxESP"
  r1_252.Size = r0_252.Character:GetExtentsSize() * 1.1
  r1_252.Adornee = r0_252.Character
  r1_252.AlwaysOnTop = true
  r1_252.ZIndex = 5
  r1_252.Transparency = 0.5
  r1_252.Color3 = Color3.new(1, 0, 0)
  r1_252.Parent = r0_252.Character
end
local function r100_0(r0_295)
  
  if r0_295.Character:FindFirstChild("BoxESP") then
    r0_295.Character.BoxESP:Destroy()
  end
end
local function r101_0(r0_611)
  
  local r1_611 = Drawing.new("Square")
  r1_611.Visible = false
  r1_611.Transparency = 0.5
  r1_611.Color = Color3.new(1, 0, 0)
  r1_611.Thickness = 2
  r85_0.RenderStepped:Connect(function()
    
    if r92_0 and r0_611.Character and r0_611.Character:FindFirstChild("HumanoidRootPart") and r87_0.Character and r87_0.Character:FindFirstChild("HumanoidRootPart") then
      r1_611.Visible = true
      local r0_612 = r0_611.Character.HumanoidRootPart
      local r1_612, r2_612 = workspace.CurrentCamera:WorldToViewportPoint(r0_612.Position)
      if r2_612 then
        local r3_612 = r0_611.Character:GetExtentsSize()
        local r4_612 = workspace.CurrentCamera:WorldToViewportPoint((r0_612.CFrame * CFrame.new(r3_612.X / -2, r3_612.Y / 2, 0)).p)
        local r5_612 = workspace.CurrentCamera:WorldToViewportPoint((r0_612.CFrame * CFrame.new(r3_612.X / 2, -r3_612.Y / 2, 0)).p)
        r1_611.Size = Vector2.new(r5_612.X - r4_612.X, r5_612.Y - r4_612.Y)
        r1_611.Position = Vector2.new(r4_612.X, r4_612.Y)
      else
        r1_611.Visible = false
      end
    else
      r1_611.Visible = false
    end
  end)
  r0_611.CharacterRemoving:Connect(function()
    
    r1_611:Remove()
  end)
end
local function r102_0(r0_446)
  
end
local function r103_0(r0_392)
  
  r0_392.CharacterAdded:Connect(function(r0_393)
    
    wait(1)
    if r88_0 then
      r93_0(r0_392)
    end
    if r89_0 then
      r95_0(r0_392)
    end
    if r90_0 then
      r97_0(r0_392)
    end
    if r91_0 then
      r99_0(r0_392)
    end
    if r92_0 then
      r101_0(r0_392)
    end
  end)
end
local function r104_0(r0_49)
  
  r94_0(r0_49)
  r96_0(r0_49)
  r98_0(r0_49)
  r100_0(r0_49)
end
local function r105_0(r0_3)
  
  r88_0 = r0_3
  for r4_3, r5_3 in pairs(r86_0:GetPlayers()) do
    if r5_3 ~= r87_0 then
      r94_0(r5_3)
    end
  end
  
  
  
  
end
local function r106_0(r0_251)
  
  r89_0 = r0_251
  for r4_251, r5_251 in pairs(r86_0:GetChildren()) do
    if r5_251 ~= r87_0 then
      r96_0(r5_251)
    end
  end
  
  
  
  
end
local function r107_0(r0_553)
  
  r90_0 = r0_553
  for r4_553, r5_553 in pairs(r86_0:GetPlayers()) do
    if r5_553 ~= r87_0 then
      if r90_0 then
        r97_0(r5_553)
      else
        r98_0(r5_553)
      end
    end
  end
end
local function r108_0(r0_376)
  
  r91_0 = r0_376
  for r4_376, r5_376 in pairs(r86_0:GetPlayers()) do
    if r5_376 ~= r87_0 then
      if r91_0 then
        r99_0(r5_376)
      else
        r100_0(r5_376)
      end
    end
  end
end
local function r109_0(r0_318)
  
  r92_0 = r0_318
  for r4_318, r5_318 in pairs(r86_0:GetPlayers()) do
    if r5_318 ~= r87_0 then
      if r92_0 then
        r101_0(r5_318)
      else
        r102_0(r5_318)
      end
    end
  end
end
for r113_0, r114_0 in pairs(r86_0:GetPlayers()) do
  if r114_0 ~= r87_0 then
    r103_0(r114_0)
  end
end
r86_0.PlayerAdded:Connect(function(r0_593)
  
  if r0_593 ~= r87_0 then
    r103_0(r0_593)
  end
end)
r86_0.PlayerRemoving:Connect(r104_0)
r84_0:Toggle("透视位置", "ESP", false, function(r0_228)
  
  local function r1_228(r0_231)
    
    if r0_231.Character and r0_231.Character:FindFirstChildOfClass("Humanoid") then
      r0_231.Character.Humanoid.NameDisplayDistance = 9000000000
      r0_231.Character.Humanoid.NameOcclusion = "NoOcclusion"
      r0_231.Character.Humanoid.HealthDisplayDistance = 9000000000
      r0_231.Character.Humanoid.HealthDisplayType = "AlwaysOn"
      r0_231.Character.Humanoid.Health = r0_231.Character.Humanoid.Health
    end
  end
  for r5_228, r6_228 in pairs(game.Players:GetPlayers()) do
    r1_228(r6_228)
    r6_228.CharacterAdded:Connect(function()
      
      task.wait(0.33)
      r1_228(r6_228)
    end)
    
  end
  game.Players.PlayerAdded:Connect(function(r0_229)
    
    r1_228(r0_229)
    r0_229.CharacterAdded:Connect(function()
      
      task.wait(0.33)
      r1_228(r0_229)
    end)
  end)
end)
r84_0:Toggle("透视名字", "ESP", false, function(r0_64)
  
  r105_0(r0_64)
end)
r84_0:Toggle("开启内透", "ESP", false, function(r0_570)
  
  r106_0(r0_570)
end)
r84_0:Toggle("透视射线", "ESP", false, function(r0_535)
  
  r107_0(r0_535)
end)
r84_0:Toggle("透视3D框", "ESP", false, function(r0_342)
  
  r108_0(r0_342)
end)
r84_0:Toggle("透视2D框", "ESP", false, function(r0_475)
  
  r109_0(r0_475)
end)
r84_0:Label("②透视ESP")
local r110_0 = loadstring(game:HttpGet("https://pastefy.app/gR9TNZLb/raw"))()
r110_0:Toggle(true)
r110_0.Players = false
r110_0.Tracers = false
r110_0.Boxes = false
r110_0.Names = false
r110_0.TeamColor = false
r110_0.TeamMates = false
r84_0:Toggle("开启/关闭透视(总开关 必开)", "ESP", false, function(r0_178)
  
  r110_0.Players = r0_178
end)
r84_0:Toggle("显示名称", "ESP", false, function(r0_626)
  
  r110_0.Names = r0_626
end)
r84_0:Toggle("显示框框", "ESP", false, function(r0_531)
  
  r110_0.Boxes = r0_531
end)
r84_0:Toggle("显示射线", "ESP", false, function(r0_660)
  
  r110_0.Tracers = r0_660
end)
r84_0:Toggle("开启/关闭透视队伍验证", "ESP", false, function(r0_711)
  
  r110_0.TeamColor = r0_711
end)
r84_0:Label("③透视ESP")
getgenv().ESPEnabled = false
getgenv().ShowBox = false
getgenv().ShowHealth = false
getgenv().ShowName = false
getgenv().ShowDistance = false
getgenv().ShowTracer = false
getgenv().TeamCheck = false
local r111_0 = game:GetService("Players")
local r112_0 = game:GetService("RunService")
local r113_0 = workspace.CurrentCamera
local r114_0 = r111_0.LocalPlayer
local function r115_0(r0_693)
  
  local r1_693 = Drawing.new("Square")
  r1_693.Visible = false
  r1_693.Color = Color3.new(1, 1, 1)
  r1_693.Thickness = 1
  r1_693.Filled = false
  local r2_693 = Drawing.new("Text")
  r2_693.Visible = false
  r2_693.Color = Color3.new(0, 1, 0)
  r2_693.Size = 16
  local r3_693 = Drawing.new("Text")
  r3_693.Visible = false
  r3_693.Color = Color3.new(1, 1, 1)
  r3_693.Size = 16
  local r4_693 = Drawing.new("Text")
  r4_693.Visible = false
  r4_693.Color = Color3.new(1, 1, 0)
  r4_693.Size = 16
  local r5_693 = Drawing.new("Line")
  r5_693.Visible = false
  r5_693.Color = Color3.new(1, 0, 0)
  r5_693.Thickness = 1
  r112_0.RenderStepped:Connect(function()
    
    if not getgenv().ESPEnabled or not r0_693.Character or not r0_693.Character:FindFirstChild("HumanoidRootPart") or not r0_693.Character:FindFirstChild("Humanoid") or r0_693 == r114_0 then
      r1_693.Visible = false
      r2_693.Visible = false
      r3_693.Visible = false
      r4_693.Visible = false
      r5_693.Visible = false
      return 
    end
    if getgenv().TeamCheck and r0_693.Team == r114_0.Team then
      r1_693.Visible = false
      r2_693.Visible = false
      r3_693.Visible = false
      r4_693.Visible = false
      r5_693.Visible = false
      return 
    end
    local r0_694 = r0_693.Character
    local r1_694 = r0_694:FindFirstChild("HumanoidRootPart")
    local r2_694 = r0_694:FindFirstChild("Humanoid")
    if r1_694 and r2_694 and 0 < r2_694.Health then
      local r3_694, r4_694 = r113_0:WorldToViewportPoint(r1_694.Position)
      local r5_694, r6_694 = r113_0:WorldToViewportPoint(r1_694.Position + Vector3.new(0, 3, 0))
      local r7_694, r8_694 = r113_0:WorldToViewportPoint(r1_694.Position - Vector3.new(0, 3, 0))
      if getgenv().ShowBox and r4_694 then
        r1_693.Size = Vector2.new(1000 / r3_694.Z, r5_694.Y - r7_694.Y)
        r1_693.Position = Vector2.new(r3_694.X - r1_693.Size.X / 2, r3_694.Y - r1_693.Size.Y / 2)
        r1_693.Visible = true
      else
        r1_693.Visible = false
      end
      if getgenv().ShowHealth and r4_694 then
        r2_693.Position = Vector2.new(r3_694.X, r3_694.Y - r1_693.Size.Y / 2 - 20)
        r2_693.Text = "血量: " .. math.floor(r2_694.Health)
        r2_693.Visible = true
      else
        r2_693.Visible = false
      end
      if getgenv().ShowName and r4_694 then
        r3_693.Position = Vector2.new(r3_694.X, r3_694.Y - r1_693.Size.Y / 2 - 40)
        r3_693.Text = "名字: " .. r0_693.Name
        r3_693.Visible = true
      else
        r3_693.Visible = false
      end
      if getgenv().ShowDistance and r4_694 then
        r4_693.Position = Vector2.new(r3_694.X, r3_694.Y + r1_693.Size.Y / 2 + 20)
        r4_693.Text = "距离: " .. math.floor((r114_0.Character.HumanoidRootPart.Position - r1_694.Position).Magnitude) .. " ㎝"
        r4_693.Visible = true
      else
        r4_693.Visible = false
      end
-- ...existing code...
      if getgenv().ShowTracer then
        local r9_694 = r5_693
        local tracerStart = getgenv().TracerStart
        local startPos

        if tracerStart == "Bottom" then
          startPos = Vector2.new(r113_0.ViewportSize.X / 2, r113_0.ViewportSize.Y)
        elseif tracerStart == "Center" or tracerStart == "Middle" then
          startPos = Vector2.new(r113_0.ViewportSize.X / 2, r113_0.ViewportSize.Y / 2)
        elseif typeof(tracerStart) == "Vector2" then
          startPos = tracerStart
        else
          -- 默认回退到屏幕中心
          startPos = Vector2.new(r113_0.ViewportSize.X / 2, r113_0.ViewportSize.Y / 2)
        end

        r9_694.From = startPos
        r5_693.To = Vector2.new(r3_694.X, r3_694.Y)
        r5_693.Visible = r4_694
      else
        r5_693.Visible = false
      end
-- ...existing code...
    else
      r1_693.Visible = false
      r2_693.Visible = false
      r3_693.Visible = false
      r4_693.Visible = false
      r5_693.Visible = false
    end
  end)
end
for r119_0, r120_0 in pairs(r111_0:GetPlayers()) do
  if r120_0 ~= r114_0 then
    r115_0(r120_0)
  end
end
r111_0.PlayerAdded:Connect(function(r0_571)
  
  if r0_571 ~= r114_0 then
    r115_0(r0_571)
  end
end)
r84_0:Toggle("ESP总开关[必开]", "Enabled", false, function(r0_269)
  
  getgenv().ESPEnabled = r0_269
end)
r84_0:Toggle("身体方框", "Box", false, function(r0_540)
  
  getgenv().ShowBox = r0_540
end)
r84_0:Toggle("血量", "Health", false, function(r0_132)
  
  getgenv().ShowHealth = r0_132
end)
r84_0:Toggle("用户名", "Name", false, function(r0_616)
  
  getgenv().ShowName = r0_616
end)
r84_0:Toggle("距离", "Distance", false, function(r0_510)
  
  getgenv().ShowDistance = r0_510
end)
r84_0:Toggle("天线", "Tracer", false, function(r0_494)
  
  getgenv().ShowTracer = r0_494
end)
r84_0:Toggle("团队判断", "Team check", false, function(r0_356)
  
  getgenv().TeamCheck = r0_356
end)
local r117_0 = r50_0:Tab("『自瞄』", "18930406865"):section("自瞄", true)
r117_0:Label("圈圈自瞄")
r117_0:Toggle("显示圈圈自瞄", "open/close", false, function(r0_42)
  
  if r0_42 then
    InitFOV(AimConfig.fovsize, AimConfig.fovcolor, AimConfig.fovthickness, AimConfig.Transparency)
  else
    CleanupFOV()
  end
end)
r117_0:Toggle("开启/关闭圈圈自瞄", "open/close", false, function(r0_507)
  
  AimConfig.fovlookAt = r0_507
end)
local r120_0 = "Slider"
r120_0 = "圈圈自瞄厚度"
r117_0:Slider("圈圈自瞄厚度", "thickness", 2, 0, 10, false, function(r0_144)
  
  AimConfig.fovthickness = r0_144
  UpdateFOVSettings()
end)
r120_0 = "Slider"
r120_0 = "圈圈自瞄大小"
r117_0:Slider("圈圈自瞄大小", "Size", 50, 0, 100, false, function(r0_642)
  
  AimConfig.fovsize = r0_642
  UpdateFOVSettings()
end)
r120_0 = "Slider"
r120_0 = "圈圈自瞄透明度"
r117_0:Slider("圈圈自瞄透明度", "Transparency", 5, 0, 10, false, function(r0_473)
  
  AimConfig.Transparency = r0_473
  UpdateFOVSettings()
end)
r120_0 = "Slider"
r120_0 = "圈圈自瞄距离"
r117_0:Slider("圈圈自瞄距离", "distance", 200, 10, 500, false, function(r0_705)
  
  AimConfig.distance = r0_705
end)
r120_0 = "Dropdown"
r120_0 = "选择圈圈自瞄颜色"
local r118_0 = r117_0:Dropdown("选择圈圈自瞄颜色", "Dropdown", {
  "红色",
  "蓝色",
  "黄色",
  "绿色",
  "青色",
  "橙色",
  "紫色",
  "白色",
  "黑色"
}, function(r0_103)
  
  AimConfig.fovcolor = ColorConfig[r0_103]
  UpdateFOVSettings()
  drop.Text = "圈圈自瞄颜色" .. r0_103
end)
local r121_0 = "Dropdown"
r121_0 = "选择圈圈自瞄部位"
local r119_0 = r117_0:Dropdown("选择圈圈自瞄部位", "Dropdown", {
  "头部",
  "脖子",
  "躯干",
  "左臂",
  "右臂",
  "左腿",
  "右腿",
  "左手",
  "右手",
  "左小臂",
  "右小臂",
  "左大臂",
  "右大臂",
  "左脚",
  "左小腿",
  "上半身",
  "左大腿",
  "右脚",
  "右小腿",
  "下半身",
  "右大腿",
  nil
}, function(r0_378)
  
  AimConfig.Position = BodyPartMap[r0_378]
  UpdateFOVSettings()
  r118_0.Text = "选择圈圈自瞄部位" .. r0_378
end)
r117_0:Toggle("队伍检测", "Enable/Disable Team Check", false, function(r0_709)
  
  AimConfig.teamCheck = r0_709
end)
r117_0:Toggle("活体检测", "Alive Check", false, function(r0_546)
  
  AimConfig.aliveCheck = r0_546
end)
r117_0:Toggle("墙壁检测", "Enable/Disable Wall Check", false, function(r0_268)
  
  AimConfig.wallCheck = r0_268
end)
r117_0:Toggle("预判自瞄", "prejudging self-sighting", false, function(r0_71)
  
  AimConfig.prejudgingselfsighting = r0_71
end)
local r122_0 = "Slider"
r122_0 = "预判距离"
r117_0:Slider("预判距离", "distance", 100, 10, 500, false, function(r0_276)
  
  AimConfig.prejudgingselfsightingdistance = r0_276
end)
r117_0:Label("Distance距离优先 : 优先瞄准距离最近的敌人")
r117_0:Label("Crosshair准星优先 : 优先瞄准准星附近的敌人")
r117_0:Label("Speed速度优先 : 优先瞄准移动速度最快的敌人")
r117_0:Label("Smart智能模式 : 综合距离、速度和准星距离，自动选择最佳目标")
r122_0 = "Dropdown"
r122_0 = "圈圈自瞄优先模式"
r120_0 = r117_0:Dropdown("圈圈自瞄优先模式", "Priority Mode", {
  "Distance",
  "Crosshair",
  "Speed",
  "Smart"
}, function(r0_193)
  
  AimConfig.priorityMode = r0_193
  r119_0.Text = "圈圈自瞄优先模式" .. r0_193
end)
r117_0:Label("AI自瞄 : 使用AI算法进行自瞄")
r117_0:Label("函数自瞄 : 使用数学函数进行自瞄")
local r123_0 = "Dropdown"
r123_0 = "自瞄模式"
r121_0 = r117_0:Dropdown("自瞄模式", "Aim Mode", {
  "AI",
  "Function"
}, function(r0_119)
  
  AimConfig.aimMode = r0_119
  r120_0.Text = "自瞄模式" .. r0_119
end)
local r124_0 = "Slider"
r124_0 = "平滑度"
r117_0:Slider("平滑度", "Smoothness", 5, 0, 10, false, function(r0_524)
  
  AimConfig.smoothness = r0_524
end)
r124_0 = "Slider"
r124_0 = "自瞄速度"
r117_0:Slider("自瞄速度", "Aim Speed", 5, 0, 10, false, function(r0_209)
  
  AimConfig.aimSpeed = r0_209
end)
r117_0:Label("动态自瞄")
r117_0:Toggle("动态自瞄FOV", "Dynamic FOV Scaling", false, function(r0_2)
  
  AimConfig.dynamicFOV = r0_2
  if r0_2 then
    AimConfig.fovsize = 20 / AimConfig.smoothness * AimConfig.aimSpeed
    UpdateFOVSettings()
  else
    AimConfig.fovsize = 20
    UpdateFOVSettings()
  end
end)
r124_0 = "Slider"
r124_0 = "动态FOV缩放比例"
r117_0:Slider("动态FOV缩放比例", "Dynamic FOV Scale", 1.5, 1, 3, false, function(r0_448)
  
  AimConfig.dynamicFOVScale = r0_448
  if AimConfig.dynamicFOV then
    AimConfig.fovsize = 20 / AimConfig.smoothness * AimConfig.aimSpeed * r0_448
    UpdateFOVSettings()
  end
end)
r117_0:Toggle("自动开火", "Auto Fire", false, function(r0_167)
  
  AimConfig.autoFire = r0_167
end)
r124_0 = "Slider"
r124_0 = "开火频率"
r117_0:Slider("开火频率", "Fire Rate", 10, 1, 20, false, function(r0_479)
  
  AimConfig.fireRate = r0_479
end)
r124_0 = "Slider"
r124_0 = "子弹延迟"
r117_0:Slider("子弹延迟", "Bullet Delay", 0.1, 0, 1, false, function(r0_710)
  
  AimConfig.bulletDelay = r0_710
end)
r117_0:Toggle("武器切换", "Weapon Switch", false, function(r0_411)
  
  AimConfig.weaponSwitch = r0_411
end)
r117_0:Toggle("威胁度优先", "Threat Priority", false, function(r0_472)
  
  AimConfig.threatPriority = r0_472
end)
r117_0:Toggle("血量优先", "Health Priority", false, function(r0_239)
  
  AimConfig.healthPriority = r0_239
end)
r123_0 = r50_0:Tab("『FE』", "18930406865"):section("脚本", true)
r123_0:Button("FE cmd", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/testing-main.lua"))()
end)
r123_0:Button("FE C00lgui", function()
  
  loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)
r123_0:Button("FE 1x1x1x1", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/JipYNCht", true))()
end)
r123_0:Button("FE 大长腿", function()
  
  loadstring(game:HttpGet([[https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets]]))()
end)
r123_0:Button("FE 用头", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
end)
r123_0:Button("FE 复仇者", function()
  
  loadstring(game:HttpGet("https://pastefy.ga/iGyVaTvs/raw", true))()
end)
r123_0:Button("FE 鼠标", function()
  
  loadstring(game:HttpGet("https://pastefy.ga/V75mqzaz/raw", true))()
end)
r123_0:Button("FE 变怪物", function()
  
  loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
end)
r123_0:Button("FE 香蕉枪", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end)
r123_0:Button("FE 超长级把", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
end)
r123_0:Button("FE 动画中心", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui]], true))()
end)
r123_0:Button("FE 变玩家", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/PvnN4B8R"))()
end)
r123_0:Button("FE 猫娘R63", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua]]))()
end)
r123_0:Button("FE", function()
  
  loadstring(game:HttpGet("https://pastefy.ga/a7RTi4un/raw"))()
end)
r123_0:Button("FE R6撸管", function()
  
  loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
end)
r123_0:Button("FE R15撸管", function()
  
  loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
end)
r123_0:Button("FE R6远程操蛋", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE-R6CB-SCRIPT.lua]]))()
end)
r123_0:Button("FE R15远程操蛋", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE-R15CB-SCRIPT.lua]]))()
end)
r123_0:Button("FE Tuber93入侵弹窗图显示", function()
  
  loadstring(game:HttpGet("https://pastefy.app/veGCWoZ6/raw"))()
end)
r123_0:Button("FE 修改皮脚本天空", function()
  
  loadstring(game:HttpGet("https://pastefy.app/HZaYQYHa/raw"))()
end)
r123_0:Button("FE 黑客入侵", function()
  
  loadstring(game:HttpGet("https://pastefy.app/qQOkHeaY/raw"))()
end)
local r125_0 = r50_0:Tab("『音乐』", "18930406865"):section("音乐", true)
r125_0:Label("输入音乐ID即可 播放音乐仅自己可听见")
local r128_0 = "Textbox"
r128_0 = "音乐播放器"
r125_0:Textbox("音乐播放器", "Textbox", "输入音乐ID", true, function(r0_310)
  
  local r1_310 = r0_310
  if r1_310 then
    audio.SoundId = "rbxassetid://" .. r1_310
    audio:Play()
  end
end)
r125_0:Button("停止播放", function()
  
  audio:Stop()
end)
r125_0:Label("下面是音乐合集↓")
r125_0:Button("防空警报", function()
  
  local r0_168 = Instance.new("Sound")
  r0_168.SoundId = "rbxassetid://792323017"
  r0_168.Parent = game.Workspace
  r0_168:Play()
end)
r125_0:Button("义勇军进行曲", function()
  
  local r0_39 = Instance.new("Sound")
  r0_39.SoundId = "rbxassetid://1845918434"
  r0_39.Parent = game.Workspace
  r0_39:Play()
end)
r125_0:Button("彩虹瀑布", function()
  
  local r0_17 = Instance.new("Sound")
  r0_17.SoundId = "rbxassetid://1837879082"
  r0_17.Parent = game.Workspace
  r0_17:Play()
end)
r125_0:Button("雨中牛郎", function()
  
  local r0_206 = Instance.new("Sound")
  r0_206.SoundId = "rbxassetid://16831108393"
  r0_206.Parent = game.Workspace
  r0_206:Play()
end)
r125_0:Button("钢管落地(大声)", function()
  
  local r0_6 = Instance.new("Sound")
  r0_6.SoundId = "rbxassetid://6729922069"
  r0_6.Parent = game.Workspace
  r0_6:Play()
end)
r125_0:Button("钢管落地", function()
  
  local r0_414 = Instance.new("Sound")
  r0_414.SoundId = "rbxassetid://6011094380"
  r0_414.Parent = game.Workspace
  r0_414:Play()
end)
r125_0:Button("闪灯", function()
  
  local r0_684 = Instance.new("Sound")
  r0_684.SoundId = "rbxassetid://8829969521"
  r0_684.Parent = game.Workspace
  r0_684:Play()
end)
r125_0:Button("全损音质", function()
  
  local r0_551 = Instance.new("Sound")
  r0_551.SoundId = "rbxassetid://6445594239"
  r0_551.Parent = game.Workspace
  r0_551:Play()
end)
r125_0:Button("串稀", function()
  
  local r0_395 = Instance.new("Sound")
  r0_395.SoundId = "rbxassetid://4809574295"
  r0_395.Parent = game.Workspace
  r0_395:Play()
end)
r125_0:Button("手枪开枪", function()
  
  local r0_410 = Instance.new("Sound")
  r0_410.SoundId = "rbxassetid://6569844325"
  r0_410.Parent = game.Workspace
  r0_410:Play()
end)
r125_0:Button("喝可乐", function()
  
  local r0_121 = Instance.new("Sound")
  r0_121.SoundId = "rbxassetid://6911756959"
  r0_121.Parent = game.Workspace
  r0_121:Play()
end)
r125_0:Button("Doors TheHunt 倒计时开始", function()
  
  local r0_361 = Instance.new("Sound")
  r0_361.SoundId = "rbxassetid://16695384009"
  r0_361.Parent = game.Workspace
  r0_361:Play()
end)
r125_0:Button("Doors TheHunt 倒计时结束", function()
  
  local r0_641 = Instance.new("Sound")
  r0_641.SoundId = "rbxassetid://16695021133"
  r0_641.Parent = game.Workspace
  r0_641:Play()
end)
r125_0:Button("你他妈劈我瓜是吧", function()
  
  local r0_141 = Instance.new("Sound")
  r0_141.SoundId = "rbxassetid://7309604510"
  r0_141.Parent = game.Workspace
  r0_141:Play()
end)
r125_0:Button("未知核爆倒计时", function()
  
  local r0_238 = Instance.new("Sound")
  r0_238.SoundId = "rbxassetid://9133927345"
  r0_238.Parent = game.Workspace
  r0_238:Play()
end)
r125_0:Button("火车音", function()
  
  local r0_487 = Instance.new("Sound")
  r0_487.SoundId = "rbxassetid://3900067524"
  r0_487.Parent = game.Workspace
  r0_487:Play()
end)
r125_0:Button("Gentry Road", function()
  
  local r0_23 = Instance.new("Sound")
  r0_23.SoundId = "rbxassetid://5567523008"
  r0_23.Parent = game.Workspace
  r0_23:Play()
end)
r125_0:Button("植物大战僵尸", function()
  
  local r0_600 = Instance.new("Sound")
  r0_600.SoundId = "rbxassetid://158260415"
  r0_600.Parent = game.Workspace
  r0_600:Play()
end)
r125_0:Button("早安越南", function()
  
  local r0_224 = Instance.new("Sound")
  r0_224.SoundId = "rbxassetid://8295016126"
  r0_224.Parent = game.Workspace
  r0_224:Play()
end)
r125_0:Button("愤怒芒西 Evade?", function()
  
  local r0_495 = Instance.new("Sound")
  r0_495.SoundId = "rbxassetid://5029269312"
  r0_495.Parent = game.Workspace
  r0_495:Play()
end)
r125_0:Button("梅西", function()
  
  local r0_163 = Instance.new("Sound")
  r0_163.SoundId = "rbxassetid://7354576319"
  r0_163.Parent = game.Workspace
  r0_163:Play()
end)
r125_0:Button("永春拳", function()
  
  local r0_692 = Instance.new("Sound")
  r0_692.SoundId = "rbxassetid://1845973140"
  r0_692.Parent = game.Workspace
  r0_692:Play()
end)
r125_0:Button("带劲的音乐", function()
  
  local r0_306 = Instance.new("Sound")
  r0_306.SoundId = "rbxassetid://18841891575"
  r0_306.Parent = game.Workspace
  r0_306:Play()
end)
r125_0:Button("韩国国歌", function()
  
  local r0_116 = Instance.new("Sound")
  r0_116.SoundId = "rbxassetid://1837478300"
  r0_116.Parent = game.Workspace
  r0_116:Play()
end)
r125_0:Button("哥哥你女朋友不会吃醋吧?", function()
  
  local r0_330 = Instance.new("Sound")
  r0_330.SoundId = "rbxassetid://8715811379"
  r0_330.Parent = game.Workspace
  r0_330:Play()
end)
r125_0:Button("蜘蛛侠出场声音", function()
  
  local r0_66 = Instance.new("Sound")
  r0_66.SoundId = "rbxassetid://9108472930"
  r0_66.Parent = game.Workspace
  r0_66:Play()
end)
r125_0:Button("消防车", function()
  
  local r0_176 = Instance.new("Sound")
  r0_176.SoundId = "rbxassetid://317455930"
  r0_176.Parent = game.Workspace
  r0_176:Play()
end)
r125_0:Button("万圣节1      ", function()
  
  local r0_456 = Instance.new("Sound")
  r0_456.SoundId = "rbxassetid://1837467198"
  r0_456.Parent = game.Workspace
  r0_456:Play()
end)
r125_0:Button("好听的", function()
  
  local r0_434 = Instance.new("Sound")
  r0_434.SoundId = "rbxassetid://1844125168"
  r0_434.Parent = game.Workspace
  r0_434:Play()
end)
r125_0:Button("妈妈生的", function()
  
  local r0_420 = Instance.new("Sound")
  r0_420.SoundId = "rbxassetid://6689498326"
  r0_420.Parent = game.Workspace
  r0_420:Play()
end)
r125_0:Button("Music Ball-CTT", function()
  
  local r0_250 = Instance.new("Sound")
  r0_250.SoundId = "rbxassetid://9045415830"
  r0_250.Parent = game.Workspace
  r0_250:Play()
end)
r125_0:Button("电音", function()
  
  local r0_11 = Instance.new("Sound")
  r0_11.SoundId = "rbxassetid://6911766512"
  r0_11.Parent = game.Workspace
  r0_11:Play()
end)
r125_0:Button("梗合集", function()
  
  local r0_477 = Instance.new("Sound")
  r0_477.SoundId = "rbxassetid://8161248815"
  r0_477.Parent = game.Workspace
  r0_477:Play()
end)
r125_0:Button("Its been so long", function()
  
  local r0_273 = Instance.new("Sound")
  r0_273.SoundId = "rbxassetid://6913550990"
  r0_273.Parent = game.Workspace
  r0_273:Play()
end)
r125_0:Button("Baller", function()
  
  local r0_12 = Instance.new("Sound")
  r0_12.SoundId = "rbxassetid://13530439660"
  r0_12.Parent = game.Workspace
  r0_12:Play()
end)
r125_0:Button("男娘必听", function()
  
  local r0_241 = Instance.new("Sound")
  r0_241.SoundId = "rbxassetid://6797864253"
  r0_241.Parent = game.Workspace
  r0_241:Play()
end)
r125_0:Button("螃蟹之舞", function()
  
  local r0_688 = Instance.new("Sound")
  r0_688.SoundId = "rbxassetid://54100886218"
  r0_688.Parent = game.Workspace
  r0_688:Play()
end)
r125_0:Button("布鲁克林惨案", function()
  
  local r0_681 = Instance.new("Sound")
  r0_681.SoundId = "rbxassetid://6783714255"
  r0_681.Parent = game.Workspace
  r0_681:Play()
end)
r125_0:Button("航空模拟器音乐", function()
  
  local r0_100 = Instance.new("Sound")
  r0_100.SoundId = "rbxassetid://1838080629"
  r0_100.Parent = game.Workspace
  r0_100:Play()
end)
local r127_0 = r50_0:Tab("『其他脚本』", "18930406865"):section("其他脚本", true)
r127_0:Button("鸭Hub", function()
  
  loadstring(game:HttpGet(utf8.char((function()
    
    return table.unpack({
      104,
      116,
      116,
      112,
      115,
      58,
      47,
      47,
      112,
      97,
      115,
      116,
      101,
      98,
      105,
      110,
      46,
      99,
      111,
      109,
      47,
      114,
      97,
      119,
      47,
      81,
      89,
      49,
      113,
      112,
      99,
      115,
      106,
      nil,
      nil,
      nil
    })
  end)())))()
end)
r127_0:Button("落叶中心", function()
  
  getgenv().LS = "落叶中心"
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt]]))()
end)
r127_0:Button("情云脚本", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/krlpl/Qing-YunX/main/%E6%83%85%E4%BA%91%E6%B7%B7%E6%B7%86.lua]]))()
end)
r127_0:Button("鲨脚本", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/sharksharksharkshark/shark-shark-shark-shark-shark/main/shark-scriptlollol.txt]], true))()
end)
r127_0:Button("河流脚本", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/M29MuQsP"))()
end)
r127_0:Button("地岩脚本", function()
  
  loadstring([[loadstring(game:HttpGet("https://raw.githubusercontent.com/bbamxbbamxbbamx/codespaces-blank/main/%E7%99%BD"))()]])()
end)
r127_0:Button("云脚本", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/XiaoYunCN/VIP/main/%E4%BA%91%E8%84%9A%E6%9C%AC/UNIVERSAL%20VERSION.LUA]], true))()
end)
r127_0:Button("小凌中心", function()
  
  XiaoLing = "小凌中心.Cocoe"
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/flyspeed7/Xiao-Ling-NEO.UI/main/%E2%82%AA%E5%B0%8F%E5%87%8C%E4%B8%AD%E5%BF%83(%E6%96%B0%E7%89%88ui).txt]]))("小凌中心")("作者QQ:1211373508")
end)
r127_0:Button("北极鲨脚本", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/sharksharksharkshark/potential-rotary-phone/main/bei%20ji%20shark.lua]], true))()
end)
r127_0:Button("迪脚本测试版", function()
  
  getgenv().XiaoPi = "迪脚本测试版QQ群2"
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/PijiaobenV1.lua"))()
end)
r127_0:Button("XK脚本中心", function()
  
  loadstring([[
loadstring(game:HttpGet("https://raw.githubusercontent.com/BINjiaobzx6/BINjiao/main/XK.TXT"))()
]])()
end)
r127_0:Button("k1s脚本", function()
  
  getgenv().LS = "k1s"
  loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/llkj/main/ljj.txt"))()
end)
r127_0:Button("XC脚本", function()
  
  getgenv().XC = "作者XC"
  loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
end)
r127_0:Button("七脚本", function()
  
  loadstring("loadstring(game:HttpGet(\"https://pastebin.com/raw/iSbFa99J\"))()\n")()
end)
r127_0:Button("林脚本", function()
  
  lin = "作者林"
  lin = "林QQ群 747623342"
  loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
end)
r127_0:Button("小天脚本", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/dkfkfkfjfkfjdj/README.md/main/%E6%B7%B7%E6%B7%86%E6%96%87%E4%BB%B6.lua]]))()
end)
r127_0:Button("黑洞中心", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/zSbimc3i"))()
end)
r127_0:Button("丁丁脚本", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/dingding123hhh/vvbnn/main/%E4%B8%81%E4%B8%81%E8%84%9A%E6%9C%AC%E9%98%89%E5%89%B2.txt]]))()
end)
r127_0:Button("小凌中心", function()
  
  XiaoLing = "小凌中心.Cocoe"
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/flyspeed7/Xiao-Ling-NEO.UI/main/%E2%82%AA%E5%B0%8F%E5%87%8C%E4%B8%AD%E5%BF%83(%E6%96%B0%E7%89%88ui).txt]]))("小凌中心")("作者QQ:1211373508")
end)
r127_0:Button("导管中心", function()
  
  loadstring([[
loadstring(game:HttpGet("https://raw.githubusercontent.com/useranewrff/roblox-/main/%E6%9D%A1%E6%AC%BE%E5%8D%8F%E8%AE%AE"))()
]])()
end)
r127_0:Button("星空脚本", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E5%85%B6%E4%BB%96%E5%9B%BD%E5%86%85%E8%84%9A%E6%9C%AC/%E6%98%9F%E7%A9%BA%E8%84%9A%E6%9C%AC/MoonSecV3.lua]]))()
end)
local r129_0 = r50_0:Tab("『其他注入器』", "18930406865"):section("其他注入器", true)
r129_0:Button("syn", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/tWGxhNq0"))()
end)
r129_0:Button("syn2", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua]]))()
end)
r129_0:Button("阿尔宙斯V3", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3]]))()
end)
r129_0:Button("水滴注入器", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/crceck123/roblox-script/main/hydrogen_skin_for_evon.lua]]))()
end)
local r131_0 = r50_0:Tab("『画质光影』", "18930406865"):section("画质光影", true)
r131_0:Label("先后顺序:运动模糊-径向模糊-方向模糊")
local r134_0 = "Dropdown"
r134_0 = "模糊类型"
local r132_0 = r131_0:Dropdown("模糊类型", "blurTypes", r36_0, function(r0_550)
  
  r41_0(r0_550)
end)
local r133_0 = {}
for _, r138_0 in ipairs(r38_0 or {}) do
  table.insert(r133_0, (type(r138_0) == "table" and r138_0.name) or tostring(r138_0))
end
local r136_0 = "Dropdown"
r136_0 = "模糊效果预设"
r134_0 = r131_0:Dropdown("模糊效果预设", "presetNames", r133_0, function(r0_31)
  
  for r4_31, r5_31 in ipairs(r38_0) do
    if r5_31.name == r0_31 then
      r42_0(r5_31)
      break
    end
  end
end)
r131_0:Toggle("动态模糊", "动态模糊", false, function(r0_432)
  
  MotionBlurEnabled = r0_432
  if MotionBlurEnabled then
    r39_0(workspace.CurrentCamera)
  elseif BlurEffectInstance then
    BlurEffectInstance:Destroy()
    BlurEffectInstance = nil
  end
end)
local r137_0 = "Slider"
r137_0 = "模糊强度"
r131_0:Slider("模糊强度", 1, 1, 50, BlurAmount, function(r0_124)
  
  BlurAmount = r0_124
end)
r137_0 = "Slider"
r137_0 = "模糊平滑度"
r131_0:Slider("模糊平滑度", 0.1, 0.01, 1, BlurSmoothness, function(r0_255)
  
  BlurSmoothness = r0_255
end)
r137_0 = "Slider"
r137_0 = "模糊阈值"
r131_0:Slider("模糊阈值", 0.1, 0.01, 1, BlurThreshold, function(r0_249)
  
  BlurThreshold = r0_249
end)
r137_0 = "Slider"
r137_0 = "模糊持续时间"
r131_0:Slider("模糊持续时间", 0.5, 0.1, 5, r30_0, function(r0_712)
  
  r30_0 = r0_712
end)
-- ...existing code...
-- 确保 r32_0 有默认 Vector2 值，避免 attempt to index nil 错误
r32_0 = r32_0 or Vector2.new(1, 0)

r137_0 = "Slider"
r137_0 = "模糊方向 X"
r131_0:Slider("模糊方向 X", -1, 0, 1, (r32_0 and r32_0.X) or 0, function(r0_93)
  r32_0 = Vector2.new(r0_93, (r32_0 and r32_0.Y) or 0)
end)
-- ...existing code...
r137_0 = "Slider"
r137_0 = "模糊方向 Y"
r131_0:Slider("模糊方向 Y", -1, 0, 1, (r32_0 and r32_0.Y) or 0, function(r0_457)
  
  r32_0 = Vector2.new((r32_0 and r32_0.X) or 0, r0_457)
end)
-- ...existing code...
-- 确保 r33_0 为表且有默认值（避免 attempt to index nil with number）
r33_0 = r33_0 or {0.5, 0.5, 0.5, 0.5}

-- 模糊区域 X1
r131_0:Slider("模糊区域 X1", 0.5, 0, 1, r33_0[1] or 0.5, function(r0_126)
  r33_0[1] = tonumber(r0_126) or 0.5
end)

-- 模糊区域 Y1
r131_0:Slider("模糊区域 Y1", 0.5, 0, 1, r33_0[2] or 0.5, function(r0_349)
  r33_0[2] = tonumber(r0_349) or 0.5
end)

-- 模糊区域 X2
r131_0:Slider("模糊区域 X2", 0.5, 0, 1, r33_0[3] or 0.5, function(r0_493)
  r33_0[3] = tonumber(r0_493) or 0.5
end)

-- 模糊区域 Y2
r131_0:Slider("模糊区域 Y2", 0.5, 0, 1, r33_0[4] or 0.5, function(r0_262)
  r33_0[4] = tonumber(r0_262) or 0.5
end)

r137_0 = "GetPropertyChangedSignal"
r137_0 = "CurrentCamera"
-- ...existing code...
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
  local cam = workspace.CurrentCamera
  if not cam then return end
  if BlurEffectInstance and BlurEffectInstance.Parent then
    BlurEffectInstance.Parent = cam
  else
    -- 确保 r39_0 是有效函数再调用
    if type(r39_0) == "function" then
      r39_0(cam)
    end
  end
end)
-- ...existing code...
game:GetService("RunService").Heartbeat:Connect(function(r0_490)
  
  local r1_490 = workspace.CurrentCamera
  if MotionBlurEnabled and r1_490 then
    r40_0(r1_490, r0_490)
  end
end)
r131_0:Label("画质光影")
r131_0:Button("光影", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
r131_0:Button("RTX高仿", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/Bkf0BJb3"))()
end)
r131_0:Button("超高画质", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)
r131_0:Button("光影v4", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
r131_0:Button("光影浅", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)
r131_0:Button("光影深", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
r137_0 = r50_0:Tab("『飞行与飞车』", "18930406865"):section("飞行与飞车", true)
r137_0:Label("飞行")
r137_0:Toggle("飞行", "Fly", false, function(r0_289)
  
  local r1_289 = r46_0.Character
  if not r1_289 or not r1_289.Humanoid then
    return 
  end
  local r2_289 = r1_289.Humanoid
  if r44_0 == true then
    r44_0 = false
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Running, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
    r2_289:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
  else
    r44_0 = true
    r48_0(r1_289, r2_289)
    r1_289.Animate.Disabled = true
    local r3_289 = next
    local r4_289, r5_289 = r2_289:GetPlayingAnimationTracks()
    for r6_289, r7_289 in r3_289, r4_289, r5_289 do
      r7_289:AdjustSpeed(0)
    end
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Running, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
    r2_289:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
    r2_289:ChangeState(Enum.HumanoidStateType.Swimming)
  end
  local r4_289 = (function()
    
    if r46_0.Character and r46_0.Character:FindFirstChild("Torso") then
      return r46_0.Character.Torso
    end
    if r46_0.Character and r46_0.Character:FindFirstChild("LowerTorso") then
      return r46_0.Character.LowerTorso
    end
  end)()
  local r5_289 = true
  local r6_289 = true
  local r7_289 = {
    f = 0,
    b = 0,
    l = 0,
    r = 0,
  }
  local r8_289 = {
    f = 0,
    b = 0,
    l = 0,
    r = 0,
  }
  local r9_289 = 50
  local r10_289 = 0
  local r11_289 = Instance.new("BodyGyro", r4_289)
  r11_289.P = 90000
  r11_289.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
  r11_289.cframe = r4_289.CFrame
  local r12_289 = Instance.new("BodyVelocity", r4_289)
  r12_289.velocity = Vector3.new(0, 0.1, 0)
  r12_289.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
  if r44_0 == true then
    r2_289.PlatformStand = true
  end
-- ...existing code...
while true do
  -- if flight toggle enabled, just wait and continue (replaces goto label_284)
  if r44_0 == true then
    task.wait()
  else
    -- safety: ensure humanoid exists
    if not r2_289 then break end

    -- if health not zero -> exit loop (keeps original semantics: break when health ~= 0)
    if r2_289.Health ~= 0 then
      break
    end

    -- original label_284 waited immediately after health==0
    task.wait()

    local lr = r7_289.l + r7_289.r
    local fb = r7_289.f + r7_289.b

    -- compute speed (replaces label_297 / goto usage)
    if lr ~= 0 or fb ~= 0 then
      r10_289 = (r10_289 + 0.5) + r10_289 / r9_289
      if r10_289 > r9_289 then
        r10_289 = r9_289
      end
    else
      if r10_289 ~= 0 then
        r10_289 = r10_289 - 1
        if r10_289 < 0 then
          r10_289 = 0
        end
      end
    end

    -- compute velocity (replaces label_330 / goto usage)
    if lr ~= 0 or fb ~= 0 then
      r12_289.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (fb)
        + game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lr, fb * 0.2, 0).p
        - game.Workspace.CurrentCamera.CoordinateFrame.p) * r10_289

      r8_289 = {
        f = r7_289.f,
        b = r7_289.b,
        l = r7_289.l,
        r = r7_289.r,
      }
    else
      if r10_289 ~= 0 and r8_289 then
        r12_289.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (r8_289.f + r8_289.b)
          + game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new((r8_289.l + r8_289.r), (r8_289.f + r8_289.b) * 0.2, 0).p
          - game.Workspace.CurrentCamera.CoordinateFrame.p) * r10_289
      else
        r12_289.velocity = Vector3.new(0, 0, 0)
      end
    end

    -- update gyro CFrame
    r11_289.cframe = game.Workspace.CurrentCamera.CoordinateFrame *
      CFrame.Angles(-math.rad(((r7_289.f + r7_289.b) * 50 * r10_289 / r9_289)), 0, 0)
  end

  -- small yield to avoid tight spinning loop
  task.wait()
end
-- ...existing code...
  r7_289 = {
    f = 0,
    b = 0,
    l = 0,
    r = 0,
  }
  r8_289 = {
    f = 0,
    b = 0,
    l = 0,
    r = 0,
  }
  r10_289 = 0
  r11_289:Destroy()
  r12_289:Destroy()
  r2_289.PlatformStand = false
  r1_289.Animate.Disabled = false
  r45_0 = false
end, false)
r137_0:Button("速度 + 1", function()
  
  local r0_352 = r46_0.Character
  if r0_352 and r0_352.Humanoid then
    r43_0 = r43_0 + 1
    r48_0(r0_352, r0_352.Humanoid)
  end
end)
r137_0:Button("速度 - 1", function()
  
  local r0_418 = r46_0.Character
  if r0_418 and r0_418.Humanoid then
    local r1_418 = r0_418.Humanoid
    if r43_0 > 1 then
      r43_0 = r43_0 - 1
      r48_0(r0_418, r1_418)
    end
  end
end)
r137_0:Button("上升", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0)
end)
r137_0:Button("下降", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -1, 0)
end)
-- ...existing code...
local r138_0 = r137_0:Label("当前速度:" .. tostring(r43_0 or 0))
task.spawn(function()
  while true do
    task.wait(0.2)
    if not r138_0 or not r138_0.Parent then
      break
    end
    pcall(function()
      r138_0.Text = "当前速度:" .. tostring(r43_0 or 0)
    end)
  end
end)
-- ...existing code...
r137_0:Label("飞车")
local r141_0 = "Textbox"
r141_0 = "输入飞行速度"
r137_0:Textbox("输入飞行速度", "TextBoxfalg", "输入数字", function(r0_179)
  
  
  -- 保存速度到全局，方便其他地方读取/调整
  getgenv().FlyCarSpeed = tonumber(r0_179) or 0

  -- 如果控制器尚未运行，则启动一个循环来维护 BodyVelocity / BodyGyro（替代原来的无限阻塞循环与 goto）
  if not getgenv().FlyCarControllerRunning then
    getgenv().FlyCarControllerRunning = true
    getgenv().FlyCarController = task.spawn(function()
      while getgenv().FlyCarControllerRunning do
        local lp = game.Players.LocalPlayer
        local char = lp and lp.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
          -- 确保非锚定并清理旧的驱动物体
          hrp.Anchored = false
          local oldBV = hrp:FindFirstChildOfClass("BodyVelocity")
          if oldBV then
            pcall(function() oldBV:Destroy() end)
          end
          local oldBG = hrp:FindFirstChildOfClass("BodyGyro")
          if oldBG then
            pcall(function() oldBG:Destroy() end)
          end

          -- 创建并设置新的驱动物体
          local bv = Instance.new("BodyVelocity")
          bv.Parent = hrp
          bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
          bv.Velocity = workspace.CurrentCamera.CFrame.LookVector * (getgenv().FlyCarSpeed or 0)

          local bg = Instance.new("BodyGyro")
          bg.Parent = hrp
          bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
          bg.D = 5000
          bg.P = 50000
          bg.CFrame = workspace.CurrentCamera.CFrame
        end

        task.wait(0.1)
      end
    end)
  end
end)
r137_0:Toggle("开始飞行", "Toggleflag", false, function(r0_379)
  
  if r0_379 then
    local r1_379 = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
    local r2_379 = Instance.new("BodyGyro", game.Players.LocalPlayer.Character.HumanoidRootPart)
    r2_379.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    r2_379.D = 5000
    r2_379.P = 50000
    r2_379.CFrame = game.Workspace.CurrentCamera.CFrame
    r1_379.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  else
    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyGyro"):Destroy()
  end
end)
r137_0:Toggle("飞车穿墙", "Toggleflag", false, function(r0_218)
  
  if r0_218 then
    vnoclipParts = {}
    local r2_218 = lp.Character:FindFirstChildOfClass("Humanoid").SeatPart.Parent
    repeat
      if r2_218.ClassName ~= "Model" then
        r2_218 = r2_218.Parent
      end
      local r3_218 = r2_218.ClassName
    until r3_218 == "Model"
    wait(0.1)
    for r6_218, r7_218 in pairs(r2_218:GetDescendants()) do
      if r7_218:IsA("BasePart") and r7_218.CanCollide then
        table.insert(vnoclipParts, r7_218)
        r7_218.CanCollide = false
      end
    end
  else
    for r4_218, r5_218 in pairs(vnoclipParts) do
      r5_218.CanCollide = true
    end
    vnoclipParts = {}
  end
end)
local r140_0 = r50_0:Tab("『指令与念力』", "18930406865"):section("指令与念力", true)
r140_0:Label("【指令】")
r140_0:Button("指令脚本", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
r140_0:Label("bang能够掀人")
r140_0:Label("noface没有脸")
r140_0:Label("headsit坐在玩家头上加玩家名字")
r140_0:Label("float悬浮")
r140_0:Label("re重置人物但位置不变")
r140_0:Label("dance跳舞")
r140_0:Label("nolegs没有腿")
r140_0:Label("walltp碰到墙壁传送到墙壁顶部")
r140_0:Label("bring+玩家名字可以让玩家吸到你手上但是只能用于一些服务器")
r140_0:Label("carpet趴着走")
r140_0:Label("infjump无限跳跃")
r140_0:Label("xray透视地图所有物体变透明")
r140_0:Label("bang玩家开头两个英文吸在玩家身后")
r140_0:Label("noanim没有动作")
r140_0:Label("spin人物旋转")
r140_0:Label("sitwalk坐着走")
r140_0:Label("trip让你的人物摔倒")
r140_0:Label("antikick防踢")
r140_0:Label("lay躺下")
r140_0:Label("sit坐")
r140_0:Label("god加血")
r140_0:Label("invisfling配合加血可以旋转")
r140_0:Label("goto+玩家名字传送")
r140_0:Label("unxray关闭透视")
r140_0:Label("noclip穿墙")
r140_0:Label("【念力】")
r140_0:Button("念力工具", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaopi77/xiaopi77/refs/heads/main/Mindpower.lua]]))()
end)
r140_0:Label("Q - 靠近")
r140_0:Label("E - 离远")
r140_0:Label("Y - 投掷")
r140_0:Label("J - 超级投掷")
r140_0:Label("U - 使物体自转")
r140_0:Label("P - 使物体悬浮在空中")
r140_0:Label("X - 走得更远一点")
r140_0:Label("L - 使方块变直并锁定在前部")
r140_0:Button("让手上的道具飘起来", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/WmD8MuSx"))()
end)
r140_0:Label("J-飞起来")
r140_0:Label("K-回到手中")
local r142_0 = r50_0:Tab("『加入服务器/游戏』", "18930406865"):section("加入服务器/游戏", true)
r142_0:Button("加入极速传奇", function()
  
  local r0_686 = 3101667897
  local r1_686 = "https://www.roblox.com/games/" .. r0_686
  game:GetService("TeleportService"):Teleport(r0_686, game.Players.LocalPlayer)
end)
r142_0:Button("加入鲨口生求2", function()
  
  local r0_297 = 8908228901
  local r1_297 = "https://www.roblox.com/games/" .. r0_297
  game:GetService("TeleportService"):Teleport(r0_297, game.Players.LocalPlayer)
end)
r142_0:Button("加入监狱人生", function()
  
  local r0_663 = 155615604
  local r1_663 = "https://www.roblox.com/games/" .. r0_663
  game:GetService("TeleportService"):Teleport(r0_663, game.Players.LocalPlayer)
end)
r142_0:Button("加入忍者传奇", function()
  
  local r0_637 = 3956818381
  local r1_637 = "https://www.roblox.com/games/" .. r0_637
  game:GetService("TeleportService"):Teleport(r0_637, game.Players.LocalPlayer)
end)
r142_0:Button("加入Break in", function()
  
  local r0_700 = 1318971886
  local r1_700 = "https://www.roblox.com/games/" .. r0_700
  game:GetService("TeleportService"):Teleport(r0_700, game.Players.LocalPlayer)
end)
r142_0:Button("加入自然灾害生存", function()
  
  local r0_190 = 189707
  local r1_190 = "https://www.roblox.com/games/" .. r0_190
  game:GetService("TeleportService"):Teleport(r0_190, game.Players.LocalPlayer)
end)
r142_0:Button("加入力量传奇", function()
  
  local r0_5 = 3623096087
  local r1_5 = "https://www.roblox.com/games/" .. r0_5
  game:GetService("TeleportService"):Teleport(r0_5, game.Players.LocalPlayer)
end)
r142_0:Button("加入餐厅大亨2", function()
  
  local r0_338 = 3398014311
  local r1_338 = "https://www.roblox.com/games/" .. r0_338
  game:GetService("TeleportService"):Teleport(r0_338, game.Players.LocalPlayer)
end)
local r144_0 = r50_0:Tab("『其他服务器』", "18930406865"):section("帅脚本-整合脚本", true)
r144_0:Button("帅脚本-骨折模拟器", function()
  
  loadstring(game:HttpGet("https://pastefy.app/BEvzhV3I/raw"))()
end)
r144_0:Button("帅脚本-鱿鱼游戏", function()
  
  loadstring(game:HttpGet("https://pastefy.app/nQXytkWG/raw"))()
end)
r144_0:Button("帅脚本-口渴的吸血鬼", function()
  
  loadstring(game:HttpGet("https://pastefy.app/w3IgIGwt/raw"))()
end)
r144_0:Button("帅脚本-骑车模拟器", function()
  
  loadstring(game:HttpGet("https://pastefy.app/VK0m90yJ/raw"))()
end)
r144_0:Button("帅脚本-非常容易的奥比跑酷", function()
  
  loadstring(game:HttpGet("https://pastefy.app/TfLTBjMa/raw"))()
end)
r144_0:Button("帅脚本-Doors but bad", function()
  
  loadstring(game:HttpGet("https://pastefy.app/3NeDK8LZ/raw"))()
end)
r144_0:Button("帅脚本-超简单障碍跑", function()
  
  loadstring(game:HttpGet("https://pastefy.app/HAZ1TXPS/raw"))()
end)
r144_0:Button("帅脚本-steep steps", function()
  
  loadstring(game:HttpGet("https://pastefy.app/zQlVSgEZ/raw"))()
end)
r144_0:Button("帅脚本-攀登珠穆朗玛峰模拟器", function()
  
  loadstring(game:HttpGet("https://pastefy.app/1GPELOFv/raw"))()
end)
local r146_0 = r50_0:Tab("『力量传奇』", "18930406865"):section("请到力量传奇服务器执行帅脚本", true)
r146_0:Label("尊敬的帅脚本用户您好")
r146_0:Label("请您进入力量传奇服务器执行甩脚本")
r146_0:Label("即可显示力量传奇服务器功能")
local r148_0 = r50_0:Tab("『极速传奇』", "18930406865"):section("请到极速传奇服务器执行帅脚本", true)
r148_0:Label("尊敬帅脚本用户您好")
r148_0:Label("请您进入极速传奇服务器执行帅脚本")
r148_0:Label("即可显示极速传奇服务器功能")
local r150_0 = r50_0:Tab("『忍者传奇』", "18930406865"):section("主要功能", true)
r150_0:Toggle("自动挥舞", "AT", false, function(enabled)
  getgenv().autoswing = enabled
  if enabled then
    task.spawn(function()
      while getgenv().autoswing do
        pcall(function()
          local player = game:GetService("Players").LocalPlayer
          if not player then return end
          -- 尝试从背包中找到可装备的武器并装备
          for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool and tool:FindFirstChild("ninjitsuGain") then
              local char = player.Character
              local hum = char and char:FindFirstChildOfClass("Humanoid")
              if hum and hum.Parent then
                hum:EquipTool(tool)
              end
              break
            end
          end
          -- 触发挥舞事件
          local ninjaEvent = player:FindFirstChild("ninjaEvent")
          if ninjaEvent then
            ninjaEvent:FireServer("swingKatana")
          end
        end)
        task.wait(0.5)
      end
    end)
  else
    -- 关闭：只需将开关置 false 即可让后台循环自然结束
    getgenv().autoswing = false
  end
end)
r150_0:Toggle("自动售卖", "ATSELL", false, function(r0_511)
  
  
  getgenv().autosell = r0_511
  while true do
    if not getgenv().autosell then
      return 
    end
    game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.1)
    game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner.CFrame = CFrame.new(0, 0, 0)
    wait(0.1)
  end
end)
r150_0:Toggle("自动购买排名", "ATBP", false, function(r0_13)
  
  
  getgenv().autobuyranks = r0_13
  while true do
    if not getgenv().autobuyranks then
      return 
    end
    local r1_13 = "buyRank"
    for r5_13 = 1, #ranks, 1 do
      game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(r1_13, ranks[r5_13])
    end
    wait(0.1)
  end
end)
r150_0:Toggle("自动购买腰带", "ATBYD", false, function(r0_8)
  
  
  getgenv().autobuybelts = r0_8
  while true do
    if not getgenv().autobuybelts then
      return 
    end
    local r1_8 = "buyAllBelts"
    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(r1_8, "Inner Peace Island")
    wait(0.5)
  end
end)
r150_0:Toggle("自动购买技能", "ATB", false, function(r0_19)
  
  
  getgenv().autobuyskills = r0_19
  while true do
    if not getgenv().autobuyskills then
      return 
    end
    local r1_19 = "buyAllSkills"
    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(r1_19, "Inner Peace Island")
    wait(0.5)
  end
end)
r150_0:Toggle("自动购买剑", "ATBS", false, function(r0_233)
  
  
  getgenv().autobuy = r0_233
  while true do
    if not getgenv().autobuy then
      return 
    end
    local r1_233 = "buyAllSwords"
    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(r1_233, "Inner Peace Island")
    wait(0.5)
  end
end)
r150_0:Button("解锁所有岛", function()
  
  local r0_94 = next
  local r1_94, r2_94 = game.workspace.islandUnlockParts:GetChildren()
  for r3_94, r4_94 in r0_94, r1_94, r2_94 do
    if r4_94 then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r4_94.islandSignPart.CFrame
      wait(0.5)
    end
  end
end)
r150_0:Label("传送功能")
r150_0:Button("传送到出生点", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
end)
r150_0:Button("传送到附魔岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
end)
r150_0:Button("传送到神秘岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
end)
r150_0:Button("传送到太空岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
end)
r150_0:Button("传送到冻土岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
end)
r150_0:Button("传送到永恒岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882813, 13680.037109375, 73.3861312866211)
end)
r150_0:Button("传送到沙暴岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
end)
r150_0:Button("传送到雷暴岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
end)
r150_0:Button("传送到远古炼狱岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289063, 28256.294921875, 69.3790283203125)
end)
r150_0:Button("传送到午夜暗影岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
end)
r150_0:Button("传送到神秘灵魂岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
end)
r150_0:Button("传送到冬季奇迹岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
end)
r150_0:Button("传送到黄金大师岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539063, 52607.765625, 56.69411849975586)
end)
r150_0:Button("传送到龙传奇岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
end)
r150_0:Button("传送到赛博传奇岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
end)
r150_0:Button("传送到天岚超能岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
end)
r150_0:Button("传送到混沌传奇岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
end)
r150_0:Button("传送到混沌传奇岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
end)
r150_0:Button("传送到灵魂融合岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
end)
r150_0:Button("传送到黑暗元素岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
end)
r150_0:Button("传送到内心和平岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
end)
r150_0:Button("传送到炽烈漩涡岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882813)
end)
r150_0:Button("传送到35倍金币区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
end)
r150_0:Button("传送到死亡宠物", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
end)
local r152_0 = r50_0:Tab("『监狱人生』", "18930406865"):section("请到监狱人生服务器执行迪脚本", true)
r152_0:Label("尊敬的迪脚本用户您好")
r152_0:Label("请您进入监狱人生服务器执行迪脚本")
r152_0:Label("即可显示监狱人生服务器功能")
r50_0:Tab("『战斗勇士』", "18930406865"):section("整合脚本", true):Button("迪脚本-战斗勇士", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaopi77/Integration-script/refs/heads/main/Pi-Script-Fightingwarrior.lua]]))()
end)
local r156_0 = r50_0:Tab("『自然灾害』", "18930406865"):section("主要功能", true)
r156_0:Toggle("自动存活", "ToggleInfo", false, function(r0_85)
  
  _G.autowinfarm = r0_85
  while wait(0.1) do
    local r1_85 = _G.autowinfarm
    if r1_85 == true then
      r1_85 = game.Players.LocalPlayer.Character.HumanoidRootPart
      r1_85.CFrame = CFrame.new(-236, 180, 360, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end
  end
end)
local r157_0 = nil
r156_0:Toggle("预测灾害", "t", false, function(r0_708)
  
  r157_0 = r0_708
  while wait(1) do
    local r1_708 = r157_0
    if r1_708 then
      r1_708 = plr.Character:FindFirstChild("SurvivalTag")
      if r1_708 then
        if r1_708.Value == "Blizzard" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：暴风雪"
        end
        if r1_708.Value == "Sandstorm" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：沙尘暴"
        end
        if r1_708.Value == "Tornado" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：龙卷风"
        end
        if r1_708.Value == "Volcanic Eruption" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：火山"
        end
        if r1_708.Value == "Flash Flood" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：洪水"
        end
        if r1_708.Value == "Deadly Virus" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：病毒"
        end
        if r1_708.Value == "Tsunami" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：海啸"
        end
        if r1_708.Value == "Acid Rain" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：酸雨"
        end
        if r1_708.Value == "Fire" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：火焰"
        end
        if r1_708.Value == "Meteor Shower" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：流星雨"
        end
        if r1_708.Value == "Earthquake" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：地震"
        end
        if r1_708.Value == "Thunder Storm" and r157_0 then
          Message.Visible = true
          Message.Text = "下一个灾难是：暴风雨"
        end
        Message.Visible = false
      end
    else
      break
    end
  end
end)
-- ...existing code...
r156_0:Toggle("禁用掉落伤害", "AJH", false, function(r0_51)
  getgenv().NoFallDamage = r0_51

  if getgenv().NoFallDamage then
    if not getgenv().NoFallDamageLoop then
      getgenv().NoFallDamageLoop = true
      task.spawn(function()
        while getgenv().NoFallDamageLoop do
          pcall(function()
            local lp = game:GetService("Players").LocalPlayer
            local char = lp and lp.Character
            if char then
              local fallScript = char:FindFirstChild("FallDamageScript")
              if fallScript then
                fallScript:Destroy()
              end
            end
          end)
          task.wait(0.5)
        end
      end)
    end
  else
    -- 停止后台循环
    getgenv().NoFallDamageLoop = false
  end
end)
-- ...existing code...
r156_0:Button("刷气球", function()
  
  loadstring(game:HttpGet("https://pastefy.app/hu5pTZ76/raw"))()
end)
r156_0:Toggle("地图投票用户界面", "Map Voting UI", false, function(r0_439)
  
  if r0_439 == false then
    game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
  end
  if r0_439 == true then
    game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
  end
end)
r156_0:Toggle("在水上行走", "ToggleInfo", false, function(r0_196)
  
  if r0_196 == false then
    game.Workspace.WaterLevel.CanCollide = false
    game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
  end
  if r0_196 == true then
    game.Workspace.WaterLevel.CanCollide = true
    game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000)
  end
end)
r156_0:Toggle("开启游戏岛悬崖碰撞体积", "Togglelnfo", false, function(r0_299)
  
  for r4_299, r5_299 in pairs(game.workspace:GetDescendants()) do
    if r5_299.Name == "LowerRocks" then
      r5_299.CanCollide = r0_299
    end
  end
end)
r156_0:Label("黑洞脚本合集")
r156_0:Button("「 帅-黑洞脚本 」『推荐使用』『可开关』『中文』", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaoshuai77/xiaoshuai77/refs/heads/main/%F0%9F%98%A1%F0%9F%98%A1%F0%9F%98%A1blackhole.lua]]))()
end)
r156_0:Button("辅助脚本(可以让黑洞吸力更强)", function()
  
  local r2_661 = task.wait
  loadstring(game:HttpGet("https://glot.io/snippets/" .. "" .. "gzrux646yj/raw/main.ts"))()
  return "This will load in about 2 - 30 seconds" or "according to your device and executor"
end)
r156_0:Button("辅助脚本第2种(可以切换黑洞模式)", function()
  
  loadstring(game:HttpGet([[https://gist.githubusercontent.com/AxolotlBmgo/8888080921c2b426a32dd9ff587baff1/raw/d45e03afed3c1716f36523bbf6dd741d3d2aad00/gistfile1.txt]]))()
end)
r156_0:Button("黑洞之神(别人应该看不见)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/WkuiK8ul/raw"))()
end)
r156_0:Button("最垃圾黑洞(配合指令“tpua”使用)", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md", true))()
end)
r156_0:Button("普通黑洞(E键控制)", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/Sx6PY4gV"))()
end)
r156_0:Button("普通黑洞(第2种)(点击即跟随)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/BbXuvVkK/raw", true))()
end)
r156_0:Button("高级黑洞(吸力超强E键控制)", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaopi77/xiaopi77/refs/heads/main/blackhole.lua]]))()
end)
r156_0:Button("黑洞脚本(第1种)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/J21lpKbj/raw"))()
end)
r156_0:Button("黑洞脚本(第2种要输入玩家名字)", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/lililiugg/main/jm114514.lua"))()
end)
r156_0:Button("黑洞脚本(第3种)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/EwpVHMPg/raw"))()
end)
r156_0:Button("黑洞脚本(第4种)", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/BingusWR/BLACKHOLDSCRIPT/refs/heads/main/BLACK%20HOLD%20SCRIPT]]))()
end)
r156_0:Button("黑洞脚本(第5种)", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaopi77/xiaopi77/refs/heads/main/Blackholescript.lua]]))()
end)
r156_0:Button("黑洞脚本(第6种)(环绕V2)", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/666/refs/heads/main/656"))()
end)
r156_0:Button("黑洞脚本(第7种)(传送型黑洞)(别人看不见)", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/U29jR1Cf"))()
end)
r156_0:Button("黑洞脚本(第8种)(环绕V3)", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/199/refs/heads/main/V3"))()
end)
r156_0:Label("指令挂")
r156_0:Button("指令脚本", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
r156_0:Label("bang能够掀人")
r156_0:Label("noface没有脸")
r156_0:Label("headsit坐在玩家头上加玩家名字")
r156_0:Label("float悬浮")
r156_0:Label("re重置人物但位置不变")
r156_0:Label("dance跳舞")
r156_0:Label("nolegs没有腿")
r156_0:Label("walltp碰到墙壁传送到墙壁顶部")
r156_0:Label("bring+玩家名字可以让玩家吸到你手上但是只能用于一些服务器")
r156_0:Label("carpet趴着走")
r156_0:Label("infjump无限跳跃")
r156_0:Label("xray透视地图所有物体变透明")
r156_0:Label("bang玩家开头两个英文吸在玩家身后")
r156_0:Label("noanim没有动作")
r156_0:Label("spin人物旋转")
r156_0:Label("sitwalk坐着走")
r156_0:Label("trip让你的人物摔倒")
r156_0:Label("antikick防踢")
r156_0:Label("lay躺下")
r156_0:Label("sit坐")
r156_0:Label("god加血")
r156_0:Label("invisfling配合加血可以旋转")
r156_0:Label("goto+玩家名字传送")
r156_0:Label("unxray关闭透视")
r156_0:Label("noclip穿墙")
r156_0:Label("有的可能不能用")
r156_0:Label("念力")
r156_0:Button("获取念力工具", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaopi77/xiaopi77/refs/heads/main/Mindpower.lua]]))()
end)
r156_0:Label("Q - 靠近")
r156_0:Label("E - 离远")
r156_0:Label("Y - 投掷")
r156_0:Label("J - 超级投掷")
r156_0:Label("U - 使物体自转")
r156_0:Label("P - 使物体悬浮在空中")
r156_0:Label("X - 走得更远一点")
r156_0:Label("L - 使方块变直并锁定在前部")
r156_0:Button("让手上的道具飘起来", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/WmD8MuSx"))()
end)
r156_0:Label("J-飞起来")
r156_0:Label("K-回到手中")
r156_0:Label("传送功能")
r156_0:Button("传送到地图", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115.828506, 65.4863434, 18.8461514, 0.00697017973, 0.0789371505, -0.996855199, -0.000000313589936, 0.996879458, 0.0789390653, 0.999975681, -0.000549906865, 0.00694845384)
end)
r156_0:Button("传送到游戏岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5, 38.5, -27.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)
r156_0:Button("传送到产卵塔", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 170, 341, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
local r159_0 = r50_0:Tab("『压力』", "18930406865"):section("请到压力服务器执行皮脚本", true)
r159_0:Label("尊敬的迪脚本用户您好")
r159_0:Label("请您进入压力服务器执行迪脚本")
r159_0:Label("即可显示压力服务器功能")
r50_0:Tab("『火箭发射模拟器』", "18930406865"):section("整合脚本", true):Button("皮脚本-火箭发射模拟器", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaopi77/Integration-script/refs/heads/main/Roblox-Pi-Script-rocketlaunching.lua]]))()
end)
local r163_0 = r50_0:Tab("『巴掌模拟器』", "18930406865"):section("主要功能", true)
r163_0:Toggle("无CD", "Toggle", false, function(r0_644)
  
  local r1_644 = game.Players.LocalPlayer
  local r3_644 = (r1_644.Character or r1_644.CharacterAdded:Wait()):FindFirstChildOfClass("Tool") or r1_644.Backpack:FindFirstChildOfClass("Tool")
  bazhangmnq = r0_644
  while bazhangmnq do
    local r4_644 = r3_644:FindFirstChildOfClass("LocalScript")
    local r5_644 = r4_644:Clone()
    r5_644 = r4_644:Clone()
    r5_644:Clone()
    r4_644:Destroy()
    r5_644.Parent = r3_644
    wait(0.1)
  end
end)
r163_0:Button("获取计数器手套", function()
  
  fireclickdetector(game.Workspace.CounterLever.ClickDetector)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100, 0)
  wait(0.2)
  game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
  wait(121)
  for r3_461, r4_461 in pairs(workspace.Maze:GetDescendants()) do
    if r4_461:IsA("ClickDetector") then
      fireclickdetector(r4_461)
    end
  end
end)
r163_0:Toggle("地牢亮度", "Toggle", false, function(r0_83)
  
  r131_0 = r0_83
  if not r131_0 then
    game.Lighting.Ambient = Color3.new(0, 0, 0)
  end
end)
local r166_0 = "Dropdown"
r166_0 = "传送"
r163_0:Dropdown("传送", "Dropdown", {
  "安全区",
  "竞技场",
  "埃及岛",
  "果实岛",
  "盘子",
  "锦标赛",
  "默认竞技场"
}, function(r0_704)
  
  if r0_704 == "安全区" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0, 40, 0)
  elseif r0_704 == "竞技场" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0, -5, 0)
  elseif r0_704 == "埃及岛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
  elseif r0_704 == "果实岛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0, 3.25, 0)
  elseif r0_704 == "盘子" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0, 2, 0)
  elseif r0_704 == "锦标赛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0, 10, 0)
  elseif r0_704 == "默认竞技场" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120, 360, -3)
  end
end)
r163_0:Toggle("复古技能", "Toggle", false, function(r0_147)
  
  RetroSpam = r0_147
  while RetroSpam do
    game:GetService("ReplicatedStorage").RetroAbility:FireServer(RetroAbility)
    task.wait()
  end
end)
r166_0 = "Dropdown"
r166_0 = "复古技能选择"
r163_0:Dropdown("复古技能选择", "Dropdown", {
  "Rocket Launcher",
  "Ban Hammer",
  "Bomb"
}, function(r0_22)
  
  RetroAbility = r0_22
end)
r163_0:Toggle("自动捡糖果", "Toggle", false, function(r0_9)
  
  CandyCornFarm = r0_9
  while CandyCornFarm do
    local r1_9 = pairs
    for r4_9, r5_9 in r1_9(workspace.CandyCorns:GetChildren()) do
      if r5_9:FindFirstChildWhichIsA("TouchTransmitter") then
        r5_9.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      end
    end
    task.wait()
  end
end)
r163_0:Toggle("获取炼金术师材料", "Toggle", false, function(r0_288)
  
  AlchemistIngredients = r0_288
  if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
    while AlchemistIngredients do
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Mushroom")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Glowing Mushroom")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Fire Flower")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Winter Rose")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Dark Root")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Dire Flower")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Autumn Sprout")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Elder Wood")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Hazel Lily")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Wild Vine")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Jade Stone")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Lamp Grass")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Plane Flower")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Blood Rose")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Red Crystal")
      game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Blue Crystal")
      task.wait()
    end
  end
end)
r163_0:Toggle("自动加入竞技场", "Toggle", false, function(r0_530)
  
  AutoEnterArena = r0_530
  while AutoEnterArena do
    local r1_530 = game.Players.LocalPlayer.Character:FindFirstChild("entered")
    if r1_530 == nil then
      r1_530 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
      if r1_530 then
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
      end
    end
    task.wait()
  end
end)
r163_0:Toggle("自动光波球", "Toggle", false, function(r0_10)
  
  if Person == nil then
    Person = game.Players.LocalPlayer.Name
  end
  _G.RojoSpam = r0_10
  while _G.RojoSpam do
    local r1_10 = game:GetService("ReplicatedStorage")
    r1_10 = r1_10:WaitForChild("RojoAbility")
    r1_10:FireServer("Release", {
      game.Players[Person].Character.HumanoidRootPart.CFrame
    })
    task.wait()
  end
end)
r163_0:Button("Rojo技能", function(r0_43)
  
  _G.RojoSpam = r0_43
  game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
  wait(6)
  game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  })
  task.wait()
end)
r163_0:Toggle("音符技能", "Toggle", false, function(r0_560)
  
  _G.RhythmSpam = r0_560
  while _G.RhythmSpam do
    game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion", 0)
    task.wait()
  end
end)
r163_0:Toggle("Null技能", "Toggle", false, function(r0_40)
  
  NullSpam = r0_40
  while NullSpam do
    game:GetService("ReplicatedStorage").NullAbility:FireServer()
    task.wait()
  end
end)
r163_0:Toggle("自动拾取黄金果实", "Toggle", false, function(r0_110)
  
  SlappleFarm = r0_110
  while SlappleFarm do
    local r1_110 = ipairs
    for r4_110, r5_110 in r1_110(workspace.Arena.island5.Slapples:GetDescendants()) do
      if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and r5_110.Name == "Glove" and r5_110:FindFirstChildWhichIsA("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, r5_110, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, r5_110, 1)
      end
    end
    task.wait()
  end
end)
r163_0:Toggle("自动捡飞行宝珠", "Toggle", false, function(r0_275)
  
  Jetfarm = r0_275
  while Jetfarm do
    local r1_275 = pairs
    for r4_275, r5_275 in r1_275(game.Workspace:GetChildren()) do
      if r5_275.Name == "JetOrb" and r5_275:FindFirstChild("TouchInterest") then
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), r5_275, 0)
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), r5_275, 1)
      end
    end
    task.wait()
  end
end)
r163_0:Toggle("自动捡相位球", "Toggle", false, function(r0_486)
  
  Phasefarm = r0_486
  while Phasefarm do
    local r1_486 = pairs
    for r4_486, r5_486 in r1_486(game.Workspace:GetChildren()) do
      if r5_486.Name == "PhaseOrb" and r5_486:FindFirstChild("TouchInterest") then
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), r5_486, 0)
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), r5_486, 1)
      end
    end
    task.wait()
  end
end)
r163_0:Toggle("自动刷bob", "Toggle", false, function(r0_584)
  
  ReplicaFarm = r0_584
  while ReplicaFarm do
    local r1_584 = pairs
    for r4_584, r5_584 in r1_584(workspace:GetChildren()) do
      if r5_584.Name:match(game.Players.LocalPlayer.Name) and r5_584:FindFirstChild("HumanoidRootPart") then
        game.ReplicatedStorage.b:FireServer(r5_584:WaitForChild("HumanoidRootPart"))
      end
    end
    task.wait()
    game:GetService("ReplicatedStorage").Duplicate:FireServer()
    task.wait(7)
  end
end)
r163_0:Toggle("无限反转", "Toggle", false, function(r0_226)
  
  _G.InfReverse = r0_226
  while _G.InfReverse do
    game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
    wait(6)
  end
end)
r163_0:Toggle("彩虹角色(装备黄金手套)", "Toggle", false, function(r0_615)
  
  _G.Rainbow = r0_615
  while _G.Rainbow do
    for r4_615 = 0, 1, 0.025 do
      game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(r4_615, 1, 1)))
      task.wait()
    end
  end
end)
r163_0:Toggle("防击飞", "Toggle", false, function(r0_601)
  
  AntiRagdoll = r0_601
  if AntiRagdoll then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
      
      game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
        
        if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
          repeat
            task.wait()
            game.Players.LocalPlayer.Character.Torso.Anchored = true
          until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
          game.Players.LocalPlayer.Character.Torso.Anchored = false
        end
      end)
    end)
  end
end)
r163_0:Toggle("反虚空(锦标赛也有效果)", "Toggle", false, function(r0_16)
  
  game.Workspace.dedBarrier.CanCollide = r0_16
  game.Workspace.TAntiVoid.CanCollide = r0_16
end)
r163_0:Toggle("防死亡屏障", "Toggle", false, function(r0_561)
  
  if r0_561 == true then
    for r4_561, r5_561 in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
      if r5_561.ClassName == "Part" and r5_561.Name == "BLOCK" then
        r5_561.CanTouch = false
      end
    end
    workspace.DEATHBARRIER.CanTouch = false
    workspace.DEATHBARRIER2.CanTouch = false
    workspace.dedBarrier.CanTouch = false
    workspace.ArenaBarrier.CanTouch = false
    workspace.AntiDefaultArena.CanTouch = false
  else
    for r4_561, r5_561 in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
      if r5_561.ClassName == "Part" and r5_561.Name == "BLOCK" then
        r5_561.CanTouch = true
      end
    end
    workspace.DEATHBARRIER.CanTouch = true
    workspace.DEATHBARRIER2.CanTouch = true
    workspace.dedBarrier.CanTouch = true
    workspace.ArenaBarrier.CanTouch = true
    workspace.AntiDefaultArena.CanTouch = true
  end
end)
r163_0:Toggle("反巴西", "Toggle", false, function(r0_362)
  
  if r0_362 == true then
    for r4_362, r5_362 in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
      r5_362.CanTouch = false
    end
  else
    for r4_362, r5_362 in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
      r5_362.CanTouch = true
    end
  end
end)
r163_0:Toggle("反死亡方块", "Toggle", false, function(r0_698)
  
  if r0_698 == true then
    workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
  else
    workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
  end
end)
r163_0:Toggle("反上帝技能", "Toggle", false, function(r0_399)
  
  AntiTimestop = r0_399
  while AntiTimestop do
    local r1_399 = pairs
    for r4_399, r5_399 in r1_399(game.Players.LocalPlayer.Character:GetChildren()) do
      if r5_399.ClassName == "Part" then
        r5_399.Anchored = false
      end
    end
    task.wait()
  end
end)
r163_0:Toggle("反鱿鱼", "Toggle", false, function(r0_371)
  
  AntiSquid = r0_371
  if AntiSquid == false then
    game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
  end
  while AntiSquid do
    local r1_371 = game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk")
    if r1_371 then
      r1_371 = game.Players.LocalPlayer.PlayerGui.SquidInk
      r1_371.Enabled = false
    end
    task.wait()
  end
end)
r163_0:Toggle("反神圣杰克", "Toggle", false, function(r0_690)
  
  game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = r0_690
end)
r163_0:Toggle("反传送带", "Toggle", false, function(r0_127)
  
  game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = r0_127
end)
r163_0:Toggle("反板砖", "Toggle", false, function(r0_216)
  
  AntiBrick = r0_216
  while AntiBrick do
    local r1_216 = pairs
    for r4_216, r5_216 in r1_216(game.Workspace:GetChildren()) do
      if r5_216.Name == "Union" then
        r5_216.CanTouch = false
      end
    end
    task.wait()
  end
end)
r163_0:Toggle("反Null", "Toggle", false, function(r0_449)
  
  AntiNull = r0_449
  while AntiNull do
    local r1_449 = pairs
    for r4_449, r5_449 in r1_449(game.Workspace:GetChildren()) do
      if r5_449.Name == "Imp" and r5_449:FindFirstChild("Body") then
        shared.gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(r5_449.Body, true)
      end
    end
    task.wait()
  end
end)
r163_0:Button("自动刷巴掌", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm]]))()
end)
local r165_0 = r50_0:Tab("『河北唐县』", "18930406865"):section("请到河北唐县服务器执行帅脚本", true)
r165_0:Label("尊敬的迪脚本用户您好")
r165_0:Label("请您进入河北唐县服务器执行帅脚本")
r165_0:Label("即可显示河北唐县服务器功能")
local r167_0 = r50_0:Tab("『战争大亨』", "18930406865"):section("主要功能", true)
r167_0:Button("范围", function()
  
  loadstring(game:HttpGet("https://pastefy.app/vC3cCPDp/raw"))()
end)
r167_0:Toggle("无限跳", "IJ", false, function(r0_620)
  
  getgenv().InfJ = r0_620
  game:GetService("UserInputService").JumpRequest:connect(function()
    
    if InfJ == true then
      game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
  end)
end)
r167_0:Button("删除所有门", function()
  
  for r3_638, r4_638 in pairs(Workspace.Tycoon.Tycoons:GetChildren()) do
    for r8_638, r9_638 in pairs(r4_638.PurchasedObjects:GetChildren()) do
      if r9_638.Name:find("Door") or r9_638.Name:find("Gate") then
        r9_638:destroy()
      end
    end
  end
end)
r167_0:Button("防暴盾牌", function()
  
  
  ReplicatedStorage.BulletFireSystem.GunReload:destroy()
  local r0_35 = Instance.new("Part")
  r0_35.Name = "GunReload"
  r0_35.Parent = ReplicatedStorage.BulletFireSystem
  while true do
    wait(0)
    for r4_35, r5_35 in pairs(r137_0.Character:GetChildren()) do
      if r5_35.ClassName == "Tool" then
        r5_35.ACS_Modulo.Variaveis.Ammo.Value = 9999
      end
    end
  end
end)
r167_0:Button("删除你的视觉盔甲和头盔", function()
  
  for r3_645, r4_645 in pairs(r137_0.Character:GetChildren()) do
    if r4_645.ClassName == "Accessory" then
      r4_645:destroy()
    end
    if r4_645.Name:find("Armor") then
      r4_645.Mesh:destroy()
    end
    if r4_645.Name:find("Helmet") then
      r4_645:destroy()
    end
  end
end)
r167_0:Button("查看游戏中的所有玩家（包括血量条）", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/G2zb992X", true))()
end)
r167_0:Label("执行一枪秒人和枪改散弹和无限子弹和爆炸狙前请先开一枪")
r167_0:Button("一枪秒人", function()
  
  loadstring(game:HttpGet("https://pastebin.com/raw/6b4XEjQF"))()
end)
r167_0:Button("全图杀人(需要火箭筒才能用)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/hhiDoFSB/raw"))()
end)
r167_0:Button("可开关全图杀人①(需要拿着RPG点击)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/jSgKeb2k/raw"))()
end)
r167_0:Button("RPG随机针对杀人(需要拿着RPG点击)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/ed3h9kTB/raw"))()
end)
r167_0:Button("可开关全图杀人②(需要拿着RPG点击)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/f9dg3svj/raw"))()
end)
r167_0:Button("枪改散弹", function()
  
  loadstring(game:HttpGet("https://pastefy.app/F180SugC/raw"))()
end)
r167_0:Button("M17手枪针对打人(需要拿着M17点击)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/l4vfknE7/raw"))()
end)
r167_0:Button("RPG指定锁人杀人(需要拿着RPG点击)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/utItxDIM/raw"))()
end)
r167_0:Button("无限子弹", function()
  
  loadstring(game:HttpGet("https://pastefy.app/NDzBmK9g/raw"))()
end)
r167_0:Button("爆炸狙", function()
  
  loadstring(game:HttpGet("https://pastefy.app/n8FcGgRh/raw"))()
end)
r167_0:Button("车辆货箱", function()
  
  for r3_503, r4_503 in pairs(Workspace.Beams:GetChildren()) do
    if r4_503.Name:find("Airdrop_") then
      r137_0.Character.HumanoidRootPart.CFrame = r4_503.CFrame
    end
  end
end)
r167_0:Button("隔空投送", function()
  
  for r3_697, r4_697 in pairs(Workspace.Beams:GetChildren()) do
    if r4_697.Name:find("Warehouse") then
      r137_0.Character.HumanoidRootPart.CFrame = Workspace.Beams[r4_697.Name].CFrame
      break
    end
  end
end)
r167_0:Button("油桶", function()
  
  for r3_450, r4_450 in pairs(Workspace.Beams:GetChildren()) do
    if r4_450.Name:find("Warehouse") then
      r137_0.Character.HumanoidRootPart.CFrame = Workspace.Beams[r4_450.Name].CFrame
      break
    end
  end
end)
r167_0:Button("直接占领旗帜", function()
  
  loadstring(game:HttpGet("https://pastefy.app/TlqEOJU7/raw"))()
end)
r167_0:Label("传送功能")
r167_0:Button("传送到空投", function()
  
  local r1_492 = game.Players.LocalPlayer.Character.HumanoidRootPart
  for r5_492, r6_492 in ipairs(workspace["Game Systems"]:GetDescendants()) do
    if r6_492.Name:match("Airdrop_") then
      r1_492.CFrame = r6_492.MainPart.CFrame
    end
  end
end)
r167_0:Button("传送自己的基地", function()
  
  game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Tycoon.Tycoons[game:GetService("Players").LocalPlayer.leaderstats.Team.Value].Essentials.Spawn.Position)
end)
r167_0:Button("酒店基地", function()
  
  local r0_63 = game.Players.LocalPlayer.Character.HumanoidRootPart
  local r1_63 = CFrame.new(2853, 48, -1282)
  game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
  wait(0.2)
  r0_63.CFrame = r1_63
end)
r167_0:Button("传送旗帜", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(73.22032928466797, 47.9999885559082, 191.06993103027344)
end)
r167_0:Button("传送油桶1", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.748652458190918, 48.662540435791016, 700.2245483398438)
end)
r167_0:Button("传送油桶2", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76.48243713378906, 105.25657653808594, -2062.3896484375)
end)
r167_0:Button("传送油桶3", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28.840208053588867, 49.34040069580078, -416.9921569824219)
end)
r167_0:Button("传送油桶4", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(69.48390197753906, 105.25657653808594, 3434.9033203125)
end)
local r170_0 = "Dropdown"
r170_0 = "基地传送"
r167_0:Dropdown("基地传送", "基地传送", {
  "阿尔法",
  "布拉沃",
  "查理",
  "德尔塔",
  "埃科",
  "福克斯特罗特",
  "高尔夫",
  "酒店",
  "基洛",
  "利马",
  "欧米茄",
  "罗密欧",
  "塞拉",
  "探戈",
  "维克多",
  "祖鲁"
}, function(r0_398)
  
  local r1_398 = workspace.Tycoon.TycoonFloor
  local r2_398 = {
  ["阿尔法"] = "Alpha",
  ["布拉沃"] = "Bravo",
  ["查理"] = "Charlie",
  ["德尔塔"] = "Delta",
  ["埃科"] = "Echo",
  ["福克斯特罗特"] = "Foxtrot",
  ["高尔夫"] = "Golf",
  ["酒店"] = "Hotel",
  ["基洛"] = "Kilo",
  ["利马"] = "Lima",
  ["欧米茄"] = "Omega",
  ["罗密欧"] = "Romeo",
  ["塞拉"] = "Sierra",
  ["探戈"] = "Tango",
  ["维克多"] = "Victor",
  ["祖鲁"] = "Zulu",
}
  local r3_398 = game:GetService("Players").LocalPlayer
  local r4_398 = r2_398[r0_398]
  if r4_398 and r1_398[r4_398] then
    r3_398.Character:MoveTo(r1_398[r4_398].Position)
  else
    warn("无效的基地位置：" .. r0_398)
  end
end)
local r169_0 = r50_0:Tab("『鲨口求生』", "18930406865"):section("主要功能", true)
local r172_0 = "Dropdown"
r172_0 = "选择船只"
r169_0:Dropdown("选择船只", "FreeBoat", {
  "未知",
  "未知",
  "摩托艇",
  "摩托艇",
  "独角兽挺",
  "摩托艇",
  "红马林鱼",
  "单栀帆船",
  "拖船",
  "小船摩托艇",
  "摩托艇甜甜圈",
  "马林鱼",
  "管船",
  "渔船",
  "维京船",
  "小木帆船",
  "红顶摩托艇",
  "双体船",
  "战舰",
  "旅游船",
  "鸭子船",
  "派对船",
  "军事潜艇",
  "姜饼蒸汽船",
  "雪橇2022",
  "雪地摩托艇",
  "游轮",
  nil
}, function(r0_313)
  
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(r0_313)
end)
r169_0:Button("自动杀鲨鱼", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua]], true))()
end)
r169_0:Button("秒杀鲨鱼", function()
  
  local r1_672 = getupvalue(getupvalue(getupvalue(require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("ProjectilesClient"):WaitForChild("WeaponScript"):WaitForChild("HitScanFire")).Fire, 8), 4), 2)
  local function r2_672(r0_673, r1_673)
    
    local r2_673 = r0_673:FindFirstChildWhichIsA(r1_673)
    while not r2_673 or not r2_673:IsA(r1_673) do
      r2_673 = r0_673.ChildAdded:Wait()
    end
    return r2_673
  end
  while task.wait() do
    r1_672:FireServer(r2_672(workspace:WaitForChild("Sharks"), "Model"))
  end
end)
r169_0:Label("传送功能")
r169_0:Button("传送冲洗商店", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.23574829101563, 95.87848663330078, 1.860785722732544)
end)
r169_0:Button("传送小岛", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1403.75732421875, 17.07505226135254, -779.7035522460938)
end)
r169_0:Button("返回出生点", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-161.43846130371094, 99.27043914794922, -8.31688117980957)
end)
r170_0 = r50_0:Tab("『超级大力士模拟器』", "18930406865")
local r171_0 = r170_0:section("主要功能", true)
r171_0:Toggle("自动锻炼", "AS", false, function(r0_630)
  
  _G.On2 = r0_630
  local r1_630 = game.Players.LocalPlayer.Character
  local r2_630 = r1_630 and r1_630:FindFirstChild("HumanoidRootPart")
  if r2_630 then
    r2_630.CFrame = CFrame.new(-79.9094696, 19.8263607, 8124.82129, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    r2_630.Anchored = false
  end
  wait(0.1)
  game:GetService("RunService").RenderStepped:Connect(function()
    
    if _G.On2 then
      workspace.Gravity = math.huge
      if r2_630 then
        r2_630.CFrame = CFrame.new(-79.9094696, 19.8263607, 8124.82129, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        if _G.Prox then
          fireproximityprompt(_G.Prox, 0)
        end
      end
    else
      workspace.Gravity = 196.2
    end
  end)
end)
r171_0:Toggle("自动强度", "AQQD", false, function(r0_244)
  
  _G.auto = r0_244
  if _G.auto then
    pcall(function()
      
      game:GetService("CoreGui").PurchasePromptApp.Enabled = false
    end)
    task_defer(autoworkout)
  else
    pcall(function()
      
      game:GetService("CoreGui").PurchasePromptApp.Enabled = true
    end)
  end
end)
r171_0:Toggle("删除购买提示", "DBY", false, function(r0_202)
  
  _G.Value = r0_202
  if _G.value then
    game:GetService("CoreGui").PurchasePromptApp.Enabled = false
  else
    _G.Value = value
    game:GetService("CoreGui").PurchasePromptApp.Enabled = true
  end
end)
r171_0:Button("获取所有勋章", function()
  
  GetBadges()
end)
r172_0 = r170_0:section("传送功能", true)
r172_0:Button("传送到开始区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, -198.07127380371094)
end)
r172_0:Button("传送到健身区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, -10.266206741333008)
end)
r172_0:Button("传送到食物区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
end)
r172_0:Button("传送到街机区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
end)
r172_0:Button("传送到农场区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
end)
r172_0:Button("传送到城堡区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
end)
r172_0:Button("传送到蒸汽朋克区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
end)
r172_0:Button("传送到迪斯科区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
end)
r172_0:Button("传送到太空区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
end)
r172_0:Button("传送到糖果区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
end)
r172_0:Button("送到实验室区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
end)
r172_0:Button("传送到热带区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
end)
r172_0:Button("传送到恐龙区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
end)
r172_0:Button("传送到复古区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
end)
r172_0:Button("传送到冬季区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
end)
r172_0:Button("传送到深海区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
end)
r172_0:Button("传送到狂野西部区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
end)
r172_0:Button("传送到豪华公寓区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
end)
r172_0:Button("传送到宝剑战斗区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
end)
r172_0:Button("传送到童话区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976563, 11.313281059265137, 14034.50390625)
end)
r172_0:Button("传送到桃花区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
end)
r172_0:Button("传送到厨房区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
end)
r172_0:Button("传送到下水道区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
end)
local r174_0 = r50_0:Tab("『51区』", "18930406865"):section("传送功能", true)
r174_0:Button("步枪", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(122, 323.5, 699))
end)
r174_0:Button("冲锋枪", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(231.32, 373.5, 39.78))
end)
r174_0:Button("闪电枪", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(112.07, 335.5, 556))
end)
r174_0:Button("喷子", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(143, 333, 500))
end)
r174_0:Button("传送出生点", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(324.54, 511.5, 419.38))
end)
r174_0:Button("无敌点", function()
  
  Local = game:GetService("Players").LocalPlayer
  Char = Local.Character
  tpdback = false
  touched = false
  Local.CharacterAdded:connect(function(r0_107)
    
    if script.Disabled ~= true then
      wait(0.25)
      loc = Char.HumanoidRootPart.Position
      Char:MoveTo(box.Position + Vector3.new(0, 0.5, 0))
    end
  end)
  game:GetService("UserInputService").InputBegan:connect(function(r0_108)
    
    if r0_108.KeyCode == Enum.KeyCode.Equals and script.Disabled ~= true then
      script.Disabled = true
      print("you may re-execute")
    end
  end)
  box = Instance.new("Part", workspace)
  box.Anchored = true
  box.CanCollide = true
  box.Size = Vector3.new(10, 1, 10)
  box.Position = Vector3.new(0, 10000, 0)
  box.Touched:connect(function(r0_105)
    
    if r0_105.Parent.Name == Local.Name and touched == false then
      touched = true
      function apply()
        
        if script.Disabled ~= true then
          no = Char.HumanoidRootPart:Clone()
          wait(0.25)
          Char.HumanoidRootPart:Destroy()
          no.Parent = Char
          Char:MoveTo(loc)
          touched = false
        end
      end
      if Char then
        apply()
      end
    end
  end)
  repeat
    wait()
  until Char
  loc = Char.HumanoidRootPart.Position
  Char:MoveTo(box.Position + Vector3.new(0, 0.5, 0))
end)
r174_0:Button("传送弹药库", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.0356903076172, 314.1027526855469, 437.3685607910156)
end)
r174_0:Button("传送武器改造", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(281, 325.5, 784))
end)
r174_0:Button("指令区域", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(138.42, 333.5, 535.41))
  game.StarterGui:SetCore("SendNotification", {
    Title = "您的代码是: 81975",
    Text = "感谢您使用迪脚本",
    Duration = 20,
  })
  wait(1)
  game.StarterGui:SetCore("SendNotification", {
    Title = "传送成功",
    Text = "感谢您使用迪脚本",
    Duration = 20,
  })
end)
local r176_0 = r50_0:Tab("『兵工厂』", "18930406865"):section("主要功能", true)
r176_0:Button("快速射击", function()
  
  for r4_1, r5_1 in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
    if r5_1.Name == "Auto" then
      r5_1.Value = true
    end
    if r5_1.Name == "RecoilControl" then
      r5_1.Value = 0
    end
    if r5_1.Name == "MaxSpread" then
      r5_1.Value = 0
    end
    if r5_1.Name == "ReloadTime" then
      r5_1.Value = 0
    end
    if r5_1.Name == "FireRate" then
      r5_1.Value = 0.05
    end
    if r5_1.Name == "Crit" then
      r5_1.Value = 20
    end
  end
end)
r176_0:Button("透视", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP"))()
end)
r176_0:Button("无限子弹", function()
  
  print("114514")
  while wait() do
    game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
    local r0_254 = game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2
    r0_254.Value = 999
  end
end)
r176_0:Button("范围", function()
  
  _G.HeadSize = 30
  _G.Disabled = true
  game:GetService("RunService").RenderStepped:connect(function()
    
    if _G.Disabled then
      local r0_497 = next
      local r1_497, r2_497 = game:GetService("Players"):GetPlayers()
      for r3_497, r4_497 in r0_497, r1_497, r2_497 do
        if r4_497.Name ~= game:GetService("Players").LocalPlayer.Name then
          pcall(function()
            
            r4_497.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
            r4_497.Character.HumanoidRootPart.Transparency = 0.7
            r4_497.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
            r4_497.Character.HumanoidRootPart.Material = "Neon"
            r4_497.Character.HumanoidRootPart.CanCollide = false
          end)
        end
        
      end
    end
  end)
end)
local r178_0 = r50_0:Tab("『感染性微笑』", "18930406865"):section("主要功能", true)
r178_0:Button("防止微笑感染", function()
  
  for r3_459, r4_459 in pairs(game.workspace:GetDescendants()) do
    if string.find(r4_459.Name, "Infector") then
      r4_459:Destroy()
    end
  end
end)
r178_0:Button("删除门", function()
  
  for r3_162, r4_162 in pairs(game.workspace:GetDescendants()) do
    if string.find(r4_162.Name, "AntiSmiler") then
      r4_162:Destroy()
    end
  end
end)
r178_0:Button("反外挂", function()
  
  workspace.Map.AntiHack:Destroy()
  game.Players.LocalPlayer.Character.AntiFly:Destroy()
end)
r178_0:Toggle("速度-微笑感染", "text", false, function(r0_483)
  
  getgenv().SlowDownSpeed = getgenv().SlowDownSpeed or 16
  getgenv().NoSlowDown = Value
  if getgenv().NoSlowDown then
    SteppedConnection = game:GetService("RunService").Stepped:Connect(function()
      
      pcall(function()
        
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().SlowDownSpeed
      end)
    end)
  else
    if SteppedConnection then
      SteppedConnection:Disconnect()
      SteppedConnection = nil
    end
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
  end
end)
r178_0:Toggle("打击微笑感染", "text", false, function(r0_405)
  
  getgenv().InfectAura = Value
  if getgenv().InfectAura then
    getgenv().InfectAuraConnection = game:GetService("RunService").Stepped:Connect(function()
      
      pcall(function()
        
        game:GetService("Players").LocalPlayer.Character.Infected.InfectEvent:FireServer()
      end)
    end)
  elseif getgenv().InfectAuraConnection then
    getgenv().InfectAuraConnection:Disconnect()
    getgenv().InfectAuraConnection = nil
  end
end)
r178_0:Toggle("Bat自动打击", "text", false, function(r0_220)
  
  getgenv().HitAura = r0_220
  if getgenv().HitAura then
    getgenv().HitAuraConnection = game:GetService("RunService").Stepped:Connect(function()
      
      pcall(function()
        
        local r0_222 = game:GetService("Players").LocalPlayer.Character
        if r0_222 then
          local r1_222 = r0_222:FindFirstChildOfClass("Tool")
          if r1_222 and r1_222.Name == "Bat" and r1_222:FindFirstChild("SwingEvent") then
            r1_222.SwingEvent:FireServer()
          end
          if packedice and packedice.Name == "Packed Ice" and packedice:FindFirstChild("SwingEvent") then
            packedice.SwingEvent:FireServer()
          end
        end
      end)
    end)
  elseif getgenv().HitAuraConnection then
    getgenv().HitAuraConnection:Disconnect()
    getgenv().HitAuraConnection = nil
  end
end)
r178_0:Toggle("瓶子自动打击", "text", false, function(r0_515)
  
  getgenv().HitAura = r0_515
  if getgenv().HitAura then
    getgenv().HitAuraConnection = game:GetService("RunService").Stepped:Connect(function()
      
      pcall(function()
        
        local r0_517 = game:GetService("Players").LocalPlayer.Character
        if r0_517 then
          local r1_517 = r0_517:FindFirstChildOfClass("Tool")
          if r1_517 and r1_517.Name == "Bottle" and r1_517:FindFirstChild("SwingEvent") then
            r1_517.SwingEvent:FireServer()
          end
          if packedice and packedice.Name == "Packed Ice" and packedice:FindFirstChild("SwingEvent") then
            packedice.SwingEvent:FireServer()
          end
        end
      end)
    end)
  elseif getgenv().HitAuraConnection then
    getgenv().HitAuraConnection:Disconnect()
    getgenv().HitAuraConnection = nil
  end
end)
local r180_0 = r50_0:Tab("『铲雪模拟器』", "18930406865"):section("主要功能", true)
r180_0:Toggle("自动收集雪", "text", false, function(r0_317)
  
  toggle = Value
  while toggle do
    wait()
    local r1_317 = {
      [1] = workspace:WaitForChild("HitParts"):WaitForChild("Snow1"),
      [2] = "Snow1",
      [3] = "MagicWand",
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("e8eGb8RgRXFcug8q"):FireServer(unpack(r1_317))
  end
end)
r180_0:Toggle("自动出售雪", "text", false, function(r0_541)
  
  toggle = Value
  while toggle do
    wait()
    local r1_541 = {
      [1] = "SellSnow",
      [2] = "Frosty",
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(r1_541))
  end
end)
r180_0:Button("传送出售雪的地方", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.4659423828125, 15.846257209777832, -66.55204010009766)
end)
r180_0:Button("传送买车的地方", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90.10160064697266, 16.051794052124023, -141.703125)
end)
r180_0:Button("传送买工具的地方", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131.7429962158203, 16.39700698852539, -12.935890197753906)
end)
r180_0:Button("传送买背包的地方", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(348.6633605957031, 17.03822898864746, -16.793842315673828)
end)
r180_0:Button("传送买假日礼物的地方", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.57424926757813, 16.215335845947266, 147.10423278808594)
end)
r180_0:Button("传送买宠物的地方", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.49563598632813, 17.887277603149414, 278.3686218261719)
end)
r180_0:Button("传送超大铲雪的地方", function()
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-391.4309997558594, 15.84949016571045, 150.15187072753906)
end)
r50_0:Tab("『进攻的僵尸』", "18930406865"):section("主要功能", true):Button("自动传送到僵尸上并攻击僵尸(必须装备武器)", function()
  
  loadstring(game:HttpGet("https://pastefy.app/gNPPoP8x/raw"))()
end)
r50_0:Tab("『造船寻宝』", "18930406865"):section("整合脚本", true):Button("迪脚本-造船寻宝", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaopi77/Integration-script/refs/heads/main/Roblox-Pi-Script-Shipbuildingandtreasurehunting.lua]]))()
end)
local r186_0 = r50_0:Tab("『奎尔湖』", "18930406865"):section("主要功能", true)
r186_0:Toggle("无敌模式", "", false, function(r0_92)
  
  game.ReplicatedStorage.DamageHumanoid:FireServer(-2000000000)
end)
r186_0:Button("无限金钱", function()
  
  game:GetService("ReplicatedStorage").Pay:FireServer(unpack({
    [1] = -9999,
    [2] = "Buy",
  }))
end)
r186_0:Button("无限金币", function()
  
  game:GetService("ReplicatedStorage").ChangeValue:FireServer(unpack({
    [1] = game:GetService("Players").LocalPlayer.GoldCoins,
    [2] = 99999,
  }))
end)
r186_0:Button("给所有物品", function()
  
  game.ReplicatedStorage.GiveTool:FireServer("SeaScooter")
  game.ReplicatedStorage.GiveTool:FireServer("Lantern")
  game.ReplicatedStorage.GiveTool:FireServer("Compass")
  game.ReplicatedStorage.GiveTool:FireServer("ItemFinder")
  game.ReplicatedStorage.GiveTool:FireServer("Aquabreather")
end)
r186_0:Button("红色套装", function()
  
  game.ReplicatedStorage.ChangeOutfits:FireServer("FireSuit")
end)
r186_0:Button("黄色套装", function()
  
  game.ReplicatedStorage.ChangeOutfits:FireServer("HazmatSuit")
end)
r186_0:Button("海盗套装", function()
  
  game.ReplicatedStorage.ChangeOutfits:FireServer("PirateCostume")
end)
r186_0:Button("动力套装", function()
  
  game.ReplicatedStorage.ChangeOutfits:FireServer("SuperScuba")
end)
local r188_0 = r50_0:Tab("『奶酪逃生』", "18930406865"):section("主要功能", true)
r188_0:Button("获取所有奶酪", function()
  
  for r3_122, r4_122 in pairs(game.Workspace.FindCheese:GetDescendants()) do
    if r4_122.Name == "Cheese" then
      fireclickdetector(r4_122.ClickDetector)
    end
  end
end)
r188_0:Button("打开所有门", function()
  
  local r0_117 = off
  wait()
  r0_117 = on
  repeat
    wait()
    fireclickdetector(game.Workspace.Cheese.ClickDetector)
  until r0_117
end)
r188_0:Label("锁门密码: 3842", function()
  
end)
r188_0:Button("出生点", function()
  
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.SpawnLocation.Position)
end)
r188_0:Button("安全区", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-73.6963, 4.2, -109.536))
end)
r188_0:Button("奶酪1", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-264.393, 4.19329, -56.25))
end)
r188_0:Button("奶酪2", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-275.163, 4.19329, -149.3))
end)
r188_0:Button("奶酪3", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-271.628, 4.19329, -33.53))
end)
r188_0:Button("安全区", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-272.487, 48.5, -150.641))
end)
r188_0:Button("奶酪4", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-205.069, 4.19329, -180.7))
end)
r188_0:Button("跑酷", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-25.2942, 100.5, -1037.5))
end)
r188_0:Button("离开", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-24.3932, 5, 24.3302))
end)
r188_0:Button("锁定区域", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-220.522, 4, -452.123))
end)
r188_0:Button("地下室", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-88.9135, 4, -451.278))
end)
r188_0:Button("终点", function()
  
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1758.41, 57, -137.61))
end)
local r190_0 = r50_0:Tab("『最强战场』", "18930406865"):section("主要功能", true)
r190_0:Button("SOON..", function()
  
  print("1")
end)
r190_0:Button("最强战场 ①", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md", true))()
end)
r190_0:Button("最强战场 ②", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua]]))()
end)
r190_0:Button("最强战场 ③", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripterbacon/TSBobfuscator/main/Main.Lua"))()
end)
local r192_0 = r50_0:Tab("『BF』", "18930406865"):section("脚本", true)
r192_0:Button("BF刷级脚本", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Basicallyy/Basicallyy/main/MinGamingV4.lua"))()
end)
r192_0:Button("BF ①", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua"))()
end)
r192_0:Button("BF ②", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/XiaoYunCN/Xiao-Yun-UWU/main/%E6%B5%B7%E8%B4%BC%E7%8E%8Bbf.lua]], true))()
end)
r192_0:Button("BF ③", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
end)
r192_0:Button("HOHO HUB", function()
  
  oadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end)
local r194_0 = r50_0:Tab("『伐木大亨2』", "18930406865"):section("脚本", true)
r194_0:Button(" 忍-伐木大亨2", function()
  
  loadstring(game:HttpGet(utf8.char((function()
    
    return table.unpack({
      104,
      116,
      116,
      112,
      115,
      58,
      47,
      47,
      112,
      97,
      115,
      116,
      101,
      98,
      105,
      110,
      46,
      99,
      111,
      109,
      47,
      114,
      97,
      119,
      47,
      98,
      51,
      115,
      84,
      68,
      86,
      112,
      116,
      nil,
      nil,
      nil
    })
  end)())))()
end)
r194_0:Button("DarkX（白脚本）", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/darkxwin/darkxsourcethinkyoutousedarkx/main/darkx]]))()
end)
r194_0:Button("LuaWare汉 化 版", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/LuaWare.lua", true))()
end)
r194_0:Button("ButterHub", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt"))()
end)
r194_0:Button("伐木大亨2多功能", function()
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt"))()
end)
local r197_0 = "Dropdown"
r197_0 = "传送"
r194_0:Dropdown("传送", "Dropdown", {
  "出生点",
  "木材反斗城",
  "土地商店",
  "桥",
  "码头",
  "椰子岛",
  "洞穴",
  "鲨鱼斧合成",
  "火山",
  "沼泽",
  "家具店",
  "盒子车行",
  "连锁逻辑店",
  "鲍勃的小店",
  "画廊",
  "雪山",
  "灵视神殿",
  "怪人",
  "小绿盒",
  "滑雪小屋",
  "黄金木洞穴",
  "小鸟斧头",
  "灯塔",
  nil
}, function(r0_253)
  
  if r0_253 == "木材反斗城" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(270, 4, 60)
  elseif r0_253 == "出生点" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(174, 10.5, 66)
  elseif r0_253 == "土地商店" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(270, 3, -98)
  elseif r0_253 == "桥" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(112, 37, -892)
  elseif r0_253 == "码头" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1136, 0, -206)
  elseif r0_253 == "椰子岛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2614, -4, -34)
  elseif r0_253 == "洞穴" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3590, -177, 415)
  elseif r0_253 == "火山" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1588, 623, 1069)
  elseif r0_253 == "沼泽" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1216, 131, -822)
  elseif r0_253 == "家具店" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(486, 3, -1722)
  elseif r0_253 == "盒子车行" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(509, 3, -1458)
  elseif r0_253 == "雪山" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1487, 415, 3259)
  elseif r0_253 == "连锁逻辑店" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4615, 7, -794)
  elseif r0_253 == "鲍勃的小店" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(292, 8, -2544)
  elseif r0_253 == "画廊" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5217, -166, 721)
  elseif r0_253 == "灵视神殿" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1608, 195, 928)
  elseif r0_253 == "怪人" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1071, 16, 1141)
  elseif r0_253 == "小绿盒" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1667, 349, 1474)
  elseif r0_253 == "滑雪小屋" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1244, 59, 2290)
  elseif r0_253 == "黄金木洞穴" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1080, -5, -942)
  elseif r0_253 == "鲨鱼斧合成" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(330.259735, 45.7998505, 1943.30823, 0.972010553, -0.0000000807546598, 0.234937176, 0.0000000763610259, 1, 0.0000000277986647, -0.234937176, -0.00000000908055142, 0.972010553)
  elseif r0_253 == "小鸟斧头" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4813.1, 33.5, -978.8)
  elseif r0_253 == "灯塔" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1464.8, 356.3, 3257.2)
  end
end)
r50_0:Tab("『Rooms&Doors』", "18930406865"):section("整合脚本", true):Button("帅脚本-Rooms&doors", function()
  
  getgenv().XiaoPi = "帅脚本-Rooms&doors"
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaoshusi77/xiaoshusi77/refs/heads/main/Roblox-xs-Script-Rooms%26doors.lua]]))()
end)
r50_0:Tab("『汽车经销大亨』", "18930406865"):section("整合脚本", true):Button("帅脚本-汽车经销大亨", function()
  
  loadstring(game:HttpGet([[https://raw.githubusercontent.com/xiaoshuai77/Integration-script/refs/heads/main/Roblox-xs-Script-Automobiledealertycoon.lua]]))()

end)    






