local WindUI = 
loadstring(game:HttpGet("https://raw.githubusercontent.com/ParKe001/ParKe/refs/heads/main/ui.lua"))()

local Window = WindUI:CreateWindow({
    Title = "XSRF HUB",
    Icon = "crown",
    IconThemed = false,
    Author = "Rowan",
    Folder = "雄狮",
    Size = UDim2.fromOffset(500, 390),
    Transparent = false,
    Theme = "Dark",
    User = { Enabled = true },
    SideBarWidth = 240,
    ScrollBarEnabled = true,
    HideSearchBar = false,
    StrokeThickness = 2,
    StrokeColor = ColorSequence.new(
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
})

Window:EditOpenButton({
    Title = "XSGB HUB",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 1,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

local Tabs = {
    A = Window:Tab({ Title = "主页", Icon = "" }),
    A2 = Window:Tab({ Title = "通用", Icon = "" }),
    A3 = Window:Tab({ Title = "力量传奇", Icon = "" }),
    A4 = Window:Tab({ Title = "FE", Icon = "" }),
    A5 = Window:Tab({ Title = "脚本中心", Icon = "" }),
    A6 = Window:Tab({ Title = "Doors", Icon = "" }),
    A7 = Window:Tab({ Title = "巴掌模拟器", Icon = "" }),
    A8 = Window:Tab({ Title = "犯罪", Icon = "" }),
    A9 = Window:Tab({ Title = "火箭发射", Icon = "" }),
    A10 = Window:Tab({ Title = "自然灾害", Icon = "" }),
    A11 = Window:Tab({ Title = "鲨口求生", Icon = "" }),
    A12 = Window:Tab({ Title = "监狱人生", Icon = "" }),
    A13 = Window:Tab({ Title = "BF", Icon = "" }),
    A14 = Window:Tab({ Title = "铲雪模拟器", Icon = "" }),
    A15 = Window:Tab({ Title = "河北唐县", Icon = "" }),
    A16 = Window:Tab({ Title = "巴掌模拟器2", Icon = "" }),
    A17 = Window:Tab({ Title = "奎尔湖", Icon = "" }),
    A18 = Window:Tab({ Title = "钓鱼模拟器", Icon = "" }),
}
Tabs.A:Paragraph({
    Title = "Rowan",
    Image = "https://raw.githubusercontent.com/ParKe001/ParKe/refs/heads/main/picture/shuai.jpg",
    ImageSize = 65
})
Tabs.A:Paragraph({
    Title = "QQ群1015159552",
})
Tabs.A:Paragraph({
    Title = "所在的服务器ID:"..game.GameId,
})
Tabs.A:Section({Title = "公告", Opened = true})
Tabs.A:Paragraph({
    Title = "感谢支持XS HUB的人\nParke牛逼",
})

Tabs.A2:Section({Title = "通用功能", Opened = true})
Tabs.A2:Button({
    Title = "透视",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIONPCE/raw/refs/heads/main/ESP.lua"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "网易云音乐",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("loadstring(game:HttpGet("https://tianscript.indevs.in/music"))()"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "飞行",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "第一人称自瞄",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Roblox-HttpSpy/Random-Silly-stuff/refs/heads/main/AimBotV2.lua"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "汉化穿墙",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "透视",
    Value = false,
    Callback = function()
        pcall(function()
            _G.FriendColor = Color3.fromRGB(0, 0, 255)
            local function ApplyESP(v)
                if v and v.Character and v.Character:FindFirstChildOfClass('Humanoid') then
                    v.Character.Humanoid.NameDisplayDistance = 9e9
                    v.Character.Humanoid.NameOcclusion = "NoOcclusion"
                    v.Character.Humanoid.HealthDisplayDistance = 9e9
                    v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
                    v.Character.Humanoid.Health = v.Character.Humanoid.Health
                end
            end
            
            for i,v in pairs(game.Players:GetPlayers()) do
                ApplyESP(v)
                if v then
                    v.CharacterAdded:Connect(function()
                        task.wait(0.33)
                        ApplyESP(v)
                    end)
                end
            end
            
            game.Players.PlayerAdded:Connect(function(v)
                ApplyESP(v)
                if v then
                    v.CharacterAdded:Connect(function()
                        task.wait(0.33)
                        ApplyESP(v)
                    end)
                end
            end)
            
            local Players = game:GetService("Players"):GetChildren()
            local RunService = game:GetService("RunService")
            local highlight = Instance.new("Highlight")
            highlight.Name = "Highlight"
            
            for i, v in pairs(Players) do
                pcall(function()
                    repeat task.wait() until v and v.Character
                    if v.Character:FindFirstChild("HumanoidRootPart") and not v.Character.HumanoidRootPart:FindFirstChild("Highlight") then
                        local highlightClone = highlight:Clone()
                        highlightClone.Adornee = v.Character
                        highlightClone.Parent = v.Character.HumanoidRootPart
                        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        highlightClone.Name = "Highlight"
                    end
                end)
            end
            
            game.Players.PlayerAdded:Connect(function(player)
                pcall(function()
                    repeat task.wait() until player and player.Character
                    if player.Character:FindFirstChild("HumanoidRootPart") and not player.Character.HumanoidRootPart:FindFirstChild("Highlight") then
                        local highlightClone = highlight:Clone()
                        highlightClone.Adornee = player.Character
                        highlightClone.Parent = player.Character.HumanoidRootPart
                        highlightClone.Name = "Highlight"
                    end
                end)
            end)
            
            game.Players.PlayerRemoving:Connect(function(playerRemoved)
                pcall(function()
                    if playerRemoved and playerRemoved.Character and playerRemoved.Character:FindFirstChild("HumanoidRootPart") and playerRemoved.Character.HumanoidRootPart:FindFirstChild("Highlight") then
                        playerRemoved.Character.HumanoidRootPart.Highlight:Destroy()
                    end
                end)
            end)
            
            RunService.Heartbeat:Connect(function()
                pcall(function()
                    for i, v in pairs(Players) do
                        if v and v.Character then
                            if v.Character:FindFirstChild("HumanoidRootPart") and not v.Character.HumanoidRootPart:FindFirstChild("Highlight") then
                                local highlightClone = highlight:Clone()
                                highlightClone.Adornee = v.Character
                                highlightClone.Parent = v.Character.HumanoidRootPart
                                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                highlightClone.Name = "Highlight"
                            end
                        end
                    end
                end)
            end)
        end)
    end
})
Tabs.A2:Toggle({
    Title = "夜视",
    Value = false,
    Callback = function(Value)
        pcall(function()
            if Value then
                game.Lighting.Ambient = Color3.new(1, 1, 1)
            else
                game.Lighting.Ambient = Color3.new(0, 0, 0)
            end
        end)
    end
})
Tabs.A2:Toggle({
    Title = "自动互动",
    Value = false,
    Callback = function(state)
        pcall(function()
            local autoInteract = state
            if state then
                task.spawn(function()
                    while autoInteract do
                        pcall(function()
                            for _, descendant in pairs(workspace:GetDescendants()) do
                                if descendant:IsA("ProximityPrompt") then
                                    fireproximityprompt(descendant)
                                end
                            end
                        end)
                        task.wait(0.25)
                    end
                end)
            end
        end)
    end
})
Tabs.A2:Toggle({
    Title = "连跳",
    Value = false,
    Callback = function(Value)
        pcall(function()
            local player = game.Players.LocalPlayer
            if player and player.Character then
                game.UserInputService.JumpRequest:Connect(function()
                    if Value and player.Character:FindFirstChild("Humanoid") then
                        player.Character.Humanoid:ChangeState("Jumping")
                    end
                end)
            end
        end)
    end
})
Tabs.A2:Slider({
    Title = "步行速度",
    Value = { Min = 16, Max = 400, Default = 16 },
    Callback = function(Speed)
        pcall(function()
            task.spawn(function()
                while task.wait() do
                    local char = game.Players.LocalPlayer.Character
                    if char and char:FindFirstChild("Humanoid") then
                        char.Humanoid.WalkSpeed = Speed
                    end
                end
            end)
        end)
    end
})
Tabs.A2:Slider({
    Title = "跳跃高度",
    Value = { Min = 50, Max = 400, Default = 50 },
    Callback = function(Jump)
        pcall(function()
            task.spawn(function()
                while task.wait() do
                    local char = game.Players.LocalPlayer.Character
                    if char and char:FindFirstChild("Humanoid") then
                        char.Humanoid.JumpPower = Jump
                    end
                end
            end)
        end)
    end
})
Tabs.A2:Slider({
    Title = "设置重力",
    Value = { Min = 196.2, Max = 1000, Default = 196.2 },
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while task.wait() do
                    game.Workspace.Gravity = Value
                end
            end)
        end)
    end
})
Tabs.A2:Button({
    Title = "甩人",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "替身",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
        end)
    end
})
Tabs.A2:Button({
    Title = "爬墙",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "XS HUB废版",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/DMHUB_%E6%BA%90.lua")))()
        end)
    end
})
Tabs.A2:Button({
    Title = "清云自瞄",
    Value = false,
    Callback = function()
        pcall(function()
            local fov = 100 
            local smoothness = 10 
            local crosshairDistance = 5 
            local RunService = game:GetService("RunService") 
            local UserInputService = game:GetService("UserInputService") 
            local Players = game:GetService("Players") 
            local Cam = game.Workspace.CurrentCamera 
            local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 
            local Player = Players.LocalPlayer 
            local PlayerGui = Player:WaitForChild("PlayerGui") 
            local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui 
            local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui 
            local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame 
            local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) 
            local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame 
            local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame 
            local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame 
            local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame 
            local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame 
            local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame 
            local targetCFrame = Cam.CFrame 
            local function updateDrawings() 
            local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end 
            local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) 
            local function getClosestPlayerInFOV(trg_part) 
            local nearest = nil local last = math.huge 
            local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then 
            local part = player.Character and player.Character:FindFirstChild(trg_part) if part then 
            local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) 
            local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() 
            local closest = getClosestPlayerInFOV("Head") if closest and closest.Character and closest.Character:FindFirstChild("Head") then 
            local targetCharacter = closest.Character 
            local targetHead = targetCharacter.Head 
            local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") 
            local isMoving = targetRootPart and targetRootPart.Velocity.Magnitude > 0.1 
            local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then 
            local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then 
            local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then 
            local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)
        end)
    end
})
Tabs.A2:Button({
    Title = "宙斯自瞄",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "工具挂",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "甩飞",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hknvh/main/%E7%94%A9%E9%A3%9E.txt"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "铁拳",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
        end)
    end
})
Tabs.A2:Button({
    Title = "透视1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
        end)
    end
})
Tabs.A2:Button({
    Title = "透视2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
        end)
    end
})
Tabs.A2:Button({
    Title = "无敌",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
        end)
    end
})
Tabs.A2:Button({
    Title = "隐身",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
        end)
    end
})
Tabs.A2:Button({
    Title = "电脑键盘",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
        end)
    end
})
Tabs.A2:Button({
    Title = "飞车",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
        end)
    end
})
Tabs.A2:Button({
    Title = "踏空行走",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
        end)
    end
})
Tabs.A2:Button({
    Title = "飞车2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vb/main/%E9%A3%9E%E8%BD%A6.lua"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "旋转",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%97%8B%E8%BD%AC.lua"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "自杀",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("Humanoid") then
                char.Humanoid.Health = 0
            end
        end)
    end
})
Tabs.A2:Button({
    Title = "飞檐走壁",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "夜视仪",
    Value = false,
    Callback = function()
        pcall(function()
            _G.OnShop = true
            loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
        end)
    end
})
Tabs.A2:Button({
    Title = "正常范围",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "中等范围",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "高级范围",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "反挂机",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
        end)
    end
})
Tabs.A2:Button({
    Title = "无限跳",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
        end)
    end
})

Tabs.A3:Section({Title = "力量传奇", Opened = true})
Tabs.A3:Toggle({
    Title = "自动比赛",
    Value = false,
    Callback = function(AR)
        pcall(function()
            task.spawn(function()
                while AR do 
                    task.wait() 
                    task.wait(2) 
                    game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl") 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "自动举哑铃",
    Value = false,
    Callback = function(ATYL)
        pcall(function()
            task.spawn(function()
                while ATYL do 
                    task.wait() 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 133.15) + Vector3.new(0, 50, 0)
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v.ClassName == "Tool" and v.Name == "Weight" then 
                            v.Parent = game.Players.LocalPlayer.Character 
                        end 
                    end 
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "自动俯卧撑",
    Value = false,
    Callback = function(ATFWC)
        pcall(function()
            task.spawn(function()
                while ATFWC do 
                    task.wait() 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 133.15) + Vector3.new(0, 50, 0)
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v.ClassName == "Tool" and v.Name == "Pushups" then 
                            v.Parent = game.Players.LocalPlayer.Character 
                        end 
                    end 
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "自动仰卧起坐",
    Value = false,
    Callback = function(ATYWQZ)
        pcall(function()
            task.spawn(function()
                while ATYWQZ do 
                    task.wait() 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 133.15) + Vector3.new(0, 50, 0)
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v.ClassName == "Tool" and v.Name == "Situps" then 
                            v.Parent = game.Players.LocalPlayer.Character 
                        end 
                    end 
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "自动倒立",
    Value = false,
    Callback = function(ATDL)
        pcall(function()
            task.spawn(function()
                while ATDL do 
                    task.wait() 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 133.15) + Vector3.new(0, 50, 0)
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v.ClassName == "Tool" and v.Name == "Handstands" then 
                            v.Parent = game.Players.LocalPlayer.Character 
                        end 
                    end 
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "自动锻炼",
    Value = false,
    Callback = function(ATAAA)
        pcall(function()
            task.spawn(function()
                while ATAAA do 
                    task.wait() 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 133.15) + Vector3.new(0, 50, 0)
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v.ClassName == "Tool" and (v.Name == "Handstands" or v.Name == "Situps" or v.Name == "Pushups" or v.Name == "Weight") then 
                            v:FindFirstChildOfClass("NumberValue").Value = 0 
                            repeat task.wait() until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") 
                        end 
                    end 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "自动重生",
    Value = false,
    Callback = function(ATRE)
        pcall(function()
            task.spawn(function()
                while ATRE do 
                    task.wait() 
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest") 
                end
            end)
        end)
    end
})
Tabs.A3:Button({
    Title = "收集宝石",
    Value = false,
    Callback = function()
        pcall(function()
            jk = {} 
            for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do 
                if v.Name ~= "Light Karma Chest" and v.Name ~= "Evil Karma Chest" then 
                    table.insert(jk, v.Name) 
                end 
            end 
            for i = 1, #jk do 
                task.wait(2) 
                game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i]) 
            end
        end)
    end
})
Tabs.A3:Toggle({
    Title = "沙滩跑步机10",
    Value = false,
    Callback = function(PPJ10)
        pcall(function()
            task.spawn(function()
                while PPJ10 do 
                    task.wait() 
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(238.671112, 5.40315914, 387.713165, -0.0160072874, -2.90710176e-08, -0.99987185, -3.3434191e-09, 1, -2.90212157e-08, 0.99987185, 2.87843993e-09, -0.0160072874) 
                    end
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "健身房跑步机2000",
    Value = false,
    Callback = function(PPJ2000)
        pcall(function()
            task.spawn(function()
                while PPJ2000 and game.Players.LocalPlayer.Agility.Value >= 2000 do 
                    task.wait() 
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3005.37866, 14.3221855, -464.697876, -0.015773816, -1.38508964e-08, 0.999875605, -5.13225586e-08, 1, 1.30429667e-08, -0.999875605, -5.11104332e-08, -0.015773816) 
                    end
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "神话健身房跑步机2000",
    Value = false,
    Callback = function(SHPPJ2000)
        pcall(function()
            task.spawn(function()
                while SHPPJ2000 and game.Players.LocalPlayer.Agility.Value >= 2000 do 
                    task.wait() 
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2571.23706, 15.6896839, 898.650391, 0.999968231, 2.23868635e-09, -0.00797206629, -1.73198844e-09, 1, 6.35660768e-08, 0.00797206629, -6.3550246e-08, 0.999968231) 
                    end
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "永恒健身房跑步机3500",
    Value = false,
    Callback = function(YHPPJ3500)
        pcall(function()
            task.spawn(function()
                while YHPPJ3500 and game.Players.LocalPlayer.Agility.Value >= 3500 do 
                    task.wait() 
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7077.79102, 29.6702118, -1457.59961, -0.0322036594, -3.31122768e-10, 0.99948132, -6.44344267e-09, 1, 1.23684493e-10, -0.99948132, -6.43611742e-09, -0.0322036594) 
                    end
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "传奇健身房跑步机3000",
    Value = false,
    Callback = function(CQPPJ3000)
        pcall(function()
            task.spawn(function()
                while CQPPJ3000 and game.Players.LocalPlayer.Agility.Value >= 3000 do 
                    task.wait() 
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4370.82812, 999.358704, -3621.42773, -0.960604727, -8.41949266e-09, -0.27791819, -6.12478646e-09, 1, -9.12496567e-09, 0.27791819, -7.06329528e-09, -0.960604727) 
                    end
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "石头0",
    Value = false,
    Callback = function(RK0)
        pcall(function()
            task.spawn(function()
                while RK0 do 
                    task.wait() 
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v:IsA("Tool") and v.Name == "Punch" then 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                        end 
                    end 
                    for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "Punch" then 
                            h:Activate() 
                        end 
                    end 
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -8.53662385e-08, -0.973095655, -4.68743764e-08, 1, -7.66279342e-08, 0.973095655, 2.79580536e-08, -0.23040159) 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "石头10",
    Value = false,
    Callback = function(RK10)
        pcall(function()
            task.spawn(function()
                while RK10 and game.Players.LocalPlayer.Durability.Value >= 10 do 
                    task.wait() 
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v:IsA("Tool") and v.Name == "Punch" then 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                        end 
                    end 
                    for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "Punch" then 
                            h:Activate() 
                        end 
                    end 
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -1.81774684e-09, -0.384083599, 3.45247031e-09, 1, 3.56670582e-09, 0.384083599, -4.61917082e-09, 0.923298299) 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "石头100",
    Value = false,
    Callback = function(RK100)
        pcall(function()
            task.spawn(function()
                while RK100 and game.Players.LocalPlayer.Durability.Value >= 100 do 
                    task.wait() 
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v:IsA("Tool") and v.Name == "Punch" then 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                        end 
                    end 
                    for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "Punch" then 
                            h:Activate() 
                        end 
                    end 
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, -164.686783, -0.921312928, -1.80826774e-07, -0.38882193, -9.13036544e-08, 1, -2.48719346e-07, 0.38882193, -1.93647494e-07, -0.921312928) 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "石头5000",
    Value = false,
    Callback = function(RK5000)
        pcall(function()
            task.spawn(function()
                while RK5000 and game.Players.LocalPlayer.Durability.Value >= 5000 do 
                    task.wait() 
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v:IsA("Tool") and v.Name == "Punch" then 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                        end 
                    end 
                    for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "Punch" then 
                            h:Activate() 
                        end 
                    end 
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -8.67358096e-08, 0.591812849, -1.05715522e-07, 1, 2.57029176e-09, -0.591812849, -6.04919563e-08, -0.806075394) 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "石头150000",
    Value = false,
    Callback = function(RK150000)
        pcall(function()
            task.spawn(function()
                while RK150000 and game.Players.LocalPlayer.Durability.Value >= 150000 do 
                    task.wait() 
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v:IsA("Tool") and v.Name == "Punch" then 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                        end 
                    end 
                    for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "Punch" then 
                            h:Activate() 
                        end 
                    end 
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2566.78076, 3.97019577, -277.503235, -0.923934579, -4.11600105e-08, -0.382550538, -3.38838042e-08, 1, -2.57576183e-08, 0.382550538, -1.08360858e-08, -0.923934579) 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "石头400000",
    Value = false,
    Callback = function(RK400000)
        pcall(function()
            task.spawn(function()
                while RK400000 and game.Players.LocalPlayer.Durability.Value >= 400000 do 
                    task.wait() 
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v:IsA("Tool") and v.Name == "Punch" then 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                        end 
                    end 
                    for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "Punch" then 
                            h:Activate() 
                        end 
                    end 
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -9.16796949e-09, -0.834304988, -5.61318245e-08, 1, 2.61027839e-08, 0.834304988, 6.12216127e-08, -0.551303148) 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "石头750000",
    Value = false,
    Callback = function(RK750000)
        pcall(function()
            task.spawn(function()
                while RK750000 and game.Players.LocalPlayer.Durability.Value >= 750000 do 
                    task.wait() 
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v:IsA("Tool") and v.Name == "Punch" then 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                        end 
                    end 
                    for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "Punch" then 
                            h:Activate() 
                        end 
                    end 
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -1.58175091e-08, -0.514244199, -1.22581563e-08, 1, -5.12025977e-08, 0.514244199, 5.02172774e-08, 0.857643783) 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "石头100万",
    Value = false,
    Callback = function(RK1M)
        pcall(function()
            task.spawn(function()
                while RK1M and game.Players.LocalPlayer.Durability.Value >= 1000000 do 
                    task.wait() 
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v:IsA("Tool") and v.Name == "Punch" then 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                        end 
                    end 
                    for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "Punch" then 
                            h:Activate() 
                        end 
                    end 
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 1.25481356e-05, 0.44982639, 5.02490684e-06, 1, -1.79187136e-05, -0.44982639, -1.37431543e-05, -0.893115997) 
                end
            end)
        end)
    end
})
Tabs.A3:Toggle({
    Title = "石头500万",
    Value = false,
    Callback = function(RK5M)
        pcall(function()
            task.spawn(function()
                while RK5M and game.Players.LocalPlayer.Durability.Value >= 5000000 do 
                    task.wait() 
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v:IsA("Tool") and v.Name == "Punch" then 
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) 
                        end 
                    end 
                    for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "Punch" then 
                            h:Activate() 
                        end 
                    end 
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8957.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137) 
                end
            end)
        end)
    end
})
Tabs.A3:Button({
    Title = "传送到出生点",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
            end
        end)
    end
})
Tabs.A3:Button({
    Title = "传送到安全岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
            end
        end)
    end
})
Tabs.A3:Button({
    Title = "传送到抽奖区域",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
            end
        end)
    end
})
Tabs.A3:Button({
    Title = "传送到肌肉之王健身房",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
            end
        end)
    end
})
Tabs.A3:Button({
    Title = "传送到传说健身房",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
            end
        end)
    end
})
Tabs.A3:Button({
    Title = "传送到永恒健身房",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
            end
        end)
    end
})
Tabs.A3:Button({
    Title = "传送到神话健身房",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
            end
        end)
    end
})
Tabs.A3:Button({
    Title = "传送到冰霜健身房",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
            end
        end)
    end
})
Tabs.A3:Button({
    Title = "力量传奇改力量",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
        end)
    end
})

Tabs.A4:Section({Title = "FE脚本", Opened = true})
Tabs.A4:Button({
    Title = "FE C00lgui",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:GetObjects("rbxassetid://97896659024899")[1].Source)()
        end)
    end
})
Tabs.A4:Button({
    Title = "FE 1x1x1x1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
        end)
    end
})
Tabs.A4:Button({
    Title = "FE大长腿",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
        end)
    end
})
Tabs.A4:Button({
    Title = "FE用头",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
        end)
    end
})
Tabs.A4:Button({
    Title = "复仇者",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
        end)
    end
})
Tabs.A4:Button({
    Title = "鼠标",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
        end)
    end
})
Tabs.A4:Button({
    Title = "变怪物",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
        end)
    end
})
Tabs.A4:Button({
    Title = "香蕉枪",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
        end)
    end
})
Tabs.A4:Button({
    Title = "超长🐔巴",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
        end)
    end
})
Tabs.A4:Button({
    Title = "操人",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA", true))()
        end)
    end
})
Tabs.A4:Button({
    Title = "FE动画中心",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
        end)
    end
})
Tabs.A4:Button({
    Title = "FE变玩家",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
        end)
    end
})
Tabs.A4:Button({
    Title = "FE猫娘R63",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
        end)
    end
})
Tabs.A4:Button({
    Title = "FE",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://pastefy.ga/a7RTi4un/raw'))()
        end)
    end
})

Tabs.A5:Section({Title = "脚本中心", Opened = true})
Tabs.A5:Button({
    Title = "山脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://h.lkmc.asia/script/ssfb.lua"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "青脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
        end)
    end
})
Tabs.A5:Button({
    Title = "陈脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/QxDD9SpW"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "杯脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/llcq"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "北极脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV",true))()
        end)
    end
})
Tabs.A5:Button({
    Title = "地岩脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
        end)
    end
})
Tabs.A5:Button({
    Title = "导管中心",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
        end)
    end
})
Tabs.A5:Button({
    Title = "脚本中心1.5",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "玖恶脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://ayangwp.cn/api/v3/file/get/8508/%E7%8E%96%E6%81%B6%E4%B8%AD%E5%BF%83.lua?sign=wt54yWf_f0LDB3gXXyQu0SFQ0oUDUXZBOaWQShwCFGg%3D%3A0'))()
        end)
    end
})
Tabs.A5:Button({
    Title = "老大脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8401/%E8%80%81%E5%A4%A7%E8%84%9A%E6%9C%AC1.0%E7%89%88.txt?sign=XHxQ1ja8djAnEjVEG-eEZFPeZKFHJ0FHeybHpSbtBW4%3D%3A0"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "乌云脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/dT4ZGge8"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "皇脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8577/%E7%9A%87v5.txt?sign=ToDT3Udyh4r3WwDu_yVblRL849qC2GJjjjQ7FTidF_w%3D%3A0"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "冰红茶脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8582/Protected_9297682332119129.lua?sign=jP-h1AGooC90C0A0O5eDboOCoaQTZpOzLoWzg_oz1eE%3D%3A0"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "静新脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/ggff/main/%E5%B8%85%E9%94%85%E4%B8%80%E6%9E%9A%E5%B0%8F%E5%8F%AF%E7%88%B1%E5%91%80%E5%8F%91%E8%B4%A7%E5%A5%BD%E7%9A%84%E5%90%83%E4%B8%8D%E5%90%83%E8%AE%B0%E5%BE%97%E8%AE%B0%E5%BE%97%E4%BD%A0%E6%96%B9%E4%BE%BF%E6%89%93%E5%BC%80%E7%94%B5%E8%84%91%E6%96%B9%E4%B8%8D%E6%96%B9%E4%BE%BF%E8%AE%B0%E5%BE%97%E9%83%BD%E8%A7%81%E4%B8%8D%E5%88%B0%E6%96%B9%E4%BE%BF%E7%9A%84%E8%AF%9D%E6%89%8B%E6%9C%BA%E6%96%B9%E4%B8%8D%E6%96%B9%E4%BE%BF%E5%B0%B1"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "小魔脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaomoNB666/xiaomoNB666/main/%E6%9E%81.lua"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "鲨新ui脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/fvvhhh/sturdy-octo-engine/main/Protected_1221338743706560.lua.txt"))()
        end)
    end
})
Tabs.A5:Button({
    Title = "雷脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(('https://pastebin.com/raw/tPB47inG')))()
        end)
    end
})

Tabs.A6:Section({Title = "Doors", Opened = true})
Tabs.A6:Toggle({
    Title = "刷新时通知",
    Value = false,
    Callback = function(TZ)
        pcall(function()
            _G.IE = TZ 
            if game:GetService("ReplicatedStorage").GameData.LatestRoom and game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed then
                game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Connect(function() 
                    if _G.IE then 
                        local n = game:GetService("ReplicatedStorage").GameData.ChaseStart.Value - game:GetService("ReplicatedStorage").GameData.LatestRoom.Value 
                        if 0 < n and n < 4 then 
                        end 
                    end 
                end) 
            end
            workspace.ChildAdded:Connect(function(inst) 
                if inst.Name == "RushMoving" and _G.IE then 
                elseif inst.Name == "AmbushMoving" and _G.IE then 
                end 
            end)
        end)
    end
})
Tabs.A6:Toggle({
    Title = "自动躲避Rush/Ambush",
    Value = false,
    Callback = function(ADB)
        pcall(function()
            _G.Avoid = ADB 
            workspace.ChildAdded:Connect(function(inst) 
                if inst.Name == "RushMoving" and _G.Avoid then 
                    local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 
                    local con = game:GetService("RunService").Heartbeat:Connect(function() 
                        game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0)) 
                    end) 
                    inst.Destroying:Wait() 
                    con:Disconnect() 
                    game.Players.LocalPlayer.Character:MoveTo(OldPos) 
                elseif inst.Name == "AmbushMoving" and _G.Avoid then 
                    local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 
                    local con = game:GetService("RunService").Heartbeat:Connect(function() 
                        game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0)) 
                    end) 
                    inst.Destroying:Wait() 
                    con:Disconnect() 
                    game.Players.LocalPlayer.Character:MoveTo(OldPos) 
                end 
            end)
        end)
    end
})
Tabs.A6:Toggle({
    Title = "无 Screech",
    Value = false,
    Callback = function(NCH)
        pcall(function()
            _G.NS = NCH 
            workspace.CurrentCamera.ChildAdded:Connect(function(child) 
                if child.Name == "Screech" and _G.NS then 
                    child:Destroy() 
                end 
            end)
        end)
    end
})
Tabs.A6:Button({
    Title = "最强汉化",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "最新",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "DX",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/replicator-lol/main/dor.lua"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "RP变怪",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "剪刀",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "十字架",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/FCSyG6Th"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "神圣炸弹",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/u5B1UjGv"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "吸铁石",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/xHxGDp51"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "刷怪变怪",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shuaguai"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "变身",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "最强英文",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "最强英文汉化",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/nnzhonhxin/114514/refs/heads/main/DOORS.txt"))()
        end)
    end
})
Tabs.A6:Button({
    Title = "room",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
        end)
    end
})

Tabs.A7:Section({Title = "巴掌模拟器", Opened = true})
Tabs.A7:Toggle({
    Title = "无CD",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    task.wait(0.1)
                end
            end)
        end)
    end
})
Tabs.A7:Button({
    Title = "获取计数器手套",
    Value = false,
    Callback = function()
        pcall(function()
            fireclickdetector(game.Workspace.CounterLever.ClickDetector)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
            task.wait(0.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            task.wait(121)
            for i,v in pairs(workspace.Maze:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v)
                end
            end
        end)
    end
})
Tabs.A7:Toggle({
    Title = "地牢亮度",
    Value = false,
    Callback = function(Value)
        pcall(function()
            if not Value then
                game.Lighting.Ambient = Color3.new(0, 0, 0)
            end
        end)
    end
})
Tabs.A7:Dropdown({
    Title = "传送",
    Items = {"安全区","竞技场","埃及岛","果实岛","盘子","锦标赛","默认竞技场"},
    Callback = function(Value)
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                if Value == "安全区" then
                    char.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,40,0)
                elseif Value == "竞技场" then
                    char.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
                elseif Value == "埃及岛" then
                    char.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
                elseif Value == "果实岛" then
                    char.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
                elseif Value == "盘子" then
                    char.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
                elseif Value == "锦标赛" then
                    char.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
                elseif Value == "默认竞技场" then
                    char.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
                end
            end
        end)
    end
})
Tabs.A7:Toggle({
    Title = "复古技能",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    game:GetService("ReplicatedStorage").RetroAbility:FireServer("RetroAbility")
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Dropdown({
    Title = "复古技能选择",
    Items = {"Rocket Launcher","Ban Hammer","Bomb"},
    Callback = function(Value)
        RetroAbility = Value
    end
})
Tabs.A7:Toggle({
    Title = "自动捡糖果",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    for i, v in pairs(workspace.CandyCorns:GetChildren()) do
                        if v:FindFirstChildWhichIsA("TouchTransmitter") then
                            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "获取炼金术师材料",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value and game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" do
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Mushroom")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Glowing Mushroom")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Fire Flower")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Winter Rose")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dark Root")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dire Flower")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Autumn Sprout")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Elder Wood")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Hazel Lily")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Wild Vine")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Jade Stone")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Lamp Grass")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Plane Flower")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blood Rose")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Red Crystal")
                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blue Crystal")
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "自动加入竞技场",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
                    end
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "自动光波球",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Button({
    Title = "Rojo技能",
    Value = false,
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
            task.wait(6)
            game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
            task.wait()
        end)
    end
})
Tabs.A7:Toggle({
    Title = "音符技能",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "Null技能",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    game:GetService("ReplicatedStorage").NullAbility:FireServer()
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "自动拾取黄金果实",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    for i, v in ipairs(workspace.Arena.island5.Slapples:GetDescendants()) do
                        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Glove" and v:FindFirstChildWhichIsA("TouchTransmitter") then
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                        end
                    end
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "自动捡飞行宝珠",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "JetOrb" and v:FindFirstChild("TouchInterest") then
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                        end
                    end
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "自动捡相位球",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "PhaseOrb" and v:FindFirstChild("TouchInterest") then
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                        end
                    end
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "自动刷bob",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    for i, v in pairs(workspace:GetChildren()) do
                        if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
                            game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"))
                        end
                    end
                    task.wait()
                    game:GetService("ReplicatedStorage").Duplicate:FireServer()
                    task.wait(7)
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "无限反转",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
                    task.wait(6)
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "彩虹角色",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    for i = 0,1,0.001*25 do
                        game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(i,1,1)))
                        task.wait()
                    end
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "防击飞",
    Value = false,
    Callback = function(Value)
        pcall(function()
            if Value then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                game.Players.LocalPlayer.CharacterAdded:Connect(function()
                    game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
                        if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and Value then
                            repeat task.wait() 
                                game.Players.LocalPlayer.Character.Torso.Anchored = true
                            until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
                            game.Players.LocalPlayer.Character.Torso.Anchored = false
                        end
                    end)
                end)
            end
        end)
    end
})
Tabs.A7:Toggle({
    Title = "反虚空",
    Value = false,
    Callback = function(Value)
        pcall(function()
            game.Workspace.dedBarrier.CanCollide = Value
            game.Workspace.TAntiVoid.CanCollide = Value
        end)
    end
})
Tabs.A7:Toggle({
    Title = "防死亡屏障",
    Value = false,
    Callback = function(Value)
        pcall(function()
            if Value == true then
                for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = false
                    end
                end
                workspace.DEATHBARRIER.CanTouch = false
                workspace.DEATHBARRIER2.CanTouch = false
                workspace.dedBarrier.CanTouch = false
                workspace.ArenaBarrier.CanTouch = false
                workspace.AntiDefaultArena.CanTouch = false
            else
                for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = true
                    end
                end
                workspace.DEATHBARRIER.CanTouch = true
                workspace.DEATHBARRIER2.CanTouch = true
                workspace.dedBarrier.CanTouch = true
                workspace.ArenaBarrier.CanTouch = true
                workspace.AntiDefaultArena.CanTouch = true
            end
        end)
    end
})
Tabs.A7:Toggle({
    Title = "反巴西",
    Value = false,
    Callback = function(Value)
        pcall(function()
            if Value == true then
                for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                    v.CanTouch = false
                end
            else
                for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                    v.CanTouch = true
                end
            end
        end)
    end
})
Tabs.A7:Toggle({
    Title = "反死亡方块",
    Value = false,
    Callback = function(Value)
        pcall(function()
            if Value == true then
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
            else
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
            end
        end)
    end
})
Tabs.A7:Toggle({
    Title = "反上帝技能",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.ClassName == "Part" then
                            v.Anchored = false
                        end
                    end
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "反鱿鱼",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
                        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
                    end
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "反神圣杰克",
    Value = false,
    Callback = function(Value)
        pcall(function()
            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = Value
        end)
    end
})
Tabs.A7:Toggle({
    Title = "反传送带",
    Value = false,
    Callback = function(Value)
        pcall(function()
            game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = Value
        end)
    end
})
Tabs.A7:Toggle({
    Title = "反板砖",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "Union" then
                            v.CanTouch = false
                        end
                    end
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Toggle({
    Title = "反Null",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "Imp" and v:FindFirstChild("Body") then
                            if game.Players.LocalPlayer.leaderstats and game.Players.LocalPlayer.leaderstats.Glove then
                                if shared.gloveHits and shared.gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value] then
                                    shared.gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Body,true)
                                end
                            end
                        end
                    end
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A7:Button({
    Title = "自动刷巴掌",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()
        end)
    end
})
Tabs.A7:Button({
    Title = "巴掌模拟器1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
        end)
    end
})
Tabs.A7:Button({
    Title = "巴掌模拟器2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
        end)
    end
})
Tabs.A7:Button({
    Title = "巴掌模拟器3",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
        end)
    end
})

Tabs.A8:Section({Title = "犯罪", Opened = true})
Tabs.A8:Button({
    Title = "犯罪",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/XS%E7%8A%AF%E7%BD%AA.lua"))()
        end)
    end
})

Tabs.A9:Section({Title = "火箭发射模拟器", Opened = true})
Tabs.A9:Toggle({
    Title = "自动收集燃料",
    Value = false,
    Callback = function(ARL)
        pcall(function()
            task.spawn(function()
                while ARL do 
                    task.wait() 
                    for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if h:IsA("Tool") and h.Name == "FuelScoop" then 
                            h:Activate() 
                        end 
                    end 
                end
            end)
        end)
    end
})
Tabs.A9:Button({
    Title = "登上火箭",
    Value = false,
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage"):WaitForChild("BoardRocket"):FireServer()
        end)
    end
})
Tabs.A9:Button({
    Title = "将玩家从所有者座位移除",
    Value = false,
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage"):WaitForChild("RemovePlayer"):FireServer()
        end)
    end
})
Tabs.A9:Button({
    Title = "发射台岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-123.15931701660156, 2.7371432781219482, 3.491959810256958)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "白云岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-76.13252258300781, 170.55825805664062, -60.4516716003418)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "浮漂岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-66.51714324951172, 720.4866333007812, -5.391753196716309)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "卫星岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-34.2462043762207, 1429.4990234375, 1.3739361763000488)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "蜜蜂迷宫岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(6.5361199378967285, 3131.249267578125, -29.759048461914062)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "月球人救援",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-7.212917804718018, 5016.341796875, -19.815933227539062)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "暗物质岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(68.43186950683594, 6851.94091796875, 7.890637397766113)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "太空岩石岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(49.92888641357422, 8942.955078125, 8.674375534057617)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "零号火星岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(54.44503402709961, 11270.0927734375, -1.273137092590332)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "太空水晶小行星岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-11.579089164733887, 15295.6318359375, -27.54974365234375)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "月球浆果岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-14.601255416870117, 18410.9609375, 0.9418511986732483)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "铺路石岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-3.272758960723877, 22539.494140625, 63.283935546875)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "流星岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-45.515689849853516, 27961.560546875, -7.358333110809326)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "升级岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-2.7595248222351074, 33959.98828125, 53.93095397949219)
            end
        end)
    end
})
Tabs.A9:Button({
    Title = "火箭发射模拟器1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9245/%E7%8C%AB%E9%80%9A%E7%94%A9.txt?sign=hrWROZdVfK2mtJcIFa3Tvbl-TojP1C86_Zd3q03qttc%3D%3A0"))()
        end)
    end
})
Tabs.A9:Button({
    Title = "火箭发射模拟器2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/321_blast_off_simulator')))()
        end)
    end
})
Tabs.A9:Button({
    Title = "火箭发射模拟器3",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/jm-/refs/heads/main/jm%E7%81%AB%E7%AE%AD%E5%8F%91%E5%B0%84%E9%87%8D%E5%81%9A(1).lua"))()
        end)
    end
})

Tabs.A10:Section({Title = "自然灾害模拟器", Opened = true})
Tabs.A10:Button({
    Title = "黑洞脚本1",
    Value = false,
    Callback = function()
        pcall(function()
            if "Rochips Loader" then
                local Rochips_panel,v,u,i=loadstring,"/snippets","gwwv","/raw/main.lua" ;
                Rochips_panel(game:HttpGet("https://glot.io"..v.."/" ..u.."877ga3"..i))();
            end
        end)
    end
})
Tabs.A10:Button({
    Title = "黑洞脚本2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/lililiugg/main/jm114514.lua"))()
        end)
    end
})
Tabs.A10:Button({
    Title = "黑洞脚本3",
    Value = false,
    Callback = function()
        pcall(function()
            local UserInputService = game:GetService("UserInputService")
            local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

            local Folder = Instance.new("Folder", game:GetService("Workspace"))
            local Part = Instance.new("Part", Folder)
            Part.Anchored = true
            Part.CanCollide = false
            Part.Transparency = 1

            local Attachment1 = Instance.new("Attachment", Part)

            local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
            local ForceStrength = 1000

            local function TeleportPart(v)
                if v:IsA("Part") and v.Anchored == false and v.Parent ~= game:GetService("Players").LocalPlayer.Character then
                    Mouse.TargetFilter = v
                    for _, x in next, v:GetChildren() do
                        if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                            x:Destroy()
                        end
                    end
                    if v:FindFirstChild("Attachment") then
                        v:FindFirstChild("Attachment"):Destroy()
                    end

                    v.CanCollide = false 

                    local Torque = Instance.new("BodyAngularVelocity", v)
                    Torque.AngularVelocity = Vector3.new(0, math.rad(ForceStrength), 0)
                    Torque.MaxTorque = Vector3.new(10000, 10000, 10000)

                    local AlignPosition = Instance.new("AlignPosition", v)
                    local Attachment2 = Instance.new("Attachment", v)

                    AlignPosition.MaxForce = 50000
                    AlignPosition.MaxVelocity = 50
                    AlignPosition.Responsiveness = 50
                    AlignPosition.Attachment0 = Attachment2
                    AlignPosition.Attachment1 = Attachment1
                end
            end

            local function TeleportAllParts()
                for _, v in next, game:GetService("Workspace"):GetDescendants() do
                    if v:IsA("Part") and v.Parent ~= game:GetService("Players").LocalPlayer.Character then
                        TeleportPart(v)
                    end
                end
            end

            TeleportAllParts()

            game:GetService("Workspace").DescendantAdded:Connect(function(v)
                if v:IsA("Part") and v.Parent ~= game:GetService("Players").LocalPlayer.Character then
                    TeleportPart(v)
                end
            end)

            UserInputService.InputBegan:Connect(function(Key, Chat)
                if Key.KeyCode == Enum.KeyCode.E and not Chat then
                    Updated = Mouse.Hit + Vector3.new(0, 5, 0)
                end
            end)

            task.spawn(function()
                while game:GetService("RunService").RenderStepped:Wait() do
                    Attachment1.WorldCFrame = Updated
                end
            end)

            loadstring(game:HttpGet(('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md'),true))()
        end)
    end
})
Tabs.A10:Button({
    Title = "键盘脚本",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
        end)
    end
})
Tabs.A10:Toggle({
    Title = "自动农场胜出",
    Value = false,
    Callback = function(bool)
        pcall(function()
            _G.autowinfarm = bool;
            task.spawn(function()
                while task.wait(.1) do
                    if _G.autowinfarm == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236, 180, 360, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                    end
                end
            end)
        end)
    end
})
Tabs.A10:Toggle({
    Title = "地图投票用户界面",
    Value = false,
    Callback = function(bool)
        pcall(function()
            if bool == false then
                if game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage then
                    game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
                end
            end
            if bool == true then
                if game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage then
                    game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
                end
            end
        end)
    end
})
Tabs.A10:Toggle({
    Title = "在水上行走😱",
    Value = false,
    Callback = function(bool)
        pcall(function()
            if bool == false then
                game.Workspace.WaterLevel.CanCollide = false
                game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
            end
            if bool == true then
                game.Workspace.WaterLevel.CanCollide = true
                game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000)
            end
        end)
    end
})
Tabs.A10:Toggle({
    Title = "游戏岛悬崖碰撞",
    Value = false,
    Callback = function(bool)
        pcall(function()
            for i, v in pairs (game.workspace:GetDescendants())do
                if v.Name == 'LowerRocks' then
                    v.CanCollide = bool
                end
            end
        end)
    end
})
Tabs.A10:Button({
    Title = "禁用坠落损坏",
    Value = false,
    Callback = function()
        pcall(function()
            local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
            if FallDamageScript then
                FallDamageScript:Destroy()
            end
        end)
    end
})
Tabs.A10:Toggle({
    Title = "自动禁用坠落伤害",
    Value = false,
    Callback = function(bool)
        pcall(function()
            _G.NoFallDamage = bool;
            task.spawn(function()
                while task.wait(0.5) do
                    if _G.NoFallDamage == true then
                        local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
                        if FallDamageScript then
                            FallDamageScript:Destroy()
                        end 
                    end 
                end
            end)
        end)
    end
})
Tabs.A10:Button({
    Title = "打印下一次灾难(/console)",
    Value = false,
    Callback = function()
        pcall(function()
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("SurvivalTag") then
                warn(game.Players.LocalPlayer.Character.SurvivalTag.Value)
            end
        end)
    end
})
Tabs.A10:Button({
    Title = "移除灾难界面",
    Value = false,
    Callback = function()
        pcall(function()
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild("BlizzardGui") then
                game.Players.LocalPlayer.PlayerGui.BlizzardGui:Destroy()
            end
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SandStormGui") then
                game.Players.LocalPlayer.PlayerGui.SandStormGui:Destroy()
            end
        end)
    end
})
Tabs.A10:Button({
    Title = "传送到地图",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-115.828506, 65.4863434, 18.8461514, 0.00697017973, 0.0789371505, -0.996855199, -3.13589936e-07, 0.996879458, 0.0789390653, 0.999975681, -0.000549906865, 0.00694845384)
            end
        end)
    end
})
Tabs.A10:Button({
    Title = "游戏岛",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-83.5, 38.5, -27.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            end
        end)
    end
})
Tabs.A10:Button({
    Title = "产卵塔",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-280, 170, 341, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            end
        end)
    end
})
Tabs.A10:Slider({
    Title = "步行速度",
    Value = { Min = 16, Max = 250, Default = 16 },
    Callback = function(value)
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("Humanoid") then
                char.Humanoid.WalkSpeed = value
            end
        end)
    end
})
Tabs.A10:Slider({
    Title = "跳跃能力",
    Value = { Min = 16, Max = 250, Default = 16 },
    Callback = function(value)
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("Humanoid") then
                char.Humanoid.JumpPower = value
            end
        end)
    end
})
Tabs.A10:Button({
    Title = "单击TP工具",
    Value = false,
    Callback = function()
        pcall(function()
            mouse = game.Players.LocalPlayer:GetMouse()
            tool = Instance.new("Tool")
            tool.RequiresHandle = false
            tool.Name = "Click Teleport"
            tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
            end)
            tool.Parent = game.Players.LocalPlayer.Backpack
        end)
    end
})
Tabs.A10:Button({
    Title = "反AFK",
    Value = false,
    Callback = function()
        pcall(function()
            task.wait(0.5)
            local bb=game:service'VirtualUser'
            game:service'Players'.LocalPlayer.Idled:connect(function()
                bb:CaptureController()
                bb:ClickButton2(Vector2.new())
            end)
        end)
    end
})
Tabs.A10:Button({
    Title = "飞行",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/jm%E9%A3%9E..lua"))()
        end)
    end
})
Tabs.A10:Button({
    Title = "自然灾害模拟器1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))()
        end)
    end
})
Tabs.A10:Button({
    Title = "自然灾害模拟器2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
        end)
    end
})
Tabs.A10:Button({
    Title = "自然灾害模拟器3",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()
        end)
    end
})

Tabs.A11:Section({Title = "鲨口求生", Opened = true})
Tabs.A11:Dropdown({
    Title = "船只提取器",
    Items = { "摩托艇", "独角兽挺", "红马林鱼", "单栀帆船", "拖船", "小船摩托艇", "摩托艇甜甜圈", "马林鱼", "管船", "渔船", "维京船", "小树林帆船", "红冠摩托艇", "双体船", "战斗船", "游船", "鸭海军陆战队", "派对船", "军事潜艇", "姜饼蒸汽船", "雪橇2022", "雪地摩托", "游轮"},
    Callback = function(CS)
        pcall(function()
            game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(CS)
        end)
    end
})
Tabs.A11:Button({
    Title = "自动杀鲨鱼",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
        end)
    end
})
Tabs.A11:Button({
    Title = "鲨口求生1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
        end)
    end
})
Tabs.A11:Button({
    Title = "鲨口求生2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LOOF-sys/Roblox-Shit/main/SharkBite.lua",true))()
        end)
    end
})
Tabs.A11:Button({
    Title = "鲨口求生3",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Lolboxo/SharkBiteV3/main/SharkBiteV3.1'))()
        end)
    end
})
Tabs.A11:Button({
    Title = "鲨口求生刷船",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/ghostapustaja/legionhub/main/sharkbite2'),true))()
        end)
    end
})

Tabs.A12:Section({Title = "监狱人生", Opened = true})
Tabs.A12:Button({
    Title = "警卫室",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
            end
        end)
    end
})
Tabs.A12:Button({
    Title = "监狱室内",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
            end
        end)
    end
})
Tabs.A12:Button({
    Title = "监狱室外",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
            end
        end)
    end
})
Tabs.A12:Button({
    Title = "犯罪复活点",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
            end
        end)
    end
})
Tabs.A12:Button({
    Title = "传送院子",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(788.5759887695312, 97.99992370605469, 2455.056640625)
            end
        end)
    end
})
Tabs.A12:Button({
    Title = "传送警车库",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(602.7301635742188, 98.20000457763672, 2503.56982421875)
            end
        end)
    end
})
Tabs.A12:Button({
    Title = "传送死人下水道",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(917.4256591796875, 78.69828033447266, 2416.18359375)
            end
        end)
    end
})
Tabs.A12:Button({
    Title = "传送食堂",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(921.0059204101562, 99.98993682861328, 2289.23095703125)
            end
        end)
    end
})
Tabs.A12:Button({
    Title = "无敌模式",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
        end)
    end
})
Tabs.A12:Button({
    Title = "杀死所有人",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
        end)
    end
})
Tabs.A12:Button({
    Title = "变钢铁侠",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
        end)
    end
})
Tabs.A12:Button({
    Title = "变死神",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/ewv9bbRp"))()
        end)
    end
})
Tabs.A12:Button({
    Title = "变车模型",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
        end)
    end
})
Tabs.A12:Button({
    Title = "变成警察",
    Value = false,
    Callback = function()
        pcall(function()
            workspace.Remote.TeamEvent:FireServer("Bright blue");
        end)
    end
})
Tabs.A12:Button({
    Title = "变成囚犯",
    Value = false,
    Callback = function()
        pcall(function()
            workspace.Remote.TeamEvent:FireServer("Bright orange");
        end)
    end
})
Tabs.A12:Toggle({
    Title = "杀死光环",
    Value = false,
    Callback = function(SSGH)
        pcall(function()
            task.spawn(function()
                while SSGH do
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A12:Button({
    Title = "手里剑秒杀",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
        end)
    end
})
Tabs.A12:Button({
    Title = "监狱人生1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
        end)
    end
})
Tabs.A12:Button({
    Title = "监狱人生2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
        end)
    end
})
Tabs.A12:Button({
    Title = "监狱人生汉化",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGetAsync("https://pastebin.com/raw/fYMnAEeJ"))()
        end)
    end
})

Tabs.A13:Section({Title = "BF", Opened = true})
Tabs.A13:Button({
    Title = "BF汉化",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Xiao-Yun-UWU/main/%E6%B5%B7%E8%B4%BC%E7%8E%8Bbf.lua", true))()
        end)
    end
})
Tabs.A13:Button({
    Title = "HOHO脚本",
    Value = false,
    Callback = function()
        pcall(function()
            _G.HohoVersion = "v4"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        end)
    end
})
Tabs.A13:Button({
    Title = "Uniquehub",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AkiraNus/UniquehubKak/main/FreeCr.Xenonhub"))()
        end)
    end
})
Tabs.A13:Button({
    Title = "刷怪",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://rawscripts.net/raw/UPDATE-16-Blox-Fruits-Nub-V1-Hub-4583'))()
        end)
    end
})
Tabs.A13:Button({
    Title = "自动升级",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
        end)
    end
})
Tabs.A13:Button({
    Title = "自动箱子",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
        end)
    end
})
Tabs.A13:Button({
    Title = "Ripper M",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptsExploit/Blox-Fruits/main/Ripper%20M"))()
        end)
    end
})
Tabs.A13:Button({
    Title = "UraniumKak",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua"))()
        end)
    end
})
Tabs.A13:Button({
    Title = "BF HOHO脚本1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/Free/BloxFruitFreeV3.lua"))()
        end)
    end
})
Tabs.A13:Button({
    Title = "BF HOHO脚本2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
        end)
    end
})

Tabs.A14:Section({Title = "铲雪模拟器", Opened = true})
Tabs.A14:Toggle({
    Title = "自动收集雪",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do 
                    task.wait()
                    local args = {
                        [1] = workspace:WaitForChild("HitParts"):WaitForChild("Snow1"),
                        [2] = "Snow1",
                        [3] = "MagicWand"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("e8eGb8RgRXFcug8q"):FireServer(unpack(args))
                end
            end)
        end)
    end
})
Tabs.A14:Toggle({
    Title = "自动出售雪",
    Value = false,
    Callback = function(Value)
        pcall(function()
            task.spawn(function()
                while Value do 
                    task.wait()
                    local args = {
                        [1] = "SellSnow",
                        [2] = "Frosty"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                end
            end)
        end)
    end
})
Tabs.A14:Button({
    Title = "传送出售雪的地方",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(481.4659423828125, 15.846257209777832, -66.55204010009766)
            end
        end)
    end
})
Tabs.A14:Button({
    Title = "传送买车的地方",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(90.10160064697266, 16.051794052124023, -141.703125)
            end
        end)
    end
})
Tabs.A14:Button({
    Title = "传送买工具的地方",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(131.7429962158203, 16.39700698852539, -12.935890197753906)
            end
        end)
    end
})
Tabs.A14:Button({
    Title = "传送买背包的地方",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(348.6633605957031, 17.03822898864746, -16.793842315673828)
            end
        end)
    end
})
Tabs.A14:Button({
    Title = "传送买假日礼物的地方",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(154.57424926757812, 16.215335845947266, 147.10423278808594)
            end
        end)
    end
})
Tabs.A14:Button({
    Title = "传送买宠物的地方",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(138.49563598632812, 17.887277603149414, 278.3686218261719)
            end
        end)
    end
})
Tabs.A14:Button({
    Title = "传送超大铲雪的地方",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-391.4309997558594, 15.84949016571045, 150.15187072753906)
            end
        end)
    end
})

Tabs.A15:Section({Title = "河北唐县", Opened = true})
Tabs.A15:Button({
    Title = "传送到警察局",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-5513.97412109375, 8.656171798706055, 4964.291015625)
            end
        end)
    end
})
Tabs.A15:Button({
    Title = "传送到出生点",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-3338.31982421875, 10.048742294311523, 3741.84033203125)
            end
        end)
    end
})
Tabs.A15:Button({
    Title = "传送到医院",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-5471.482421875, 14.149418830871582, 4259.75341796875)
            end
        end)
    end
})
Tabs.A15:Button({
    Title = "传送到手机店",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-6789.2041015625, 11.197686195373535, 1762.687255859375)
            end
        end)
    end
})
Tabs.A15:Button({
    Title = "传送到火锅店",
    Value = false,
    Callback = function()
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-5912.84765625, 12.217276573181152, 1058.29443359375)
            end
        end)
    end
})
Tabs.A15:Toggle({
    Title = "自动刷钱",
    Value = false,
    Callback = function(AM)
        pcall(function()
            task.spawn(function()
                while AM do
                    task.wait()
                end
            end)
        end)
    end
})

Tabs.A16:Section({Title = "巴掌模拟器2", Opened = true})
Tabs.A16:Button({
    Title = "巴掌模拟器1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
        end)
    end
})
Tabs.A16:Button({
    Title = "巴掌模拟器2",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
        end)
    end
})
Tabs.A16:Button({
    Title = "巴掌模拟器3",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
        end)
    end
})

Tabs.A17:Section({Title = "奎尔湖", Opened = true})
Tabs.A17:Button({
    Title = "奎尔湖1",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Solx69/Shit-Boy-Hub-Main/main/Master.lua'))()
        end)
    end
})
Tabs.A17:Toggle({
    Title = "无敌模式",
    Value = false,
    Callback = function(Value)
        pcall(function()
            game.ReplicatedStorage.DamageHumanoid:FireServer(-2e9)
        end)
    end
})
Tabs.A17:Button({
    Title = "无限金钱",
    Value = false,
    Callback = function()
        pcall(function()
            local money = {
                [1] = -9999,
                [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Pay:FireServer(unpack(money))
        end)
    end
})
Tabs.A17:Button({
    Title = "无限金币",
    Value = false,
    Callback = function()
        pcall(function()
            local gold = {
                [1] = game:GetService("Players").LocalPlayer.GoldCoins,
                [2] = 99999
            }
            game:GetService("ReplicatedStorage").ChangeValue:FireServer(unpack(gold))
        end)
    end
})
Tabs.A17:Button({
    Title = "给所有物品",
    Value = false,
    Callback = function()
        pcall(function()
            game.ReplicatedStorage.GiveTool:FireServer("SeaScooter")
            game.ReplicatedStorage.GiveTool:FireServer("Lantern")
            game.ReplicatedStorage.GiveTool:FireServer("Compass")
            game.ReplicatedStorage.GiveTool:FireServer("ItemFinder")
            game.ReplicatedStorage.GiveTool:FireServer("Aquabreather")
        end)
    end
})
Tabs.A17:Button({
    Title = "红色套装",
    Value = false,
    Callback = function()
        pcall(function()
            game.ReplicatedStorage.ChangeOutfits:FireServer("FireSuit")
        end)
    end
})
Tabs.A17:Button({
    Title = "黄色套装",
    Value = false,
    Callback = function()
        pcall(function()
            game.ReplicatedStorage.ChangeOutfits:FireServer("HazmatSuit")
        end)
    end
})
Tabs.A17:Button({
    Title = "海盗套装",
    Value = false,
    Callback = function()
        pcall(function()
            game.ReplicatedStorage.ChangeOutfits:FireServer("PirateCostume")
        end)
    end
})
Tabs.A17:Button({
    Title = "动力套装",
    Value = false,
    Callback = function()
        pcall(function()
            game.ReplicatedStorage.ChangeOutfits:FireServer("SuperScuba")
        end)
    end
})

Tabs.A18:Section({Title = "钓鱼模拟器", Opened = true})
Tabs.A18:Toggle({
    Title = "自动杀鲨鱼",
    Value = false,
    Callback = function(State)
        pcall(function()
            task.spawn(function()
                while State do
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A18:Toggle({
    Title = "自动钓鱼",
    Value = false,
    Callback = function(bool)
        pcall(function()
            task.spawn(function()
                while bool do
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A18:Toggle({
    Title = "自动杀boss",
    Value = false,
    Callback = function(State)
        pcall(function()
            task.spawn(function()
                while State do
                    task.wait()
                end
            end)
        end)
    end
})
Tabs.A18:Toggle({
    Title = "减少延迟",
    Value = false,
    Callback = function(State)
        pcall(function()
            task.spawn(function()
                while State do 
                    task.wait(30)
                    for i, v in pairs(game.Workspace.DroppedItems:GetChildren()) do
                        if v:IsA("Model") then
                            v:Destroy()
                        end
                    end
                end
            end)
        end)
    end
})
Tabs.A18:Toggle({
    Title = "自动锁定稀有物品",
    Value = false,
    Callback = function(State)
        pcall(function()
            task.spawn(function()
                while State do 
                    task.wait(.1)
                end
            end)
        end)
    end
})
Tabs.A18:Toggle({
    Title = "自动抓捕",
    Value = false,
    Callback = function(State)
        pcall(function()
            task.spawn(function()
                while State do
                    task.wait(2.6)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.FishCaught:FireServer()
                end
            end)
        end)
    end
})
Tabs.A18:Toggle({
    Title = "自动售卖",
    Value = false,
    Callback = function(State)
        pcall(function()
            task.spawn(function()
                while State do
                    task.wait(2.6)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemSold:InvokeServer("SellEverything")
                end
            end)
        end)
    end
})
Tabs.A18:Toggle({
    Title = "每日宝箱",
    Value = false,
    Callback = function(State)
        pcall(function()
            task.spawn(function()
                while State do
                    for i, v in pairs(game.Workspace.Islands:GetDescendants()) do
                        if v:IsA("Model") and string.match(v.Name, "Chest") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            task.wait(1)
                            fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
                        end
                    end            
                end
            end)
        end)
    end
})
Tabs.A18:Toggle({
    Title = "随机宝箱",
    Value = false,
    Callback = function(State)
        pcall(function()
            task.spawn(function()
                while State do
                    for i, v in pairs(game.Workspace.RandomChests:GetDescendants()) do
                        if v:IsA("Model") and string.match(v.Name, "Chest") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            task.wait(1)
                            fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
                        end
                    end            
                end
            end)
        end)
    end
})

Window:SelectTab(1)
Window:OnClose(function()
end)