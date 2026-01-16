if not game:IsLoaded() then game.Loaded:Wait() end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")

local localPlayer = Players.LocalPlayer
if not localPlayer then return end

-- 主脚本URL（验证通过后加载这个）
local MAIN_SCRIPT_URL = "https://pandadevelopment.net/virtual/file/7fea4c944bf43f48"

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystemUI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui") or localPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 180, 0, 110)
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
MainFrame.BackgroundTransparency = 0
MainFrame.BorderSizePixel = 0

local Border = Instance.new("Frame")
Border.Name = "AnimatedBorder"
Border.Size = UDim2.new(1, 4, 1, 4)
Border.Position = UDim2.new(0, -2, 0, -2)
Border.BackgroundTransparency = 1
Border.BorderSizePixel = 2

local BorderGradient = Instance.new("UIGradient")
BorderGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255, 128, 0)),
    ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 0)),
    ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 128, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(128, 0, 255))
})
BorderGradient.Parent = Border

local TitleBar = Instance.new("TextButton")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 22)
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TitleBar.Text = ""

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -30, 1, 0)
Title.Position = UDim2.new(0, 5, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "卡密验证"
Title.TextColor3 = Color3.fromRGB(220, 220, 220)
Title.TextSize = 10
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 22, 0, 22)
CloseBtn.Position = UDim2.new(1, -22, 0, 0)
CloseBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
CloseBtn.Text = "×"
CloseBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
CloseBtn.TextSize = 16
CloseBtn.Font = Enum.Font.GothamBold

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, 0, 1, -22)
Content.Position = UDim2.new(0, 0, 0, 22)
Content.BackgroundTransparency = 1

local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(0, 150, 0, 24)
KeyInput.Position = UDim2.new(0.5, -75, 0, 8)
KeyInput.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
KeyInput.BorderSizePixel = 1
KeyInput.BorderColor3 = Color3.fromRGB(50, 50, 60)
KeyInput.Text = ""
KeyInput.PlaceholderText = "输入卡密"
KeyInput.TextColor3 = Color3.fromRGB(220, 220, 220)
KeyInput.TextSize = 10

local VerifyBtn = Instance.new("TextButton")
VerifyBtn.Size = UDim2.new(0, 70, 0, 22)
VerifyBtn.Position = UDim2.new(0.5, -75, 0, 40)
VerifyBtn.BackgroundColor3 = Color3.fromRGB(40, 100, 200)
VerifyBtn.Text = "验证"
VerifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyBtn.TextSize = 10

local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Size = UDim2.new(0, 70, 0, 22)
GetKeyBtn.Position = UDim2.new(0.5, 5, 0, 40)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
GetKeyBtn.Text = "获取卡密"
GetKeyBtn.TextColor3 = Color3.fromRGB(200, 200, 220)
GetKeyBtn.TextSize = 9

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -10, 0, 14)
Status.Position = UDim2.new(0, 5, 1, -20)
Status.BackgroundTransparency = 1
Status.Text = "等待验证"
Status.TextColor3 = Color3.fromRGB(180, 180, 200)
Status.TextSize = 8

Border.Parent = MainFrame
Title.Parent = TitleBar
CloseBtn.Parent = TitleBar
TitleBar.Parent = MainFrame
KeyInput.Parent = Content
VerifyBtn.Parent = Content
GetKeyBtn.Parent = Content
Status.Parent = Content
Content.Parent = MainFrame
MainFrame.Parent = ScreenGui

local validKeys = {
    ["xiao"] = true,
    ["XS-NBNBYISFR"] = true,
    ["搞鸡吗"] = true,
    ["XS卡密"] = true
}

local gradientRotation = 0
coroutine.wrap(function()
    while ScreenGui.Parent do
        gradientRotation = (gradientRotation + 0.8) % 360
        BorderGradient.Rotation = gradientRotation
        RunService.RenderStepped:Wait()
    end
end)()

local isDragging = false
local dragStartPosition
local frameStartPosition

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        dragStartPosition = input.Position
        frameStartPosition = MainFrame.Position
        
        TweenService:Create(TitleBar, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(35, 35, 45)
        }):Play()
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
        local delta = input.Position - dragStartPosition
        MainFrame.Position = UDim2.new(
            frameStartPosition.X.Scale,
            frameStartPosition.X.Offset + delta.X,
            frameStartPosition.Y.Scale,
            frameStartPosition.Y.Offset + delta.Y
        )
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
        TweenService:Create(TitleBar, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(25, 25, 35)
        }):Play()
    end
end)

local function touchFeedback(button, normalColor, touchColor)
    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
            TweenService:Create(button, TweenInfo.new(0.1), {
                BackgroundColor3 = touchColor
            }):Play()
        end
    end)
    
    button.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
            TweenService:Create(button, TweenInfo.new(0.2), {
                BackgroundColor3 = normalColor
            }):Play()
        end
    end)
end

touchFeedback(CloseBtn, Color3.fromRGB(40, 40, 50), Color3.fromRGB(255, 60, 60))
touchFeedback(VerifyBtn, Color3.fromRGB(40, 100, 200), Color3.fromRGB(50, 120, 230))
touchFeedback(GetKeyBtn, Color3.fromRGB(60, 60, 80), Color3.fromRGB(70, 70, 95))
touchFeedback(KeyInput, Color3.fromRGB(20, 20, 25), Color3.fromRGB(25, 25, 35))

CloseBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        ScreenGui:Destroy()
    end
end)

VerifyBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        local key = string.gsub(KeyInput.Text, "%s+", "")
        
        if #key < 3 then
            Status.Text = "请输入卡密"
            Status.TextColor3 = Color3.fromRGB(255, 100, 100)
            return
        end
        
        VerifyBtn.Text = "验证中"
        Status.Text = "正在验证..."
        
        wait(0.3)
        
        if validKeys[key] then
            Status.Text = "验证成功"
            Status.TextColor3 = Color3.fromRGB(100, 255, 100)
            VerifyBtn.Text = "✓"
            
            -- 验证通过，加载主脚本
            wait(0.5)
            Status.Text = "加载主脚本..."
            
            -- 加载主脚本
            local success, err = pcall(function()
                local scriptContent = game:HttpGet(MAIN_SCRIPT_URL)
                local mainScript = loadstring(scriptContent)
                if mainScript then
                    mainScript()
                end
            end)
            
            if success then
                Status.Text = "加载完成"
                wait(0.5)
                ScreenGui:Destroy()
                
                StarterGui:SetCore("SendNotification", {
                    Title = "验证成功",
                    Text = "主脚本已加载",
                    Duration = 3
                })
            else
                Status.Text = "加载失败"
                Status.TextColor3 = Color3.fromRGB(255, 100, 100)
                print("主脚本加载错误:", err)
            end
        else
            Status.Text = "卡密无效"
            Status.TextColor3 = Color3.fromRGB(255, 100, 100)
            VerifyBtn.Text = "验证"
        end
    end
end)

-- 手机自动复制功能
GetKeyBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        -- 卡密获取链接
        local keyLink = "1075226283"
        
        -- 设置输入框文本以便用户可以复制
        KeyInput.Text = keyLink
        
        -- 手机自动复制逻辑
        if UserInputService.TouchEnabled then
            -- 对于手机，选中文本以便复制
            KeyInput:CaptureFocus()
            
            -- 等待一段时间让键盘出现
            wait(0.1)
            
            -- 选中所有文本
            if KeyInput:IsFocused() then
                -- 尝试触发选择所有
                KeyInput.SelectionStart = 1
                KeyInput.CursorPosition = #keyLink + 1
                
                Status.Text = "请加q群"
                Status.TextColor3 = Color3.fromRGB(100, 200, 255)
                
                StarterGui:SetCore("SendNotification", {
                    Title = "请加q群获取",
                    Text = "1075226283",
                    Duration = 20
                })
            end
        else
            -- 对于电脑，显示在输入框并选中
            KeyInput:CaptureFocus()
            wait(0.05)
            KeyInput:ReleaseFocus()
            
            Status.Text = "Ctrl+C复制"
            Status.TextColor3 = Color3.fromRGB(100, 200, 255)
            
            StarterGui:SetCore("SendNotification", {
                Title = "链接已复制到输入框",
                Text = "按Ctrl+C复制链接",
                Duration = 3
            })
        end
        
        print("卡密获取链接:", keyLink)
    end
end)

KeyInput.Focused:Connect(function()
    TweenService:Create(KeyInput, TweenInfo.new(0.2), {
        BorderColor3 = Color3.fromRGB(80, 150, 255)
    }):Play()
end)

KeyInput.FocusLost:Connect(function()
    TweenService:Create(KeyInput, TweenInfo.new(0.2), {
        BorderColor3 = Color3.fromRGB(50, 50, 60)
    }):Play()
end)

StarterGui:SetCore("SendNotification", {
    Title = "卡密系统",
    Text = "已加载 - 长按标题拖动",
    Duration = 2
})