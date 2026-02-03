---   XSRF
---   极品UI
---   老头用了都说好
---   用完长10厘米
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
    A3 = Window:Tab({ Title = "犯罪", Icon = "" }),
    A4 = Window:Tab({ Title = "PE", Icon = "" }),
    A5 = Window:Tab({ Title = "", Icon = "" }),
    A6 = Window:Tab({ Title = "", Icon = "" }),
    A7 = Window:Tab({ Title = "", Icon = "" }),
    A8 = Window:Tab({ Title = "", Icon = "" }),
    A9 = Window:Tab({ Title = "", Icon = "" }),
    A10 = Window:Tab({ Title = "", Icon = "" }),
    A11 = Window:Tab({ Title = "", Icon = "" }),
    A12 = Window:Tab({ Title = "", Icon = "" }),
    A13 = Window:Tab({ Title = "", Icon = "" }),
    A14 = Window:Tab({ Title = "", Icon = "" }),
    A15 = Window:Tab({ Title = "", Icon = "" }),
    A16 = Window:Tab({ Title = "", Icon = "" }),
    A17 = Window:Tab({ Title = "", Icon = "" }),
    A18 = Window:Tab({ Title = "", Icon = "" }),
    A19 = Window:Tab({ Title = "", Icon = "" }),
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

Tabs.A3:Sectio({Title = "犯罪", Opened = true})
Tabs.A3:Toggle({
    Title = "犯罪",
    Value = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/XS%E7%8A%AF%E7%BD%AA.lua"))()
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