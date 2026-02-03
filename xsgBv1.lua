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
    Title = "XSRF HUB",
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
    A3 = Window:Tab({ Title = "待添加", Icon = "" }),
    A4 = Window:Tab({ Title = "待添加", Icon = "" }),
    A5 = Window:Tab({ Title = "脚本中心", Icon = "" }),
    A6 = Window:Tab({ Title = "待添加", Icon = "" }),
    A7 = Window:Tab({ Title = "待添加", Icon = "" }),
    A8 = Window:Tab({ Title = "待添加", Icon = "" }),
    A9 = Window:Tab({ Title = "待添加", Icon = "" }),
    A10 = Window:Tab({ Title = "待添加", Icon = "" }),
    A11 = Window:Tab({ Title = "待添加", Icon = "" }),
    A12 = Window:Tab({ Title = "待添加", Icon = "" }),
    A13 = Window:Tab({ Title = "待添加", Icon = "" }),
    A14 = Window:Tab({ Title = "待添加", Icon = "" }),
    A15 = Window:Tab({ Title = "待添加", Icon = "" }),
    A16 = Window:Tab({ Title = "待添加", Icon = "" }),
    A17 = Window:Tab({ Title = "待添加", Icon = "" }),
    A18 = Window:Tab({ Title = "待添加", Icon = "" }),
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
    Title = "犯罪 这是服务器",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/XS%E7%8A%AF%E7%BD%AA.lua"))()
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

Window:SelectTab(1)
Window:OnClose(function()
end)