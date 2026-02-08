---   XS HUB
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "XS脚本丨逃离建筑",
    SubTitle = "小帅",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "功能", Icon = "box" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- Create a ScreenGui object to hold the button
local gui = Instance.new("ScreenGui")
gui.Name = "AshbornnHubGui"
gui.Parent = game.CoreGui

-- Create the button
local button = Instance.new("TextButton")
button.Name = "ToggleButton"
button.Text = "打开/关闭"
button.Size = UDim2.new(0, 70, 0, 30) -- Adjust the size as needed
button.Position = UDim2.new(0, 10, 0, 10) -- Position at top left with 10px offset
button.BackgroundColor3 = Color3.new(0, 0, 0) -- Black background
button.TextColor3 = Color3.new(1, 1, 1) -- White text
button.Parent = gui

-- Functionality for the button
button.MouseButton1Click:Connect(function()
    Window:Minimize()

end)

local Options = Fluent.Options

do
    -------FUNCTIONS--------
    -- Constants

local rsrv = game:GetService("RunService")
local heartbeat = rsrv.Heartbeat
local renderstepped = rsrv.RenderStepped

local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()

local isinvisible = false
local visible_parts = {}
local kdown, loop

local function ghost_parts()
    for _, v in pairs(visible_parts) do
        v.Transparency = isinvisible and 0.5 or 0
    end
end

local function setup_character(character)
    local hum = character:WaitForChild("Humanoid")
    local root = character:WaitForChild("HumanoidRootPart")

    visible_parts = {}

    for _, v in pairs(character:GetDescendants()) do
        if v:IsA("BasePart") and v.Transparency == 0 then
            visible_parts[#visible_parts + 1] = v
        end
    end

    if kdown then
        kdown:Disconnect()
    end

    kdown = mouse.KeyDown:Connect(function(key)
        if key == "g" then
            isinvisible = not isinvisible
            ghost_parts()
        end
    end)

    if loop then
        loop:Disconnect()
    end

    loop = heartbeat:Connect(function()
        if isinvisible then
            local oldcf = root.CFrame
            local oldcamoffset = hum.CameraOffset

            local newcf = oldcf * CFrame.new(0, -40, 0)

            hum.CameraOffset = newcf:ToObjectSpace(CFrame.new(oldcf.Position)).Position
            root.CFrame = newcf

            renderstepped:Wait()

            hum.CameraOffset = oldcamoffset
            root.CFrame = oldcf
        end
    end)

    _G.cons = {kdown, loop}
end

lp.CharacterAdded:Connect(function(character)
    setup_character(character)
    if isinvisible then
        ghost_parts()
    end
end)

Tabs.Main:AddButton({
    Title = "刷新透视数据",
    Description = "一局一开，不开没效果",
    Callback = function()
        local waitTime = 0.5

        -- Store ESP options and their current values
        local espOptions = {
            {Option = Options.ExitsHighlight, Value = _G.ExitsESP},
            {Option = Options.PCHighlight, Value = _G.PCsESP},
            {Option = Options.PlayersHighlight, Value = _G.PlayersESP},
            {Option = Options.PodsHighlight, Value = _G.PodsESP},
            {Option = Options.Fullbright, Value = getgenv().Fullbright}
        }

        -- Turn on all ESP options
        for _, optionData in ipairs(espOptions) do
            if optionData.Value then
                optionData.Option:SetValue(true)
            end
        end

        wait(0.5)  -- Wait

        -- Turn off all ESP options and then turn them on again after a short delay
        for _, optionData in ipairs(espOptions) do
            if optionData.Value then
                optionData.Option:SetValue(false)
                wait(waitTime)
                optionData.Option:SetValue(true)
            end
        end
    end
})

local function updatePodsHighlight(pods)
    local state = pods

    if state then
        _G.PodsESP = true

        for _, obj in ipairs(game.Workspace:GetDescendants()) do
            if obj.Name == "FreezePod" then
                local hili = Instance.new("Highlight", obj)
                hili.Name = "PodsHighlight"
                hili.OutlineTransparency = 1
                hili.FillColor = Color3.fromRGB(0, 200, 255)
            end
        end
    else
        _G.PodsESP = false

        for _, obj in ipairs(game.Workspace:GetDescendants()) do
            if obj.Name == "PodsHighlight" then
                obj:Destroy()
            end
        end
    end
end

local function updateExitsHighlight(exits)
    local state = exits

    if state then
        _G.ExitsESP = true

        for _, obj in ipairs(game.Workspace:GetDescendants()) do
            if obj.Name == "ExitDoor" and not obj:FindFirstChild("ExitsHighlight") then
                local hili = Instance.new("Highlight", obj)
                hili.Name = "ExitsHighlight"
                hili.OutlineTransparency = 1
                hili.FillColor = Color3.fromRGB(255,255,0)
            end
        end
    else
        _G.ExitsESP = false

        for _, obj in ipairs(game.Workspace:GetDescendants()) do
            if obj.Name == "ExitsHighlight" then
                obj:Destroy()
            end
        end
    end
end

local state = false

local function getBeast()
    local players = game.Players:GetChildren()
    for _, player in ipairs(players) do
        local character = player.Character
        if character and character:FindFirstChild("BeastPowers") then
            return player
        end
    end
    return nil
end

local function getPlayerDistance(player)
    local localPlayer = game.Players.LocalPlayer
    if player and localPlayer.Character then
        local playerPosition = player.Character.HumanoidRootPart.Position
        local localPlayerPosition = localPlayer.Character.HumanoidRootPart.Position
        local distance = (playerPosition - localPlayerPosition).magnitude
        return distance
    end
    return math.huge -- Return a large value if distance cannot be calculated
end

-- Define the updatePlayersHighlight function
local function updatePlayersHighlight()
    if _G.PlayersESP then
        local players = game.Players:GetChildren()
        for _, player in ipairs(players) do
            if player ~= game.Players.LocalPlayer and player.Character then
                local character = player.Character

                local distanceLabel = character:FindFirstChild("DistanceLabel")
                if not distanceLabel then
                    distanceLabel = Instance.new("BillboardGui", character)
                    distanceLabel.Name = "DistanceLabel"
                    distanceLabel.Size = UDim2.new(0, 100, 0, 40)
                    distanceLabel.StudsOffset = Vector3.new(0, 6, 0) -- Adjust the height of the label
                    distanceLabel.AlwaysOnTop = true

                    local textLabel = Instance.new("TextLabel", distanceLabel)
                    textLabel.Size = UDim2.new(1, 0, 0.5, 0)
                    textLabel.Position = UDim2.new(0, 0, 0, 0)
                    textLabel.TextScaled = true
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextColor3 = Color3.new(1, 1, 1)
                    textLabel.Font = Enum.Font.SourceSansBold -- Adjust font for readability
                    if player == getBeast() then
                        textLabel.TextColor3 = Color3.new(1, 0, 0)
                    else
                        textLabel.TextColor3 = Color3.new(0, 1, 0)
                    end
                end

                local distanceTextLabel = distanceLabel:FindFirstChild("TextLabel")
                if distanceTextLabel then
                    local distance = getPlayerDistance(player)
                    distanceTextLabel.Text = player.Name .. "\n" .. tostring(math.floor(distance)) .. "m"
                end

                local highlight = character:FindFirstChild("PlayerHighlight")
                if not highlight then
                    highlight = Instance.new("BoxHandleAdornment", character)
                    highlight.Name = "PlayerHighlight"
                    highlight.Size = Vector3.new(2, 4, 2)
                    highlight.AlwaysOnTop = true
                    highlight.ZIndex = 5
                    highlight.Transparency = 0.5
                    highlight.Color3 = Color3.fromRGB(0, 255, 0)
                    highlight.Adornee = character:FindFirstChild("HumanoidRootPart")
                end

                if player == getBeast() then
                    highlight.Color3 = Color3.fromRGB(255, 0, 0)
                else
                    highlight.Color3 = Color3.fromRGB(0, 255, 0)
                end
            end
        end
    else
        for _, obj in ipairs(game.Workspace:GetDescendants()) do
            if obj:IsA("BillboardGui") and obj.Name == "DistanceLabel" then
                obj:Destroy()
            elseif obj:IsA("BoxHandleAdornment") and obj.Name == "PlayerHighlight" then
                obj:Destroy()
            end
        end
    end
end





local function updatePCHighlight(pcs)
    local state = pcs

    if state then
        _G.PCsESP = true

        for _, obj in ipairs(game.Workspace:GetDescendants()) do
            if obj.Name == "ComputerTable" and not obj:FindFirstChild("PCHighlight") then
                local hili = Instance.new("Highlight", obj)
                hili.Name = "PCHighlight"
                hili.OutlineTransparency = 1
                hili.FillColor = obj:FindFirstChild("Screen").Color
            end
        end
    else
        _G.PCsESP = false

        for _, obj in ipairs(game.Workspace:GetDescendants()) do
            if obj.Name == "PCHighlight" then
                obj:Destroy()
            end
        end
    end
end

local TogglePods = Tabs.Main:AddToggle("PodsHighlight", {Title = "冷冻舱显示", Default = false})

TogglePods:OnChanged(function(pods)
    updatePodsHighlight(pods)
end)

Options.PodsHighlight:SetValue(false)

local ToggleExits = Tabs.Main:AddToggle("ExitsHighlight", {Title = "出口显示", Default = false})

ToggleExits:OnChanged(function(exits)
    updateExitsHighlight(exits)
end)

Options.ExitsHighlight:SetValue(false)

local TogglePCs = Tabs.Main:AddToggle("PCHighlight", {Title = "电脑显示", Default = false})

TogglePCs:OnChanged(function(pcs)
    updatePCHighlight(pcs)
end)

Options.PCHighlight:SetValue(false)

local TogglePlayersESP = Tabs.Main:AddToggle("PlayersHighlight", {Title = "玩家显示", Default = false})

local updateLoop

-- Initialize PlayersESP variable
_G.PlayersESP = false

-- Toggle function
TogglePlayersESP:OnChanged(function(newState)
    _G.PlayersESP = newState
    local state = _G.PlayersESP

    if state then
        updateLoop = game:GetService("RunService").Heartbeat:Connect(updatePlayersHighlight)
    else
        if updateLoop then
            updateLoop:Disconnect()
            updateLoop = nil
        end
        for _, obj in ipairs(game.Workspace:GetDescendants()) do
            if obj:IsA("BillboardGui") and obj.Name == "DistanceLabel" then
                obj:Destroy()
            elseif obj:IsA("BoxHandleAdornment") and obj.Name == "PlayerHighlight" then
                obj:Destroy()
            end
        end
    end
end)

Options.PlayersHighlight:SetValue(false)

local Toggle = Tabs.Main:AddToggle("FEInvisible", {Title = "人物隐身", Default = false })

Toggle:OnChanged(function(value)
    isinvisible = value
    if lp.Character then
        if not isinvisible then
            -- Restore visibility
            for _, v in pairs(visible_parts) do
                v.Transparency = 0
            end
        else
            ghost_parts()
        end
    end
end)

if lp.Character then
    setup_character(lp.Character)
    if isinvisible then
        ghost_parts()
    end
end

Options.FEInvisible:SetValue(false)

local Toggle = Tabs.Main:AddToggle("FEinviButton", {Title = "快捷隐身", Default = false})

-- Variable to hold the ScreenGui and its position
local screenGui
local savedPosition = UDim2.new(0.5, -75, 0.5, -37.5)  -- Default position

local function createGui()
    -- Create a ScreenGui
    screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Create a Frame
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 100, 0, 75) -- Smaller size
    frame.Position = savedPosition  -- Use saved position
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black background
    frame.Parent = screenGui

    -- Add UICorner to Frame
    local uiCornerFrame = Instance.new("UICorner")
    uiCornerFrame.CornerRadius = UDim.new(0, 15)
    uiCornerFrame.Parent = frame

    -- Create a Button
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 80, 0, 40) -- Smaller size
    button.Position = UDim2.new(0.5, 0, 0.5, 0) -- Centered in the frame
    button.AnchorPoint = Vector2.new(0.5, 0.5)
    button.BackgroundTransparency = 1 -- Remove background color
    button.Text = "开启隐身"
    button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
    button.Parent = frame

    -- Function to toggle button text based on Options.FEInvisible value
    local function toggleButtonText()
        if Options.FEInvisible.Value then
            button.Text = "隐身 [开]"
        else
            button.Text = "隐身 [关]"
        end
    end

    -- Connect the button click event to the toggle function
    button.MouseButton1Click:Connect(function()
        Options.FEInvisible:SetValue(not Options.FEInvisible.Value)
        toggleButtonText()
    end)

    -- Make the Frame draggable
    local UserInputService = game:GetService("UserInputService")

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        savedPosition = frame.Position  -- Save the updated position
    end

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    -- Update button text based on Options.FEInvisible initial value
    toggleButtonText()
end

-- Function to handle GUI creation and destruction
local function handleToggle(value)
    if value then
        -- Create and show the GUI
        createGui()
    else
        -- Destroy the GUI
        if screenGui then
            screenGui:Destroy()
            screenGui = nil
        end
    end
end

-- Handle the toggle state change
Toggle:OnChanged(handleToggle)

-- Set the initial state of the toggle
Options.FEInvisible:SetValue(false)

-- Ensure the GUI persists across respawns
local player = game.Players.LocalPlayer
player.CharacterAdded:Connect(function()
    if Toggle.Value then
        createGui()
    end
end)

local ToggleAntiFail = Tabs.Main:AddToggle("AntiFail", {Title = "破解电脑不失败", Default = false})

ToggleAntiFail:OnChanged(function(antiFail)
    local state = antiFail

    if state then
        task.spawn(function() 
            local OldNameCall = nil

            OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
                local Args = {...}
                local NamecallMethod = getnamecallmethod()

                if NamecallMethod == "FireServer" and Args[1] == "SetPlayerMinigameResult" then
                    Args[2] = true
                end

                return OldNameCall(Self, unpack(Args))
            end)
        end)
    else
        -- Disable AntiFail here if needed
        -- Example: Disconnect the hook
    end
end)

Options.AntiFail:SetValue(false)

local ToggleFullbright = Tabs.Main:AddToggle("Fullbright", {Title = "屏幕亮度", Default = false})

local lighting = game:GetService("Lighting")

-- Store the original lighting settings to revert back to them later
local originalBrightness = lighting.Brightness
local originalClockTime = lighting.ClockTime
local originalFogEnd = lighting.FogEnd
local originalGlobalShadows = lighting.GlobalShadows
local originalOutdoorAmbient = lighting.OutdoorAmbient
local originalAmbient = lighting.Ambient

ToggleFullbright:OnChanged(function(fullbright)
    getgenv().Fullbright = fullbright

    if fullbright then
        lighting.Brightness = 2
        lighting.ClockTime = 14
        lighting.FogEnd = 100000
        lighting.GlobalShadows = false
        lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        lighting.Ambient = Color3.fromRGB(128, 128, 128) -- Set ambient light for fullbright
    else
        -- Revert to the original lighting settings
        lighting.Brightness = originalBrightness
        lighting.ClockTime = originalClockTime
        lighting.FogEnd = originalFogEnd
        lighting.GlobalShadows = originalGlobalShadows
        lighting.OutdoorAmbient = originalOutdoorAmbient
        lighting.Ambient = originalAmbient
    end
end)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("AshbornnHub")
SaveManager:SetFolder("AshbornnHub/FleeFacility")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "天脚本",
    Content = "脚本加载成功！",
    Duration = 4
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
end