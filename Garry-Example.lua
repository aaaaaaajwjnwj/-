-- 加载 Garry-UI 库
local GarryUI = loadstring(game:HttpGet('https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Garry-UI/main/source', true))()

-- 创建主窗口
local Window = GarryUI:Create('XS HUB V4', '多功能脚本中心', '作者：XS HUB')

-- 初始化变量
local player = game.Players.LocalPlayer
local runService = game:GetService("RunService")
local uis = game:GetService("UserInputService")

-- 创建时间显示标签
local function CreateTimeLabel()
    local LBLG = Instance.new("ScreenGui")
    LBLG.Name = "LBLG"
    LBLG.Parent = game.CoreGui
    LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    local LBL = Instance.new("TextLabel")
    LBL.Name = "LBL"
    LBL.Parent = LBLG
    LBL.BackgroundTransparency = 1
    LBL.Position = UDim2.new(0.75, 0, 0.010, 0)
    LBL.Size = UDim2.new(0, 133, 0, 30)
    LBL.Font = Enum.Font.GothamSemibold
    LBL.Text = "北京时间:00:00"
    LBL.TextColor3 = Color3.new(1, 1, 1)
    LBL.TextScaled = true
    
    -- 更新时间
    runService.Heartbeat:Connect(function()
        LBL.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
    end)
    
    -- 显示通知
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "XS HUB脚本中心V4",
        Text = "启动中",
        Duration = 2
    })
    
    wait(2)
    
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "正在加载",
        Text = "启动完毕",
        Duration = 4
    })
end

-- 创建选项卡

-- 1. 信息选项卡
local InfoTab = Window:CreateTab('信息', 'user')
InfoTab:CreateLabel("XS HUB V4")
InfoTab:CreateLabel("作者：XS HUB")
InfoTab:CreateLabel("QQ群：1015159552")
InfoTab:CreateLabel("服务器ID：" .. game.GameId)

-- 2. 通用功能选项卡
local GeneralTab = Window:CreateTab('通用', 'settings')

-- 通用功能
GeneralTab:CreateButton("飞行", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)

GeneralTab:CreateButton("透视", function()
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
    -- 透视代码...
    print("透视功能已启用")
end)

GeneralTab:CreateToggle("夜视", false, function(enabled)
    if enabled then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)

GeneralTab:CreateToggle("无限跳", false, function(enabled)
    local Jump = enabled
    uis.JumpRequest:Connect(function()
        if Jump and player.Character then
            player.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end)

GeneralTab:CreateSlider("步行速度", 16, 400, 16, function(value)
    if player.Character and player.Character.Humanoid then
        player.Character.Humanoid.WalkSpeed = value
    end
end)

GeneralTab:CreateSlider("跳跃高度", 50, 400, 50, function(value)
    if player.Character and player.Character.Humanoid then
        player.Character.Humanoid.JumpPower = value
    end
end)

-- 3. 力量传奇选项卡
local PowerTab = Window:CreateTab('力量传奇', 'strength')

PowerTab:CreateToggle("自动比赛", false, function(enabled)
    while enabled do
        wait(2)
        game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
        if not enabled then break end
    end
end)

PowerTab:CreateToggle("自动举哑铃", false, function(enabled)
    while enabled do
        wait()
        for i,v in pairs(player.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Weight" then
                v.Parent = player.Character
            end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
        if not enabled then break end
    end
end)

PowerTab:CreateButton("传送出生点", function()
    if player.Character then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
    end
end)

-- 4. 忍者传奇选项卡
local NinjaTab = Window:CreateTab('忍者传奇', 'ninja')

NinjaTab:CreateButton("飞行", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)

NinjaTab:CreateButton("忍者脚本1", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
end)

-- 5. Doors选项卡
local DoorsTab = Window:CreateTab('Doors', 'door')

DoorsTab:CreateToggle("怪物通知", false, function(enabled)
    _G.IE = enabled
    -- 通知代码...
    print("怪物通知：" .. (enabled and "开启" or "关闭"))
end)

DoorsTab:CreateButton("最强汉化", function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
end)

-- 6. 俄亥俄州选项卡
local OhioTab = Window:CreateTab('俄亥俄州', 'cash')

OhioTab:CreateButton("印钞机", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XTScripthub/Ohio/main/MoneyPrinterFinder"))()
end)

OhioTab:CreateButton("传送+工作", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()
end)

-- 7. 火箭发射选项卡
local RocketTab = Window:CreateTab('火箭发射', 'rocket')

RocketTab:CreateToggle("自动收集燃料", false, function(enabled)
    local isFuelScoopEnabled = enabled
    while isFuelScoopEnabled do
        wait()
        for i, h in pairs(player.Character:GetChildren()) do
            if h:IsA("Tool") and h.Name == "FuelScoop" then
                h:Activate()
            end
        end
        if not isFuelScoopEnabled then break end
    end
end)

RocketTab:CreateButton("传送岛屿", function()
    if player.Character then
        -- 多个岛屿传送点
        local islands = {
            ["发射台岛"] = CFrame.new(-123.16, 2.74, 3.49),
            ["白云岛"] = CFrame.new(-76.13, 170.56, -60.45),
            ["浮漂岛"] = CFrame.new(-66.52, 720.49, -5.39),
            -- 添加更多岛屿...
        }
        
        -- 这里可以创建下拉菜单选择岛屿
        player.Character.HumanoidRootPart.CFrame = islands["发射台岛"]
    end
end)

-- 8. 巴掌模拟器选项卡
local SlapTab = Window:CreateTab('巴掌模拟器', 'hand')

SlapTab:CreateToggle("无CD", false, function(enabled)
    if enabled then
        local tool = player.Character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
        if tool then
            -- 无CD实现...
            print("无CD已开启")
        end
    end
end)

SlapTab:CreateButton("自动刷巴掌", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()
end)

-- 9. 自然灾害选项卡
local DisasterTab = Window:CreateTab('自然灾害', 'weather')

DisasterTab:CreateToggle("自动农场", false, function(enabled)
    _G.autowinfarm = enabled
    while enabled do
        wait(.1)
        if _G.autowinfarm and player.Character then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-236, 180, 360, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
        if not enabled then break end
    end
end)

DisasterTab:CreateButton("黑洞脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/lililiugg/main/jm114514.lua"))()
end)

-- 10. 其他脚本选项卡
local OtherTab = Window:CreateTab('其他脚本', 'code')

OtherTab:CreateButton("北极脚本", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV",true))()
end)

OtherTab:CreateButton("导管中心", function()
    loadstring(game:HttpGet("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10"))()
end)

-- 11. 设置选项卡
local SettingsTab = Window:CreateTab('设置', 'gear')

SettingsTab:CreateToggle("显示时间标签", true, function(enabled)
    if enabled then
        CreateTimeLabel()
    else
        local gui = game.CoreGui:FindFirstChild("LBLG")
        if gui then
            gui:Destroy()
        end
    end
end)

SettingsTab:CreateKeybind("隐藏/显示UI", Enum.KeyCode.RightControl, function(key)
    -- 这里需要实现UI显示/隐藏功能
    print("隐藏/显示UI快捷键：" .. key.Name)
end)

SettingsTab:CreateButton("重载脚本", function()
    Window:Notify('系统', '重新加载脚本...', 2)
    wait(1)
    -- 这里可以重新加载脚本
end)

SettingsTab:CreateButton("卸载脚本", function()
    Window:Notify('系统', '正在卸载脚本...', 2)
    wait(1)
    -- 清除所有UI
    for _, gui in pairs(game.CoreGui:GetChildren()) do
        if gui.Name == "LBLG" or string.find(gui.Name, "GarryUI") then
            gui:Destroy()
        end
    end
end)

-- 初始化时间标签
CreateTimeLabel()

-- 窗口功能按钮
Window:CreateButton('time', false, function(enabled)
    if enabled then
        Window:Notify('时间设置', '切换到夜晚', 1.5)
        game:GetService('TweenService'):Create(game:GetService('Lighting'), TweenInfo.new(0.5), {ClockTime = 0}):Play()
    else
        Window:Notify('时间设置', '切换到白天', 1.5)
        game:GetService('TweenService'):Create(game:GetService('Lighting'), TweenInfo.new(0.5), {ClockTime = 14}):Play()
    end
end)

Window:CreateButton('fov', false, function(enabled)
    if enabled then
        Window:Notify('视野设置', '扩大视野', 1)
        game:GetService('TweenService'):Create(workspace.CurrentCamera, TweenInfo.new(0.5), {FieldOfView = 120}):Play()
    else
        Window:Notify('视野设置', '正常视野', 1)
        game:GetService('TweenService'):Create(workspace.CurrentCamera, TweenInfo.new(0.5), {FieldOfView = 70}):Play()
    end
end)

print("XS HUB V4 已加载完成！")