--变量
LocalPlayer = game:GetService("Players").LocalPlayer
Camera = workspace.CurrentCamera
VirtualUser = game:GetService("VirtualUser")
MarketplaceService = game:GetService("MarketplaceService")

--获取当前车辆
function GetCurrentVehicle()
  return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.SeatPart and LocalPlayer.Character.Humanoid.SeatPart.Parent
end

--平滑传送
function TP(cframe)
  GetCurrentVehicle():SetPrimaryPartCFrame(cframe)
end

--速度传送
function VelocityTP(cframe)
  TeleportSpeed = math.random(600, 600)
  Car = GetCurrentVehicle()
  local BodyGyro = Instance.new("BodyGyro", Car.PrimaryPart)
  BodyGyro.P = 5000
  BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
  BodyGyro.CFrame = Car.PrimaryPart.CFrame
  local BodyVelocity = Instance.new("BodyVelocity", Car.PrimaryPart)
  BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
  BodyVelocity.Velocity = CFrame.new(Car.PrimaryPart.Position, cframe.p).LookVector * TeleportSpeed
  wait((Car.PrimaryPart.Position - cframe.p).Magnitude / TeleportSpeed)
  BodyVelocity.Velocity = Vector3.new()
  wait(0.1)
  BodyVelocity:Destroy()
  BodyGyro:Destroy()
end

--脚本函数
StartPosition = CFrame.new(Vector3.new(-34567.375, 34.895652770996094, -32846.046875), Vector3.new())
EndPosition = CFrame.new(Vector3.new(-31448.3515625, 34.925010681152344, -26616.25), Vector3.new())
AutoFarmFunc = coroutine.create(function()
  while wait() do
    if not AutoFarm then
      AutoFarmRunning = false
      coroutine.yield()
    end
    AutoFarmRunning = true
    pcall(function()
      if not GetCurrentVehicle() and tick() - (LastNotif or 0) > 5 then
        LastNotif = tick()
       else
        TP(StartPosition + (TouchTheRoad and Vector3.new(0,-5,0) or Vector3.new(0, -5, 0)))
        VelocityTP(EndPosition + (TouchTheRoad and Vector3.new(0,-5,0) or Vector3.new(0, -5, 0)))
        TP(EndPosition + (TouchTheRoad and Vector3.new(0,-5,0) or Vector3.new(0, -5, 0)))
        VelocityTP(StartPosition + (TouchTheRoad and Vector3.new(0,-5,0) or Vector3.new(0, -5, 0)))
      end
    end)
  end
end)

local IMAGE = "rbxassetid://16946849525"
local Positions = UDim2.new(0.822025776, 0, 0.0401606411, 0)
local Sizes = UDim2.new(0, 40, 0, 34)

local KINGHUBMOBILE = Instance.new("ScreenGui")
local _100x100 = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")

KINGHUBMOBILE.Name = "XS HUB"
KINGHUBMOBILE.Parent = game:WaitForChild("CoreGui")
KINGHUBMOBILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

_100x100.Name = "100x100"
_100x100.Parent = KINGHUBMOBILE
_100x100.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_100x100.Position = Positions
_100x100.Size = UDim2.new(0, 40, 0, 34)

ImageButton.Parent = _100x100
ImageButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ImageButton.Size = Sizes
ImageButton.Image = IMAGE
ImageButton.MouseButton1Down:connect(function()
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(true, "F6", false, game)

	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(false, "F6", false, game)
end)
local identifiedexec = ""
if identifyexecutor then
	identifiedexec = select(1, identifyexecutor())
end
local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/XT114514/rbx/main/vape.lua"))()
local win = UILib:Window("脚本 | 驾驶帝国 " ..identifiedexec, Color3.fromRGB(0, 255, 0), Enum.KeyCode.F6)

local Tab = win:Tab("自动功能")

Tab:Toggle("自动刷钱", false, function(Value)
    AutoFarm = Value
    if Value and not AutoFarmRunning then
        coroutine.resume(AutoFarmFunc)
    end
end)

Tab:Toggle("自动签到", false, function(Value)
    _G.Rewards = Value
     if _G.Rewards then
     while _G.Rewards do wait()
    local args = {
      [1] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayRewards"):FireServer(unpack(args))

    local args = {
      [1] = 2
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayRewards"):FireServer(unpack(args))

    local args = {
      [1] = 3
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayRewards"):FireServer(unpack(args))


    local args = {
      [1] = 4
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayRewards"):FireServer(unpack(args))


    local args = {
      [1] = 5
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayRewards"):FireServer(unpack(args))


    local args = {
      [1] = 6
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayRewards"):FireServer(unpack(args))


    local args = {
      [1] = 7
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayRewards"):FireServer(unpack(args))

  end
end
end)

Tab:Toggle("防掉线", false, function(Value)
    _G.antiAFK = Value
        while _G.antiAFK do wait(20)
        game:GetService'VirtualUser':Button1Down(Vector2.new(788, 547))
    end
end)