local REP = 10  
local autoRepair = false
local removeEffectRunning = false
local removeEffectLoop
local VIM = game:GetService("VirtualInputManager")
local Auto1x1 = false
local CL
local autoInteractEnabled = false
local interactionThread = nil
local toggleConnection = nil
local highlightEnabled = false
local originalAmbient = game.Lighting.Ambient
local originalColorShiftBottom = game.Lighting.ColorShift_Bottom
local restoringJump = false
local originalColorShiftTop = game.Lighting.ColorShift_Top
local repo = "https://raw.githubusercontent.com/XcRNB/MSV4UI/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Options = Library.Options
local Toggles = Library.Toggles

Library.ShowToggleFrameInKeybinds = true 

local Window = Library:CreateWindow({
    Title = "XSXS | 被遗弃",
    Footer = "XSXS - TNINE HUB Script团队",
    Icon = 72292989041893,
    NotifySide = "Right",
    ShowCustomCursor = true,
    AutoShow = true,
    Resizable = true,
    Center = true,
    TabPadding = 2,
    MenuFadeTime = 0.5,
    Position = UDim2.fromOffset(6, 6),
    Size = UDim2.fromOffset(620, 600),
    IconSize = UDim2.fromOffset(50, 50)
})

local Tabs = {
    XXZ = Window:AddTab("主要", "house"),
    ESP = Window:AddTab("ESP", "eye"),
    SH = Window:AddTab("自瞄", "earth"),
    ["UI Settings"] = Window:AddTab("UI调试", "settings"),
}

local Q = Tabs.XXZ:AddLeftGroupbox('修机功能丨只开一个')
local E = Tabs.XXZ:AddLeftGroupbox('其余丨玩家')
local M = Tabs.XXZ:AddLeftGroupbox('体力丨自定义')
local F = Tabs.XXZ:AddLeftGroupbox('杂项丨不重要')
local W = Tabs.XXZ:AddRightGroupbox('自动/无视功能')
local S = Tabs.XXZ:AddRightGroupbox('视觉丨可开启')
local H = Tabs.XXZ:AddRightGroupbox('攻击丨危险功能')
local A = Tabs.XXZ:AddRightGroupbox('动作丨危险功能')
local n = Tabs.ESP:AddRightGroupbox('物品功能丨ESP')
local ESPBox = Tabs.ESP:AddRightGroupbox('发电机丨ESP')
local SB = Tabs.SH:AddLeftGroupbox('幸存者丨自瞄')
local JH = Tabs.SH:AddLeftGroupbox('机会丨自瞄')
local Obf = Tabs.ESP:AddLeftGroupbox('其他丨ESP')
local ZZ = Tabs.SH:AddLeftGroupbox('自瞄丨杀手')
local SC = Tabs.SH:AddRightGroupbox('杀手丨自瞄')
local KILL = Tabs.SH:AddRightGroupbox('1x4丨自瞄')
local YY = Tabs.SH:AddRightGroupbox('约翰丨自瞄')
local ZM = Tabs.SH:AddRightGroupbox('玩家丨自瞄')
--修机功能

Q:AddToggle("AutoRepairAndNoClip", {
    Text = "互动修理",
    Default = false,
    Tooltip = "修发电机",
    Callback = function(state)
        autoRepair = state
        if state then
            task.spawn(function()
                while autoRepair do
                    local args = {
                        "enter"
                    }
                    local map = workspace:FindFirstChild("Map")
                    local ingame = map and map:FindFirstChild("Ingame")
                    local currentMap = ingame and ingame:FindFirstChild("Map")

                    if currentMap then
                        for _, obj in ipairs(currentMap:GetChildren()) do
                            if obj.Name == "Generator" and obj:FindFirstChild("Progress") and obj.Progress.Value < 100 then
                                local remoteEnter = obj:FindFirstChild("Remotes") and obj.Remotes:FindFirstChild("RF")
                                if remoteEnter then
                                    remoteEnter:InvokeServer(unpack(args))
                                end

                                local remoteRepair = obj:FindFirstChild("Remotes") and obj.Remotes:FindFirstChild("RE")
                                if remoteRepair then
                                    remoteRepair:FireServer()
                                end
                            end
                        end
                    end
                    task.wait()
                end
            end)
        end
    end
})

Q:AddToggle('MyToggle', {
	Text = '快速修理',
	Default = false,
	Tooltip = '2秒修理一次',
	Callback = function(state)
		_G.BTE = state
		if state then
			local function GeneratorOnce()
            local GTW = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame")
            local AUP = GTW and GTW:FindFirstChild("Map")
            if AUP then for _, g in ipairs(AUP:GetChildren()) do
            if g.Name == "Generator" and g.Progress.Value < 100 then g.Remotes.RE:FireServer()
               end
           end
     end
end
            task.spawn(function()
            while _G.BTE do
            GeneratorOnce()
            task.wait(2)
            end
        end)
		else
			print("修理发电机功能已关闭")
		end
    end
})

local MyButton = Q:AddButton({
    Text = '传送发电机',
    Func = function()
        local player = game.Players.LocalPlayer
        
        local function getValidGenerators()
            local validGenerators = {}
            local map = workspace:FindFirstChild("Map")
            local ingame = map and map:FindFirstChild("Ingame")
            local generatorFolder = ingame and ingame:FindFirstChild("Map")
            if generatorFolder then
                for _, g in ipairs(generatorFolder:GetChildren()) do
                    if g.Name == "Generator" and g:FindFirstChild("Progress") and g.Progress.Value < 100 then
                        table.insert(validGenerators, g)
                    end
                end
            end
            return validGenerators
        end

        local function getNearestGenerator()
            local validGenerators = getValidGenerators()
            local closest, shortest = nil, math.huge
            local character = player.Character
            local primaryPart = character and character.PrimaryPart
            if primaryPart then
                local pos = primaryPart.Position
                for _, g in ipairs(validGenerators) do
                    local part = g.PrimaryPart or g:FindFirstChildWhichIsA("BasePart")
                    if part then
                        local dist = (part.Position - pos).Magnitude
                        if dist < shortest then
                            shortest = dist
                            closest = g
                        end
                    end
                end
            end
            return closest
        end

        local function getGeneratorCFrame(generator)
            local TC = nil
            if generator:IsA("Model") then
                TC = generator.PrimaryPart and generator.PrimaryPart.CFrame
                if not TC then
                    for _, part in ipairs(generator:GetDescendants()) do
                        if part:IsA("BasePart") then
                            TC = part.CFrame
                            break
                        end
                    end
                end
            elseif generator:IsA("BasePart") then
                TC = generator.CFrame
            end
            return TC and (TC * CFrame.new(0, 3, 0)) or nil
        end

        autoRepairConnection = task.spawn(function()
            local target = getNearestGenerator()
            if not target then
                Library:Notify("没有发电机/已全部完成", nil, 4590657391)
                if zhuy.SetToggle then
                    zhuy:SetToggle("AutoRepairAndNoClip", false)
                end
                return
            end
            local cf = getGeneratorCFrame(target)
            local character = player.Character
            if cf and character and character.PrimaryPart then
                character:SetPrimaryPartCFrame(cf)
            end
            if zhuy.SetToggle then
                zhuy:SetToggle("AutoRepairAndNoClip", false)
            end
        end)
    end,
    DoubleClick = false,
    Tooltip = 'This is the main button'
})

Q:AddDivider()

_G.REP = 7

Q:AddSlider('MySlider', {
    Text = '演戏修理[秒]',
    Default = _G.REP,
    Min = 2,
    Max = 10,
    Rounding = 0,
    Compact = false,
    Callback = function(value)
        _G.REP = value
    end
})

Q:AddToggle('MyToggle', {
    Text = '演戏修理',
    Default = false,
    Tooltip = 'King',
    Callback = function(state)
        _G.BTE = state

        local function RepairGenerators()
            local map = workspace:FindFirstChild("Map")
            local ingame = map and map:FindFirstChild("Ingame")
            local currentMap = ingame and ingame:FindFirstChild("Map")

            if currentMap then
                for _, obj in ipairs(currentMap:GetChildren()) do
                    if obj.Name == "Generator" and obj:FindFirstChild("Progress") and obj.Progress.Value < 100 then
                        local remote = obj:FindFirstChild("Remotes") and obj.Remotes:FindFirstChild("RE")
                        if remote then
                            remote:FireServer()
                        end
                    end
                end
            end
        end

        if state then
            task.spawn(function()
                while _G.BTE do
                    RepairGenerators()
                    task.wait(_G.REP or 2)
                end
            end)
        else
            Library:Notify("关闭", nil, 4590657391)
        end
    end
})

--自动功能


W:AddToggle('MyToggle', {
    Text = '移除干扰屏幕',
    Default = false,
    Tooltip = '自动删除',
    Callback = function(state)
        local player = game:GetService("Players").LocalPlayer
        local epilepsyMode = player:WaitForChild("EpilepsyMode")
        local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent")
        if state and not removeEffectRunning then
            removeEffectRunning = true
            removeEffectLoop = task.spawn(function()
                while removeEffectRunning do
                    local args = {
                        [1] = "UpdateSettings",
                        [2] = epilepsyMode,
                        [3] = true
                    }
                    remoteEvent:FireServer(unpack(args))
                    task.wait(1)
                end
            end)
        elseif not state then
            removeEffectRunning = false
            local args = {
                [1] = "UpdateSettings",
                [2] = epilepsyMode,
                [3] = false
            }
            remoteEvent:FireServer(unpack(args))
        end
    end
})


W:AddToggle('MyToggle', {
    Text = '自动1X4弹窗',
    Default = false,
    Tooltip = '自动点击',
    Callback = function(state)
        Auto1x1 = state
        if state and not CL then
            CL = task.spawn(function()
                while Auto1x1 do
                    local player = game:GetService("Players").LocalPlayer
                    local popups = player.PlayerGui.TemporaryUI:GetChildren()
                    for _, i in ipairs(popups) do
                        if i.Name == "1x1x1x1Popup" then
                            local centerX = i.AbsolutePosition.X + (i.AbsoluteSize.X / 2)
                            local centerY = i.AbsolutePosition.Y + (i.AbsoluteSize.Y / 2)
                            VIM:SendMouseButtonEvent(centerX, centerY, Enum.UserInputType.MouseButton1.Value, true, player.PlayerGui, 1)
                            VIM:SendMouseButtonEvent(centerX, centerY, Enum.UserInputType.MouseButton1.Value, false, player.PlayerGui, 1)
                        end
                    end
                    task.wait(0.1)
                end
            end)
        elseif not state then
            if CL then
                CL:Cancel()
                CL = nil
            end
        end
    end
})

W:AddToggle("ignore_traps", {
    Text = "无视陷阱",
    Default = false,
    Tooltip = '约翰的陷阱',
    Callback = function(v)
        if v then
            local name = game.Players.LocalPlayer.Name
            for _,obj in pairs(workspace:GetDescendants()) do
                if obj.Name == name.."Shadows" and obj:FindFirstChild("Shadow") then
                    obj.Shadow.CanTouch = false
                    obj.Shadow.CanCollide = false
                end
            end
            trapConn = workspace.DescendantAdded:Connect(function(obj)
                if obj.Name == name.."Shadows" and obj:FindFirstChild("Shadow") then
                    obj.Shadow.CanTouch = false
                    obj.Shadow.CanCollide = false
                end
            end)
        elseif trapConn then
            trapConn:Disconnect()
            trapConn = nil
        end
    end
})

W:AddToggle("ignore_spikes", {
    Text = "无视404标记", 
    Default = false,
    Tooltip = '约翰404标记',
    Callback = function(v)
        if v then
            for _,obj in pairs(workspace:GetDescendants()) do
                if obj.Name == "Spike" and obj:FindFirstChild("Wedge") then
                    obj.Wedge.CanTouch = false
                    obj.Wedge.CanCollide = false
                end
            end
            spikeConn = workspace.DescendantAdded:Connect(function(obj)
                if obj.Name == "Spike" and obj:FindFirstChild("Wedge") then
                    obj.Wedge.CanTouch = false
                    obj.Wedge.CanCollide = false
                end
            end)
        elseif spikeConn then
            spikeConn:Disconnect()
            spikeConn = nil
        end
    end
})

do
    local running = false
    local connection
    local lastCheck = 0

    W:AddToggle('MyToggle', {
        Text = '无约翰尾气',
        Default = false,
        Tooltip = 'ji',
        Callback = function(state)
            running = state
            
            if connection then
                connection:Disconnect()
                connection = nil
            end

            if state then
                connection = game:GetService("RunService").Heartbeat:Connect(function()
                    local now = tick()
                    if now - lastCheck > 1 then  
                        lastCheck = now
                        local johnTrail = workspace:FindFirstChild("Players")
                            and workspace.Players:FindFirstChild("Killers")
                            and workspace.Players.Killers:FindFirstChild("JohnDoe")
                            and workspace.Players.Killers.JohnDoe:FindFirstChild("JohnDoeTrail")
                        
                        if johnTrail and johnTrail:IsA("Folder") then
                            for _, part in ipairs(johnTrail:GetDescendants()) do
                                if part:IsA("BasePart") then
                                    for _, child in ipairs(part:GetChildren()) do
                                        if child:IsA("TouchTransmitter") then
                                            child:Destroy()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    })
end

Q:AddDivider()

W:AddToggle('MyToggle', {
    Text = '访客自动防御[测试版]',
    Default = false,
    Tooltip = '自动进行攻击',
    Callback = function(state)
        AutoAttack = state
        if state and not AttackLoop then
            AttackLoop = task.spawn(function()
                while AutoAttack do
                    local char = game.Players.LocalPlayer.Character
                    if char and char:FindFirstChild("HumanoidRootPart") then
                        local root = char.HumanoidRootPart
                        for _, survivor in pairs(workspace.Players.Survivors:GetChildren()) do
                            if survivor:FindFirstChild("HumanoidRootPart") then
                                local distance = (root.Position - survivor.HumanoidRootPart.Position).Magnitude
                                if distance <= 5 then
                                    game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer("UseActorAbility", "Slash")
                                    game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer("UseActorAbility", "Punch")
                                    break
                                end
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        elseif not state and AttackLoop then
            AttackLoop:Cancel()
            AttackLoop = nil
        end
    end
})

--其余
local active, taskRef

E:AddToggle('秒互动', {
    Text = '秒互动',
    Default = false,
    Callback = function(state)
        active = state
        if active then
            local promptService = game:GetService("ProximityPromptService")
            promptService.PromptButtonHoldBegan:Connect(function(prompt)
                prompt.HoldDuration = 0
            end)
            
            taskRef = task.spawn(function()
                while active do
                    for _, prompt in next, workspace:GetDescendants() do
                        if prompt:IsA("ProximityPrompt") then
                            prompt.HoldDuration = 0
                        end
                    end
                    task.wait(1) 
                end
            end)
        elseif taskRef then
            task.cancel(taskRef)
            taskRef = nil
        end
    end
})

S:AddToggle('MyToggle', {
    Text = '显示聊天框丨需要每局开一次',
    Default = false,
    Tooltip = '显示聊天框',
    Callback = function(state)
    if state then
    game.TextChatService.ChatWindowConfiguration.Enabled = true
    else
    game.TextChatService.ChatWindowConfiguration.Enabled = false    
    end
    end
})

E:AddToggle('自动互动医疗包和可乐', {
    Text = '自动互动医疗包和可乐',
    Default = false,
    Tooltip = '自动与医疗包和可乐互动',
    
    Callback = function(state)
        autoInteractEnabled = state
        
        if autoInteractEnabled then
            interactionThread = task.spawn(function()
                while autoInteractEnabled and task.wait(0.5) do
                    
                    local medkit = workspace:FindFirstChild("Map", true)
                    if medkit then
                        medkit = medkit:FindFirstChild("Ingame", true)
                        if medkit then
                            medkit = medkit:FindFirstChild("Medkit", true)
                            if medkit then
                                local itemRoot = medkit:FindFirstChild("ItemRoot", true)
                                if itemRoot then
                                    local prompt = itemRoot:FindFirstChild("ProximityPrompt", true)
                                    if prompt then
                                        fireproximityprompt(prompt)
                                    end
                                end
                            end
                        end
                    end                    
               
                    local cola = workspace:FindFirstChild("Map", true)
                    if cola then
                        cola = cola:FindFirstChild("Ingame", true)
                        if cola then
                            cola = cola:FindFirstChild("BloxyCola", true)
                            if cola then
                                local itemRoot = cola:FindFirstChild("ItemRoot", true)
                                if itemRoot then
                                    local prompt = itemRoot:FindFirstChild("ProximityPrompt", true)
                                    if prompt then
                                        fireproximityprompt(prompt)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        elseif interactionThread then
            task.cancel(interactionThread)
            interactionThread = nil
        end
    end
})

local player = game.Players.LocalPlayer

E:AddToggle("TeleportPizzaToFeet", {
    Text = "快速吃披萨",
    Default = false,
    Callback = function(state)
        local running = state
        local handledPizzas = {}
        local conn

        local function isPizzaPart(obj)
            if not obj:IsA("BasePart") then
                return false
            end
            if not obj.Name:lower():find("pizza") then
                return false
            end
            return obj:FindFirstChildWhichIsA("TouchTransmitter") or obj:FindFirstChild("TouchInterest")
        end

        local function movePizzaToFeet(pizzaPart)
            local char = player.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            if hrp and pizzaPart then
                local offsetY = hrp.Size.Y / 2 + pizzaPart.Size.Y / 2 + 0.1
                pizzaPart.CFrame = CFrame.new(hrp.Position - Vector3.new(0, offsetY, 0))
            end
        end

        local function handlePizza(part)
            if handledPizzas[part] then
                return
            end
            handledPizzas[part] = true

            local ancestryConn
            ancestryConn = part.AncestryChanged:Connect(function(_, parent)
                if not parent then
                    handledPizzas[part] = nil
                    ancestryConn:Disconnect()
                end
            end)

            task.delay(0.3, function()
                if not part:IsDescendantOf(workspace) then
                    handledPizzas[part] = nil
                    return
                end
                if running then
                    movePizzaToFeet(part)
                end
            end)
        end

        local function descendantHandler(descendant)
            if running and isPizzaPart(descendant) then
                handlePizza(descendant)
            end
        end

        if running then
            for _, descendant in ipairs(workspace:GetDescendants()) do
                descendantHandler(descendant)
            end
            conn = workspace.DescendantAdded:Connect(descendantHandler)
        else
            if conn then
                conn:Disconnect()
            end
            handledPizzas = {}
        end
    end
})

E:AddToggle('MyToggle', {
    Text = '穿墙',
    Default = false,
    Tooltip = '开启或关闭穿墙功能',
    Callback = function(state)
        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local runService = game:GetService("RunService")

        if state then
            if not _G.NoClip then
                _G.NoClip = runService.Stepped:Connect(function()
                    if char and char.Parent then
                        for _, part in pairs(char:GetDescendants()) do
                            if part:IsA("BasePart") and part.CanCollide then
                                part.CanCollide = false
                            end
                        end
                    end
                end)
            end
        else
            if _G.NoClip then
                _G.NoClip:Disconnect()
                _G.NoClip = nil
            end
            if char then
                for _, part in pairs(char:GetDescendants()) do
                    if part:IsA("BasePart") and not part.CanCollide then
                        part.CanCollide = true
                    end
                end
            end
        end
    end
})

--S

S:AddToggle('MyToggle', {
    Text = '恢复跳跃',
    Default = false,
    Tooltip = '自动恢复跳跃按钮和跳跃能力',
    Callback = function(value)
        restoringJump = value

        if value then
            task.spawn(function()
                while restoringJump do
                    local player = game:GetService("Players").LocalPlayer
                    local char = player.Character or player.CharacterAdded:Wait()
                    local humanoid = char:FindFirstChildOfClass("Humanoid")
                    local jumpBtn = player:FindFirstChild("PlayerGui") and player.PlayerGui:FindFirstChild("TouchGui") and player.PlayerGui.TouchGui:FindFirstChild("TouchControlFrame") and player.PlayerGui.TouchGui.TouchControlFrame:FindFirstChild("JumpButton")

                    if humanoid then
                        humanoid.JumpPower = 50
                    end

                    if jumpBtn then
                        jumpBtn.Visible = true
                    end

                    task.wait(1) 
                end
            end)
        else
            local player = game:GetService("Players").LocalPlayer
            local char = player.Character
            local humanoid = char and char:FindFirstChildOfClass("Humanoid")
            local jumpBtn = player:FindFirstChild("PlayerGui") and player.PlayerGui:FindFirstChild("TouchGui") and player.PlayerGui.TouchGui:FindFirstChild("TouchControlFrame") and player.PlayerGui.TouchGui.TouchControlFrame:FindFirstChild("JumpButton")

            if humanoid then
                humanoid.JumpPower = 0
            end

            if jumpBtn then
                jumpBtn.Visible = false
            end
        end
    end
})



S:AddToggle('高亮模式', {
    Text = '高亮',
    Default = false,
    Tooltip = '开启/关闭高亮',
    
    Callback = function(state)
        highlightEnabled = state
        
        if highlightEnabled then
            originalAmbient = game.Lighting.Ambient
            originalColorShiftBottom = game.Lighting.ColorShift_Bottom
            originalColorShiftTop = game.Lighting.ColorShift_Top
            
            game.Lighting.Ambient = Color3.new(1, 1, 1)
            game.Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
            game.Lighting.ColorShift_Top = Color3.new(1, 1, 1)
            
            game.Lighting.Changed:Connect(function()
                if highlightEnabled then
                    game.Lighting.Ambient = Color3.new(1, 1, 1)
                    game.Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
                    game.Lighting.ColorShift_Top = Color3.new(1, 1, 1)
                end
            end)
        else
            game.Lighting.Ambient = originalAmbient
            game.Lighting.ColorShift_Bottom = originalColorShiftBottom
            game.Lighting.ColorShift_Top = originalColorShiftTop
        end
    end
})

local hideBarConnection = nil
local customIconId = "12549056837" 

S:AddInput('CustomIconInput', {
    Default = '12549056837',
    Numeric = false,
    Finished = true,
    ClearTextOnFocus = true,
    Text = '自定义玩家图标ID',
    Tooltip = '用于替换隐藏时显示的图标',
    Placeholder = '请输入图片ID',
    Callback = function(value)
        if tonumber(value) then
            customIconId = value
            Library:Notify("成功", nil, 4590657391)
        else
            Library:Notify("无效", nil, 4590657391)
        end
    end
})

S:AddToggle('MyToggle', {
    Text = '隐藏玩家栏',
    Default = false,
    Tooltip = '隐藏玩家列表及头像图标',
    Callback = function(state)
        local player = game:GetService("Players").LocalPlayer
        local playergui = player:WaitForChild("PlayerGui")
        local playerinfo = playergui:WaitForChild("TemporaryUI"):WaitForChild("PlayerInfo")
        if state then
            if not hideBarConnection then
                hideBarConnection = game:GetService("RunService").RenderStepped:Connect(function()
                    local survivors = playerinfo:FindFirstChild("CurrentSurvivors")
                    if survivors and survivors.Visible then
                        survivors.Visible = false
                    end
                    local icon = playerinfo:FindFirstChild("PlayerIcon")
                    if icon and icon.Image ~= ("rbxassetid://" .. customIconId) then
                        icon.Image = "rbxassetid://" .. customIconId
                    end
                end)
            end
        else
            if hideBarConnection then
                hideBarConnection:Disconnect()
                hideBarConnection = nil
            end
            local survivors = playerinfo:FindFirstChild("CurrentSurvivors")
            if survivors then
                survivors.Visible = true
            end
        end
    end
})

H:AddToggle('MyToggle', {
    Text = '谢德利茨基 传送攻击',
    Default = false,
    Tooltip = '触发攻击时传送至敌人',
    Callback = function(state)
        shedaim = state
        local player = game:GetService("Players").LocalPlayer
        if player.Character.Name ~= "Shedletsky" then
            if state then
                Library:Notify("请切换指定角色", nil, 4590657391)
            end
            return
        end

        if state then
            local sword = player.Character:FindFirstChild("Sword")
            if not sword then return end
                 
            if not wiyersjeh then
                wiyersjeh = sword.ChildAdded:Connect(function(child)
                    if not shedaim then return end

                    if child:IsA("Sound") then
                        local soundId = child.Name
                        if soundId == "rbxassetid://12222225" or soundId == "83851356262523" then
                            local killersFolder = workspace.Players:FindFirstChild("Killers")
                            local killer = killersFolder and killersFolder:FindFirstChildOfClass("Model")
                            if killer and killer:FindFirstChild("HumanoidRootPart") then
                                local killerHRP = killer.HumanoidRootPart
                                local playerHRP = player.Character:FindFirstChild("HumanoidRootPart")
                                if playerHRP then
                                    local originalPos = playerHRP.Position

                                    local aimLoop
                                    aimLoop = task.spawn(function()
                                        local iterations = 0
                                        while iterations < 100 and shedaim do
                                            task.wait(0.01)
                                            iterations = iterations + 1
                                            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, killerHRP.Position)
                                            playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, killerHRP.Position)
                                        end
                                        if aimLoop then aimLoop = nil end
                                    end)

                                    playerHRP.CFrame = killerHRP.CFrame * CFrame.new(3, 0, 0)
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, killerHRP.Position)

                                    Library:Notify("成功", nil, 4590657391)

                                    task.delay(1, function()
                                        local char = player.Character
                                        local hrp = char and char:FindFirstChild("HumanoidRootPart")
                                        if hrp then
                                            hrp.CFrame = CFrame.new(originalPos)
                                            Library:Notify("返回", nil, 4590657391)                                      
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end)
            end
        else
            if wiyersjeh then
                wiyersjeh:Disconnect()
                wiyersjeh = nil
            end
        end
    end
})

H:AddToggle('MyToggle', {
    Text = 'Jason 传送攻击',
    Default = false,
    Tooltip = '触发攻击时传送至敌人后再返回，期间自瞄敌人',
    Callback = function(state)
        jasonaim = state
        local player = game:GetService("Players").LocalPlayer
        
        if player.Character.Name ~= "Jason" and state then
            Library:Notify("请切换指定角色", nil, 4590657391)
            return
        end

        local jasonaimbotsounds = {
            "rbxassetid://12222225",
            "83851356262523",
            "79782181585087"
        }

        if state then
            if not jasonaimbotloop then
                jasonaimbotloop = player.Character.HumanoidRootPart.ChildAdded:Connect(function(child)
                    if not jasonaim then return end
                    
                    for _, soundId in pairs(jasonaimbotsounds) do
                        if child.Name == soundId and child:IsA("Sound") then
                            local survivors = {}
                            for _, otherPlayer in pairs(game:GetService("Players"):GetPlayers()) do
                                if otherPlayer ~= player then
                                    local character = otherPlayer.Character
                                    if character and character:FindFirstChild("HumanoidRootPart") then
                                        table.insert(survivors, character)
                                    end
                                end
                            end
                            
                            local nearestSurvivor = nil
                            local shortestDistance = math.huge
                            local playerHRP = player.Character:FindFirstChild("HumanoidRootPart")
                            
                            if playerHRP then
                                for _, survivor in pairs(survivors) do
                                    local survivorHRP = survivor.HumanoidRootPart
                                    local distance = (survivorHRP.Position - playerHRP.Position).Magnitude
                                    if distance < shortestDistance then
                                        shortestDistance = distance
                                        nearestSurvivor = survivor
                                    end
                                end
                                
                                if nearestSurvivor then
                                    local nearestHRP = nearestSurvivor.HumanoidRootPart
                                    local originalPos = playerHRP.Position
                                    
                                    playerHRP.CFrame = nearestHRP.CFrame * CFrame.new(3, 0, 0)
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, nearestHRP.Position)
                                    Library:Notify("成功", nil, 4590657391)
                                    
                                    local num = 1
                                    local maxIterations = 70
                                    
                                    while num <= maxIterations and jasonaim do
                                        task.wait(0.01)
                                        num = num + 1
                                        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, nearestHRP.Position)
                                        playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, nearestHRP.Position)
                                    end
                                    
                                    task.delay(1, function()
                                        if player.Character and playerHRP and jasonaim then
                                            playerHRP.CFrame = CFrame.new(originalPos)
                                            Library:Notify("返回", nil, 4590657391)
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end)
            end
        else
            if jasonaimbotloop then
                jasonaimbotloop:Disconnect()
                jasonaimbotloop = nil
            end
        end
    end
})

H:AddToggle('MyToggle', {
    Text = 'TwoTime 传送攻击',
    Default = false,
    Tooltip = '触发攻击时传送至敌人后再返回，期间自瞄敌人',
    Callback = function(state)
        aimbot1x1 = state
        local player = game:GetService("Players").LocalPlayer
        
        if player.Character.Name ~= "TwoTime" and state then
            Library:Notify("请切换指定角色", nil, 4590657391)
            return
        end

        local TWOsounds = {
            "rbxassetid://12222225",
            "83851356262523",
            "79782181585087"
        }

        if state then
            if not TWOloop then
                TWOloop = player.Character.HumanoidRootPart.ChildAdded:Connect(function(child)
                    if not aimbot1x1 then return end
                    
                    for _, soundId in pairs(TWOsounds) do
                        if child.Name == soundId and child:IsA("Sound") then
                            local survivors = {}
                            for _, otherPlayer in pairs(game:GetService("Players"):GetPlayers()) do
                                if otherPlayer ~= player then
                                    local character = otherPlayer.Character
                                    if character and character:FindFirstChild("HumanoidRootPart") then
                                        table.insert(survivors, character)
                                    end
                                end
                            end
                            
                            local nearestSurvivor = nil
                            local shortestDistance = math.huge
                            local playerHRP = player.Character:FindFirstChild("HumanoidRootPart")
                            
                            if playerHRP then
                                for _, survivor in pairs(survivors) do
                                    local survivorHRP = survivor.HumanoidRootPart
                                    local distance = (survivorHRP.Position - playerHRP.Position).Magnitude
                                    if distance < shortestDistance then
                                        shortestDistance = distance
                                        nearestSurvivor = survivor
                                    end
                                end
                                
                                if nearestSurvivor then
                                    local nearestHRP = nearestSurvivor.HumanoidRootPart
                                    local originalPos = playerHRP.Position
                                    
                                    playerHRP.CFrame = nearestHRP.CFrame * CFrame.new(3, 0, 0)
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, nearestHRP.Position)
                                    
                                    
                                    local num = 1
                                    local maxIterations = child.Name == "rbxassetid://79782181585087" and 220 or 100
                                    
                                    while num <= maxIterations and aimbot1x1 do
                                        task.wait(0.01)
                                        num = num + 1
                                        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, nearestHRP.Position)
                                        playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, nearestHRP.Position)
                                    end
                                    
                                    task.delay(1, function()
                                        if player.Character and playerHRP and aimbot1x1 then
                                            playerHRP.CFrame = CFrame.new(originalPos)
                                            Library:Notify("返回", nil, 4590657391)
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end)
            end
        else
            if TWOloop then
                TWOloop:Disconnect()
                TWOloop = nil
            end
        end
    end
})

--体力

local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SprintingModule = ReplicatedStorage:WaitForChild("Systems"):WaitForChild("Character"):WaitForChild("Game"):WaitForChild("Sprinting")
local GetModule = function()
    return require(SprintingModule)
end

local StaminaSettings = {
    MaxStamina = 100,
    StaminaGain = 25,
    StaminaLoss = 10,
    SprintSpeed = 28,
    InfiniteGain = 9999
}

local SettingToggles = {
    MaxStamina = true,
    StaminaGain = true,
    StaminaLoss = true,
    SprintSpeed = true
}

task.spawn(function()
    while true do
        local m = GetModule()
        for key, value in pairs(StaminaSettings) do
            if SettingToggles[key] then
                m[key] = value
            end
        end
        task.wait(0.5)
    end
end)

M:AddSlider('MySlider1', {
    Text = '体力大小',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        StaminaSettings.MaxStamina = Value
    end
})

M:AddSlider('MySlider2', {
    Text = '体力恢复',
    Default = 25,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        StaminaSettings.StaminaGain = Value
    end
})

local currentStamina = 10
M:AddSlider('MySlider3', {
    Text = '设置当前体力',
    Default = 10,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        currentStamina = Value
    end
})

local minStamina = 99
M:AddSlider('MinStaminaSlider', {
    Text = '设置最小体力',
    Default = 99,
    Min = 0,
    Max = 500,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        minStamina = Value
    end
})

M:AddSlider('MySlider3', {
    Text = '体力消耗',
    Default = 10,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        StaminaSettings.StaminaLoss = Value
    end
})

M:AddSlider('MySlider4', {
    Text = '奔跑速度',
    Default = 28,
    Min = 0,
    Max = 200,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        StaminaSettings.SprintSpeed = Value
    end
})

M:AddSlider('InfStaminaGainSlider', {
    Text = '无限体力恢复速度',
    Default = 9999,
    Min = 0,
    Max = 50000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        StaminaSettings.InfiniteGain = Value
    end
})

local bai = {Spr = false}
local connection

SPy = M:AddToggle("FlyToggle", {
    Text = "无限体力",
    Default = false,
    Callback = function(state)
        bai.Spr = state
        local Sprinting = GetModule()
        if state then
            Sprinting.StaminaLoss = 0
            Sprinting.StaminaGain = StaminaSettings.InfiniteGain
            if connection then
                connection:Disconnect()
            end
            connection = RunService.Heartbeat:Connect(function()
                if not bai.Spr then return end
                Sprinting.StaminaLoss = 0
                Sprinting.StaminaGain = StaminaSettings.InfiniteGain
            end)
        else
            Sprinting.StaminaLoss = StaminaSettings.StaminaLoss
            Sprinting.StaminaGain = StaminaSettings.StaminaGain
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end
}):AddKeyPicker("FlyKeyPicker", {
    Text = "无限体力",
    Default = "F",
    Mode = "Toggle",
    SyncToggleState = true,
})

--F

local defaultMusicId = "rbxassetid://53613352374472"
local customMusicId = nil
local enableCustomMusic = true
local hasEnabledBefore = false

F:AddToggle("EnableCustomMusic", {
    Text = "启用自定义音乐",
    Default = false,
    Tooltip = "开启后才能修改大厅音乐，再次启用将需要确认",
    Callback = function(state)
        if state then
            if hasEnabledBefore then
                Library:Notify("再次启用将立即生效，如确认请再次点击开关", nil, 4590657391)
                hasEnabledBefore = false
                enableCustomMusic = false
            else
                enableCustomMusic = true
                hasEnabledBefore = true
                Library:Notify("自定义音乐功能开启", nil, 4590657391)
            end
        else
            enableCustomMusic = false
            hasEnabledBefore = false
            Library:Notify("自定义音乐功能关闭", nil, 4590657391)
        end
    end
})

F:AddInput('LobbyMusicInput', {
    Default = '请使用rbxassetid://音乐id格式',
    Numeric = false,
    Finished = false,
    ClearTextOnFocus = true,
    Text = '修改大厅音乐',
    Tooltip = '修改大厅音乐为自定义音效',
    Placeholder = '请使用rbxassetid://音乐id格式',
    Callback = function(value)
        if not enableCustomMusic then
            Library:Notify("请先启用自定义音乐", nil, 4590657391)
            return
        end
        if typeof(value) == "string" and value:match("^rbxassetid://%d+$") then
            local themes = workspace:FindFirstChild("Themes")
            local lobbySound = themes and themes:FindFirstChild("lobby")
            if lobbySound and lobbySound:IsA("Sound") then
                customMusicId = value
                lobbySound.SoundId = value
                lobbySound:Stop()
                lobbySound:Play()
            else
                Library:Notify("音乐错误", nil, 4590657391)
            end
        else
            Library:Notify("请输入有效格式: rbxassetid://数字", nil, 4590657391)
        end
    end
})

F:AddToggle("UseDefaultLobbyMusic", {
    Text = "原版大厅音乐",
    Default = false,
    Tooltip = "切换是否使用原版大厅音乐",
    Callback = function(state)
        if not enableCustomMusic then
            Library:Notify("请先启用自定义音乐", nil, 4590657391)
            return
        end
        local themes = workspace:FindFirstChild("Themes")
        local lobbySound = themes and themes:FindFirstChild("lobby")
        if lobbySound and lobbySound:IsA("Sound") then
            if state then
                lobbySound.SoundId = defaultMusicId
            elseif customMusicId then
                lobbySound.SoundId = customMusicId
            end
            lobbySound:Stop()
            lobbySound:Play()
        end
    end
})

F:AddButton({
    Text = '点击复制音效格式',
    Func = function()
        setclipboard("rbxassetid://123456789")
        Library:Notify("复制成功", nil, 4590657391)
    end,
    DoubleClick = false,
    Tooltip = '复制格式: rbxassetid://音乐ID'
})

F:AddInput('skyboxInput', {
    Default = '请输入素材ID（纯数字）',
    Numeric = false,
    Finished = false,
    ClearTextOnFocus = true,
    Text = '天空图片修改',
    Tooltip = '修改天空盒材质',
    Placeholder = '只输入数字即可',
    Callback = function(value)
        if type(value) ~= 'string' or not value:match('^%d+$') then
            Library:Notify("无效ID，请输入纯数字", nil, 4590657391)
            return
        end
        local id = "rbxassetid://" .. value
        local Lighting = game:GetService('Lighting')
        for _, obj in ipairs(Lighting:GetChildren()) do
            if obj:IsA('Sky') then
                obj:Destroy()
            end
        end
        local sky = Instance.new('Sky')
        sky.Name = 'CustomSky'
        for _, face in ipairs({
            'SkyboxBk',
            'SkyboxDn',
            'SkyboxFt',
            'SkyboxLf',
            'SkyboxRt',
            'SkyboxUp'
        }) do
            sky[face] = id
        end
        sky.Parent = Lighting
        Lighting.ClockTime = 20
        Lighting.Ambient = Color3.fromRGB(5, 10, 50)
        Lighting.OutdoorAmbient = Color3.fromRGB(20, 40, 100)
        Lighting.Brightness = 1
    end
})

F:AddButton({
    Text = '点击复制样品天空图片id',
    Func = function()
        setclipboard("131975569181800")
        Library:Notify("成功", nil, 4590657391)
    end,
    DoubleClick = false,
    Tooltip = '复制格式: rbxassetid://音乐ID'
})

local player = game:GetService("Players").LocalPlayer
local activeToggles = {}

local function SetupAction(toggleName, animationId, soundId, emoteName, cleanupAssets, isVIP)
    return function(state)
        if state then
            for name, func in pairs(activeToggles) do
                if name ~= toggleName and func then
                    func(false)
                end
            end
            activeToggles[toggleName] = nil
        end

        local char = player.Character or player.CharacterAdded:Wait()
        local humanoid = char:WaitForChild("Humanoid")
        local rootPart = char:WaitForChild("HumanoidRootPart")

        if state then
            humanoid.PlatformStand = true
            humanoid.JumpPower = 0
            
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
            bodyVelocity.Velocity = Vector3.zero
            bodyVelocity.Parent = rootPart
            
            local animation = Instance.new("Animation")
            animation.AnimationId = animationId
            local animationTrack = humanoid:LoadAnimation(animation)
            animationTrack:Play()
            
            if soundId then
                local sound = Instance.new("Sound")
                sound.SoundId = soundId
                sound.Parent = rootPart
                sound.Volume = 0.5
                sound.Looped = isVIP or false
                sound:Play()
            end
            
            if isVIP then
                local effect = game:GetService("ReplicatedStorage").Assets.Emotes.HakariDance.HakariBeamEffect:Clone()
                effect.Name = "PlayerEmoteVFX"
                effect.CFrame = char.PrimaryPart.CFrame * CFrame.new(0, -1, -0.3)
                effect.WeldConstraint.Part0 = char.PrimaryPart
                effect.WeldConstraint.Part1 = effect
                effect.Parent = char
                effect.CanCollide = false
            end
            
            if emoteName then
                pcall(function()
                    game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer("PlayEmote", "Animations", emoteName)
                end)
            end
            
            local stopConnection
            stopConnection = animationTrack.Stopped:Connect(function()
                humanoid.PlatformStand = false
                if bodyVelocity and bodyVelocity.Parent then
                    bodyVelocity:Destroy()
                end
                if cleanupAssets then
                    for _, assetName in ipairs(cleanupAssets) do
                        local asset = char:FindFirstChild(assetName)
                        if asset then asset:Destroy() end
                    end
                end
                if isVIP then
                    local effect = char:FindFirstChild("PlayerEmoteVFX")
                    if effect then effect:Destroy() end
                end
                if stopConnection then
                    stopConnection:Disconnect()
                end
                activeToggles[toggleName] = nil
            end)
            
            activeToggles[toggleName] = function(offState)
                if not offState then return end
                humanoid.PlatformStand = false
                if bodyVelocity and bodyVelocity.Parent then
                    bodyVelocity:Destroy()
                end
                if soundId then
                    local sound = rootPart:FindFirstChildOfClass("Sound")
                    if sound then
                        sound:Stop()
                        sound:Destroy()
                    end
                end
                if cleanupAssets then
                    for _, assetName in ipairs(cleanupAssets) do
                        local asset = char:FindFirstChild(assetName)
                        if asset then asset:Destroy() end
                    end
                end
                if isVIP then
                    local effect = char:FindFirstChild("PlayerEmoteVFX")
                    if effect then effect:Destroy() end
                end
                animationTrack:Stop()
                if stopConnection then
                    stopConnection:Disconnect()
                end
                activeToggles[toggleName] = nil
            end
        else
            if activeToggles[toggleName] then
                activeToggles[toggleName](true)
            end
        end
    end
end

local actionConfigs = {
    {
        Name = "MissTheQuiet",
        Text = "Miss The Quiet",
        AnimationId = "rbxassetid://100986631322204",
        SoundId = "rbxassetid://131936418953291",
        CleanupAssets = {"EmoteHatAsset", "EmoteLighting", "PlayerEmoteHand"}
    },
    {
        Name = "AwShucks",
        Text = "Aw Shucks",
        AnimationId = "rbxassetid://74238051754912",
        SoundId = "rbxassetid://123236721947419",
        EmoteName = "Shucks"
    },
    {
        Name = "Subterfuge",
        Text = "Subterfuge",
        AnimationId = "rbxassetid://87482480949358",
        SoundId = "rbxassetid://132297506693854",
        EmoteName = "_Subterfuge"
    },
    {
        Name = "SillyOfIt",
        Text = "Silly of it",
        AnimationId = "rbxassetid://107464355830477",
        SoundId = "rbxassetid://120176009143091",
        CleanupAssets = {"EmoteHatAsset", "EmoteLighting", "PlayerEmoteHand"}
    },
    {
        Name = "VIPOld",
        Text = "VIP [旧版]",
        AnimationId = "rbxassetid://138019937280193",
        SoundId = "rbxassetid://87166578676888",
        EmoteName = "HakariDance",
        IsVIP = true
    },
    {
        Name = "VIPNew",
        Text = "VIP [新版]",
        AnimationId = "rbxassetid://138019937280193",
        SoundId = "rbxassetid://109474987384441",
        EmoteName = "HakariDance",
        IsVIP = true
    }
}

for _, config in ipairs(actionConfigs) do
    A:AddToggle(config.Name.."Toggle", {
        Text = config.Text,
        Default = false,
        Tooltip = "点击切换",
        Callback = SetupAction(
            config.Name,
            config.AnimationId,
            config.SoundId,
            config.EmoteName,
            config.CleanupAssets,
            config.IsVIP
        )
    })
end

local KillersConfig = {
    TextSize = 15,
    ShowDistance = false,
    OutlineDepth = 0,
    FillDepth = 0.5,
    OutlineColor = Color3.new(1, 0, 0),
    FillColor = Color3.new(1, 0, 0),
    TextColor = Color3.new(1, 0, 0),
    Connections = {}
}

local SurvivorsConfig = {
    TextSize = 15,
    ShowDistance = false,
    OutlineDepth = 0,
    FillDepth = 0.5,
    OutlineColor = Color3.new(0, 1, 1),
    FillColor = Color3.new(0, 1, 1),
    TextColor = Color3.new(0, 1, 1),
    Connections = {}
}

local HealthBarConfig = {
    Enabled = false,
    Color = Color3.new(0, 1, 1),
    Connections = {},
    Bars = {}
}

local function CreateBillboard(target, config)
    if not target:FindFirstChild("ESP_Billboard") then
        local adornee = target.PrimaryPart or target:FindFirstChild("HumanoidRootPart")
        if not adornee then
            task.delay(0.1, function()
                adornee = target.PrimaryPart or target:FindFirstChild("HumanoidRootPart") or target:FindFirstChild("Head")
                if not adornee then
                    return
                end
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "ESP_Billboard"
                billboard.Adornee = adornee
                billboard.Size = UDim2.new(0, 150, 0, 30)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                billboard.Parent = target

                local nameLabel = Instance.new("TextLabel")
                nameLabel.Name = "MainLabel"
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = target.Name
                nameLabel.TextColor3 = config.TextColor
                nameLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                nameLabel.TextStrokeTransparency = 0
                nameLabel.TextSize = config.TextSize
                nameLabel.Font = Enum.Font.GothamBold
            end)
        else
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "ESP_Billboard"
            billboard.Adornee = adornee
            billboard.Size = UDim2.new(0, 150, 0, 30)
            billboard.StudsOffset = Vector3.new(0, 3, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = target

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Name = "MainLabel"
            nameLabel.Parent = billboard
            nameLabel.Size = UDim2.new(1, 0, 1, 0)
            nameLabel.BackgroundTransparency = 1
            nameLabel.Text = target.Name
            nameLabel.TextColor3 = config.TextColor
            nameLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
            nameLabel.TextStrokeTransparency = 0
            nameLabel.TextSize = config.TextSize
            nameLabel.Font = Enum.Font.GothamBold
        end
    end
end

local function CreateHighlight(target, config)
    if not target:FindFirstChild("Item_Highlight") then
        local highlight = Instance.new("Highlight")
        highlight.Name = "Item_Highlight"
        highlight.Parent = target
        highlight.OutlineColor = config.OutlineColor
        highlight.FillColor = config.FillColor
        highlight.FillTransparency = config.FillDepth
        highlight.OutlineTransparency = config.OutlineDepth
    end
end

local function UpdateColors(targetType, config)
    local folder = workspace.Players[targetType]
    for _, v in ipairs(folder:GetChildren()) do
        if v:IsA("Model") then
            if v:FindFirstChild("ESP_Billboard") then
                v.ESP_Billboard.MainLabel.TextColor3 = config.TextColor
            end
            local highlight = v:FindFirstChild("Item_Highlight")
            if highlight then
                highlight.OutlineColor = config.OutlineColor
                highlight.FillColor = config.FillColor
            end
        end
    end
end

local function SetupESPGroup(group, targetType, config)
    local ESPGroup = Tabs.ESP:AddLeftGroupbox(targetType == "Killers" and "杀手设置" or "幸存者设置")

    ESPGroup:AddToggle("Toggle" .. targetType, {
        Text = "显示名称",
        Default = false,
        Callback = function(state)
            if state then
                for _, v in ipairs(workspace.Players[targetType]:GetChildren()) do
                    if v:IsA("Model") then
                        CreateBillboard(v, config)
                    end
                end
                config.Connections.ChildAdded = workspace.Players[targetType].ChildAdded:Connect(function(v)
                    if v:IsA("Model") then
                        task.delay(0.1, function()
                            CreateBillboard(v, config)
                        end)
                    end
                end)
            else
                if config.Connections.ChildAdded then
                    config.Connections.ChildAdded:Disconnect()
                end
                for _, v in ipairs(workspace.Players[targetType]:GetChildren()) do
                    if v:FindFirstChild("ESP_Billboard") then
                        v.ESP_Billboard:Destroy()
                    end
                end
            end
        end
    })

    ESPGroup:AddToggle("Highlight" .. targetType, {
        Text = "高亮显示",
        Default = false,
        Callback = function(state)
            if state then
                for _, v in ipairs(workspace.Players[targetType]:GetChildren()) do
                    if v:IsA("Model") then
                        CreateHighlight(v, config)
                    end
                end
                config.Connections.HighlightAdded = workspace.Players[targetType].ChildAdded:Connect(function(v)
                    if v:IsA("Model") then
                        task.delay(0.1, function()
                            CreateHighlight(v, config)
                        end)
                    end
                end)
            else
                if config.Connections.HighlightAdded then
                    config.Connections.HighlightAdded:Disconnect()
                end
                for _, v in ipairs(workspace.Players[targetType]:GetChildren()) do
                    local highlight = v:FindFirstChild("Item_Highlight")
                    if highlight then
                        highlight:Destroy()
                    end
                end
            end
        end
    })

    ESPGroup:AddLabel("轮廓颜色"):AddColorPicker("Outline" .. targetType, {
        Default = config.OutlineColor,
        Callback = function(value)
            config.OutlineColor = value
            UpdateColors(targetType, config)
        end
    })

    ESPGroup:AddLabel("填充颜色"):AddColorPicker("Fill" .. targetType, {
        Default = config.FillColor,
        Callback = function(value)
            config.FillColor = value
            UpdateColors(targetType, config)
        end
    })

    ESPGroup:AddLabel("文字颜色"):AddColorPicker("Text" .. targetType, {
        Default = config.TextColor,
        Callback = function(value)
            config.TextColor = value
            UpdateColors(targetType, config)
        end
    })

    ESPGroup:AddSlider('TextSize' .. targetType, {
        Text = '文本大小',
        Default = config.TextSize,
        Min = 8,
        Max = 30,
        Rounding = 0,
        Compact = true,
        Callback = function(Value)
            config.TextSize = Value
            for _, v in ipairs(workspace.Players[targetType]:GetChildren()) do
                if v:FindFirstChild("ESP_Billboard") then
                    v.ESP_Billboard.MainLabel.TextSize = Value
                end
            end
        end
    })

    ESPGroup:AddSlider('OutlineDepth' .. targetType, {
        Text = '轮廓透明度',
        Default = config.OutlineDepth,
        Min = 0,
        Max = 1,
        Rounding = 2,
        Compact = true,
        Callback = function(Value)
            config.OutlineDepth = Value
            for _, v in ipairs(workspace.Players[targetType]:GetChildren()) do
                local highlight = v:FindFirstChild("Item_Highlight")
                if highlight then
                    highlight.OutlineTransparency = Value
                end
            end
        end
    })

    ESPGroup:AddSlider('FillDepth' .. targetType, {
        Text = '填充透明度',
        Default = config.FillDepth,
        Min = 0,
        Max = 1,
        Rounding = 2,
        Compact = true,
        Callback = function(Value)
            config.FillDepth = Value
            for _, v in ipairs(workspace.Players[targetType]:GetChildren()) do
                local highlight = v:FindFirstChild("Item_Highlight")
                if highlight then
                    highlight.FillTransparency = Value
                end
            end
        end
    })

    ESPGroup:AddToggle("Distance" .. targetType, {
        Text = "显示距离",
        Default = false,
        Callback = function(state)
            config.ShowDistance = state
            if state then
                config.Connections.Distance = game:GetService("RunService").Heartbeat:Connect(function()
                    local localPlayer = game.Players.LocalPlayer
                    if not localPlayer or not localPlayer.Character then
                        return
                    end
                    local root = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not root then
                        return
                    end

                    for _, v in ipairs(workspace.Players[targetType]:GetChildren()) do
                        if v:IsA("Model") and v:FindFirstChild("ESP_Billboard") then
                            local targetPart = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Head") or v:GetPivot()
                            local billboard = v.ESP_Billboard
                            if billboard and billboard.Parent then
                                local distance = (root.Position - targetPart.Position).Magnitude
                                billboard.MainLabel.Text = string.format("%s\n%d米", v.Name, math.floor(distance))
                            end
                        end
                    end
                end)
            else
                if config.Connections.Distance then
                    config.Connections.Distance:Disconnect()
                end
                for _, v in ipairs(workspace.Players[targetType]:GetChildren()) do
                    if v:FindFirstChild("ESP_Billboard") then
                        v.ESP_Billboard.MainLabel.Text = v.Name
                    end
                end
            end
        end
    })
end

local function SetupHealthBar()
    local HealthGroup = Tabs.ESP:AddRightGroupbox("血条设置")

    function HealthBarConfig:Create(v)
        if not v or v.Parent == nil or self.Bars[v] then
            return
        end
        
        local humanoid = v:FindFirstChildWhichIsA("Humanoid")
        local rootPart = v:FindFirstChild("HumanoidRootPart")
        if not humanoid or not rootPart then
            return
        end

        local barGui = Instance.new("BillboardGui")
        barGui.Name = "HealthBarModule"
        barGui.Adornee = rootPart
        barGui.Size = UDim2.new(4, 0, 0.4, 0)
        barGui.StudsOffset = Vector3.new(0, 2.5, 0)
        barGui.AlwaysOnTop = true
        barGui.MaxDistance = 99999
        barGui.Parent = v

        local container = Instance.new("Frame")
        container.Size = UDim2.new(1, 0, 1, 0)
        container.BackgroundTransparency = 1
        container.Parent = barGui

        local background = Instance.new("Frame")
        background.Size = UDim2.new(1, 0, 0.3, 0)
        background.Position = UDim2.new(0, 0, 0.35, 0)
        background.BackgroundColor3 = Color3.new(0, 0, 0)
        background.BorderSizePixel = 0
        background.Parent = container

        local fill = Instance.new("Frame")
        fill.Size = UDim2.new(1, 0, 1, 0)
        fill.BackgroundColor3 = self.Color
        fill.BorderSizePixel = 0
        fill.Parent = background

        local text = Instance.new("TextLabel")
        text.Size = UDim2.new(1, 0, 0.3, 0)
        text.Position = UDim2.new(0, 0, 0, 0)
        text.BackgroundTransparency = 1
        text.TextColor3 = self.Color
        text.TextStrokeColor3 = Color3.new(0, 0, 0)
        text.TextStrokeTransparency = 0.5
        text.TextSize = 12
        text.Font = Enum.Font.GothamBold
        text.Parent = container

        self.Bars[v] = {
            Gui = barGui,
            Fill = fill,
            Text = text,
            Humanoid = humanoid,
            RootPart = rootPart
        }
    end

    function HealthBarConfig:Update()
        for model, bar in pairs(self.Bars) do
            if model.Parent and bar.Humanoid and bar.Humanoid.Parent then
                bar.Gui.Adornee = bar.RootPart
                local health = bar.Humanoid.Health
                local maxHealth = bar.Humanoid.MaxHealth
                if maxHealth > 0 then
                    bar.Fill.Size = UDim2.new(math.clamp(health / maxHealth, 0, 1), 0, 1, 0)
                    bar.Text.Text = string.format("%d/%d", math.floor(health), math.floor(maxHealth))
                end
            else
                bar.Gui:Destroy()
                self.Bars[model] = nil
            end
        end
    end

    function HealthBarConfig:Toggle(state)
        self.Enabled = state
        if state then
            for _, v in ipairs(workspace.Players.Survivors:GetChildren()) do
                if v:IsA("Model") then
                    task.spawn(function()
                        self:Create(v)
                    end)
                end
            end
            self.Connections.ChildAdded = workspace.Players.Survivors.ChildAdded:Connect(function(v)
                if v:IsA("Model") then
                    task.spawn(function()
                        self:Create(v)
                    end)
                end
            end)
            self.Connections.Update = game:GetService("RunService").Heartbeat:Connect(function()
                self:Update()
            end)
        else
            if self.Connections.ChildAdded then
                self.Connections.ChildAdded:Disconnect()
            end
            if self.Connections.Update then
                self.Connections.Update:Disconnect()
            end
            for model in pairs(self.Bars) do
                if model:FindFirstChild("HealthBarModule") then
                    model.HealthBarModule:Destroy()
                end
            end
            self.Bars = {}
        end
    end

    HealthGroup:AddToggle("HealthToggle", {
        Text = "显示血条",
        Default = false,
        Callback = function(state)
            HealthBarConfig:Toggle(state)
        end
    })

    HealthGroup:AddLabel("血条颜色"):AddColorPicker("HealthColor", {
        Default = HealthBarConfig.Color,
        Callback = function(value)
            HealthBarConfig.Color = value
            for _, bar in pairs(HealthBarConfig.Bars) do
                bar.Fill.BackgroundColor3 = value
                bar.Text.TextColor3 = value
            end
        end
    })

    HealthGroup:AddSlider("HealthTextSize", {
        Text = "文字大小",
        Default = 12,
        Min = 8,
        Max = 20,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            for _, bar in pairs(HealthBarConfig.Bars) do
                bar.Text.TextSize = value
            end
        end
    })
end

SetupESPGroup(Tabs.Main, "Killers", KillersConfig)
SetupESPGroup(Tabs.Main, "Survivors", SurvivorsConfig)
SetupHealthBar()

local ESPSettings = {
    ShowHighlight = true,
    ShowDistance = true,
    TextSize = 10,
    TextColor = Color3.fromRGB(160, 32, 240),
    HighlightOutlineColor = Color3.fromRGB(160, 32, 240),
    HighlightFillColor = Color3.fromRGB(160, 32, 240),
}

local ActiveESP = {}
local distanceConnections = {}
local ModelConnection = nil

local function updateAllESP()
    for model, data in pairs(ActiveESP) do
        if data.textLabel then
            data.textLabel.TextColor3 = ESPSettings.TextColor
            data.textLabel.TextSize = ESPSettings.TextSize
        end
        if data.highlight then
            data.highlight.Enabled = ESPSettings.ShowHighlight
            data.highlight.OutlineColor = ESPSettings.HighlightOutlineColor
            data.highlight.FillColor = ESPSettings.HighlightFillColor
        end
    end
end

n:AddToggle('ShowHighlightToggle', {
    Text = '显示高亮',
    Default = false,
    Callback = function(state)
        ESPSettings.ShowHighlight = state
        updateAllESP()
    end
})

n:AddToggle('ShowDistanceToggle', {
    Text = '显示距离文本',
    Default = false,
    Callback = function(state)
        ESPSettings.ShowDistance = state
        updateAllESP()
    end
})

n:AddSlider('TextSizeSlider', {
    Text = '文本大小',
    Default = 10,
    Min = 10,
    Max = 30,
    Rounding = 0,
    Compact = true,
    Callback = function(value)
        ESPSettings.TextSize = value
        updateAllESP()
    end
})

n:AddLabel('文字颜色'):AddColorPicker('TextColorPicker', {
    Default = Color3.fromRGB(160, 32, 240),
    Title = 'ESP文字颜色',
    Callback = function(color)
        ESPSettings.TextColor = color
        updateAllESP()
    end
})

n:AddLabel('高亮边框颜色'):AddColorPicker('OutlineColorPicker', {
    Default = Color3.fromRGB(160, 32, 240),
    Title = '高亮轮廓颜色',
    Callback = function(color)
        ESPSettings.HighlightOutlineColor = color
        updateAllESP()
    end
})

n:AddLabel('高亮填充颜色'):AddColorPicker('FillColorPicker', {
    Default = Color3.fromRGB(160, 32, 240),
    Title = '高亮填充颜色',
    Callback = function(color)
        ESPSettings.HighlightFillColor = color
        updateAllESP()
    end
})

local itemNames = {"BloxyCola", "Medkit", "Toolbox", "Locker", "Fuse", "Trap"}
local itemDisplayInfo = {
    BloxyCola = {name = "可乐", desc = "速度增加"},
    Medkit = {name = "医疗包", desc = "恢复血量100%"},
    Toolbox = {name = "工具箱", desc = ""},
    Locker = {name = "储物柜", desc = ""},
    Fuse = {name = "电闸", desc = ""},
    Trap = {name = "陷阱", desc = ""}
}

n:AddToggle("ColaMedkitToggle", {
    Text = "物品透视",
    Default = false,
    Tooltip = "显示可乐、医疗包、工具箱等物品 (带距离)",
    Callback = function(state)
        if state then
            local function createESP(model)
                if not model:IsDescendantOf(workspace) then return end
                
                local part = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
                if not part then return end
                
                if model:FindFirstChild("MedkitESP") then return end
                
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "MedkitESP"
                billboard.Parent = model
                billboard.Adornee = part
                billboard.Size = UDim2.new(0, 200, 0, 50)
                billboard.StudsOffset = Vector3.new(0, 3.5, 0)
                billboard.AlwaysOnTop = true

                local textLabel = Instance.new("TextLabel")
                textLabel.Parent = billboard
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.Font = Enum.Font.GothamBlack
                textLabel.TextStrokeTransparency = 0.3
                textLabel.TextSize = ESPSettings.TextSize
                textLabel.TextColor3 = ESPSettings.TextColor
                textLabel.TextWrapped = true

                local itemInfo = itemDisplayInfo[model.Name] or {name = model.Name, desc = ""}
                local baseText = "物品:" .. itemInfo.name
                textLabel.Text = baseText

                local highlight = Instance.new("Highlight")
                highlight.Name = "MedkitHighlight"
                highlight.Parent = model
                highlight.Enabled = ESPSettings.ShowHighlight
                highlight.OutlineColor = ESPSettings.HighlightOutlineColor
                highlight.FillColor = ESPSettings.HighlightFillColor
                highlight.FillTransparency = 0.4

                ActiveESP[model] = {
                    textLabel = textLabel,
                    highlight = highlight,
                    baseText = baseText,
                    desc = itemInfo.desc
                }

                distanceConnections[model] = game:GetService("RunService").Heartbeat:Connect(function()
                    local char = game.Players.LocalPlayer.Character
                    local hrp = char and char:FindFirstChild("HumanoidRootPart")
                    if not hrp or not model:IsDescendantOf(workspace) or not part then 
                        if distanceConnections[model] then
                            distanceConnections[model]:Disconnect()
                            distanceConnections[model] = nil
                        end
                        return 
                    end
                    
                    local dist = (part.Position - hrp.Position).Magnitude
                    local m = math.floor(dist / 3.571)
                    
                    local displayText = ActiveESP[model].baseText
                    if ESPSettings.ShowDistance then
                        displayText = displayText .. "\n距离: " .. m .. "m"
                    end
                    
                    if ActiveESP[model].desc ~= "" then
                        displayText = displayText .. "\n" .. ActiveESP[model].desc
                    end
                    
                    textLabel.Text = displayText
                end)
            end

            local function initialCheck()
                local map = workspace:FindFirstChild("Map")
                if not map then return end
                
                local ingame = map:FindFirstChild("Ingame")
                if not ingame then return end
                
                for _, name in ipairs(itemNames) do
                    local model = ingame:FindFirstChild(name)
                    if model and model:IsA("Model") then
                        createESP(model)
                    end
                end
            end

            initialCheck()

            ModelConnection = workspace.Map.Ingame.ChildAdded:Connect(function(child)
                if table.find(itemNames, child.Name) and child:IsA("Model") then
                    task.wait(0.3)
                    createESP(child)
                end
            end)
        else
            if ModelConnection then
                ModelConnection:Disconnect()
                ModelConnection = nil
            end

            for model, conn in pairs(distanceConnections) do
                conn:Disconnect()
            end
            distanceConnections = {}

            for model, data in pairs(ActiveESP) do
                if model:FindFirstChild("MedkitESP") then
                    model.MedkitESP:Destroy()
                end
                if model:FindFirstChild("MedkitHighlight") then
                    model.MedkitHighlight:Destroy()
                end
            end

            ActiveESP = {}
        end
    end
})

local ESPSettings = {
    Generator = {
        Enabled = false,
        HighlightEnabled = false,
        DistanceEnabled = false,
        ShowProgressText = true,
        OnlyUnfinished = false,
        TextSize = 12,
        TextColor = Color3.new(1, 0.65, 0),
        HighlightColor = Color3.new(1, 0.65, 0),
        OutlineColor = Color3.new(1, 0.65, 0),
    }
}

ESPBox:AddToggle('GenHighlight', {
    Text = '发电机高亮',
    Default = false,
    Callback = function(val)
        ESPSettings.Generator.HighlightEnabled = val
    end
})

ESPBox:AddToggle('GenDistance', {
    Text = '显示距离',
    Default = false,
    Callback = function(val)
        ESPSettings.Generator.DistanceEnabled = val
    end
})

ESPBox:AddToggle('GenProgress', {
    Text = '显示完成进度',
    Default = true,
    Callback = function(val)
        ESPSettings.Generator.ShowProgressText = val
    end
})

ESPBox:AddToggle('GenOnlyUnfinished', {
    Text = '仅显示未完成',
    Default = false,
    Callback = function(val)
        ESPSettings.Generator.OnlyUnfinished = val
    end
})

ESPBox:AddSlider('GenTextSize', {
    Text = '文字大小',
    Default = 12,
    Min = 10,
    Max = 30,
    Rounding = 0,
    Compact = true,
    Callback = function(val)
        ESPSettings.Generator.TextSize = val
    end
})

ESPBox:AddLabel('文字颜色'):AddColorPicker('GenTextColor', {
    Default = ESPSettings.Generator.TextColor,
    Title = '选择颜色',
    Callback = function(color)
        ESPSettings.Generator.TextColor = color
    end
})

ESPBox:AddLabel('高亮颜色'):AddColorPicker('GenFillColor', {
    Default = ESPSettings.Generator.HighlightColor,
    Title = '选择颜色',
    Callback = function(color)
        ESPSettings.Generator.HighlightColor = color
    end
})

ESPBox:AddLabel('轮廓颜色'):AddColorPicker('GenOutlineColor', {
    Default = ESPSettings.Generator.OutlineColor,
    Title = '选择颜色',
    Callback = function(color)
        ESPSettings.Generator.OutlineColor = color
    end
})

local function applyESP(model, settings, labelGenerator)
    if settings.HighlightEnabled then
        if not model:FindFirstChild("ESP_Highlight") then
            local highlight = Instance.new("Highlight")
            highlight.Name = "ESP_Highlight"
            highlight.Parent = model
            highlight.FillColor = settings.HighlightColor
            highlight.OutlineColor = settings.OutlineColor
            highlight.FillTransparency = 1
            highlight.OutlineTransparency = 0
        end
    elseif model:FindFirstChild("ESP_Highlight") then
        model:FindFirstChild("ESP_Highlight"):Destroy()
    end

    local gui = model:FindFirstChild("BillboardGui")
    if not gui then
        gui = Instance.new("BillboardGui")
        gui.Name = "BillboardGui"
        gui.Adornee = model
        gui.Size = UDim2.new(0, 100, 0, 40)
        gui.StudsOffset = Vector3.new(0, 2, 0)
        gui.AlwaysOnTop = true
        gui.Parent = model

        local label = Instance.new("TextLabel")
        label.Name = "TextLabel"
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Font = Enum.Font.GothamBold
        label.TextStrokeTransparency = 0
        label.TextStrokeColor3 = Color3.new(0, 0, 0)
        label.Parent = gui
    end

    local player = game:GetService("Players").LocalPlayer
    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    local dist = hrp and (hrp.Position - model:GetPivot().Position).Magnitude or 0

    local label = gui:FindFirstChild("TextLabel")
    if label then
        local lines = labelGenerator(model, dist)
        label.Text = table.concat(lines, "\n")
        label.TextColor3 = settings.TextColor
        label.TextSize = settings.TextSize
    end
end


local function clearESP(models)
    for _, model in ipairs(models) do
        if model:FindFirstChild("ESP_Highlight") then
            model.ESP_Highlight:Destroy()
        end
        if model:FindFirstChild("BillboardGui") then
            model.BillboardGui:Destroy()
        end
    end
end

local genESPThread = nil
local function startESPForGenerators()
    if genESPThread then return end
    genESPThread = task.spawn(function()
        while ESPSettings.Generator.Enabled do
            local models = {}
            local folder = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame") and workspace.Map.Ingame:FindFirstChild("Map")
            if folder then
                for _, m in ipairs(folder:GetChildren()) do
                    if m:IsA("Model") and m.Name == "Generator" then
                        local progress = m:FindFirstChild("Progress") and m.Progress.Value or 0
                        if not ESPSettings.Generator.OnlyUnfinished or progress < 100 then
                            applyESP(m, ESPSettings.Generator, function(model, dist)
                                local lines = {"发电机"}
                                if ESPSettings.Generator.ShowProgressText then
                                    table.insert(lines, string.format("进度: %d%%", progress))
                                end
                                if ESPSettings.Generator.DistanceEnabled then
                                    table.insert(lines, string.format("距离: %.1f米", dist))
                                end
                                return lines
                            end)
                            table.insert(models, m)
                        else
                            clearESP({m})
                        end
                    end
                end
            end
            task.wait(2)
        end

        local folder = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame") and workspace.Map.Ingame:FindFirstChild("Map")
        if folder then
            local all = {}
            for _, m in ipairs(folder:GetChildren()) do
                if m:IsA("Model") and m.Name == "Generator" then
                    table.insert(all, m)
                end
            end
            clearESP(all)
        end
        genESPThread = nil
    end)
end


ESPBox:AddToggle('GenESP', {
    Text = '发电机透视',
    Default = false,
    Callback = function(state)
        ESPSettings.Generator.Enabled = state
        if state then
            startESPForGenerators()
        end
    end
})


Obf:AddToggle('MyToggle', {
    Text = '地雷透视',
    Default = false,
    Tooltip = '..',
    Callback = function(state)
        if state then
            bai.mines = true
            while task.wait(2) do
                if not bai.mines then
                    break
                end

                _G.MainHouseESPInstances = {}
                local esptable = {
                    doors = {}
                }

                local function createBillboard(instance, name, color, textSize, highlightFillColor, highlightOutlineColor, maxDistance)
                    local guiParent = game:GetService("CoreGui")
                    if not guiParent:FindFirstChild("BillboardGui") then
                        local folder = Instance.new("Folder")
                        folder.Name = "BillboardGui"
                        folder.Parent = guiParent
                    end

                    local bill = Instance.new("BillboardGui")
                    bill.AlwaysOnTop = true
                    bill.Size = UDim2.new(0, 100, 0, 50)
                    bill.Adornee = instance
                    bill.MaxDistance = maxDistance
                    bill.Parent = guiParent.BillboardGui

                    local txt = Instance.new("TextLabel")
                    txt.AnchorPoint = Vector2.new(0.5, 0.5)
                    txt.BackgroundTransparency = 1
                    txt.TextColor3 = color
                    txt.Size = UDim2.new(1, 0, 0, 20)
                    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
                    txt.TextSize = textSize
                    txt.Font = Enum.Font.GothamBold
                    txt.TextStrokeTransparency = 0
                    txt.TextStrokeColor3 = Color3.new(0, 0, 0)
                    txt.Parent = bill

                    local Players = game:GetService("Players")
                    local player = Players.LocalPlayer
                    local function updateDistance()
                        while bill and bill.Parent do
                            if not instance:IsDescendantOf(workspace) then
                                bill:Destroy()
                                if highlight then
                                    highlight:Destroy()
                                end
                                break
                            end
                            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                local dist = (player.Character.HumanoidRootPart.Position - instance:GetModelCFrame().Position).Magnitude
                                txt.Text = string.format("%s [%.1f米]", name, dist)
                            end
                            task.wait(0.5)
                        end
                    end

                    local highlight = Instance.new("Highlight")
                    highlight.Adornee = instance
                    highlight.FillColor = highlightFillColor
                    highlight.FillTransparency = 0.38
                    highlight.OutlineColor = highlightOutlineColor
                    highlight.OutlineTransparency = 0.5
                    highlight.Parent = guiParent.BillboardGui

                    task.spawn(updateDistance)
                end

                local function monitor()
                    for _, inst in pairs(workspace:GetDescendants()) do
                        if inst:IsA("Model") and inst.Name == "SubspaceTripmine" then
                            createBillboard(inst, "地雷", Color3.new(1, 0, 0), 15, Color3.new(1, 1, 1), Color3.new(1, 1, 1), 2000)
                        end
                    end
                    workspace.DescendantAdded:Connect(function(inst)
                        if inst:IsA("Model") and inst.Name == "SubspaceTripmine" then
                            task.wait(0.2)
                            createBillboard(inst, "地雷", Color3.new(1, 0, 0), 15, Color3.new(1, 1, 1), Color3.new(1, 1, 1), 2000)
                        end
                    end)
                end

                monitor()
                table.insert(_G.MainHouseESPInstances, esptable)
            end
        else
            bai.mines = false
            local gui = game:GetService("CoreGui"):FindFirstChild("BillboardGui")
            if gui then
                gui:Destroy()
            end
        end
    end
})

Obf:AddToggle('HighlightToggle', {
    Text = '显示高亮',
    Default = false,
    Callback = function(state)
        ESPSettings.ShowHighlight = state
    end
})

Obf:AddSlider('TextSizeSlider', {
    Text = '文本大小',
    Default = 15,
    Min = 10,
    Max = 50,
    Rounding = 0,
    Compact = true,
    Callback = function(value)
        ESPSettings.TextSize = value
    end
})

Obf:AddLabel('文本颜色'):AddColorPicker('TextColorPicker', {
    Default = Color3.new(1, 0, 0),
    Title = '文本颜色',
    Callback = function(value)
        ESPSettings.TextColor = value
    end
})

Obf:AddLabel('高亮填充颜色'):AddColorPicker('HighlightFillColorPicker', {
    Default = Color3.new(1, 1, 1),
    Title = '高亮填充颜色',
    Callback = function(value)
        ESPSettings.HighlightFillColor = value
    end
})

Obf:AddLabel('高亮轮廓颜色'):AddColorPicker('HighlightOutlineColorPicker', {
    Default = Color3.new(1, 1, 1),
    Title = '高亮轮廓颜色',
    Callback = function(value)
        ESPSettings.HighlightOutlineColor = value
    end
})

Obf:AddSlider('MaxDistanceSlider', {
    Text = '最大显示距离',
    Default = 2000,
    Min = 1000,
    Max = 5000,
    Rounding = 0,
    Compact = true,
    Callback = function(value)
        ESPSettings.MaxDistance = value
    end
})

Obf:AddToggle('DoorToggle', {
    Text = '酷小孩的两个拿披萨的透视',
    Default = false,
    Tooltip = '位置和距离',

    Callback = function(state)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local doorConnections = {} 
        
      
        local function createBillboard(model)
            if not model:FindFirstChild("DoorBillboard") then
             
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "DoorBillboard"
                billboard.Parent = model
                billboard.Adornee = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
                billboard.Size = UDim2.new(0, 200, 0, 40)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true

              
                local textLabel = Instance.new("TextLabel")
                textLabel.Name = "DoorLabel"
                textLabel.Parent = billboard
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.Font = Enum.Font.SourceSansBold
                textLabel.TextColor3 = Color3.new(1, 0, 0)
                textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                textLabel.TextStrokeTransparency = 0
                textLabel.TextSize = 20

              
                local connection
                local function updateDistance()
                    if not billboard.Parent then
                        connection:Disconnect()
                        doorConnections[model] = nil
                        return
                    end
                    
                    local localPlayer = Players.LocalPlayer
                    local character = localPlayer and localPlayer.Character
                    local humanoidRoot = character and character:FindFirstChild("HumanoidRootPart")
                    local doorPart = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")

                    if humanoidRoot and doorPart then
                        local distance = (humanoidRoot.Position - doorPart.Position).Magnitude
                        textLabel.Text = string.format(" 技能\n [%.1f米]", distance)
                    end
                end

                connection = RunService.Heartbeat:Connect(updateDistance)
                doorConnections[model] = connection
            end
        end

      
        local function createHighlight(model)
            if not model:FindFirstChild("DoorHighlight") then
                local highlight = Instance.new("Highlight")
                highlight.Name = "DoorHighlight"
                highlight.Parent = model
                highlight.Adornee = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
                highlight.FillColor = Color3.new(1, 0, 0)
                highlight.OutlineColor = Color3.new(0, 0, 0)
                highlight.FillTransparency = 0.3
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            end
        end

        if state then
           
            for _, door in ipairs(workspace:GetDescendants()) do
                if door.Name == "PizzaDeliveryRig" and door:IsA("Model") then
                    createBillboard(door)
                    createHighlight(door)
                end
            end

          
            DoorConnection = workspace.DescendantAdded:Connect(function(door)
                if door.Name == "PizzaDeliveryRig" and door:IsA("Model") then
                    createBillboard(door)
                    createHighlight(door)
                end
            end)
        else
         
            for door, conn in pairs(doorConnections) do
                if conn then
                    conn:Disconnect()
                    doorConnections[door] = nil
                end
            end

           
            if DoorConnection then
                DoorConnection:Disconnect()
                DoorConnection = nil
            end

           
            for _, door in ipairs(workspace:GetDescendants()) do
                if door.Name == "PizzaDeliveryRig" and door:IsA("Model") then
                    if door:FindFirstChild("DoorBillboard") then
                        door.DoorBillboard:Destroy()
                    end
                    if door:FindFirstChild("DoorHighlight") then
                        door.DoorHighlight:Destroy()
                    end
                end
            end
        end
    end
})

local aimSettings = {
    distance = 100,
    fov = 100,
    size = 10,
    noWall = false,
    rainbowMode = true 
}

local aimbotData = {
    FOVring = nil,
    connections = {}
}

ZM:AddSlider('AimDistance', {
    Text = '自瞄距离',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        aimSettings.distance = Value
    end
})

ZM:AddSlider('FOVSize', {
    Text = '圈圈大小',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        aimSettings.fov = Value
    end
})

ZM:AddSlider('TargetSize', {
    Text = '自瞄大小',
    Default = 10,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        aimSettings.size = Value
    end
})

ZM:AddToggle('NoWallToggle', {
    Text = '不瞄墙壁',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        aimSettings.noWall = state
    end
})

ZM:AddDropdown('ColorSelector', {
    Values = {
        'Red',
        'Green',
        'Blue',
        'White',
        'Yellow',
        'Cyan',
        'Magenta',
        'Rainbow'
    },
    Default = 8,
    Multi = false,
    Text = '选择颜色',
    Tooltip = '用于自瞄圈圈的颜色',
    Callback = function(Value)
        local colorMap = {
            Red = Color3.fromRGB(255, 0, 0),
            Green = Color3.fromRGB(0, 255, 0),
            Blue = Color3.fromRGB(0, 0, 255),
            White = Color3.fromRGB(255, 255, 255),
            Yellow = Color3.fromRGB(255, 255, 0),
            Cyan = Color3.fromRGB(0, 255, 255),
            Magenta = Color3.fromRGB(255, 0, 255)
        }

        if Value == 'Rainbow' then
            aimSettings.rainbowMode = true
        else
            aimSettings.rainbowMode = false
            local selectedColor = colorMap[Value] or Color3.fromRGB(231, 231, 236)
            if aimbotData.FOVring then
                aimbotData.FOVring.Color = selectedColor
            end
        end
    end
})

local bai = {}
bai.Aim = false
local aimConnection

Spy = ZM:AddToggle("AimbotToggle", {
    Text = "自瞄玩家",
    Default = false,
    Callback = function(state)
        bai.Aim = state
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Cam = workspace.CurrentCamera
        local UserInputService = game:GetService("UserInputService")
        local RaycastParams = RaycastParams.new()
        RaycastParams.FilterType = Enum.RaycastFilterType.Blacklist

        local function cleanup()
            if aimbotData.FOVring then
                aimbotData.FOVring:Remove()
                aimbotData.FOVring = nil
            end
            if aimConnection then
                aimConnection:Disconnect()
                aimConnection = nil
            end
        end

        if state then
            if not aimbotData.FOVring then
                aimbotData.FOVring = Drawing.new("Circle")
                aimbotData.FOVring.Visible = true
                aimbotData.FOVring.Thickness = 2
                aimbotData.FOVring.Filled = false
                aimbotData.FOVring.Color = Color3.fromHSV(0, 1, 1)
            end

            aimConnection = RunService.RenderStepped:Connect(function()
                aimbotData.FOVring.Radius = aimSettings.fov
                aimbotData.FOVring.Position = Cam.ViewportSize / 2

                local survivorsFolder = workspace.Players:FindFirstChild("Survivors")
                local target = nil
                local closestDist = math.huge
                local mousePos = Cam.ViewportSize / 2

                if survivorsFolder then
                    for _, survivorModel in pairs(survivorsFolder:GetChildren()) do
                        if survivorModel == Players.LocalPlayer.Character then
                            break
                        end

                        local hrp = survivorModel:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            local screenPos, onScreen = Cam:WorldToViewportPoint(hrp.Position)
                            local distance = (Cam.CFrame.Position - hrp.Position).Magnitude
                            if onScreen and distance <= aimSettings.distance then
                                if aimSettings.noWall then
                                    RaycastParams.FilterDescendantsInstances = {
                                        Players.LocalPlayer.Character,
                                        workspace.Players
                                    }
                                    local result = workspace:Raycast(Cam.CFrame.Position, hrp.Position - Cam.CFrame.Position, RaycastParams)
                                    if result and not result.Instance:IsDescendantOf(survivorModel) then
                                        break
                                    end
                                end
                                local screenDist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                                if screenDist < closestDist and screenDist <= aimSettings.fov then
                                    closestDist = screenDist
                                    target = hrp
                                end
                            end
                        end
                    end
                end

                if target then
                    local lookVector = (target.Position - Cam.CFrame.Position).Unit
                    Cam.CFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
                end

                if aimSettings.rainbowMode and aimbotData.FOVring then
                    local hue = (tick() * 0.2) % 1
                    aimbotData.FOVring.Color = Color3.fromHSV(hue, 1, 1)
                end
            end)

            aimbotData.connections.keyEvent = UserInputService.InputBegan:Connect(function(input)
                if input.KeyCode == Enum.KeyCode.Delete then
                    bai.Aim = false
                    Spy:SetValue(false)
                    cleanup()
                end
            end)
        else
            cleanup()
        end
    end
}):AddKeyPicker("AimKeyPicker", {
    Text = "自瞄玩家",
    Default = "E",
    Mode = "Toggle",
    SyncToggleState = true,
})

YY:AddToggle('MyToggle', {
    Text = '约翰自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        johnaimbot(state)
    end
})

SC:AddToggle('MyToggle', {
    Text = '杰森自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        jasonaimbot(state)
    end
})

SB:AddToggle('MyToggle', {
    Text = '机会 自瞄 (无预判)',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        CA = state
        if state then
            if game:GetService("Players").LocalPlayer.Character.Name ~= "Chance" then
                Library:Notify("请选择指定角色", nil, 4590657391)
                return
            end
            local RemoteEvent = game:GetService("ReplicatedStorage")
                :WaitForChild("Modules")
                :WaitForChild("Network")
                :WaitForChild("RemoteEvent")
            CAbotConnection = RemoteEvent.OnClientEvent:Connect(function(...)
                local args = {
                    ...
                }
                if args[1] == "UseActorAbility" and args[2] == "Shoot" then
                    local killerContainer = game.Workspace.Players:FindFirstChild("Killers")
                    if killerContainer then
                        local killer = killerContainer:FindFirstChildOfClass("Model")
                        if killer and killer:FindFirstChild("HumanoidRootPart") then
                            local killerHRP = killer.HumanoidRootPart
                            local playerHRP = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            if playerHRP then
                                local AT = 4
                                local endTime = tick() + AT
                                while tick() < endTime do
                                    RunService.RenderStepped:Wait()
                                    local cam = workspace.CurrentCamera
                                    cam.CFrame = CFrame.new(cam.CFrame.Position, killerHRP.Position)
                                    playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, killerHRP.Position)
                                end
                            end
                        end
                    end
                end
            end)
        else
            if CAbotConnection then
                CAbotConnection:Disconnect()
                CAbotConnection = nil
            end
        end
    end
})


local aimSettings = {
    distance = 100,
    fov = 100,
    size = 10,
    noWall = false,
    rainbowMode = true 
}

local aimbotData = {
    FOVring = nil,
    connections = {}
}

ZZ:AddSlider('AimDistance', {
    Text = '自瞄距离',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        aimSettings.distance = Value
    end
})

ZZ:AddSlider('FOVSize', {
    Text = '圈圈大小',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        aimSettings.fov = Value
    end
})

ZZ:AddSlider('TargetSize', {
    Text = '自瞄大小',
    Default = 10,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        aimSettings.size = Value
    end
})

ZZ:AddToggle('NoWallToggle', {
    Text = '不瞄墙壁',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        aimSettings.noWall = state
    end
})

ZZ:AddDropdown('ColorSelector', {
    Values = {
        'Red',
        'Green',
        'Blue',
        'White',
        'Yellow',
        'Cyan',
        'Magenta',
        'Rainbow'
    },
    Default = 8,  
    Multi = false,
    Text = '选择颜色',
    Tooltip = '用于自瞄圈圈的颜色',
    Callback = function(Value)
        local colorMap = {
            Red = Color3.fromRGB(255, 0, 0),
            Green = Color3.fromRGB(0, 255, 0),
            Blue = Color3.fromRGB(0, 0, 255),
            White = Color3.fromRGB(255, 255, 255),
            Yellow = Color3.fromRGB(255, 255, 0),
            Cyan = Color3.fromRGB(0, 255, 255),
            Magenta = Color3.fromRGB(255, 0, 255)
        }

        if Value == 'Rainbow' then
            aimSettings.rainbowMode = true
        else
            aimSettings.rainbowMode = false
            local selectedColor = colorMap[Value] or Color3.fromRGB(231, 231, 236)
            if aimbotData.FOVring then
                aimbotData.FOVring.Color = selectedColor
            end
        end
    end
})

local bai = {}
bai.Aim = false
local aimConnection

Spy = ZZ:AddToggle("AimbotToggle", {
    Text = "自瞄杀手",
    Default = false,
    Callback = function(state)
        bai.Aim = state
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Cam = workspace.CurrentCamera
        local UserInputService = game:GetService("UserInputService")
        local RaycastParams = RaycastParams.new()
        RaycastParams.FilterType = Enum.RaycastFilterType.Blacklist

        
        local function cleanup()
            if aimbotData.FOVring then
                aimbotData.FOVring:Remove()
                aimbotData.FOVring = nil
            end
            if aimConnection then
                aimConnection:Disconnect()
                aimConnection = nil
            end
        end

        
        if state then
            if not aimbotData.FOVring then
                aimbotData.FOVring = Drawing.new("Circle")
                aimbotData.FOVring.Visible = true
                aimbotData.FOVring.Thickness = 2
                aimbotData.FOVring.Filled = false
                aimbotData.FOVring.Color = Color3.fromHSV(0, 1, 1)  
            end

            aimConnection = RunService.RenderStepped:Connect(function()
              
                aimbotData.FOVring.Radius = aimSettings.fov
                aimbotData.FOVring.Position = Cam.ViewportSize / 2

               
                local killersFolder = workspace.Players:FindFirstChild("Killers")
                local target = nil
                local closestDist = math.huge
                local mousePos = Cam.ViewportSize / 2

                if killersFolder then
                    for _, killerModel in pairs(killersFolder:GetChildren()) do
                        local hrp = killerModel:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            local screenPos, onScreen = Cam:WorldToViewportPoint(hrp.Position)
                            local distance = (Cam.CFrame.Position - hrp.Position).Magnitude
                            if onScreen and distance <= aimSettings.distance then
                                if aimSettings.noWall then
                                    RaycastParams.FilterDescendantsInstances = {
                                        Players.LocalPlayer.Character,
                                        workspace.Players
                                    }
                                    local result = workspace:Raycast(Cam.CFrame.Position, hrp.Position - Cam.CFrame.Position, RaycastParams)
                                    if result and not result.Instance:IsDescendantOf(killerModel) then
                                        break
                                    end
                                end
                                local screenDist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                                if screenDist < closestDist and screenDist <= aimSettings.fov then
                                    closestDist = screenDist
                                    target = hrp
                                end
                            end
                        end
                    end
                end

                if target then
                    local lookVector = (target.Position - Cam.CFrame.Position).Unit
                    Cam.CFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
                end

                
                if aimSettings.rainbowMode and aimbotData.FOVring then
                    local hue = (tick() * 0.2) % 1
                    aimbotData.FOVring.Color = Color3.fromHSV(hue, 1, 1)
                end
            end)

           
            aimbotData.connections.keyEvent = UserInputService.InputBegan:Connect(function(input)
                if input.KeyCode == Enum.KeyCode.Delete then
                    bai.Aim = false
                    Spy:SetValue(false)
                    cleanup()
                end
            end)
        else
            cleanup()
        end
    end
}):AddKeyPicker("AimKeyPicker", {
    Text = "自瞄杀手",
    Default = "E",
    Mode = "Toggle",
    SyncToggleState = true,
})
  
ZZ:AddLabel("UI调试，打开快捷菜单可以更快使用")  
  
local AimDistance = 100

JH:AddSlider('MySlider1', {
    Text = '自瞄距离[预判]',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        AimDistance = Value
    end
})

JH:AddToggle('MyToggle', {
    Text = '机会 自瞄 [预判]',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        CA = state
        if state then
            if game.Players.LocalPlayer.Character.Name ~= "Chance" then
                Library:Notify("请选择指定角色", nil, 4590657391)
                return
            end
            
            local RemoteEvent = game:GetService("ReplicatedStorage")
                :WaitForChild("Modules")
                :WaitForChild("Network")
                :WaitForChild("RemoteEvent")
            
            CAbotConnection = RemoteEvent.OnClientEvent:Connect(function(...)
                local args = {
                    ...
                }
                if args[1] == "UseActorAbility" and args[2] == "Shoot" then
                    local killerContainer = game.Workspace.Players:FindFirstChild("Killers")
                    if killerContainer then
                        local killer = killerContainer:FindFirstChildOfClass("Model")
                        if killer and killer:FindFirstChild("HumanoidRootPart") then
                            local killerHRP = killer.HumanoidRootPart
                            local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            
                            if playerHRP then
                                local distance = (playerHRP.Position - killerHRP.Position).Magnitude
                                if distance <= AimDistance then
                                    local TMP = 0.35
                                    local AMD = 2
                                    local endTime = tick() + AMD
                                    
                                    while tick() < endTime do
                                        RunService.RenderStepped:Wait()
                                        local predictedTarget = killerHRP.Position + (killerHRP.Velocity * TMP)
                                        local cam = workspace.CurrentCamera
                                        cam.CFrame = CFrame.new(cam.CFrame.Position, predictedTarget)
                                        playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, predictedTarget)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        else
            if CAbotConnection then
                CAbotConnection:Disconnect()
                CAbotConnection = nil
            end
        end
    end
})

local AimDistance = 100

JH:AddSlider('MySlider2', {
    Text = '自瞄距离[无声]',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        AimDistance = Value
    end
})

JH:AddToggle('MyToggle', {
    Text = '机会 自瞄 [无声]',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        CA = state
        if state then
            if game.Players.LocalPlayer.Character.Name ~= "Chance" then
                Library:Notify("请选择指定角色", nil, 4590657391)
                return
            end
            
            local RemoteEvent = game:GetService("ReplicatedStorage")
                :WaitForChild("Modules")
                :WaitForChild("Network")
                :WaitForChild("RemoteEvent")
            
            CAbotConnection = RemoteEvent.OnClientEvent:Connect(function(...)
                local args = {
                    ...
                }
                if args[1] == "UseActorAbility" and args[2] == "Shoot" then
                    local killerContainer = game.Workspace.Players:FindFirstChild("Killers")
                    if killerContainer then
                        local killer = killerContainer:FindFirstChildOfClass("Model")
                        if killer and killer:FindFirstChild("HumanoidRootPart") then
                            local killerHRP = killer.HumanoidRootPart
                            local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            
                            if playerHRP then
                                local distance = (playerHRP.Position - killerHRP.Position).Magnitude
                                if distance <= AimDistance then
                                    local TMP = 0.35
                                    local AMD = 2
                                    local endTime = tick() + AMD
                                    local PICF = playerHRP.CFrame
                                    
                                    while tick() < endTime do
                                        RunService.RenderStepped:Wait()
                                        local predictedTarget = killerHRP.Position + (killerHRP.Velocity * TMP)
                                        playerHRP.CFrame = killerHRP.CFrame + Vector3.new(0, 0, - 2)
                                    end
                                    playerHRP.CFrame = PICF
                                end
                            end
                        end
                    end
                end
            end)
        else
            if CAbotConnection then
                CAbotConnection:Disconnect()
                CAbotConnection = nil
            end
        end
    end
})

SB:AddToggle('MyToggle', {
    Text = '两次 自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        TWO(state)
    end
})

SB:AddToggle('MyToggle', {
    Text = '谢德利茨基 自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        shedaim = state
        if state then
            if game:GetService("Players").LocalPlayer.Character.Name ~= "Shedletsky" then
                Library:Notify("请选择指定角色", nil, 4590657391)
                return
            end
            shedloop = game:GetService("Players").LocalPlayer.Character.Sword.ChildAdded:Connect(function(child)
                if not shedaim then
                    return
                end
                if child:IsA("Sound") then
                    local FAN = child.Name
                    if FAN == "rbxassetid://12222225" or FAN == "83851356262523" then
                        local killersFolder = game.Workspace.Players:FindFirstChild("Killers")
                        if killersFolder then
                            local killer = killersFolder:FindFirstChildOfClass("Model")
                            if killer and killer:FindFirstChild("HumanoidRootPart") then
                                local killerHRP = killer.HumanoidRootPart
                                local playerHRP = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if playerHRP then
                                    local num = 1
                                    local maxIterations = 100
                                    while num <= maxIterations do
                                        task.wait(0.01)
                                        num = num + 1
                                        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, killerHRP.Position)
                                        playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, killerHRP.Position)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        else
            if shedloop then
                shedloop:Disconnect()
                shedloop = nil
            end
        end
    end
})

local AimDistance1x1 = 100

KILL:AddSlider('MySlider1x1', {
    Text = '自瞄距离',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        AimDistance1x1 = Value
    end
})

local function aimbot1x1x1x1(state)
    aimbot1x1 = state

    if game:GetService("Players").LocalPlayer.Character.Name ~= "1x1x1x1" and state then
        Library:Notify("请选择指定角色", nil, 4590657391)
        return 
    end

    if state then
        aimbot1x1loop = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(child)
            if not aimbot1x1 then
                return
            end
            for _, v in pairs(aimbot1x1sounds) do
                if child.Name == v then
                    local survivors = {}
                    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                        if player ~= game:GetService("Players").LocalPlayer then
                            local character = player.Character
                            if character and character:FindFirstChild("HumanoidRootPart") then
                                table.insert(survivors, character)
                            end
                        end
                    end

                    local nearestSurvivor = nil
                    local shortestDistance = math.huge
                    
                    for _, survivor in pairs(survivors) do
                        local survivorHRP = survivor.HumanoidRootPart
                        local playerHRP = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        
                        if playerHRP then
                            local distance = (survivorHRP.Position - playerHRP.Position).Magnitude
                            if distance < shortestDistance then
                                shortestDistance = distance
                                nearestSurvivor = survivor
                            end
                        end
                    end
                    
                    if nearestSurvivor and shortestDistance <= AimDistance1x1 then
                        local nearestHRP = nearestSurvivor.HumanoidRootPart
                        local playerHRP = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        
                        if playerHRP then
                            local num = 1
                            local maxIterations = 100 
                            
                            if child.Name == "rbxassetid://79782181585087" then
                                maxIterations = 220
                            end

                            while num <= maxIterations do
                                task.wait(0.01)
                                num = num + 1
                                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, nearestHRP.Position)
                                playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, Vector3.new(nearestHRP.Position.X, nearestHRP.Position.Y, nearestHRP.Position.Z))
                            end
                        end
                    end
                end
            end
        end)
    else
        if aimbot1x1loop then
            aimbot1x1loop:Disconnect()
            aimbot1x1loop = nil
        end
    end
end

KILL:AddToggle('MyToggle', {
    Text = '1x4自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        aimbot1x1x1x1(state)
    end
})


SC:AddToggle('MyToggle', {
    Text = '酷小孩自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        aimbotEnabled = state
        
        if state then
            if not aimbotLoop then
                aimbotLoop = game:GetService("RunService").RenderStepped:Connect(function()
                    if not aimbotEnabled then return end
                    
                    local player = game:GetService("Players").LocalPlayer
                    if not player.Character then return end
                    
                    local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                    if not humanoidRootPart then return end
                    
                    local closestPlayer = nil
                    local closestDistance = math.huge
                    
                    for _, otherPlayer in pairs(game:GetService("Players"):GetPlayers()) do
                        if otherPlayer ~= player and otherPlayer.Character then
                            local otherHRP = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
                            if otherHRP then
                                local distance = (humanoidRootPart.Position - otherHRP.Position).Magnitude
                                if distance < closestDistance then
                                    closestDistance = distance
                                    closestPlayer = otherPlayer
                                end
                            end
                        end
                    end
                    
                    if closestPlayer then
                        local targetHRP = closestPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if targetHRP then
                            workspace.CurrentCamera.CFrame = CFrame.new(
                                workspace.CurrentCamera.CFrame.Position,
                                targetHRP.Position
                            )
                        end
                    end
                end)
            end
        else
            if aimbotLoop then
                aimbotLoop:Disconnect()
                aimbotLoop = nil
            end
        end
    end
})

local AimDistance = 100 

YY:AddSlider('MySliderJohn', {
    Text = '自瞄距离',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        JohnAimDistance = Value
    end
})

local function johnaimbot(state)
    johnaim = state
    if game:GetService("Players").LocalPlayer.Character.Name ~= "JohnDoe" and state then
        Library:Notify("请选择指定角色", nil, 4590657391)
        return 
    end
    
    if state then
        johnloop = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(child)
            if not johnaim then
                return
            end
            for _, v in pairs(johnaimbotsounds) do
                if child.Name == v then
                    local survivors = {}
                    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                        if player ~= game:GetService("Players").LocalPlayer then
                            local character = player.Character
                            if character and character:FindFirstChild("HumanoidRootPart") then
                                table.insert(survivors, character)
                            end
                        end
                    end

                    local nearestSurvivor = nil
                    local shortestDistance = math.huge
                    
                    for _, survivor in pairs(survivors) do
                        local survivorHRP = survivor.HumanoidRootPart
                        local playerHRP = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if playerHRP then
                            local distance = (survivorHRP.Position - playerHRP.Position).Magnitude
                            if distance < shortestDistance then
                                shortestDistance = distance
                                nearestSurvivor = survivor
                            end
                        end
                    end

                    if nearestSurvivor and shortestDistance <= JohnAimDistance then
                        local nearestHRP = nearestSurvivor.HumanoidRootPart
                        local playerHRP = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local maxIterations = 330
                        
                        if playerHRP then
                            local num = 1
                            while num <= maxIterations do
                                task.wait(0.01)
                                num = num + 1
                                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, nearestHRP.Position)
                                playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, Vector3.new(nearestHRP.Position.X, nearestHRP.Position.Y, nearestHRP.Position.Z))
                            end
                        end
                    end
                end
            end
        end)
    else
        if johnloop then
            johnloop:Disconnect()
            johnloop = nil
        end
    end
end

local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("一些调试")

MenuGroup:AddToggle("KeybindMenuOpen", {
    Default = Library.KeybindFrame.Visible,
    Text = "快捷菜单",
    Callback = function(value)
        Library.KeybindFrame.Visible = value
    end,
})
MenuGroup:AddToggle("ShowCustomCursor", {
    Text = "自定义光标",
    Default = true,
    Callback = function(Value)
        Library.ShowCustomCursor = Value
    end,
})
MenuGroup:AddDropdown("NotificationSide", {
    Values = {
        "左",
        "右"
    },
    Default = "右",
    Text = "通知位置",
    Callback = function(Value)
        Library:SetNotifySide(Value)
    end,
})
MenuGroup:AddDropdown("DPIDropdown", {
    Values = {
        "25%",
        "50%",
        "75%",
        "100%",
        "125%",
        "150%",
        "175%",
        "200%"
    },
    Default = "100%",
    Text = "UI大小",
    Callback = function(Value)
        Value = Value:gsub("%%", "")
        local DPI = tonumber(Value)
        Library:SetDPIScale(DPI)
    end,
})
MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind")
	:AddKeyPicker("MenuKeybind", {
    Default = "RightShift",
    NoUI = true,
    Text = "Menu keybind"
})

MenuGroup:AddButton("删除UI", function()
    Library:Unload()
end)

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({
    "MenuKeybind"
})

ThemeManager:SetFolder("MyScriptHub")
SaveManager:SetFolder("MyScriptHub/specific-game")
SaveManager:SetSubFolder("specific-place") 
SaveManager:BuildConfigSection(Tabs["UI Settings"])

ThemeManager:ApplyToTab(Tabs["UI Settings"])

SaveManager:LoadAutoloadConfig()