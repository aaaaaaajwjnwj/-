local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/KingScriptAE/No-sirve-nada./refs/heads/main/main.lua"))()

function gradient(text, startColor, endColor)
    local result = ""
    local chars = {}
    
    for uchar in text:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
        table.insert(chars, uchar)
    end
    
    local length = #chars
    
    for i = 1, length do
        local t = (i - 1) / math.max(length - 1, 1)
        local r = startColor.R + (endColor.R - startColor.R) * t
        local g = startColor.G + (endColor.G - startColor.G) * t
        local b = startColor.B + (endColor.B - startColor.B) * t
        
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', 
            math.floor(r * 255), 
            math.floor(g * 255), 
            math.floor(b * 255), 
            chars[i])
    end
    
    return result
end

-- 创建FPS显示器
local LBLG = Instance.new("ScreenGui")
local LBL = Instance.new("TextLabel")
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true

LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = {}

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end

Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

-- 显示启动通知
game:GetService("StarterGui"):SetCore("SendNotification",{ 
    Title = "XS HUB脚本中心V4", 
    Text = "启动中", 
    Duration = 2 
})

game:GetService("StarterGui"):SetCore("SendNotification",{ 
    Title = "正在加载", 
    Text = "启动完毕", 
    Duration = 4 
})

-- 创建主窗口
local Window = WindUI:CreateWindow({
    Title = gradient("XS HUB V4", Color3.fromHex("#FF0000"), Color3.fromHex("#FFFF00")), 
    Author = gradient("作者：XS HUB | QQ群:1015159552", Color3.fromHex("#00FFAA"), Color3.fromHex("#00AAFF")),
    Icon = "rbxassetid://129260712070622",
    IconThemed = true,
    Folder = "XS Hub V4",
    Size = UDim2.fromOffset(500, 600),
    Transparent = false,
    Theme = "Dark",
    SideBarWidth = 220,
    HideSearchBar = false,
    ScrollBarEnabled = true,
    BackgroundColor = Color3.fromHex("#1a1a2e")
})

Window:EditOpenButton({
    Title = "打开XS HUB",
    Icon = "zap",
    CornerRadius = UDim.new(0, 12),
    StrokeThickness = 3,
    Color = ColorSequence.new(
        Color3.fromHex("#FF0000"),
        Color3.fromHex("#FF9900")
    ),
    Draggable = true,
})

-- 创建选项卡
local Tabs = {
    InfoTab = Window:Tab({ 
        Title = gradient("『信息』", Color3.fromHex("#00FF00"), Color3.fromHex("#00AAFF")), 
        Icon = "info" 
    }),
    GeneralTab = Window:Tab({ 
        Title = gradient("『通用』", Color3.fromHex("#FF0000"), Color3.fromHex("#FF9900")), 
        Icon = "zap" 
    }),
    PowerLegendTab = Window:Tab({ 
        Title = gradient("『力量传奇』", Color3.fromHex("#FFAA00"), Color3.fromHex("#FF5500")), 
        Icon = "dumbbell" 
    }),
    NinjaTab = Window:Tab({ 
        Title = gradient("『忍者传奇』", Color3.fromHex("#00AAFF"), Color3.fromHex("#0088FF")), 
        Icon = "swords" 
    }),
    DoorsTab = Window:Tab({ 
        Title = gradient("『DOORS』", Color3.fromHex("#AA00FF"), Color3.fromHex("#FF00AA")), 
        Icon = "door-open" 
    }),
    OhioTab = Window:Tab({ 
        Title = gradient("『俄亥俄州』", Color3.fromHex("#FF0000"), Color3.fromHex("#00FF00")), 
        Icon = "map-pin" 
    }),
    OthersTab = Window:Tab({ 
        Title = gradient("『其他脚本』", Color3.fromHex("#FFFFFF"), Color3.fromHex("#888888")), 
        Icon = "codesandbox" 
    })
}

-- 信息选项卡
Tabs.InfoTab:Section({Title = gradient("作者信息", Color3.fromHex("#00FF00"), Color3.fromHex("#00AAFF"))})
Tabs.InfoTab:Paragraph({
    Title = "XS HUB V4",
    Desc = "作者：XS HUB\nQQ群：1015159552\n师附\n感谢使用",
    Image = "rbxassetid://7734068321",
    ImageSize = 60,
    ThumbnailSize = 100
})

Tabs.InfoTab:Section({Title = gradient("玩家信息", Color3.fromHex("#00AAFF"), Color3.fromHex("#0088FF"))})
Tabs.InfoTab:Label({
    Title = "服务器ID："..game.GameId
})

Tabs.InfoTab:Section({Title = gradient("公告", Color3.fromHex("#FF0000"), Color3.fromHex("#FF9900"))})
Tabs.InfoTab:Label({
    Title = "感谢支持XS HUB的人"
})
Tabs.InfoTab:Label({
    Title = "已修复完bug"
})

-- 通用选项卡
Tabs.GeneralTab:Section({Title = gradient("通用功能", Color3.fromHex("#FF0000"), Color3.fromHex("#FF9900"))})
Tabs.GeneralTab:Button({
    Title = "玩家加入游戏提示",
    Icon = "users",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
    end
})

Tabs.GeneralTab:Button({
    Title = "获得管理员权限",
    Icon = "shield",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
    end
})

Tabs.GeneralTab:Button({
    Title = "死亡笔记",
    Icon = "book",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
    end
})

Tabs.GeneralTab:Button({
    Title = "飞行",
    Icon = "wind",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
    end
})

Tabs.GeneralTab:Button({
    Title = "透视",
    Icon = "eye",
    Callback = function()
        _G.FriendColor = Color3.fromRGB(0, 0, 255)
        local function ApplyESP(v)
            if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
                v.Character.Humanoid.NameDisplayDistance = 9e9
                v.Character.Humanoid.NameOcclusion = "NoOcclusion"
                v.Character.Humanoid.HealthDisplayDistance = 9e9
                v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
                v.Character.Humanoid.Health = v.Character.Humanoid.Health
            end
        end
        
        for i,v in pairs(game.Players:GetPlayers()) do
            ApplyESP(v)
            v.CharacterAdded:Connect(function()
                task.wait(0.33)
                ApplyESP(v)
            end)
        end
        
        game.Players.PlayerAdded:Connect(function(v)
            ApplyESP(v)
            v.CharacterAdded:Connect(function()
                task.wait(0.33)
                ApplyESP(v)
            end)
        end)
    end
})

Tabs.GeneralTab:Toggle({
    Title = "夜视",
    Icon = "moon",
    Value = false,
    Callback = function(Value)
        if Value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end
})

Tabs.GeneralTab:Toggle({
    Title = "自动互动",
    Icon = "hand",
    Value = false,
    Callback = function(state)
        if state then
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
    end
})

Tabs.GeneralTab:Toggle({
    Title = "无限跳",
    Icon = "skip-forward",
    Value = false,
    Callback = function(Value)
        Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    end
})

Tabs.GeneralTab:Slider({
    Title = "步行速度",
    Icon = "gauge",
    Value = {Min = 16, Max = 400, Default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed},
    Callback = function(Speed)
        spawn(function() 
            while task.wait() do 
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed 
            end 
        end)
    end
})

Tabs.GeneralTab:Slider({
    Title = "跳跃高度",
    Icon = "chevrons-up",
    Value = {Min = 50, Max = 400, Default = game.Players.LocalPlayer.Character.Humanoid.JumpPower},
    Callback = function(Jump)
        spawn(function() 
            while task.wait() do 
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump 
            end 
        end)
    end
})

Tabs.GeneralTab:Slider({
    Title = "重力设置",
    Icon = "arrow-down-to-line",
    Value = {Min = 196.2, Max = 1000, Default = 196.2},
    Callback = function(Value)
        game.Workspace.Gravity = Value
    end
})

-- 力量传奇选项卡
Tabs.PowerLegendTab:Section({Title = gradient("力量传奇功能", Color3.fromHex("#FFAA00"), Color3.fromHex("#FF5500"))})
Tabs.PowerLegendTab:Toggle({
    Title = "自动比赛开关",
    Icon = "trophy",
    Value = false,
    Callback = function(AR)
        while AR do 
            wait() 
            wait(2) 
            game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl") 
        end
    end
})

Tabs.PowerLegendTab:Toggle({
    Title = "自动举哑铃",
    Icon = "weight",
    Value = false,
    Callback = function(ATYL)
        local part = Instance.new('Part', workspace) 
        part.Size = Vector3.new(500, 20, 530.1) 
        part.Position = Vector3.new(0, 100000, 133.15) 
        part.CanCollide = true 
        part.Anchored = true 
        while ATYL do 
            wait() 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) 
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                if v.ClassName == "Tool" and v.Name == "Weight" then 
                    v.Parent = game.Players.LocalPlayer.Character 
                end 
            end 
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") 
        end
    end
})

Tabs.PowerLegendTab:Toggle({
    Title = "自动重生",
    Icon = "refresh-cw",
    Value = false,
    Callback = function(ATRE)
        while ATRE do 
            wait() 
            game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest") 
        end
    end
})

Tabs.PowerLegendTab:Button({
    Title = "收集宝石",
    Icon = "gem",
    Callback = function()
        jk = {} 
        for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do 
            if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then 
                table.insert(jk, v.Name) 
            end 
        end 
        for i = 1, #jk do 
            wait(2) 
            game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i]) 
        end
    end
})

Tabs.PowerLegendTab:Section({Title = gradient("传送功能", Color3.fromHex("#FF5500"), Color3.fromHex("#AA0000"))})
Tabs.PowerLegendTab:Button({
    Title = "传送到出生点",
    Icon = "home",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
    end
})

Tabs.PowerLegendTab:Button({
    Title = "传送到安全岛",
    Icon = "shield",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
    end
})

Tabs.PowerLegendTab:Button({
    Title = "传送到幸运抽奖区域",
    Icon = "dice-5",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
    end
})

-- 忍者传奇选项卡
Tabs.NinjaTab:Section({Title = gradient("忍者传奇脚本", Color3.fromHex("#00AAFF"), Color3.fromHex("#0088FF"))})
Tabs.NinjaTab:Button({
    Title = "忍者传奇1",
    Icon = "ninja",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
    end
})

Tabs.NinjaTab:Button({
    Title = "忍者传奇2",
    Icon = "sword",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatBlueDevil/Bleus/main/Ninja%20Legends/Source.lua"))()
    end
})

-- DOORS选项卡
Tabs.DoorsTab:Section({Title = gradient("DOORS功能", Color3.fromHex("#AA00FF"), Color3.fromHex("#FF00AA"))})
Tabs.DoorsTab:Toggle({
    Title = "刷新时通知",
    Icon = "bell",
    Value = false,
    Callback = function(TZ)
        _G.IE = (TZ and true or false) 
        LatestRoom.Changed:Connect(function() 
            if _G.IE == true then 
                local n = ChaseStart.Value - LatestRoom.Value 
                if 0 < n and n < 4 then 
                    game:GetService("StarterGui"):SetCore("SendNotification",{
                        Title = "请注意",
                        Text = "事件可能刷新于" .. tostring(n) .. "房间",
                        Duration = 3
                    })
                end 
            end 
        end) 
        workspace.ChildAdded:Connect(function(inst) 
            if inst.Name == "RushMoving" and _G.IE == true then 
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "请注意",
                    Text = "Rush已刷新",
                    Duration = 3
                })
            elseif inst.Name == "AmbushMoving" and _G.IE == true then 
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "请注意",
                    Text = "Ambush已刷新",
                    Duration = 3
                })
            end 
        end)
    end
})

Tabs.DoorsTab:Toggle({
    Title = "自动躲避Rush/Ambush",
    Icon = "shield",
    Value = false,
    Callback = function(ADB)
        _G.Avoid = (ADB and true or false) 
        workspace.ChildAdded:Connect(function(inst) 
            if inst.Name == "RushMoving" and _G.Avoid == true then 
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 
                local con = game:GetService("RunService").Heartbeat:Connect(function() 
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0)) 
                end) 
                inst.Destroying:Wait() 
                con:Disconnect() 
                game.Players.LocalPlayer.Character:MoveTo(OldPos) 
            elseif inst.Name == "AmbushMoving" and _G.Avoid == true then 
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 
                local con = game:GetService("RunService").Heartbeat:Connect(function() 
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0)) 
                end) 
                inst.Destroying:Wait() 
                con:Disconnect() 
                game.Players.LocalPlayer.Character:MoveTo(OldPos) 
            end 
        end)
    end
})

Tabs.DoorsTab:Button({
    Title = "最强汉化版",
    Icon = "door-open",
    Callback = function()
        loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
    end
})

Tabs.DoorsTab:Button({
    Title = "最新版",
    Icon = "star",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
    end
})

-- 俄亥俄州选项卡
Tabs.OhioTab:Section({Title = gradient("俄亥俄州功能", Color3.fromHex("#FF0000"), Color3.fromHex("#00FF00"))})
Tabs.OhioTab:Button({
    Title = "印钞机",
    Icon = "printer",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XTScripthub/Ohio/main/MoneyPrinterFinder"))()
    end
})

Tabs.OhioTab:Button({
    Title = "杀戮光环",
    Icon = "skull",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/main/Games/Ohio"))()
    end
})

Tabs.OhioTab:Button({
    Title = "YFHUB修复版",
    Icon = "tool",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/nb/main/jm1051.lua"))()
    end
})

-- 其他脚本选项卡
Tabs.OthersTab:Section({Title = gradient("其他游戏脚本", Color3.fromHex("#FFFFFF"), Color3.fromHex("#888888"))})
Tabs.OthersTab:Button({
    Title = "BF海贼王",
    Icon = "ship",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Xiao-Yun-UWU/main/%E6%B5%B7%E8%B4%BC%E7%8E%8Bbf.lua", true))()
    end
})

Tabs.OthersTab:Button({
    Title = "巴掌模拟器",
    Icon = "hand",
    Callback = function()
        loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
    end
})

Tabs.OthersTab:Button({
    Title = "鲨口求生",
    Icon = "fish",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
    end
})

Tabs.OthersTab:Button({
    Title = "自然灾害模拟器",
    Icon = "tornado",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))()
    end
})

Tabs.OthersTab:Button({
    Title = "兵工厂",
    Icon = "gun",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/2YdrWHxV/raw"))()
    end
})

-- 颜色选择器
Tabs.GeneralTab:Section({Title = gradient("颜色设置", Color3.fromHex("#FF00FF"), Color3.fromHex("#00FFFF"))})
Tabs.GeneralTab:Colorpicker({
    Title = "透视颜色",
    Icon = "palette",
    Callback = function(color)
        _G.FriendColor = color
    end
})

-- 下拉选择器
Tabs.GeneralTab:Section({Title = gradient("游戏选择", Color3.fromHex("#00FF00"), Color3.fromHex("#0000FF"))})
Tabs.GeneralTab:Dropdown({
    Title = "选择游戏类型",
    Icon = "gamepad-2",
    Values = { "力量传奇", "忍者传奇", "DOORS", "俄亥俄州", "其他" },
    Value = { "力量传奇" },
    Multi = false,
    AllowNone = false,
    Callback = function(option)
        if option[1] == "力量传奇" then
            Window:SwitchTab(Tabs.PowerLegendTab)
        elseif option[1] == "忍者传奇" then
            Window:SwitchTab(Tabs.NinjaTab)
        elseif option[1] == "DOORS" then
            Window:SwitchTab(Tabs.DoorsTab)
        elseif option[1] == "俄亥俄州" then
            Window:SwitchTab(Tabs.OhioTab)
        else
            Window:SwitchTab(Tabs.OthersTab)
        end
    end
})