---   XS HUB
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyanai/rbx/main/lsui"))()

local OpenUI = Instance.new("ScreenGui") 
local ImageButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner") 
OpenUI.Name = "OpenUI" 
OpenUI.Parent = game:GetService("CoreGui") 
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
ImageButton.Parent = OpenUI 
ImageButton.BackgroundColor3 = Color3.fromRGB(105, 105, 105) 
ImageButton.BackgroundTransparency = 0.8
ImageButton.Position = UDim2.new(0.9, 0, 0.1, 0) 
ImageButton.Size = UDim2.new(0, 50, 0, 50) 
ImageButton.Image = "rbxassetid://14369638300" 
ImageButton.Draggable = true 
ImageButton.Transparency = 1
UICorner.CornerRadius = UDim.new(0, 200) 
UICorner.Parent = ImageButton 
ImageButton.MouseButton1Click:Connect(function()
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(true, "RightControl", false, game)
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(false, "RightControl", false, game)
end)

 local win = lib:Window("XS脚本丨Grcae丨" ..identifyexecutor() ,Color3.fromRGB(0, 255, 0), Enum.KeyCode.RightControl) 
  
 local tab = win:Tab("基础功能")
 local tab8 = win:Tab("修改功能")
 local tab2 = win:Tab("提示功能")
 local ZaXing = win:Tab("其他功能")
 
tab2:Toggle("怪物通知", false, function(state)

    function tableContains(table, element)
        return table[element] ~= nil
    end

    local MS = {
        ["eyePrime"] = "eyePrime出现",
        ["smile"] = "smile出现",
        ["elkman"] = "elkman出现",
        ["Rush"] = "Rush出现",
        ["Worm"] = "Worm出现"
    }

    function notify(message)
        game.StarterGui:SetCore("SendNotification", {
            Title = "怪物警告",
            Text = message,
            Duration = 5
        })
    end

    if state then
        workspace.ChildAdded:Connect(function(child)
            if tableContains(MS, child.Name) then 
                notify(MS[child.Name])
            end
        end)
    end
end)

tab2:Button("自动拉杆",function()
    if descendant:IsA("ParticleEmitter") then
        descendant.Rate = descendant.Rate * 10
    end
end)

workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "base" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)

tab:Toggle("高亮", false, function(state)
        if state then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end)
    
tab:Textbox("速度", "tpwalking", function(king)
		local tspeed = king
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)

tab:Toggle("穿墙", false, function(state)
local player = game.Players.LocalPlayer
        local char = player.Character
        local runService = game:GetService("RunService")
        if state then
            _G.NoClip = runService.Stepped:Connect(function()
                for _, v in pairs(char:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end)
        else
            if _G.NoClip then
                _G.NoClip:Disconnect()
                _G.NoClip = nil
            end
            for _, v in pairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end)
    
     tab:Toggle("门透视", false, function(target)
    if target then
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local markedTargets = {}

        local function createCircularUI(parent, color)
            local mid = Instance.new("Frame", parent)
            mid.AnchorPoint = Vector2.new(0.5, 0.5)
            mid.BackgroundColor3 = color
            mid.Size = UDim2.new(0, 8, 0, 8)
            mid.Position = UDim2.new(0.5, 0, 0.0001, 0) -- Adjusted position
            Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
            Instance.new("UIStroke", mid)
            
            return mid
        end

        local function markTarget(target, customName)
            if not target then return end
            local oldTag = target:FindFirstChild("Batteries")
            if oldTag then
                oldTag:Destroy()
            end
            local oldHighlight = target:FindFirstChild("Highlight")
            if oldHighlight then
                oldHighlight:Destroy()
            end
            local tag = Instance.new("BillboardGui")
            tag.Name = "Batteries"
            tag.Size = UDim2.new(0, 200, 0, 50)
            tag.StudsOffset = Vector3.new(0, 0.7, 0) -- Adjusted offset
            tag.AlwaysOnTop = true
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextStrokeTransparency = 0 
            textLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            textLabel.Font = Enum.Font.Jura
            textLabel.TextScaled = true
            textLabel.Text = customName
            textLabel.Parent = tag
            tag.Parent = target
            local highlight = Instance.new("Highlight")
            highlight.Name = "Highlight"
            highlight.Adornee = target
            highlight.FillColor = Color3.fromRGB(0, 255, 255)--中心高亮颜色
            highlight.OutlineColor = Color3.fromRGB(0, 230, 255)--高亮边框颜色
            highlight.Parent = target
            markedTargets[target] = customName
            
            -- 添加优质圆圈 UI这里被我删掉了，因为太丑了。
        end

        local function recursiveFindAll(parent, name, targets)
            for _, child in ipairs(parent:GetChildren()) do
                if child.Name == name then
                    table.insert(targets, child)
                end
                recursiveFindAll(child, name, targets)
            end
        end

        local function Itemlocationname(name, customName)
            local targets = {}
            recursiveFindAll(game, name, targets)
            for _, target in ipairs(targets) do
                markTarget(target, customName)
            end
        end

        local function Invalidplayername(playerName, customName)
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Name == playerName and player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        markTarget(head, customName)
                    end
                end
            end
        end

        if target then
            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function(character)
                    local head = character:FindFirstChild("Head")
                    if head then
                        markTarget(head, player.Name)
                    end
                end)
            end)

            game.DescendantAdded:Connect(function(descendant)
                if descendant.Name == "Cube" then
                    markTarget(descendant, "门")
                end
            end)

            RunService.RenderStepped:Connect(function()
                for target, customName in pairs(markedTargets) do
                    if target and target:FindFirstChild("Batteries") then
                        target.Batteries.TextLabel.Text = customName
                    else
                        if target then
                            markTarget(target, customName)
                        end
                    end
                end
            end)

            Invalidplayername("玩家名称", "玩家")
            Itemlocationname("Cube", "门")
        else
            for target, _ in pairs(markedTargets) do
                if target:FindFirstChild("Batteries") then
                    target.Batteries:Destroy()
                end
                if target:FindFirstChild("Highlight") then
                    target.Highlight:Destroy()
                end
            end
            markedTargets = {}
        end
    end    
end)

tab:Toggle("管道透视", false, function(state)
    if state then
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local markedTargets = {}

        local function createCircularUI(parent, color)
            local mid = Instance.new("Frame", parent)
            mid.AnchorPoint = Vector2.new(0.5, 0.5)
            mid.BackgroundColor3 = color
            mid.Size = UDim2.new(0, 8, 0, 8)
            mid.Position = UDim2.new(0.5, 0, 0.0001, 0) -- Adjusted position
            Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
            Instance.new("UIStroke", mid)
            
            return mid
        end

        local function markTarget(target, customName)
            if not target then return end
            local oldTag = target:FindFirstChild("Batteries")
            if oldTag then
                oldTag:Destroy()
            end
            local oldHighlight = target:FindFirstChild("Highlight")
            if oldHighlight then
                oldHighlight:Destroy()
            end
            local tag = Instance.new("BillboardGui")
            tag.Name = "Batteries"
            tag.Size = UDim2.new(0, 200, 0, 50)
            tag.StudsOffset = Vector3.new(0, 0.7, 0) -- Adjusted offset
            tag.AlwaysOnTop = true
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextStrokeTransparency = 0 
            textLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.TextColor3 = Color3.fromRGB(0, 0, 255)
            textLabel.Font = Enum.Font.Jura
            textLabel.TextScaled = true
            textLabel.Text = customName
            textLabel.Parent = tag
            tag.Parent = target
            local highlight = Instance.new("Highlight")
            highlight.Name = "Highlight"
            highlight.Adornee = target
            highlight.FillColor = Color3.fromRGB(0, 0, 255)--中心高亮颜色
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)--高亮边框颜色
            highlight.Parent = target
            markedTargets[target] = customName
            
            -- 添加优质圆圈 UI这里被我删掉了，因为太丑了。
        end

        local function recursiveFindAll(parent, name, targets)
            for _, child in ipairs(parent:GetChildren()) do
                if child.Name == name then
                    table.insert(targets, child)
                end
                recursiveFindAll(child, name, targets)
            end
        end

        local function Itemlocationname(name, customName)
            local targets = {}
            recursiveFindAll(game, name, targets)
            for _, target in ipairs(targets) do
                markTarget(target, customName)
            end
        end

        local function Invalidplayername(playerName, customName)
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Name == playerName and player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        markTarget(head, customName)
                    end
                end
            end
        end

        if state then
            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function(character)
                    local head = character:FindFirstChild("Head")
                    if head then
                        markTarget(head, player.Name)
                    end
                end)
            end)

            game.DescendantAdded:Connect(function(descendant)
                if descendant.Name == "VaultEntrance" then
                    markTarget(descendant, "管道")
                end
            end)

            RunService.RenderStepped:Connect(function()
                for target, customName in pairs(markedTargets) do
                    if target and target:FindFirstChild("Batteries") then
                        target.Batteries.TextLabel.Text = customName
                    else
                        if target then
                            markTarget(target, customName)
                        end
                    end
                end
            end)

            Invalidplayername("玩家名称", "玩家")
            Itemlocationname("VaultEntrance", "管道")
        else
            for target, _ in pairs(markedTargets) do
                if target:FindFirstChild("Batteries") then
                    target.Batteries:Destroy()
                end
                if target:FindFirstChild("Highlight") then
                    target.Highlight:Destroy()
                end
            end
            markedTargets = {}
        end
    end    
end)

 tab:Toggle("拉闸透视", false, function(state)
    if state then
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local markedTargets = {}

        local function createCircularUI(parent, color)
            local mid = Instance.new("Frame", parent)
            mid.AnchorPoint = Vector2.new(0.5, 0.5)
            mid.BackgroundColor3 = color
            mid.Size = UDim2.new(0, 8, 0, 8)
            mid.Position = UDim2.new(0.5, 0, 0.0001, 0) -- Adjusted position
            Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
            Instance.new("UIStroke", mid)
            
            return mid
        end

        local function markTarget(target, customName)
            if not target then return end
            local oldTag = target:FindFirstChild("Batteries")
            if oldTag then
                oldTag:Destroy()
            end
            local oldHighlight = target:FindFirstChild("Highlight")
            if oldHighlight then
                oldHighlight:Destroy()
            end
            local tag = Instance.new("BillboardGui")
            tag.Name = "Batteries"
            tag.Size = UDim2.new(0, 200, 0, 50)
            tag.StudsOffset = Vector3.new(0, 0.7, 0) -- Adjusted offset
            tag.AlwaysOnTop = true
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextStrokeTransparency = 0 
            textLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            textLabel.Font = Enum.Font.Jura
            textLabel.TextScaled = true
            textLabel.Text = customName
            textLabel.Parent = tag
            tag.Parent = target
            local highlight = Instance.new("Highlight")
            highlight.Name = "Highlight"
            highlight.Adornee = target
            highlight.FillColor = Color3.fromRGB(0, 255, 0)--中心高亮颜色
            highlight.OutlineColor = Color3.fromRGB(0, 201, 87)--高亮边框颜色
            highlight.Parent = target
            markedTargets[target] = customName
            
            -- 添加优质圆圈 UI这里被我删掉了，因为太丑了。
        end

        local function recursiveFindAll(parent, name, targets)
            for _, child in ipairs(parent:GetChildren()) do
                if child.Name == name then
                    table.insert(targets, child)
                end
                recursiveFindAll(child, name, targets)
            end
        end

        local function Itemlocationname(name, customName)
            local targets = {}
            recursiveFindAll(game, name, targets)
            for _, target in ipairs(targets) do
                markTarget(target, customName)
            end
        end

        local function Invalidplayername(playerName, customName)
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Name == playerName and player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        markTarget(head, customName)
                    end
                end
            end
        end

        if state then
            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function(character)
                    local head = character:FindFirstChild("Head")
                    if head then
                        markTarget(head, player.Name)
                    end
                end)
            end)

            game.DescendantAdded:Connect(function(descendant)
                if descendant.Name == "Breaker" then
                    markTarget(descendant, "拉杆")
                end
            end)

            RunService.RenderStepped:Connect(function()
                for target, customName in pairs(markedTargets) do
                    if target and target:FindFirstChild("Batteries") then
                        target.Batteries.TextLabel.Text = customName
                    else
                        if target then
                            markTarget(target, customName)
                        end
                    end
                end
            end)

            Invalidplayername("玩家名称", "玩家")
            Itemlocationname("Breaker", "拉杆")
        else
            for target, _ in pairs(markedTargets) do
                if target:FindFirstChild("Batteries") then
                    target.Batteries:Destroy()
                end
                if target:FindFirstChild("Highlight") then
                    target.Highlight:Destroy()
                end
            end
            markedTargets = {}
        end
    end    
end)
   
 tab:Toggle("Worm透视", false, function(state)
    if state then
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local markedTargets = {}

        local function createCircularUI(parent, color)
            local mid = Instance.new("Frame", parent)
            mid.AnchorPoint = Vector2.new(0.5, 0.5)
            mid.BackgroundColor3 = color
            mid.Size = UDim2.new(0, 8, 0, 8)
            mid.Position = UDim2.new(0.5, 0, 0.0001, 0) -- Adjusted position
            Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
            Instance.new("UIStroke", mid)
            
            return mid
        end

        local function markTarget(target, customName)
            if not target then return end
            local oldTag = target:FindFirstChild("Batteries")
            if oldTag then
                oldTag:Destroy()
            end
            local oldHighlight = target:FindFirstChild("Highlight")
            if oldHighlight then
                oldHighlight:Destroy()
            end
            local tag = Instance.new("BillboardGui")
            tag.Name = "Batteries"
            tag.Size = UDim2.new(0, 200, 0, 50)
            tag.StudsOffset = Vector3.new(0, 0.7, 0) -- Adjusted offset
            tag.AlwaysOnTop = true
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextStrokeTransparency = 0 
            textLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)--自的边框颜色
            textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)--字的颜色
            textLabel.Font = Enum.Font.Jura
            textLabel.TextScaled = true
            textLabel.Text = customName
            textLabel.Parent = tag
            tag.Parent = target
            local highlight = Instance.new("Highlight")
            highlight.Name = "Highlight"
            highlight.Adornee = target
            highlight.FillColor = Color3.fromRGB(0, 0, 255)--中心高亮颜色
            highlight.OutlineColor = Color3.fromRGB(0, 0, 0)--高亮边框颜色
            highlight.Parent = target
            markedTargets[target] = customName
            
            -- 添加优质圆圈 UI这里被我删掉了，因为太丑了。
        end

        local function recursiveFindAll(parent, name, targets)
            for _, child in ipairs(parent:GetChildren()) do
                if child.Name == name then
                    table.insert(targets, child)
                end
                recursiveFindAll(child, name, targets)
            end
        end

        local function Itemlocationname(name, customName)
            local targets = {}
            recursiveFindAll(game, name, targets)
            for _, target in ipairs(targets) do
                markTarget(target, customName)
            end
        end

        local function Invalidplayername(playerName, customName)
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Name == playerName and player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        markTarget(head, customName)
                    end
                end
            end
        end

        if state then
            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function(character)
                    local head = character:FindFirstChild("Head")
                    if head then
                        markTarget(head, player.Name)
                    end
                end)
            end)

            game.DescendantAdded:Connect(function(descendant)
                if descendant.Name == "Worm" then
                    markTarget(descendant, "Worm")
                end
            end)

            RunService.RenderStepped:Connect(function()
                for target, customName in pairs(markedTargets) do
                    if target and target:FindFirstChild("Batteries") then
                        target.Batteries.TextLabel.Text = customName
                    else
                        if target then
                            markTarget(target, customName)
                        end
                    end
                end
            end)

            Invalidplayername("玩家名称", "玩家")
            Itemlocationname("Worm", "Worm")
        else
            for target, _ in pairs(markedTargets) do
                if target:FindFirstChild("Batteries") then
                    target.Batteries:Destroy()
                end
                if target:FindFirstChild("Highlight") then
                    target.Highlight:Destroy()
                end
            end
            markedTargets = {}
        end
    end    
end)

 tab:Toggle("elkman透视", false, function(state)
    if state then
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local markedTargets = {}

        local function createCircularUI(parent, color)
            local mid = Instance.new("Frame", parent)
            mid.AnchorPoint = Vector2.new(0.5, 0.5)
            mid.BackgroundColor3 = color
            mid.Size = UDim2.new(0, 8, 0, 8)
            mid.Position = UDim2.new(0.5, 0, 0.0001, 0) -- Adjusted position
            Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
            Instance.new("UIStroke", mid)
            
            return mid
        end

        local function markTarget(target, customName)
            if not target then return end
            local oldTag = target:FindFirstChild("Batteries")
            if oldTag then
                oldTag:Destroy()
            end
            local oldHighlight = target:FindFirstChild("Highlight")
            if oldHighlight then
                oldHighlight:Destroy()
            end
            local tag = Instance.new("BillboardGui")
            tag.Name = "Batteries"
            tag.Size = UDim2.new(0, 200, 0, 50)
            tag.StudsOffset = Vector3.new(0, 0.7, 0) -- Adjusted offset
            tag.AlwaysOnTop = true
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextStrokeTransparency = 0 
            textLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            textLabel.Font = Enum.Font.Jura
            textLabel.TextScaled = true
            textLabel.Text = customName
            textLabel.Parent = tag
            tag.Parent = target
            local highlight = Instance.new("Highlight")
            highlight.Name = "Highlight"
            highlight.Adornee = target
            highlight.FillColor = Color3.fromRGB(0, 0, 255)--中心高亮颜色
            highlight.OutlineColor = Color3.fromRGB(0, 0, 0)--高亮边框颜色
            highlight.Parent = target
            markedTargets[target] = customName
            
            -- 添加优质圆圈 UI这里被我删掉了，因为太丑了。
        end

        local function recursiveFindAll(parent, name, targets)
            for _, child in ipairs(parent:GetChildren()) do
                if child.Name == name then
                    table.insert(targets, child)
                end
                recursiveFindAll(child, name, targets)
            end
        end

        local function Itemlocationname(name, customName)
            local targets = {}
            recursiveFindAll(game, name, targets)
            for _, target in ipairs(targets) do
                markTarget(target, customName)
            end
        end

        local function Invalidplayername(playerName, customName)
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Name == playerName and player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        markTarget(head, customName)
                    end
                end
            end
        end

        if state then
            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function(character)
                    local head = character:FindFirstChild("Head")
                    if head then
                        markTarget(head, player.Name)
                    end
                end)
            end)

            game.DescendantAdded:Connect(function(descendant)
                if descendant.Name == "elkman" then
                    markTarget(descendant, "elkman")
                end
            end)

            RunService.RenderStepped:Connect(function()
                for target, customName in pairs(markedTargets) do
                    if target and target:FindFirstChild("Batteries") then
                        target.Batteries.TextLabel.Text = customName
                    else
                        if target then
                            markTarget(target, customName)
                        end
                    end
                end
            end)

            Invalidplayername("玩家名称", "玩家")
            Itemlocationname("elkman", "elkman")
        else
            for target, _ in pairs(markedTargets) do
                if target:FindFirstChild("Batteries") then
                    target.Batteries:Destroy()
                end
                if target:FindFirstChild("Highlight") then
                    target.Highlight:Destroy()
                end
            end
            markedTargets = {}
        end
    end    
end)

 tab:Toggle("Rush透视", false, function(state)
    if state then
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local markedTargets = {}

        local function createCircularUI(parent, color)
            local mid = Instance.new("Frame", parent)
            mid.AnchorPoint = Vector2.new(0.5, 0.5)
            mid.BackgroundColor3 = color
            mid.Size = UDim2.new(0, 8, 0, 8)
            mid.Position = UDim2.new(0.5, 0, 0.0001, 0) -- Adjusted position
            Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
            Instance.new("UIStroke", mid)
            
            return mid
        end

        local function markTarget(target, customName)
            if not target then return end
            local oldTag = target:FindFirstChild("Batteries")
            if oldTag then
                oldTag:Destroy()
            end
            local oldHighlight = target:FindFirstChild("Highlight")
            if oldHighlight then
                oldHighlight:Destroy()
            end
            local tag = Instance.new("BillboardGui")
            tag.Name = "Batteries"
            tag.Size = UDim2.new(0, 200, 0, 50)
            tag.StudsOffset = Vector3.new(0, 0.7, 0) -- Adjusted offset
            tag.AlwaysOnTop = true
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextStrokeTransparency = 0 
            textLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            textLabel.Font = Enum.Font.Jura
            textLabel.TextScaled = true
            textLabel.Text = customName
            textLabel.Parent = tag
            tag.Parent = target
            local highlight = Instance.new("Highlight")
            highlight.Name = "Highlight"
            highlight.Adornee = target
            highlight.FillColor = Color3.fromRGB(0, 0, 255)--中心高亮颜色
            highlight.OutlineColor = Color3.fromRGB(0, 0, 0)--高亮边框颜色
            highlight.Parent = target
            markedTargets[target] = customName
            
            -- 添加优质圆圈 UI这里被我删掉了，因为太丑了。
        end

        local function recursiveFindAll(parent, name, targets)
            for _, child in ipairs(parent:GetChildren()) do
                if child.Name == name then
                    table.insert(targets, child)
                end
                recursiveFindAll(child, name, targets)
            end
        end

        local function Itemlocationname(name, customName)
            local targets = {}
            recursiveFindAll(game, name, targets)
            for _, target in ipairs(targets) do
                markTarget(target, customName)
            end
        end

        local function Invalidplayername(playerName, customName)
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Name == playerName and player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        markTarget(head, customName)
                    end
                end
            end
        end

        if state then
            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function(character)
                    local head = character:FindFirstChild("Head")
                    if head then
                        markTarget(head, player.Name)
                    end
                end)
            end)

            game.DescendantAdded:Connect(function(descendant)
                if descendant.Name == "Rush" then
                    markTarget(descendant, "Rush")
                end
            end)

            RunService.RenderStepped:Connect(function()
                for target, customName in pairs(markedTargets) do
                    if target and target:FindFirstChild("Batteries") then
                        target.Batteries.TextLabel.Text = customName
                    else
                        if target then
                            markTarget(target, customName)
                        end
                    end
                end
            end)

            Invalidplayername("玩家名称", "玩家")
            Itemlocationname("Rush", "Rush")
        else
            for target, _ in pairs(markedTargets) do
                if target:FindFirstChild("Batteries") then
                    target.Batteries:Destroy()
                end
                if target:FindFirstChild("Highlight") then
                    target.Highlight:Destroy()
                end
            end
            markedTargets = {}
        end
    end    
end)

tab:Toggle("eyePrime透视", false, function(state)
    if state then
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local markedTargets = {}

        local function createCircularUI(parent, color)
            local mid = Instance.new("Frame", parent)
            mid.AnchorPoint = Vector2.new(0.5, 0.5)
            mid.BackgroundColor3 = color
            mid.Size = UDim2.new(0, 8, 0, 8)
            mid.Position = UDim2.new(0.5, 0, 0.0001, 0) -- Adjusted position
            Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
            Instance.new("UIStroke", mid)
            
            return mid
        end

        local function markTarget(target, customName)
            if not target then return end
            local oldTag = target:FindFirstChild("Batteries")
            if oldTag then
                oldTag:Destroy()
            end
            local oldHighlight = target:FindFirstChild("Highlight")
            if oldHighlight then
                oldHighlight:Destroy()
            end
            local tag = Instance.new("BillboardGui")
            tag.Name = "Batteries"
            tag.Size = UDim2.new(0, 200, 0, 50)
            tag.StudsOffset = Vector3.new(0, 0.7, 0) -- Adjusted offset
            tag.AlwaysOnTop = true
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextStrokeTransparency = 0 
            textLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            textLabel.Font = Enum.Font.Jura
            textLabel.TextScaled = true
            textLabel.Text = customName
            textLabel.Parent = tag
            tag.Parent = target
            local highlight = Instance.new("Highlight")
            highlight.Name = "Highlight"
            highlight.Adornee = target
            highlight.FillColor = Color3.fromRGB(0, 0, 255)--中心高亮颜色
            highlight.OutlineColor = Color3.fromRGB(0, 0, 0)--高亮边框颜色
            highlight.Parent = target
            markedTargets[target] = customName
            
            -- 添加优质圆圈 UI这里被我删掉了，因为太丑了。
        end

        local function recursiveFindAll(parent, name, targets)
            for _, child in ipairs(parent:GetChildren()) do
                if child.Name == name then
                    table.insert(targets, child)
                end
                recursiveFindAll(child, name, targets)
            end
        end

        local function Itemlocationname(name, customName)
            local targets = {}
            recursiveFindAll(game, name, targets)
            for _, target in ipairs(targets) do
                markTarget(target, customName)
            end
        end

        local function Invalidplayername(playerName, customName)
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Name == playerName and player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        markTarget(head, customName)
                    end
                end
            end
        end

        if state then
            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function(character)
                    local head = character:FindFirstChild("Head")
                    if head then
                        markTarget(head, player.Name)
                    end
                end)
            end)

            game.DescendantAdded:Connect(function(descendant)
                if descendant.Name == "eyePrime" then
                    markTarget(descendant, "eyePrime")
                end
            end)

            RunService.RenderStepped:Connect(function()
                for target, customName in pairs(markedTargets) do
                    if target and target:FindFirstChild("Batteries") then
                        target.Batteries.TextLabel.Text = customName
                    else
                        if target then
                            markTarget(target, customName)
                        end
                    end
                end
            end)

            Invalidplayername("玩家名称", "玩家")
            Itemlocationname("eyePrime", "eyePrime")
        else
            for target, _ in pairs(markedTargets) do
                if target:FindFirstChild("Batteries") then
                    target.Batteries:Destroy()
                end
                if target:FindFirstChild("Highlight") then
                    target.Highlight:Destroy()
                end
            end
            markedTargets = {}
        end
    end    
end)
    
tab2:Toggle("Rush删除", false, function(state)
local CoreGui = game:GetService("StarterGui")

local function removeFileRecursive(parent, fileName)
    for _, child in pairs(parent:GetChildren()) do
        if child:IsA("Folder") or child:IsA("Model") then
            removeFileRecursive(child, fileName)
        elseif child.Name == fileName then
            child:Destroy()
            return true
        end
    end
    return false
end

local function main()
    while true do
        local success, err = pcall(function()
            local removed = removeFileRecursive(game, "Rush")
            if not removed then
                
            end
        end)
        if not success then
        print("e")
        end
        wait(2)
    end
end

showNotification("eyePrime实体检查", "Rush删除检测提示已开启", 5)

main()
end)

tab2:Toggle("Worm删除", false, function(state)

local function removeFileRecursive(parent, fileName)
    for _, child in pairs(parent:GetChildren()) do
        if child:IsA("Folder") or child:IsA("Model") then
            removeFileRecursive(child, fileName)
        elseif child.Name == fileName then
            child:Destroy()
            return true
        end
    end
    return false
end

local function main()
    while true do
        local success, err = pcall(function()
            local removed = removeFileRecursive(game, "Worm")
            if not removed then
                
            end
        end)
        if not success then
        print(" e")
        end
        wait(2)
    end
end

main()
end)

tab2:Toggle("eyePrime删除", false, function(state)

local function removeFileRecursive(parent, fileName)
    for _, child in pairs(parent:GetChildren()) do
        if child:IsA("Folder") or child:IsA("Model") then
            removeFileRecursive(child, fileName)
        elseif child.Name == fileName then
            child:Destroy()
            return true
        end
    end
    return false
end

local function main()
    while true do
        local success, err = pcall(function()
            local removed = removeFileRecursive(game, "eyePrime")
            if not removed then
                
            end
        end)
        if not success then
        print("1")
        end
        wait(2)
    end
end

main()
end)

tab2:Toggle("eye删除", false, function(state)

local function removeFileRecursive(parent, fileName)
    for _, child in pairs(parent:GetChildren()) do
        if child:IsA("Folder") or child:IsA("Model") then
            removeFileRecursive(child, fileName)
        elseif child.Name == fileName then
            child:Destroy()
        end
    end
    return false
end

local function main()
    while true do
        local success, err = pcall(function()
            local removed = removeFileRecursive(game, "eye")
            if not removed then
                
            end
        end)
        if not success then
        end
        wait(2)
    end
end

main()
end)

tab2:Toggle("elkman删除", false, function(state)

local function removeFileRecursive(parent, fileName)
    for _, child in pairs(parent:GetChildren()) do
        if child:IsA("Folder") or child:IsA("Model") then
            removeFileRecursive(child, fileName)
        elseif child.Name == fileName then
            child:Destroy()
            return true
        end
    end
    return false
end

local function main()
    while true do
        local success, err = pcall(function()
            local removed = removeFileRecursive(game, "elkman")
            if not removed then
                
            end
        end)
        if not success then
        end
        wait(2)
    end
end

main()
end)

tab2:Toggle("SendGoatman删除", false, function(state)

local function removeFileRecursive(parent, fileName)
    for _, child in pairs(parent:GetChildren()) do
        if child:IsA("Folder") or child:IsA("Model") then
            removeFileRecursive(child, fileName)
        elseif child.Name == fileName then
            child:Destroy()
            return true
        end
    end
    return false
end

local function main()
    while true do
        local success, err = pcall(function()
            local removed = removeFileRecursive(game, "SendGoatman")
            if not removed then
                
            end
        end)
        if not success then
        end
        wait(2)
    end
end

main()
end)

tab2:Toggle("smile删除", false, function(state)

local function removeFileRecursive(parent, fileName)
    for _, child in pairs(parent:GetChildren()) do
        if child:IsA("Folder") or child:IsA("Model") then
            removeFileRecursive(child, fileName)
        elseif child.Name == fileName then
            child:Destroy()
            return true
        end
    end
    return false
end

local function main()
    while true do
        local success, err = pcall(function()
            local removed = removeFileRecursive(game, "smile")
            if not removed then
                
            end
        end)
        if not success then
        end
        wait(2)
    end
end

main()
end)

tab2:Toggle("SendWorm删除", false, function(state)

local function removeFileRecursive(parent, fileName)
    for _, child in pairs(parent:GetChildren()) do
        if child:IsA("Folder") or child:IsA("Model") then
            removeFileRecursive(child, fileName)
        elseif child.Name == fileName then
            child:Destroy()
            return true
        end
    end
    return false
end

local function main()
    while true do
        local success, err = pcall(function()
            local removed = removeFileRecursive(game, "SendWorm")
            if not removed then
                
            end
        end)
        if not success then
        end
        wait(2)
    end
end

main()
end)

tab2:Toggle("SendSorrow删除", false, function(state)

local function removeFileRecursive(parent, fileName)
    for _, child in pairs(parent:GetChildren()) do
        if child:IsA("Folder") or child:IsA("Model") then
            removeFileRecursive(child, fileName)
        elseif child.Name == fileName then
            child:Destroy()
            return true
        end
    end
    return false
end

local function main()
    while true do
        local success, err = pcall(function()
            local removed = removeFileRecursive(game, "SendSorrow")
            if not removed then
                
            end
        end)
        if not success then
        end
        wait(2)
    end
end

main()
end)

tab8:Textbox("修改门牌数", "tpwalking", function(Value)
game:GetService("Players").LocalPlayer.PlayerGui.CurrenciesUI.Bricks.text.Text = Value
end)

tab8:Textbox("修改时间", "tpwalking", function(Value)
workspace.DEATHTIMER.Value = Value
end)

tab8:Textbox("修改钥匙", "tpwalking", function(Value)
game:GetService("Players").LocalPlayer.PlayerGui.CurrenciesUI.Keys.text.Text = Value
end)

tab8:Textbox("修改等级", "tpwalking", function(Value)
game:GetService("Players").LocalPlayer.LVL.Value = Value
end)

tab8:Textbox("修改经验条", "tpwalking", function(Value)
game:GetService("Players").LocalPlayer.XP.Value = Value
end)

tab:Button("一键删除怪物",function()
game:GetService("Players").LocalPlayer.PlayerGui.SpeedrunTimer.Timer:Destroy()
game:GetService("ReplicatedStorage").eyePrime:Destroy()
game:GetService("ReplicatedStorage").smilegui:Destroy()
game:GetService("ReplicatedStorage").elkman:Destroy()
game:GetService("ReplicatedStorage").SendRush:Destroy()
game:GetService("ReplicatedStorage").Rush:Destroy()
game:GetService("ReplicatedStorage").SendWorm:Destroy()
end)

tab:Button("彻底删除红色眼睛",function()
 workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "smile" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant:Destroy()
        end
    end
end)
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "eyePrime" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant:Destroy()
        end
    end
end)
end)

tab:Button("彻底删除elkman",function()
 workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "smile" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant:Destroy()
        end
    end
end)
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "elkman" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant:Destroy()
        end
    end
end)
end)

tab:Button("彻底删除血雨",function()
 workspace.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("byebyemyFRIENDbacktothelobby") then
        descendant.Rate = descendant.Rate * 10
    end
end)
end)

ZaXing:Button("重新加入服务器",function()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)

ZaXing:Button("到达大厅",function()
local game_id = 138837502355157 
         local game_url = "https://www.roblox.com/games/"..game_id 
         game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

ZaXing:Button("移除UI/Open UI",function()
game:GetService("CoreGui").ui:Destroy()
game:GetService("CoreGui").OpenUI:Destroy()
end)
 
tab:Button("远程开门",function()
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "promptBox" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)
end)