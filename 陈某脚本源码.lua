--    祈求上天再爱小帅一次
--    TNINE HUB Script
--    DM 
local Env = getfenv()
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/finendss/FIN-Ui/refs/heads/main/FIN-WindUi"))()
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Lighting = game:GetService("Lighting")
local CurrentCamera = workspace.CurrentCamera

local infiniteJumpConnection = nil
local antiFlingConnection = nil
local nightVisionConnection = nil
local aimConnection = nil

WindUI:Popup({
    Icon = "sparkles",
    Content = "尊敬的：" .. LocalPlayer.Name,
    Title = "ui",
    Buttons = {
        {
            Callback = function()
                print("启动ui")
            end,
            Icon = "arrow-right",
            Title = "启动ui",
            Variant = "Primary",
        },
    },
})

local Window = WindUI:CreateWindow({
    IconTransparency = 0.5,
    User = {
        Enabled = true,
        Callback = function()
            print("clicked")
        end,
        Anonymous = false,
    },
    ScrollBarEnabled = true,
    Author = "FIN Ui",
    IconThemed = true,
    SideBarWidth = 200,
    Folder = "CloudHub",
    Transparency = 0,
    Title = "帅脚本TNINE HUB Script",
    Transparent = true,
    Theme = "Light",
    Background = "",
    Icon = "rbxassetid://87993484945894",
    Size = UDim2.fromOffset(400, 300),
})

local TimeTag = Window:Tag({
    Title = "00:00",
    Color = Color3.fromHex("#30ff6a"),
})

task.spawn(function()
    while true do
        for i = 0, 100 do
            local hue = i / 100
            TimeTag:SetColor(Color3.fromHSV(hue, 1, 1))
            TimeTag:SetTitle(os.date("%H:%M"))
            task.wait(0.06)
        end
    end
end)

Window:Tag({
    Title = "倒卖死马😡",
    Color = Color3.fromHex("#315dff"),
})

Window:Tag({
    Title = "帅脚本",
    Color = Color3.fromHex("#000000"),
})

task.wait(0.3)

Window:EditOpenButton({
    StrokeThickness = 2,
    Title = "帅脚本",
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromHex("FF0000")),
        ColorSequenceKeypoint.new(0.66, Color3.fromHex("0000FF")),
        ColorSequenceKeypoint.new(0.83, Color3.fromHex("4B0082")),
        ColorSequenceKeypoint.new(1, Color3.fromHex("9400D3")),
    }),
})

task.wait(0.2)

local Tab1 = Window:Tab({
    Locked = false,
    Title = "标签页",
    Icon = "zap",
})

Tab1:Paragraph({
    Title = "输入文本",
    Desc = "输入文本",
})

Tab1:Paragraph({
    Title = "qq群",
    Buttons = {
        {
            Callback = function()
                Env.setclipboard("5555555")
                WindUI:Notify({
                    Duration = 2,
                    Title = "已复制",
                    Content = "已复制到剪贴板",
                })
            end,
            Icon = "copy",
            Title = "复制qq群",
            Variant = "Tertiary",
        },
    },
    Color = "Grey",
    ImageSize = 20,
    Desc = "QQ群",
})

local Tab2 = Window:Tab({
    Locked = false,
    Title = "通用内容",
    Icon = "drama",
})

local Section1 = Tab2:Section({
    Locked = false,
    Title = "角色控制",
    Desc = "角色相关控制功能",
})

Section1:Toggle({
    Value = false,
    Callback = function(value)
        if value then
            WindUI:Notify({
                Title = "功能已启用",
                Color = Color3.fromHex("#30ff6a"),
                Duration = 2,
                Content = "无限跳跃已开启，空中可连续跳跃",
                Icon = "check-circle",
            })
            infiniteJumpConnection = UserInputService.JumpRequest:Connect(function()
                pcall(function()
                    local character = LocalPlayer.Character
                    if character then
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        if humanoid and humanoid.Health > 0 then
                            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end
                end)
            end)
        else
            if infiniteJumpConnection then
                infiniteJumpConnection:Disconnect()
                infiniteJumpConnection = nil
            end
            WindUI:Notify({
                Title = "功能已禁用",
                Duration = 2,
                Content = "无限跳跃已关闭",
                Icon = "x-circle",
            })
        end
    end,
    Title = "启用无限跳跃『可开关』",
    Desc = "开启后可空中连续跳跃",
})

Section1:Slider({
    Title = "人物速度",
    Value = {
        Min = 16,
        Default = 16,
        Max = 400,
    },
    Callback = function(value)
        local character = LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = value
            end
        end
    end,
    Step = 1,
    Desc = "调节角色移动速度",
})

Section1:Slider({
    Title = "重力设置",
    Value = {
        Min = 1,
        Default = workspace.Gravity,
        Max = 500,
    },
    Callback = function(value)
        workspace.Gravity = tonumber(value)
    end,
    Step = 1,
    Desc = "调节世界重力大小",
})

Section1:Toggle({
    Value = false,
    Callback = function(value)
        if value then
            local lastVelocity = Vector3.new()
            antiFlingConnection = RunService.Stepped:Connect(function()
                local character = LocalPlayer.Character
                if character then
                    local hrp = character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local currentVelocity = hrp.Velocity
                        if (currentVelocity - lastVelocity).Magnitude > 100 then
                            hrp.Velocity = lastVelocity
                        else
                            lastVelocity = currentVelocity
                        end
                    end
                end
            end)
            WindUI:Notify({
                Title = "功能已启用",
                Duration = 2,
                Content = "防甩飞已开启",
                Icon = "check-circle",
            })
        else
            if antiFlingConnection then
                antiFlingConnection:Disconnect()
                antiFlingConnection = nil
            end
            WindUI:Notify({
                Title = "功能已禁用",
                Duration = 2,
                Content = "防甩飞已关闭",
                Icon = "x-circle",
            })
        end
    end,
    Title = "防甩飞",
    Desc = "别跟和甩飞同时开",
})

local Section2 = Tab2:Section({
    Locked = false,
    Title = "视觉设置",
    Desc = "画面和视觉相关功能",
})

Section2:Slider({
    Value = {
        Min = 70,
        Default = 70,
        Max = 120,
    },
    Increment = 1,
    Title = "广角",
    Callback = function(value)
        CurrentCamera.FieldOfView = value
    end,
})

Section2:Toggle({
    Value = false,
    Callback = function(value)
        if value then
            Lighting.Ambient = Color3.new(1, 1, 1)
            Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
            Lighting.ColorShift_Top = Color3.new(1, 1, 1)
            Lighting.Brightness = 2
            Lighting.ClockTime = 14
            Lighting.FogEnd = 100000
            Lighting.GlobalShadows = false
            Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
            
            nightVisionConnection = RunService.RenderStepped:Connect(function()
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("BasePart") then
                        if not v.Parent:FindFirstChild("Humanoid") then
                            v.Material = Enum.Material.Neon
                        end
                    end
                end
            end)
            
            WindUI:Notify({
                Title = "功能已启用",
                Duration = 2,
                Content = "夜视功能已开启",
                Icon = "check-circle",
            })
        else
            if nightVisionConnection then
                nightVisionConnection:Disconnect()
                nightVisionConnection = nil
            end
            WindUI:Notify({
                Title = "功能已禁用",
                Duration = 2,
                Content = "夜视功能已关闭",
                Icon = "x-circle",
            })
        end
    end,
    Title = "夜视功能",
    Desc = "执行夜视功能",
})

local Section3 = Tab2:Section({
    Locked = false,
    Title = "脚本功能",
    Desc = "各种脚本功能",
})

Section3:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "反挂机v2功能加载成功",
        })
    end,
    Title = "反挂机v2",
    Desc = "启用反挂机v2功能",
})

Section3:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "全图甩飞功能加载成功",
        })
    end,
    Title = "全图甩飞",
    Desc = "启用全图甩飞功能",
})

Section3:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/21sd/HanHud/2d7fd987b5a2f0bdfe10eaf8c8d19f57e520be7a/SY.lua"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "飞行功能加载成功",
        })
    end,
    Title = "SY飞行",
    Desc = "启用SY飞行功能",
})

local Section4 = Tab2:Section({
    Locked = false,
    Title = "帅脚本",
    Desc = "帅脚本相关功能",
})

Section4:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/qazwsx422/Je/main/%E9%99%88%E6%9F%90%E8%84%9A%E6%9C%AC", true))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "帅脚本老版功能加载成功",
        })
    end,
    Title = "帅脚本老版",
    Desc = "加载帅脚本老版本功能",
})

local Section5 = Tab2:Section({
    Locked = false,
    Title = "无敌少侠r15脚本",
    Desc = "无敌少侠r15脚本相关功能",
})

Section5:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "无敌少侠r15脚本功能加载成功",
        })
    end,
    Title = "无敌少侠r15脚本",
    Desc = "加载无敌少侠r15脚本功能",
})

local Tab3 = Window:Tab({
    Locked = false,
    Title = "缝合脚本",
    Icon = "drama",
})

local Section6 = Tab3:Section({
    Locked = false,
    Title = "wx脚本",
    Desc = "wx脚本相关功能",
})

Section6:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/youyu665/WX-HUB/refs/heads/main/WX.lua"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "wx脚本功能加载成功",
        })
    end,
    Title = "wx脚本",
    Desc = "加载wx脚本本功能",
})

local Section7 = Tab3:Section({
    Locked = false,
    Title = "XK Hub脚本",
    Desc = "XK Hub脚本相关功能",
})

Section7:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-XK-Hub-76803"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "XK Hub脚本功能加载成功",
        })
    end,
    Title = "XK Hub脚本",
    Desc = "加载XK Hub脚本本功能",
})

local Section8 = Tab3:Section({
    Locked = false,
    Title = "刘某脚本",
    Desc = "刘某脚本相关功能",
})

Section8:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/liuliuqiang404-code/6/refs/heads/main/刘某脚本加载器,"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "刘某脚本功能加载成功",
        })
    end,
    Title = "刘某脚本",
    Desc = "加载刘某脚本功能",
})

local Section9 = Tab3:Section({
    Locked = false,
    Title = "神秘脚本",
    Desc = "神秘脚本相关功能",
})

Section9:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Up3P2KBp"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "神秘脚本功能加载成功",
        })
    end,
    Title = "神秘脚本",
    Desc = "加载神秘脚本功能",
})

local Section10 = Tab3:Section({
    Locked = false,
    Title = "kg枪战脚本",
    Desc = "kg枪战脚本相关功能",
})

Section10:Button({
    Locked = false,
    Callback = function()
        Env.KG_SCRIPT = "张硕制作"
        local requestFunc = request or http_request or syn.request or http.request
        if requestFunc then
            local response = requestFunc({
                Url = "https://raw.githubusercontent.com/某个链接/kg.lua",
                Method = "GET"
            })
            if response and response.Body then
                loadstring(response.Body)()
            end
        end
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "kg枪战脚本功能加载成功",
        })
    end,
    Title = "kg枪战脚本",
    Desc = "加载kg枪战脚本功能",
})

local Section11 = Tab3:Section({
    Locked = false,
    Title = "tx脚本",
    Desc = "tx脚本相关功能",
})

Section11:Button({
    Locked = false,
    Callback = function()
        Env.TX = "脚本群:160369111"
        Env.Script = "Free永久免费"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/TX-Free-YYDS/refs/heads/main/FREE-TX-TEAM"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "tx脚本功能加载成功",
        })
    end,
    Title = "tx脚本",
    Desc = "加载tx脚本功能",
})

local Tab4 = Window:Tab({
    Locked = false,
    Title = "99夜",
    Icon = "drama",
})

local Section12 = Tab4:Section({
    Locked = false,
    Title = "99夜汉化脚本",
    Desc = "99夜汉化脚本相关功能",
})

Section12:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/99%E5%A4%9C%E8%99%9A%E7%A9%BA.txt"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "99夜汉化脚本功能加载成功",
        })
    end,
    Title = "99夜汉化脚本",
    Desc = "加载99夜汉化脚本功能",
})

local Section13 = Tab4:Section({
    Locked = false,
    Title = "XK Hub 99夜脚本",
    Desc = "XK Hub 99夜脚本相关功能",
})

Section13:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://github.com/DevSloPo/Main/raw/main/99day"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "XK Hub 99夜脚本功能加载成功",
        })
    end,
    Title = "XK Hub 夜脚本",
    Desc = "加载XK Hub 99夜脚本功能",
})

local Tab5 = Window:Tab({
    Locked = false,
    Title = "被遗弃",
    Icon = "drama",
})

local Section14 = Tab5:Section({
    Locked = false,
    Title = "XK Hub被遗弃脚本",
    Desc = "xk hub被遗弃脚本相关功能",
})

Section14:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://github.com/DevSloPo/Main/raw/main/Forsaken"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "xk hub被遗弃脚本功能加载成功",
        })
    end,
    Title = "xk hub被遗弃脚本",
    Desc = "加载xk hub被遗弃脚本功能",
})

local Tab6 = Window:Tab({
    Locked = false,
    Title = "fe脚本",
    Icon = "drama",
})

local Section15 = Tab6:Section({
    Locked = false,
    Title = "被遗弃fe脚本",
    Desc = "被遗弃fe脚本相关功能",
})

Section15:Button({
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CyberNinja103/brodwa/refs/heads/main/ForsakationHub"))()
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "fe被遗弃脚本功能加载成功",
        })
    end,
    Title = "被遗弃fe脚本",
    Desc = "被遗弃fe脚本本功能",
})

local Tab7 = Window:Tab({
    Locked = false,
    Title = "帅枪战功能",
    Icon = "drama",
})

local Section16 = Tab7:Section({
    Locked = false,
    Title = "帅自瞄脚本",
    Desc = "帅自瞄脚本相关功能",
})

Section16:Button({
    Locked = false,
    Callback = function()
        local aimbotEnabled = true
        local aimRadius = 75
        
        local aimCircle = Drawing.new("Circle")
        aimCircle.Visible = true
        aimCircle.Thickness = 2
        aimCircle.Color = Color3.fromRGB(0, 0, 0)
        aimCircle.Filled = false
        aimCircle.Radius = aimRadius
        aimCircle.Position = CurrentCamera.ViewportSize / 2
        
        local inputConnection
        inputConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if input.KeyCode == Enum.KeyCode.Delete then
                aimbotEnabled = false
                aimCircle.Visible = false
                if aimConnection then
                    aimConnection:Disconnect()
                end
                if inputConnection then
                    inputConnection:Disconnect()
                end
            end
        end)
        
        aimConnection = RunService.RenderStepped:Connect(function()
            if not aimbotEnabled then return end
            
            aimCircle.Position = CurrentCamera.ViewportSize / 2
            
            local closestPlayer = nil
            local closestDistance = math.huge
            local screenCenter = CurrentCamera.ViewportSize / 2
            
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    local character = player.Character
                    if character then
                        local head = character:FindFirstChild("Head")
                        if head then
                            local screenPos, onScreen = CurrentCamera:WorldToViewportPoint(head.Position)
                            if onScreen then
                                local screenPoint = Vector2.new(screenPos.X, screenPos.Y)
                                local distance = (screenPoint - screenCenter).Magnitude
                                
                                if distance < aimRadius and distance < closestDistance then
                                    closestDistance = distance
                                    closestPlayer = player
                                end
                            end
                        end
                    end
                end
            end
            
            if closestPlayer and closestPlayer.Character then
                local head = closestPlayer.Character:FindFirstChild("Head")
                if head then
                    local camera = CurrentCamera
                    camera.CFrame = CFrame.new(camera.CFrame.Position, head.Position)
                end
            end
        end)
        
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "帅枪战自瞄脚本功能加载成功",
        })
    end,
    Title = "帅自瞄脚本",
    Desc = "加载帅自瞄脚本功能",
})

local Section17 = Tab7:Section({
    Locked = false,
    Title = "帅透视脚本",
    Desc = "帅透视脚本相关功能",
})

Section17:Button({
    Locked = false,
    Callback = function()
        local ScreenGui = Instance.new("ScreenGui")
        local MainFrame = Instance.new("Frame")
        local TitleLabel = Instance.new("TextLabel")
        local AuthorLabel = Instance.new("TextLabel")
        local AimbotButton = Instance.new("TextButton")
        local ESPButton = Instance.new("TextButton")
        
        ScreenGui.Parent = game.CoreGui
        
        MainFrame.Parent = ScreenGui
        MainFrame.Active = true
        MainFrame.BackgroundColor3 = Color3.new(0.666667, 0, 0)
        MainFrame.BackgroundTransparency = 0.5
        MainFrame.Draggable = true
        MainFrame.Position = UDim2.new(0, 460, 0, 370)
        MainFrame.Size = UDim2.new(0, 240, 0, 250)
        
        TitleLabel.Parent = MainFrame
        TitleLabel.BackgroundColor3 = Color3.new(1, 1, 1)
        TitleLabel.BackgroundTransparency = 3
        TitleLabel.Position = UDim2.new(0, 0, 0, 20)
        TitleLabel.Size = UDim2.new(0, 240, 0, 60)
        TitleLabel.Font = Enum.Font.SciFi
        TitleLabel.Text = "Vietnam GUI v1.0"
        TitleLabel.TextColor3 = Color3.new(1, 0, 0)
        TitleLabel.TextScaled = true
        TitleLabel.TextSize = 14
        TitleLabel.TextWrapped = true
        
        AuthorLabel.Parent = MainFrame
        AuthorLabel.BackgroundColor3 = Color3.new(1, 1, 1)
        AuthorLabel.BackgroundTransparency = 3
        AuthorLabel.Position = UDim2.new(0, 0, 0, 180)
        AuthorLabel.Size = UDim2.new(0, 240, 0, 80)
        AuthorLabel.Font = Enum.Font.SciFi
        AuthorLabel.Text = "Made By Silent"
        AuthorLabel.TextColor3 = Color3.new(0, 1, 0)
        AuthorLabel.TextScaled = true
        AuthorLabel.TextSize = 14
        AuthorLabel.TextWrapped = true
        
        AimbotButton.Parent = MainFrame
        AimbotButton.BackgroundColor3 = Color3.new(0.333333, 0, 0)
        AimbotButton.BackgroundTransparency = 0.4
        AimbotButton.Position = UDim2.new(0, 0, 0, 80)
        AimbotButton.Size = UDim2.new(0, 240, 0, 50)
        AimbotButton.Font = Enum.Font.Highway
        AimbotButton.Text = "Aimbot"
        AimbotButton.TextColor3 = Color3.new(1, 0, 0)
        AimbotButton.TextScaled = true
        AimbotButton.TextSize = 24
        AimbotButton.TextWrapped = true
        
        AimbotButton.MouseButton1Click:Connect(function()
            local objects = game:GetObjects("rbxassetid://574594561")
            if objects[1] then
                local source = objects[1].Source
                loadstring(source)()
            end
        end)
        
        ESPButton.Parent = MainFrame
        ESPButton.BackgroundColor3 = Color3.new(0.333333, 0, 0)
        ESPButton.BackgroundTransparency = 0.4
        ESPButton.Position = UDim2.new(0, 0, 0, 130)
        ESPButton.Size = UDim2.new(0, 240, 0, 50)
        ESPButton.Font = Enum.Font.Highway
        ESPButton.Text = "ESP"
        ESPButton.TextColor3 = Color3.new(1, 0, 0)
        ESPButton.TextScaled = true
        ESPButton.TextSize = 24
        ESPButton.TextWrapped = true
        
        ESPButton.MouseButton1Click:Connect(function()
            Env.trans = 0.5
            warn("....................................................................................")
            print("                                ESP loaded. Enjoy!")
            warn("....................................................................................")
            
            local function applyESP()
                for _, player in pairs(Players:GetChildren()) do
                    if player ~= LocalPlayer then
                        local character = player.Character
                        if character then
                            for _, part in pairs(character:GetChildren()) do
                                if (part.ClassName == "MeshPart" or part.ClassName == "Part") and part.Name ~= "HumanoidRootPart" then
                                    local faces = {
                                        Enum.NormalId.Back,
                                        Enum.NormalId.Bottom,
                                        Enum.NormalId.Front,
                                        Enum.NormalId.Left,
                                        Enum.NormalId.Right,
                                        Enum.NormalId.Top
                                    }
                                    
                                    for _, face in pairs(faces) do
                                                                                local surfaceGui = Instance.new("SurfaceGui")
                                        surfaceGui.Face = face
                                        surfaceGui.Parent = part
                                        surfaceGui.AlwaysOnTop = true
                                        
                                        local frame = Instance.new("Frame")
                                        frame.Size = UDim2.new(1, 0, 1, 0)
                                        frame.BackgroundColor3 = Color3.new(1, 0, 0)
                                        frame.BackgroundTransparency = Env.trans
                                        frame.BorderSizePixel = 0
                                        frame.Parent = surfaceGui
                                    end
                                end
                            end
                        end
                    end
                end
            end
            
            applyESP()
            
            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function()
                    task.wait(1)
                    applyESP()
                end)
            end)
            
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    player.CharacterAdded:Connect(function()
                        task.wait(1)
                        applyESP()
                    end)
                end
            end
        end)
        
        WindUI:Notify({
            Icon = "layout-grid",
            Duration = 3,
            Title = "通知",
            Content = "帅透视脚本功能加载成功",
        })
    end,
    Title = "帅透视脚本",
    Desc = "加载帅透视脚本功能",
})

local Tab8 = Window:Tab({
    Locked = false,
    Title = "设置",
    Icon = "settings",
})

local Section18 = Tab8:Section({
    Locked = false,
    Title = "界面设置",
    Desc = "界面相关设置",
})

Section18:Keybind({
    Title = "切换界面显示",
    Value = Enum.KeyCode.RightShift,
    Callback = function(key)
        Window:ToggleVisibility()
    end,
    Desc = "按键切换界面显示/隐藏",
})

Section18:Dropdown({
    Title = "主题选择",
    Values = {"Dark", "Light", "Aqua", "Amethyst"},
    Value = "Light",
    Callback = function(value)
        WindUI:SetTheme(value)
        WindUI:Notify({
            Icon = "palette",
            Duration = 2,
            Title = "主题已更改",
            Content = "当前主题: " .. value,
        })
    end,
    Desc = "选择界面主题",
})

Section18:Toggle({
    Value = true,
    Callback = function(value)
        Window:SetTransparency(value and 0.5 or 0)
    end,
    Title = "界面透明",
    Desc = "启用/禁用界面透明效果",
})

local Section19 = Tab8:Section({
    Locked = false,
    Title = "脚本信息",
    Desc = "关于本脚本的信息",
})

Section19:Paragraph({
    Title = "脚本信息",
    Desc = "帅脚本 - TNINE HUB Script\n版本: v2.0\n作者: 帅\nQQ群: ",
})

Section19:Button({
    Locked = false,
    Callback = function()
        for _, connection in pairs({infiniteJumpConnection, antiFlingConnection, nightVisionConnection, aimConnection}) do
            if connection then
                pcall(function()
                    connection:Disconnect()
                end)
            end
        end
        
        WindUI:Notify({
            Icon = "check-circle",
            Duration = 2,
            Title = "清理完成",
            Content = "所有连接已断开",
        })
    end,
    Title = "清理连接",
    Desc = "断开所有脚本创建的连接",
})

Section19:Button({
    Locked = false,
    Callback = function()
        WindUI:Notify({
            Icon = "alert-triangle",
            Duration = 3,
            Title = "警告",
            Content = "即将销毁界面...",
        })
        task.wait(1)
        Window:Destroy()
    end,
    Title = "销毁界面",
    Desc = "完全销毁脚本界面",
})

-- 自动通知加载完成
task.wait(0.5)
WindUI:Notify({
    Icon = "check-circle",
    Duration = 5,
    Title = "加载完成",
    Content = "帅脚本TNINE HUB Script 已成功加载！\n按右Shift键切换界面显示",
    Color = Color3.fromHex("#30ff6a"),
})

-- 防止脚本被多次执行
if Env._CHEN_SCRIPT_LOADED then
    WindUI:Notify({
        Icon = "alert-triangle",
        Duration = 3,
        Title = "警告",
        Content = "脚本已经加载过了，请勿重复执行！",
    })
else
    Env._CHEN_SCRIPT_LOADED = true
end