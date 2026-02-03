if _G.XS_Script_Loaded then
    _G.XS_Execution_Count = (_G.XS_Execution_Count or 0) + 1
    return
end

_G.XS_Script_Loaded = true
_G.XS_Execution_Count = 1
_G.MuscleLegends = {} -- 补全全局表定义，避免未定义报错

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "XS HUB",
    Icon = "crown",
    Author = "by:XSandCyberpunk",
    AuthorImage = 90840643379863,
    Folder = "CloudHub",
    Size = UDim2.fromOffset(560, 360),
    Transparent = true,
    User = {
        Enabled = true,
        Callback = function() 
            print("clicked") 
        end,
        Anonymous = false
    },
})

Window:EditOpenButton({
    Title = "XS HUB",
    Icon = "crown",
    CornerRadius = UDim.new(1, 0),
    StrokeThickness = 3,
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(144, 238, 144)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 100, 0))
    }),
    Draggable = true
})

-- 封装控件创建函数
function Tab(a)
    return Window:Tab({Title = a, Icon = "eye"})
end
function Button(a, b, c)
    return a:Button({Title = b, Callback = c})
end
function Toggle(a, b, c, d)
    return a:Toggle({Title = b, Value = c, Callback = d})
end
function Slider(a, b, c, d, e, f)
    return a:Slider({Title = b, Step = 1, Value = {Min = c, Max = d, Default = e}, Callback = f})
end
function Dropdown(a, b, c, d, e)
    return a:Dropdown({Title = b, Values = c, Value = d, Callback = e})
end
function Input(a, b, c, d, e, f)
    return a:Input({
        Title = b,
        Desc = c or "",
        Value = d or "",
        Placeholder = e or "",
        Callback = f
    })
end

-- 创建标签页
local Taba = Tab("首页")
local Tab1 = Tab("通用")
local TabFE = Tab("FE")
local Tabzj = Tab("自己搞的一些小玩意")
local Tabyl = Tab("娱乐")
local Tab2 = Tab("ESP")
local Tab3 = Tab("自瞄")
local Tab4 = Tab("子追")
local Tabc = Tab("范围")
local Tabjb = Tab("各大脚本")
local Tab5 = Tab("力量传奇")
local Tab6 = Tab("忍者传奇")
local Tab7 = Tab("极速传奇")
local Tab8 = Tab("墨水游戏")
local Tab9 = Tab("FPS：S")
local Tab10 = Tab("破坏者谜团")
local Tab11 = Tab("监狱人生")
local Tab12 = Tab("最强战场")
local Tab13 = Tab("99夜")
local Tab14 = Tab("doors")
local Tab15 = Tab("死铁轨")
local Tab16 = Tab("EVADE")
local Tab17 = Tab("锻造厂")
local Tab18 = Tab("通缉")
local Tab19 = Tab("被遗弃")
local Tabd = Tab("催更地点")
local Tabb = Tab("设置")

local player = game.Players.LocalPlayer
-- 人物加载等待（核心优化，避免空值）
local function getCharacter()
    local char = player.Character or player.CharacterAdded:Wait()
    char:WaitForChild("Humanoid")
    char:WaitForChild("HumanoidRootPart")
    return char
end

-- 首页-系统信息
Taba:Paragraph({
    Title = "系统信息",
    Desc = string.format("用户名: %s\n显示名: %s\n用户ID: %d\n账号年龄: %d天", 
        player.Name, player.DisplayName, player.UserId, player.AccountAge),
    Image = "info",
    ImageSize = 20,
    Color = Color3.fromHex("#0099FF")
})

-- 帧率计数器（修复实时更新问题）
local fpsCounter = 0
local fpsLastTime = tick()
local fpsText = "计算中..."
local fpsParagraph = Taba:Paragraph({
    Title = "性能信息",
    Desc = "帧率: " .. fpsText,
    Image = "bar-chart",
    ImageSize = 20,
    Color = Color3.fromHex("#00A2FF")
})
spawn(function()
    while task.wait() do
        fpsCounter += 1
        if tick() - fpsLastTime >= 1 then
            fpsText = string.format("%.1f FPS", fpsCounter)
            fpsParagraph.Desc = "帧率: " .. fpsText -- 实时更新文本
            fpsCounter = 0
            fpsLastTime = tick()
        end
    end
end)

-- 首页声明文本
Taba:Paragraph({
    Title = "本人在此声明：封号与本脚本无关",
    Desc = [[ ]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#FFFFFF"),
    BackgroundTransparency = 1,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Taba:Paragraph({
    Title = "最大贡献者：Cyberpunk",
    Desc = [[Cyberpunk]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#FFFFFF"),
    BackgroundTransparency = 1,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Taba:Paragraph({
    Title = "星期五下午到星期天中午之间XS是在线的",
    Desc = [[ ]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#000000"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Taba:Paragraph({
    Title = "半自制",
    Desc = [[ ]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundTransparency = 1,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})

-- 通用标签页
Button(Tab1, "复制QQ群[获取最新消息]", function()
    setclipboard("1075226283")
end)
Tab1:Paragraph({
    Title = "以下是常用的",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundTransparency = 1,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "Adonis管理系统反作弊绕过", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua'))()
end)

-- 移动/跳跃/重力滑块（加人物防护）
local char = getCharacter()
local humanoid = char.Humanoid
Slider(Tab1, "移动速度", 1, 600, humanoid.WalkSpeed, function(a) 
    local curChar = getCharacter()
    curChar.Humanoid.WalkSpeed = a
end)
Slider(Tab1, "跳跃高度", 1, 600, humanoid.JumpPower, function(a) 
    local curChar = getCharacter()
    curChar.Humanoid.JumpPower = a
end)
Slider(Tab1, "重力设置", 1, 500, workspace.Gravity, function(a) 
    workspace.Gravity = a
end)

-- 锁视角
Button(Tab1, "锁视角", function() 
    local ShiftlockStarterGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    ShiftlockStarterGui.Name = "Shiftlock (StarterGui)"
    ShiftlockStarterGui.Parent = game.CoreGui
    ShiftlockStarterGui.ZIndexBehavior =  Enum.ZIndexBehavior.Sibling
    ShiftlockStarterGui.ResetOnSpawn = false

    ImageButton.Parent = ShiftlockStarterGui
    ImageButton.Active = true
    ImageButton.Draggable = true
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.Position = UDim2.new(0.921914339, 0, 0.552375436, 0)
    ImageButton.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
    ImageButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
    ImageButton.Image = "http://www.roblox.com/asset/?id=182223762"
    local function TLQOYN_fake_script()
        local script = Instance.new("LocalScript", ImageButton)
        local MobileCameraFramework = {}
        local Players = game.Players
        local runservice = game:GetService("RunService")
        local CAS = game:GetService("ContextActionService")
        local Player = Players.LocalPlayer
        local character = Player.Character or Player.CharacterAdded:Wait()
        local root = character:WaitForChild("HumanoidRootPart")
        local humanoid = character.Humanoid
        local camera = workspace.CurrentCamera
        local button = script.Parent
        local uis = game:GetService("UserInputService")
        local ismobile = uis.TouchEnabled
        button.Visible = ismobile
        
        local states = {
            OFF = "rbxasset://textures/ui/mouseLock_off@2x.png",
            ON = "rbxasset://textures/ui/mouseLock_on@2x.png"
        }
        local MAX_LENGTH = 900000
        local active = false
        local ENABLED_OFFSET = CFrame.new(1.7, 0, 0)
        local DISABLED_OFFSET = CFrame.new(-1.7, 0, 0)
        local rootPos = Vector3.new(0,0,0)
        local function UpdatePos()
            if Player.Character and Player.Character:FindFirstChildOfClass"Humanoid" and Player.Character:FindFirstChildOfClass"Humanoid".RootPart then
                rootPos = Player.Character:FindFirstChildOfClass"Humanoid".RootPart.Position
            end
        end
        local function UpdateImage(STATE)
            button.Image = states[STATE]
        end
        local function UpdateAutoRotate(BOOL)
            if Player.Character and Player.Character:FindFirstChildOfClass"Humanoid" then
                Player.Character:FindFirstChildOfClass"Humanoid".AutoRotate = BOOL
            end
        end
        local function GetUpdatedCameraCFrame()
            if game:GetService"Workspace".CurrentCamera then
                return CFrame.new(rootPos, Vector3.new(game:GetService"Workspace".CurrentCamera.CFrame.LookVector.X * MAX_LENGTH, rootPos.Y, game:GetService"Workspace".CurrentCamera.CFrame.LookVector.Z * MAX_LENGTH))
            end
        end
        local function EnableShiftlock()
            UpdatePos()
            UpdateAutoRotate(false)
            UpdateImage("ON")
            if Player.Character and Player.Character:FindFirstChildOfClass"Humanoid" and Player.Character:FindFirstChildOfClass"Humanoid".RootPart then
                Player.Character:FindFirstChildOfClass"Humanoid".RootPart.CFrame = GetUpdatedCameraCFrame()
            end
            if game:GetService"Workspace".CurrentCamera then
                game:GetService"Workspace".CurrentCamera.CFrame = camera.CFrame * ENABLED_OFFSET
            end
        end
        local function DisableShiftlock()
            UpdatePos()
            UpdateAutoRotate(true)
            UpdateImage("OFF")
            if game:GetService"Workspace".CurrentCamera then
                game:GetService"Workspace".CurrentCamera.CFrame = camera.CFrame * DISABLED_OFFSET
            end
            pcall(function()
                active:Disconnect()
                active = nil
            end)
        end
        UpdateImage("OFF")
        active = false
        function ShiftLock()
            if not active then
                active = runservice.RenderStepped:Connect(function()
                    EnableShiftlock()
                end)
            else
                DisableShiftlock()
            end
        end
        local ShiftLockButton = CAS:BindAction("ShiftLOCK", ShiftLock, false, "On")
        CAS:SetPosition("ShiftLOCK", UDim2.new(0.8, 0, 0.8, 0))
        button.MouseButton1Click:Connect(function()
            if not active then
                active = runservice.RenderStepped:Connect(function()
                    EnableShiftlock()
                end)
            else
                DisableShiftlock()
            end
        end)
        return MobileCameraFramework
    end
    coroutine.wrap(TLQOYN_fake_script)()
    local function OMQRQRC_fake_script()
        local script = Instance.new("LocalScript", ShiftlockStarterGui)
        local Players = game.Players
        local UserInputService = game:GetService("UserInputService")
        local Settings = UserSettings()
        local GameSettings = Settings.GameSettings
        local ShiftLockController = {}
        while not Players.LocalPlayer do task.wait() end
        local LocalPlayer = Players.LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
        local ScreenGui, ShiftLockIcon, InputCn
        local IsShiftLockMode = true
        local IsShiftLocked = true
        local IsActionBound = false
        local IsInFirstPerson = false
        ShiftLockController.OnShiftLockToggled = Instance.new("BindableEvent")
        local function isShiftLockMode()
            return LocalPlayer.DevEnableMouseLock and GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.ClickToMove and GameSettings.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable
        end
        if not UserInputService.TouchEnabled then
            IsShiftLockMode = isShiftLockMode()
        end
        local function onShiftLockToggled()
            IsShiftLocked = not IsShiftLocked
            ShiftLockController.OnShiftLockToggled:Fire()
        end
        local initialize = function()
            print("enabled")
        end
        function ShiftLockController:IsShiftLocked()
            return IsShiftLockMode and IsShiftLocked
        end
        function ShiftLockController:SetIsInFirstPerson(isInFirstPerson)
            IsInFirstPerson = isInFirstPerson
        end
        local function mouseLockSwitchFunc(actionName, inputState, inputObject)
            if IsShiftLockMode then
                onShiftLockToggled()
            end
        end
        local function disableShiftLock()
            if ScreenGui then
                ScreenGui.Parent = nil
            end
            IsShiftLockMode = false
            Mouse.Icon = ""
            if InputCn then
                InputCn:disconnect()
                InputCn = nil
            end
            IsActionBound = false
            ShiftLockController.OnShiftLockToggled:Fire()
        end
        local function onShiftInputBegan(inputObject, isProcessed)
            if isProcessed then return end
            if inputObject.UserInputType ~= Enum.UserInputType.Keyboard or inputObject.KeyCode == Enum.KeyCode.LeftShift or inputObject.KeyCode == Enum.KeyCode.RightShift then end
        end
        local function enableShiftLock()
            IsShiftLockMode = isShiftLockMode()
            if IsShiftLockMode then
                if ScreenGui then
                    ScreenGui.Parent = PlayerGui
                end
                if IsShiftLocked then
                    ShiftLockController.OnShiftLockToggled:Fire()
                end
                if not IsActionBound then
                    InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
                    IsActionBound = true
                end
            end
        end
        GameSettings.Changed:connect(function(property)
            if property == "ControlMode" then
                if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
                    enableShiftLock()
                else
                    disableShiftLock()
                end
            elseif property == "ComputerMovementMode" then
                if GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then
                    disableShiftLock()
                else
                    enableShiftLock()
                end
            end
        end)
        LocalPlayer.Changed:connect(function(property)
            if property == "DevEnableMouseLock" then
                if LocalPlayer.DevEnableMouseLock then
                    enableShiftLock()
                else
                    disableShiftLock()
                end
            elseif property == "DevComputerMovementMode" then
                if LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
                    disableShiftLock()
                else
                    enableShiftLock()
                end
            end
        end)
        LocalPlayer.CharacterAdded:connect(function(character)
            if not UserInputService.TouchEnabled then
                initialize()
            end
        end)
        if not UserInputService.TouchEnabled then
            initialize()
            if isShiftLockMode() then
                InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
                IsActionBound = true
            end
        end
        enableShiftLock()
        return ShiftLockController
    end
    coroutine.wrap(OMQRQRC_fake_script)()
end)

-- 飞行区
Tab1:Paragraph({
    Title = "以下是飞行区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
-- 修复XS飞行嵌套loadstring语法错误
Button(Tab1, "XS飞行", function() 
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()
end) 
Button(Tab1, "XION飞车因为没有源码所以直接用xion飞车", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/fdydyf/main/XION%E9%A3%9E%E8%BD%A6"))()
end)
Button(Tab1, "飞行v4", function() 
    loadstring(game:HttpGet("https://dpaste.org/PE88V/raw"))()
end)
Button(Tab1, "无敌少侠r15", function() 
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()
end)
Button(Tab1, "无敌少侠r6", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E6%97%A0%E6%95%8C%E5%B0%91%E4%BE%A0%E9%A3%9E%E8%A1%8Cr6.txt"))()
end)

-- 无限跳（加人物防护）
Toggle(Tab1, "无限跳", false, function(Value)
    _G.Jump = Value
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if _G.Jump then
            local curChar = getCharacter()
            curChar.Humanoid:ChangeState("Jumping")
        end
    end)
end)
Button(Tab1, "爬墙", function() 
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

-- 黑洞区
Tab1:Paragraph({
    Title = "以下是黑洞区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "双环控制黑洞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%8F%8C%E7%8E%AF%E6%8E%A7%E5%88%B6%E9%BB%91%E6%B4%9E.txt"))()
end)
Button(Tab1, "可爱黑洞[英文]", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-AURA/main/kawaii_aura.lua"))()
end)
Button(Tab1, "哥特风黑洞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%93%A5%E7%89%B9%E9%A3%8E%E9%BB%91%E6%B4%9E.txt"))()
end)
Button(Tab1, "磁铁黑洞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E7%A3%81%E9%93%81%E9%BB%91%E6%B4%9EV2.txt"))()
end)
Button(Tab1, "司空汉化部件环绕v6", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/fdydyf/main/%E9%BB%91%E6%B4%9E%E7%8E%AF%E7%BB%95v6"))()
end)
Button(Tab1, "司空汉化整人黑洞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/eyidfki/main/%E9%BB%91%E6%B4%9ECappo"))()
end)

-- FPS区
Tab1:Paragraph({
    Title = "以下是fps区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "fpsBooster(很猛的提升fps)", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JoshzzAlteregooo/JoshzzFpsBoosterVersion3/refs/heads/main/JoshzzNewFpsBooster"))()
end)
Button(Tab1, "fps显示", function() 
    loadstring(game:HttpGet("https://pastefy.app/d9j82YJr/raw",true))()
end)

-- 回溯区
Tab1:Paragraph({
    Title = "以下是回溯区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "回溯", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MSTTOPPER/Scripts/refs/heads/main/FlashBack"))()
end)

-- 甩飞区
Tab1:Paragraph({
    Title = "以下是甩飞区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "甩飞所有人", function() 
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
Button(Tab1, "甩飞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3LD4D0/Crazy-Man-R6/36ec60d16bf8d208c40807aa0fd2662af76a5385/Crazy%20Man%20R6"))()
end)
Button(Tab1, "触碰既甩飞", function() 
    loadstring(game:HttpGet("http://rawscripts.net/raw/Universal-Script-Touch-fling-script-22447"))()
end)
Button(Tab1, "防甩飞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/protezzx/Player-joined-left/refs/heads/main/Antifling%20script",true))()
end)

-- 防坠落区
Tab1:Paragraph({
    Title = "以下是防坠落区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "防坠落 by西班牙", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/5twh2hsf9j-byte/BowenPrime67/refs/heads/main/Python"))()
end)
Button(Tab1, "踏空行走", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)

-- 传送区
Tab1:Paragraph({
    Title = "以下是传送区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
 修复后的完整脚本（修正语法/逻辑错误+优化稳定性）
主要修复点：
1. 修复`XS飞行`按钮嵌套`loadstring`语法错误
2. 补全全局表定义（`MuscleLegends`）避免报错
3. 修复帧率显示实时更新问题
4. 优化人物加载判断（避免空值报错）
5. 修正穿墙/视野等功能的空值防护
6. 修复末尾`pcall`语法标点错误
7. 优化自瞄UI的层级和显示逻辑

```lua
if _G.XS_Script_Loaded then
    _G.XS_Execution_Count = (_G.XS_Execution_Count or 0) + 1
    return
end

_G.XS_Script_Loaded = true
_G.XS_Execution_Count = 1
_G.MuscleLegends = {} -- 补全全局表定义，避免未定义报错

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "XS HUB",
    Icon = "crown",
    Author = "by:XSandCyberpunk",
    AuthorImage = 90840643379863,
    Folder = "CloudHub",
    Size = UDim2.fromOffset(560, 360),
    Transparent = true,
    User = {
        Enabled = true,
        Callback = function() 
            print("clicked") 
        end,
        Anonymous = false
    },
})

Window:EditOpenButton({
    Title = "XS HUB",
    Icon = "crown",
    CornerRadius = UDim.new(1, 0),
    StrokeThickness = 3,
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(144, 238, 144)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 100, 0))
    }),
    Draggable = true
})

-- 封装控件创建函数
function Tab(a)
    return Window:Tab({Title = a, Icon = "eye"})
end
function Button(a, b, c)
    return a:Button({Title = b, Callback = c})
end
function Toggle(a, b, c, d)
    return a:Toggle({Title = b, Value = c, Callback = d})
end
function Slider(a, b, c, d, e, f)
    return a:Slider({Title = b, Step = 1, Value = {Min = c, Max = d, Default = e}, Callback = f})
end
function Dropdown(a, b, c, d, e)
    return a:Dropdown({Title = b, Values = c, Value = d, Callback = e})
end
function Input(a, b, c, d, e, f)
    return a:Input({
        Title = b,
        Desc = c or "",
        Value = d or "",
        Placeholder = e or "",
        Callback = f
    })
end

-- 创建标签页
local Taba = Tab("首页")
local Tab1 = Tab("通用")
local TabFE = Tab("FE")
local Tabzj = Tab("自己搞的一些小玩意")
local Tabyl = Tab("娱乐")
local Tab2 = Tab("ESP")
local Tab3 = Tab("自瞄")
local Tab4 = Tab("子追")
local Tabc = Tab("范围")
local Tabjb = Tab("各大脚本")
local Tab5 = Tab("力量传奇")
local Tab6 = Tab("忍者传奇")
local Tab7 = Tab("极速传奇")
local Tab8 = Tab("墨水游戏")
local Tab9 = Tab("FPS：S")
local Tab10 = Tab("破坏者谜团")
local Tab11 = Tab("监狱人生")
local Tab12 = Tab("最强战场")
local Tab13 = Tab("99夜")
local Tab14 = Tab("doors")
local Tab15 = Tab("死铁轨")
local Tab16 = Tab("EVADE")
local Tab17 = Tab("锻造厂")
local Tab18 = Tab("通缉")
local Tab19 = Tab("被遗弃")
local Tabd = Tab("催更地点")
local Tabb = Tab("设置")

local player = game.Players.LocalPlayer
-- 人物加载等待（核心优化，避免空值）
local function getCharacter()
    local char = player.Character or player.CharacterAdded:Wait()
    char:WaitForChild("Humanoid")
    char:WaitForChild("HumanoidRootPart")
    return char
end

-- 首页-系统信息
Taba:Paragraph({
    Title = "系统信息",
    Desc = string.format("用户名: %s\n显示名: %s\n用户ID: %d\n账号年龄: %d天", 
        player.Name, player.DisplayName, player.UserId, player.AccountAge),
    Image = "info",
    ImageSize = 20,
    Color = Color3.fromHex("#0099FF")
})

-- 帧率计数器（修复实时更新问题）
local fpsCounter = 0
local fpsLastTime = tick()
local fpsText = "计算中..."
local fpsParagraph = Taba:Paragraph({
    Title = "性能信息",
    Desc = "帧率: " .. fpsText,
    Image = "bar-chart",
    ImageSize = 20,
    Color = Color3.fromHex("#00A2FF")
})
spawn(function()
    while task.wait() do
        fpsCounter += 1
        if tick() - fpsLastTime >= 1 then
            fpsText = string.format("%.1f FPS", fpsCounter)
            fpsParagraph.Desc = "帧率: " .. fpsText -- 实时更新文本
            fpsCounter = 0
            fpsLastTime = tick()
        end
    end
end)

-- 首页声明文本
Taba:Paragraph({
    Title = "本人在此声明：封号与本脚本无关",
    Desc = [[ ]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#FFFFFF"),
    BackgroundTransparency = 1,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Taba:Paragraph({
    Title = "最大贡献者：Cyberpunk",
    Desc = [[Cyberpunk]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#FFFFFF"),
    BackgroundTransparency = 1,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Taba:Paragraph({
    Title = "星期五下午到星期天中午之间XS是在线的",
    Desc = [[ ]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#000000"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Taba:Paragraph({
    Title = "半自制",
    Desc = [[ ]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundTransparency = 1,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})

-- 通用标签页
Button(Tab1, "复制QQ群[获取最新消息]", function()
    setclipboard("1075226283")
end)
Tab1:Paragraph({
    Title = "以下是常用的",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundTransparency = 1,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "Adonis管理系统反作弊绕过", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua'))()
end)

-- 移动/跳跃/重力滑块（加人物防护）
local char = getCharacter()
local humanoid = char.Humanoid
Slider(Tab1, "移动速度", 1, 600, humanoid.WalkSpeed, function(a) 
    local curChar = getCharacter()
    curChar.Humanoid.WalkSpeed = a
end)
Slider(Tab1, "跳跃高度", 1, 600, humanoid.JumpPower, function(a) 
    local curChar = getCharacter()
    curChar.Humanoid.JumpPower = a
end)
Slider(Tab1, "重力设置", 1, 500, workspace.Gravity, function(a) 
    workspace.Gravity = a
end)

-- 锁视角
Button(Tab1, "锁视角", function() 
    local ShiftlockStarterGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    ShiftlockStarterGui.Name = "Shiftlock (StarterGui)"
    ShiftlockStarterGui.Parent = game.CoreGui
    ShiftlockStarterGui.ZIndexBehavior =  Enum.ZIndexBehavior.Sibling
    ShiftlockStarterGui.ResetOnSpawn = false

    ImageButton.Parent = ShiftlockStarterGui
    ImageButton.Active = true
    ImageButton.Draggable = true
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.Position = UDim2.new(0.921914339, 0, 0.552375436, 0)
    ImageButton.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
    ImageButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
    ImageButton.Image = "http://www.roblox.com/asset/?id=182223762"
    local function TLQOYN_fake_script()
        local script = Instance.new("LocalScript", ImageButton)
        local MobileCameraFramework = {}
        local Players = game.Players
        local runservice = game:GetService("RunService")
        local CAS = game:GetService("ContextActionService")
        local Player = Players.LocalPlayer
        local character = Player.Character or Player.CharacterAdded:Wait()
        local root = character:WaitForChild("HumanoidRootPart")
        local humanoid = character.Humanoid
        local camera = workspace.CurrentCamera
        local button = script.Parent
        local uis = game:GetService("UserInputService")
        local ismobile = uis.TouchEnabled
        button.Visible = ismobile
        
        local states = {
            OFF = "rbxasset://textures/ui/mouseLock_off@2x.png",
            ON = "rbxasset://textures/ui/mouseLock_on@2x.png"
        }
        local MAX_LENGTH = 900000
        local active = false
        local ENABLED_OFFSET = CFrame.new(1.7, 0, 0)
        local DISABLED_OFFSET = CFrame.new(-1.7, 0, 0)
        local rootPos = Vector3.new(0,0,0)
        local function UpdatePos()
            if Player.Character and Player.Character:FindFirstChildOfClass"Humanoid" and Player.Character:FindFirstChildOfClass"Humanoid".RootPart then
                rootPos = Player.Character:FindFirstChildOfClass"Humanoid".RootPart.Position
            end
        end
        local function UpdateImage(STATE)
            button.Image = states[STATE]
        end
        local function UpdateAutoRotate(BOOL)
            if Player.Character and Player.Character:FindFirstChildOfClass"Humanoid" then
                Player.Character:FindFirstChildOfClass"Humanoid".AutoRotate = BOOL
            end
        end
        local function GetUpdatedCameraCFrame()
            if game:GetService"Workspace".CurrentCamera then
                return CFrame.new(rootPos, Vector3.new(game:GetService"Workspace".CurrentCamera.CFrame.LookVector.X * MAX_LENGTH, rootPos.Y, game:GetService"Workspace".CurrentCamera.CFrame.LookVector.Z * MAX_LENGTH))
            end
        end
        local function EnableShiftlock()
            UpdatePos()
            UpdateAutoRotate(false)
            UpdateImage("ON")
            if Player.Character and Player.Character:FindFirstChildOfClass"Humanoid" and Player.Character:FindFirstChildOfClass"Humanoid".RootPart then
                Player.Character:FindFirstChildOfClass"Humanoid".RootPart.CFrame = GetUpdatedCameraCFrame()
            end
            if game:GetService"Workspace".CurrentCamera then
                game:GetService"Workspace".CurrentCamera.CFrame = camera.CFrame * ENABLED_OFFSET
            end
        end
        local function DisableShiftlock()
            UpdatePos()
            UpdateAutoRotate(true)
            UpdateImage("OFF")
            if game:GetService"Workspace".CurrentCamera then
                game:GetService"Workspace".CurrentCamera.CFrame = camera.CFrame * DISABLED_OFFSET
            end
            pcall(function()
                active:Disconnect()
                active = nil
            end)
        end
        UpdateImage("OFF")
        active = false
        function ShiftLock()
            if not active then
                active = runservice.RenderStepped:Connect(function()
                    EnableShiftlock()
                end)
            else
                DisableShiftlock()
            end
        end
        local ShiftLockButton = CAS:BindAction("ShiftLOCK", ShiftLock, false, "On")
        CAS:SetPosition("ShiftLOCK", UDim2.new(0.8, 0, 0.8, 0))
        button.MouseButton1Click:Connect(function()
            if not active then
                active = runservice.RenderStepped:Connect(function()
                    EnableShiftlock()
                end)
            else
                DisableShiftlock()
            end
        end)
        return MobileCameraFramework
    end
    coroutine.wrap(TLQOYN_fake_script)()
    local function OMQRQRC_fake_script()
        local script = Instance.new("LocalScript", ShiftlockStarterGui)
        local Players = game.Players
        local UserInputService = game:GetService("UserInputService")
        local Settings = UserSettings()
        local GameSettings = Settings.GameSettings
        local ShiftLockController = {}
        while not Players.LocalPlayer do task.wait() end
        local LocalPlayer = Players.LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
        local ScreenGui, ShiftLockIcon, InputCn
        local IsShiftLockMode = true
        local IsShiftLocked = true
        local IsActionBound = false
        local IsInFirstPerson = false
        ShiftLockController.OnShiftLockToggled = Instance.new("BindableEvent")
        local function isShiftLockMode()
            return LocalPlayer.DevEnableMouseLock and GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.ClickToMove and GameSettings.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable
        end
        if not UserInputService.TouchEnabled then
            IsShiftLockMode = isShiftLockMode()
        end
        local function onShiftLockToggled()
            IsShiftLocked = not IsShiftLocked
            ShiftLockController.OnShiftLockToggled:Fire()
        end
        local initialize = function()
            print("enabled")
        end
        function ShiftLockController:IsShiftLocked()
            return IsShiftLockMode and IsShiftLocked
        end
        function ShiftLockController:SetIsInFirstPerson(isInFirstPerson)
            IsInFirstPerson = isInFirstPerson
        end
        local function mouseLockSwitchFunc(actionName, inputState, inputObject)
            if IsShiftLockMode then
                onShiftLockToggled()
            end
        end
        local function disableShiftLock()
            if ScreenGui then
                ScreenGui.Parent = nil
            end
            IsShiftLockMode = false
            Mouse.Icon = ""
            if InputCn then
                InputCn:disconnect()
                InputCn = nil
            end
            IsActionBound = false
            ShiftLockController.OnShiftLockToggled:Fire()
        end
        local function onShiftInputBegan(inputObject, isProcessed)
            if isProcessed then return end
            if inputObject.UserInputType ~= Enum.UserInputType.Keyboard or inputObject.KeyCode == Enum.KeyCode.LeftShift or inputObject.KeyCode == Enum.KeyCode.RightShift then end
        end
        local function enableShiftLock()
            IsShiftLockMode = isShiftLockMode()
            if IsShiftLockMode then
                if ScreenGui then
                    ScreenGui.Parent = PlayerGui
                end
                if IsShiftLocked then
                    ShiftLockController.OnShiftLockToggled:Fire()
                end
                if not IsActionBound then
                    InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
                    IsActionBound = true
                end
            end
        end
        GameSettings.Changed:connect(function(property)
            if property == "ControlMode" then
                if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
                    enableShiftLock()
                else
                    disableShiftLock()
                end
            elseif property == "ComputerMovementMode" then
                if GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then
                    disableShiftLock()
                else
                    enableShiftLock()
                end
            end
        end)
        LocalPlayer.Changed:connect(function(property)
            if property == "DevEnableMouseLock" then
                if LocalPlayer.DevEnableMouseLock then
                    enableShiftLock()
                else
                    disableShiftLock()
                end
            elseif property == "DevComputerMovementMode" then
                if LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
                    disableShiftLock()
                else
                    enableShiftLock()
                end
            end
        end)
        LocalPlayer.CharacterAdded:connect(function(character)
            if not UserInputService.TouchEnabled then
                initialize()
            end
        end)
        if not UserInputService.TouchEnabled then
            initialize()
            if isShiftLockMode() then
                InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
                IsActionBound = true
            end
        end
        enableShiftLock()
        return ShiftLockController
    end
    coroutine.wrap(OMQRQRC_fake_script)()
end)

-- 飞行区
Tab1:Paragraph({
    Title = "以下是飞行区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
-- 修复XS飞行嵌套loadstring语法错误
Button(Tab1, "XS飞行", function() 
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()
end) 
Button(Tab1, "XION飞车因为没有源码所以直接用xion飞车", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/fdydyf/main/XION%E9%A3%9E%E8%BD%A6"))()
end)
Button(Tab1, "飞行v4", function() 
    loadstring(game:HttpGet("https://dpaste.org/PE88V/raw"))()
end)
Button(Tab1, "无敌少侠r15", function() 
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()
end)
Button(Tab1, "无敌少侠r6", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E6%97%A0%E6%95%8C%E5%B0%91%E4%BE%A0%E9%A3%9E%E8%A1%8Cr6.txt"))()
end)

-- 无限跳（加人物防护）
Toggle(Tab1, "无限跳", false, function(Value)
    _G.Jump = Value
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if _G.Jump then
            local curChar = getCharacter()
            curChar.Humanoid:ChangeState("Jumping")
        end
    end)
end)
Button(Tab1, "爬墙", function() 
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

-- 黑洞区
Tab1:Paragraph({
    Title = "以下是黑洞区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "双环控制黑洞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%8F%8C%E7%8E%AF%E6%8E%A7%E5%88%B6%E9%BB%91%E6%B4%9E.txt"))()
end)
Button(Tab1, "可爱黑洞[英文]", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-AURA/main/kawaii_aura.lua"))()
end)
Button(Tab1, "哥特风黑洞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%93%A5%E7%89%B9%E9%A3%8E%E9%BB%91%E6%B4%9E.txt"))()
end)
Button(Tab1, "磁铁黑洞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E7%A3%81%E9%93%81%E9%BB%91%E6%B4%9EV2.txt"))()
end)
Button(Tab1, "司空汉化部件环绕v6", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/fdydyf/main/%E9%BB%91%E6%B4%9E%E7%8E%AF%E7%BB%95v6"))()
end)
Button(Tab1, "司空汉化整人黑洞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/eyidfki/main/%E9%BB%91%E6%B4%9ECappo"))()
end)

-- FPS区
Tab1:Paragraph({
    Title = "以下是fps区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "fpsBooster(很猛的提升fps)", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JoshzzAlteregooo/JoshzzFpsBoosterVersion3/refs/heads/main/JoshzzNewFpsBooster"))()
end)
Button(Tab1, "fps显示", function() 
    loadstring(game:HttpGet("https://pastefy.app/d9j82YJr/raw",true))()
end)

-- 回溯区
Tab1:Paragraph({
    Title = "以下是回溯区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "回溯", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MSTTOPPER/Scripts/refs/heads/main/FlashBack"))()
end)

-- 甩飞区
Tab1:Paragraph({
    Title = "以下是甩飞区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "甩飞所有人", function() 
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
Button(Tab1, "甩飞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3LD4D0/Crazy-Man-R6/36ec60d16bf8d208c40807aa0fd2662af76a5385/Crazy%20Man%20R6"))()
end)
Button(Tab1, "触碰既甩飞", function() 
    loadstring(game:HttpGet("http://rawscripts.net/raw/Universal-Script-Touch-fling-script-22447"))()
end)
Button(Tab1, "防甩飞", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/protezzx/Player-joined-left/refs/heads/main/Antifling%20script",true))()
end)

-- 防坠落区
Tab1:Paragraph({
    Title = "以下是防坠落区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "防坠落 by西班牙", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/5twh2hsf9j-byte/BowenPrime67/refs/heads/main/Python"))()
end)
Button(Tab1, "踏空行走", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)

-- 传送区
Tab1:Paragraph({
    Title = "以下是传送区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "点击传送工具", function() 
    local mouse = game.Players.LocalPlayer:GetMouse()
    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click Teleport"
    tool.Activated:connect(function()
        local pos = mouse.Hit+Vector3.new(0,2.5,0)
        pos = CFrame.new(pos.X,pos.Y,pos.Z)
        local curChar = getCharacter()
        curChar.HumanoidRootPart.CFrame = pos
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

-- 跑酷区
Tab1:Paragraph({
    Title = "以下是关于跑酷的",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "贴墙走", function() 
    loadstring(game:HttpGet('https://pastebin.com/raw/0J9ERxCm'))()
end)
Button(Tab1, "通用跑酷脚本[老外]", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/eyidfki/main/%E8%B7%91%E9%85%B7%E8%80%81%E5%A4%96"))()
end)

-- 穿墙区
Tab1:Paragraph({
    Title = "以下是穿墙区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Toggle(Tab1, "穿墙", false, function(a)
    pcall(function()
        local curChar = getCharacter()
        for i, v in pairs(curChar:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanCollide = not a
            end
        end
    end)
end)

-- 旋转区
Tab1:Paragraph({
    Title = "以下是旋转区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "旋转[1]", function() 
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)
Button(Tab1, "旋转[2]", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/TUIXUI_qun-809771141/refs/heads/TUIXUI/fling"))()
end)
Button(Tab1, "在别人身上旋转", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ShutUpJamesTheLoserAlt/hatspin/refs/heads/main/hat"))()
end)

-- 客户端区
Tab1:Paragraph({
    Title = "以下是客户端区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "无头加短腿美化", function() 
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Permanent-Headless-And-korblox-Script-4140"))()
end)
Button(Tab1, "无头美化r6", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Gazer-Ha/Valiant-Ui-Lib-Gazed-/refs/heads/main/Head%20Pack'))()
end)

-- 视觉区
Tab1:Paragraph({
    Title = "以下是视觉区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "动态模糊", function() 
    local camera = workspace.CurrentCamera
    local blurAmount = 10
    local blurAmplifier = 5
    local lastVector = camera.CFrame.LookVector
    local motionBlur = Instance.new("BlurEffect", camera)
    local runService = game:GetService("RunService")
    workspace.Changed:Connect(function(property)
        if property == "CurrentCamera" then
            print("Changed")
            local camera = workspace.CurrentCamera
            if motionBlur and motionBlur.Parent then
                motionBlur.Parent = camera
            else
                motionBlur = Instance.new("BlurEffect", camera)
            end
        end
    end)
    runService.Heartbeat:Connect(function()
        if not motionBlur or motionBlur.Parent == nil then
            motionBlur = Instance.new("BlurEffect", camera)
        end
        local magnitude = (camera.CFrame.LookVector - lastVector).magnitude
        motionBlur.Size = math.abs(magnitude)*blurAmount*blurAmplifier/2
        lastVector = camera.CFrame.LookVector
    end)
end)
-- 删除阴影
local deleteShadowsEnabled = false
Toggle(Tab1, "删除阴影", deleteShadowsEnabled, function(state)
    deleteShadowsEnabled = state
    if deleteShadowsEnabled then
        if game:GetService("Lighting"):FindFirstChild("GlobalShadows") then
            game:GetService("Lighting").GlobalShadows = false
        end
        if game:GetService("Lighting"):FindFirstChild("ShadowSoftness") then
            game:GetService("Lighting").ShadowSoftness = 0
        end
        for _, obj in pairs(game:GetDescendants()) do
            if obj:IsA("Part") or obj:IsA("MeshPart") or obj:IsA("UnionOperation") then
                obj.CastShadow = false
            end
        end
        print("删除阴影已开启")
    else
        if game:GetService("Lighting"):FindFirstChild("GlobalShadows") then
            game:GetService("Lighting").GlobalShadows = true
        end
        if game:GetService("Lighting"):FindFirstChild("ShadowSoftness") then
            game:GetService("Lighting").ShadowSoftness = 1
        end
        print("删除阴影已关闭")
    end
end)
-- 夜视
Toggle(Tab1, "夜视", false, function(a)
    if a then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)
-- 视野缩放
Button(Tab1, "最大视野缩放", function() 
    player.CameraMaxZoomDistance = 200000
end)
Button(Tab1, "视野缩放128", function() 
    player.CameraMaxZoomDistance = 128
end)
Slider(Tab1, "视野缩放距离", 1, 1500, player.CameraMaxZoomDistance, function(a) 
    player.CameraMaxZoomDistance = a
end)
Button(Tab1, "广角", function() 
    workspace.CurrentCamera.FieldOfView = 120
end)
Button(Tab1, "恢复视野", function() 
    workspace.CurrentCamera.FieldOfView = 70
end)

-- 控制区
Tab1:Paragraph({
    Title = "以下是控制区",
    Desc = [[ 👇👇👇]],
    Image = "eye",
    ImageSize = 24,
    Color = Color3.fromHex("#000000"),
    BackgroundColor3 = Color3.fromHex("#000000"),
    BackgroundTransparency = 0.2,
    OutlineColor = Color3.fromHex("#FFFFFF"),
    OutlineThickness = 1,
    Padding = UDim.new(0, 1)
})
Button(Tab1, "控制NPC", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/fe-source/refs/heads/main/NPC/source/main.Luau"))()
end)

-- 娱乐标签页
Button(Tabyl, "coolgui[适用电脑]", function() 
    loadstring(game:HttpGet("https://pastebin.com/raw/kxuNSVD3"))('Furry gon complain 🥀')
end)
Button(Tabyl, "coolgui[适用手机]", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/eyidfki/main/cool%E6%89%8B%E6%9C%BA"))()
end)

-- FE标签页
Button(TabFE, "索尼克", function() 
    loadstring(game:HttpGet("https://pastefy.app/otFP6Acp/raw"))()
end)
Button(TabFE, "地精", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_rTvXTs8F16D8D2oiLxZ62E1E9jT1we312yUyJr2h72Vwqr32l37rirU1S89hqRV7.lua.txt"))()
end)
Button(TabFE, "尾巴", function() 
    loadstring(game:HttpGet("https://pastefy.app/cQ2RNfpR/raw"))()
end)
Button(TabFE, "超光速and超级跳跃", function() 
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fake-lag-41217"))()
end)
Button(TabFE, "096", function() 
    loadstring(game:HttpGet("https://pastefy.app/YsJgITXR/raw"))()
end)
Button(TabFE, "超多动作but英文", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/vv/main/%E8%80%81%E5%A4%96%E5%8A%A8%E4%BD%9C100%E4%B8%87%E4%B8%AA"))()
end)
Button(TabFE, "动作", function() 
    loadstring(game:HttpGet("https://yarhm.mhi.im/scr?channel=afemmax"))()
end)
Button(TabFE, "导管子[E快 Q慢]", function() 
    loadstring(game:HttpGet("https://pastefy.app/lawnvcTT/raw", true))()
end)
Button(TabFE, "导管子r15", function() 
    loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
end)
Button(TabFE, "导管子r6", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/imalwaysad/universal-gui/refs/heads/main/jerk%20off%20r6"))()
end)
Button(TabFE, "僵尸模式", function() 
    loadstring(game:HttpGet("https://pastefy.app/JOWniO6o/raw"))()
end)
Button(TabFE, "英雄", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kanade-script/invincible-script/refs/heads/main/mark%20mode",true))()
end)
Button(TabFE, "隐身", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/vv/main/%E9%9A%90%E8%BA%ABfe"))()
end)
Button(TabFE, "超级女生力量[机翻]", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/eyidfki/main/%E8%B6%85%E7%BA%A7%E5%A5%B3%E5%A3%B0%E5%8A%9B%E9%87%8F"))()
end)
Button(TabFE, "只能在被遗弃使用的1x1动作", function() 
    loadstring(game:HttpGet("https://pastebin.com/raw/VfHXavv9", true))()
end)
Button(TabFE, "北朝脚本", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3LD4D0/FE-TROLLING-PLAYER-R6-R15/6eff8792afed57458d5114478b453a6f6bce5799/Fe%20trolling%20Player%20R6%20AND%20R15"))()
end)
Button(TabFE, "方块", function() 
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\102\121\46\103\97\47\50\66\120\90\69\83\109\106\47\114\97\119\39\41\44\116\114\117\101\41\41\40\41\10")()
end)
Button(TabFE, "自动跳墙", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ScpGuest666/Random-Roblox-script/refs/heads/main/Roblox%20WallHop%20V4%20script"))()
end)
Button(TabFE, "自动闪回", function() 
    loadstring(game:HttpGet("https://mscripts.vercel.app/scfiles/reverse-script.lua"))()
end)

-- 自己搞的小玩意
Button(Tabzj, "平台保护(类似防摔落➕缓降)", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/fdydyf/57923355d0961b01ec364d396e447f6d0d0ffcac/%E5%AE%89%E5%85%A8%E5%B9%B3%E5%8F%B0"))()
end)

-- ESP功能
local espEnabled = false
local espObjects = {}
local refreshConnection = nil
local espSettings = {
    showName = false,
    showDistance = false,
    showHealth = false,
    showBox = false
}
local camera = game:GetService("Workspace").CurrentCamera
local function getHeadScreenSize(character)
    if not character then return 50 end
    local head = character:FindFirstChild("Head")
    if not head then return 50 end
    local headPos, headVisible = camera:WorldToViewportPoint(head.Position)
    if not headVisible then return 50 end
    local distance = (head.Position - camera.CFrame.Position).Magnitude
    local headSize = head.Size.Y * 100 / distance
    return math.max(headSize, 10)
end
local function updateHealthDisplay(player)
    if not espObjects[player] or not espObjects[player].health then return end
    local character = player.Character
    if not character or not character:FindFirstChild("Humanoid") then return end
    local humanoid = character.Humanoid
    local healthPercent = humanoid.Health / humanoid.MaxHealth
    local healthBar = espObjects[player].healthBar
    local healthText = espObjects[player].healthText
    if healthBar and healthText then
        healthBar.Size = UDim2.new(healthPercent, 0, 1, 0)
        if healthPercent > 0.7 then
            healthBar.BackgroundColor3 = Color3.new(0, 1, 0)
        elseif healthPercent > 0.3 then
            healthBar.BackgroundColor3 = Color3.new(1, 1, 0)
        else
            healthBar.BackgroundColor3 = Color3.new(1, 0, 0)
        end
        healthText.Text = string.format("%d/%d", math.floor(humanoid.Health), math.floor(humanoid.MaxHealth))
    end
end
local function createESP(player)
    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end
    local character = player.Character
    local humanoidRootPart = character.HumanoidRootPart
    if espObjects[player] then clearESP(player) end
    espObjects[player] = {}
    if espSettings.showName then
        local nameBillboard = Instance.new("BillboardGui")
        local nameText = Instance.new("TextLabel")
        nameBillboard.Name = "ESP_Name"
        nameBillboard.Adornee = humanoidRootPart
        nameBillboard.Size = UDim2.new(0, 200, 0, 30)
        nameBillboard.StudsOffset = Vector3.new(0, 3.5, 0)
        nameBillboard.AlwaysOnTop = true
        nameBillboard.Parent = humanoidRootPart
        nameText.Size = UDim2.new(1, 0, 1, 0)
        nameText.BackgroundTransparency = 1
        nameText.Text = player.Name
        nameText.TextColor3 = Color3.new(1, 1, 1)
        nameText.TextSize = 14
        nameText.Font = Enum.Font.GothamBold
        nameText.Parent = nameBillboard
        espObjects[player].name = nameBillboard
        espObjects[player].nameText = nameText
    end
    if espSettings.showBox then
        local boxGui = Instance.new("BillboardGui")
        boxGui.Name = "ESP_Box2D"
        boxGui.Adornee = humanoidRootPart
        boxGui.Size = UDim2.new(0, 80, 0, 120)
        boxGui.StudsOffset = Vector3.new(0, 0, 0)
        boxGui.AlwaysOnTop = true
        boxGui.Parent = humanoidRootPart
        local boxFrame = Instance.new("Frame")
        boxFrame.Name = "BoxFrame"
        boxFrame.Size = UDim2.new(1, 0, 1, 0)
        boxFrame.BackgroundTransparency = 1
        boxFrame.BorderSizePixel = 2
        boxFrame.BorderColor3 = Color3.new(1, 0, 0)
        boxFrame.Parent = boxGui
        local boxFill = Instance.new("Frame")
        boxFill.Name = "BoxFill"
        boxFill.Size = UDim2.new(1, 0, 1, 0)
        boxFill.BackgroundColor3 = Color3.new(1, 0, 0)
        boxFill.BackgroundTransparency = 0.8
        boxFill.BorderSizePixel = 0
        boxFill.Parent = boxGui
        espObjects[player].box = boxGui
    end
    if espSettings.showDistance then
        local distanceBillboard = Instance.new("BillboardGui")
        local distanceText = Instance.new("TextLabel")
        distanceBillboard.Name = "ESP_Distance"
        distanceBillboard.Adornee = humanoidRootPart
        distanceBillboard.Size = UDim2.new(0, 120, 0, 25)
        distanceBillboard.StudsOffset = Vector3.new(0, -3, 0)
        distanceBillboard.AlwaysOnTop = true
        distanceBillboard.Parent = humanoidRootPart
        distanceText.Size = UDim2.new(1, 0, 1, 0)
        distanceText.BackgroundTransparency = 1
        distanceText.TextColor3 = Color3.new(0, 1, 1)
        distanceText.TextSize = 12
        distanceText.Font = Enum.Font.GothamBold
        distanceText.Text = "距离: 0"
        distanceText.Parent = distanceBillboard
        espObjects[player].distance = distanceBillboard
        espObjects[player].distanceText = distanceText
    end
    if espSettings.showHealth and character:FindFirstChild("Humanoid") then
        local healthBillboard = Instance.new("BillboardGui")
        local healthFrame = Instance.new("Frame")
        local healthBar = Instance.new("Frame")
        local healthText = Instance.new("TextLabel")
        healthBillboard.Name = "ESP_Health"
        healthBillboard.Adornee = humanoidRootPart
        healthBillboard.Size = UDim2.new(0, 70, 0, 25)
        healthBillboard.StudsOffset = Vector3.new(0, 2.5, 0)
        healthBillboard.AlwaysOnTop = true
        healthBillboard.Parent = humanoidRootPart
        healthFrame.Name = "HealthFrame"
        healthFrame.Size = UDim2.new(0.9, 0, 0.5, 0)
        healthFrame.Position = UDim2.new(0.05, 0, 0.25, 0)
        healthFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
        healthFrame.BorderSizePixel = 1
        healthFrame.BorderColor3 = Color3.new(1, 1, 1)
        healthFrame.Parent = healthBillboard
        healthBar.Name = "HealthBar"
        healthBar.Size = UDim2.new(1, 0, 1, 0
