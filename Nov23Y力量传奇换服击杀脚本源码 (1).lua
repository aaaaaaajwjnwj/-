---   XS HUB
---   祈求上天再爱我一次
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local LocalPlayer = Players.LocalPlayer

local function protectGui(gui)
    if syn and syn.protect_gui then
        syn.protect_gui(gui)
    elseif gethui then
        gui.Parent = gethui()
    end
end

local function createRainbowWatermark()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ColorfulWatermark"
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.Parent = game:GetService("CoreGui")
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "WatermarkText"
    textLabel.Size = UDim2.new(0, 320, 0, 50)
    textLabel.Position = UDim2.new(1, -450, 0, 10)
    textLabel.AnchorPoint = Vector2.new(1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = "Nov23Y\n作者QQ:3277202938\nQQ群:1057585837"
    textLabel.TextSize = 16
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextStrokeTransparency = 0.5
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.ZIndex = 999
    textLabel.Active = false
    textLabel.Selectable = false
    textLabel.TextYAlignment = Enum.TextYAlignment.Top
    textLabel.RichText = true
    textLabel.Parent = screenGui
    
    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.Size = UDim2.new(0, 20, 0, 20)
    closeButton.Position = UDim2.new(1, 0, 0, 0)
    closeButton.AnchorPoint = Vector2.new(1, 0)
    closeButton.BackgroundColor3 = Color3.new(1, 0.2, 0.2)
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.new(1, 1, 1)
    closeButton.TextSize = 16
    closeButton.Parent = textLabel
    
    closeButton.MouseButton1Click:Connect(function()
        screenGui.Enabled = false
    end)
    
    local rainbowColors = {
        Color3.fromRGB(255, 0, 0),
        Color3.fromRGB(255, 165, 0),
        Color3.fromRGB(255, 255, 0),
        Color3.fromRGB(0, 255, 0),
        Color3.fromRGB(0, 0, 255),
        Color3.fromRGB(75, 0, 130),
        Color3.fromRGB(238, 130, 238)
    }
    
    spawn(function()
        while screenGui and screenGui.Parent do
            for i = 1, #rainbowColors do
                local nextColor = rainbowColors[i % #rainbowColors + 1]
                local currentColor = rainbowColors[i]
                
                for step = 0, 50 do
                    if not screenGui or not screenGui.Parent then break end
                    
                    local alpha = step / 50
                    local r = currentColor.R + (nextColor.R - currentColor.R) * alpha
                    local g = currentColor.G + (nextColor.G - currentColor.G) * alpha
                    local b = currentColor.B + (nextColor.B - currentColor.B) * alpha
                    
                    textLabel.TextColor3 = Color3.new(r, g, b)
                    wait(0.01)
                end
            end
        end
    end)
end

local function setupAntiAFK()
    LocalPlayer.Idled:Connect(function()
        VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end

local function teleportToFarmZone()
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(-8775.1904296875, 256.52142333984, -5853.5532226562)
        
        local platform = Instance.new("Part")
        platform.Parent = workspace
        platform.CFrame = CFrame.new(-8775.1904296875, 251.52142333984, -5853.5532226562)
        platform.Size = Vector3.new(10, 0, 10)
        platform.Anchored = true
    end
end

local function autoKill()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local targetHead = player.Character:FindFirstChild("Head")
            local myCharacter = LocalPlayer.Character
            
            if targetHead and myCharacter then
                local myLeftHand = myCharacter:FindFirstChild("LeftHand")
                
                if myLeftHand then
                    pcall(function()
                        firetouchinterest(targetHead, myLeftHand, 0)
                        task.wait(0.01)
                        firetouchinterest(targetHead, myLeftHand, 1)
                    end)
                end
            end
        end
    end
end

local function autoPunch()
    pcall(function()
        LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
        
        local character = LocalPlayer.Character
        local backpack = LocalPlayer.Backpack
        
        if character and backpack then
            local punchTool = backpack:FindFirstChild("Punch")
            if punchTool then
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid:EquipTool(punchTool)
                end
            end
        end
    end)
end

local function serverHop()
    local success, errorMsg = pcall(function()
        local baseUrl = "https://games.roblox.com/v1/games/"
        local placeId = game.PlaceId
        local url = baseUrl .. placeId .. "/servers/Public?sortOrder=Desc&limit=100"
        
        local function findServer(cursor)
            local fullUrl = cursor and (url .. "&cursor=" .. cursor) or url
            local response = game:HttpGet(fullUrl)
            
            if not response then return nil end
            
            local data = HttpService:JSONDecode(response)
            if not data then return nil end
            
            for _, server in ipairs(data.data) do
                if server.playing >= 14 and server.playing < server.maxPlayers then
                    return server.id
                end
            end
            
            if data.nextPageCursor then
                return findServer(data.nextPageCursor)
            end
            
            return nil
        end
        
        local serverId = findServer()
        
        if serverId then
            TeleportService:TeleportToPlaceInstance(placeId, serverId, LocalPlayer)
        else
            TeleportService:Teleport(placeId, LocalPlayer)
        end
    end)
    
    if not success then
        warn("Server hop failed:", errorMsg)
    end
end

_G.airStrike = false
_G.switchServers = false
local startTime = tick()

local uiLibraryUrl = "https://raw.githubusercontent.com/iyoulin/iyoulin/refs/heads/main/ato"
local uiLibrary = loadstring(game:HttpGet(uiLibraryUrl))()

local window = uiLibrary.CreateWindow({
    Title = "Nov23Y",
    Author = "Nov23Y",
    Icon = "rbxassetid://139743288604595",
    Size = UDim2.fromOffset(200, 250),
    Theme = "Rose",
    SideBarWidth = 110
})

window:EditOpenButton({
    Title = "Nov23Y",
    Icon = "image-upscale"
})

local mainTab = window:Tab({
    Title = "Nov23Y",
    Icon = ""
})

mainTab:Toggle({
    Title = "自动击杀",
    Value = true,
    Callback = function(value)
        _G.airStrike = value
        
        if value then
            RunService.Heartbeat:Connect(function()
                if _G.airStrike then
                    autoKill()
                end
            end)
        end
    end
})

mainTab:Toggle({
    Title = "自动挥拳",
    Value = true,
    Callback = function(value)
        if value then
            RunService.Heartbeat:Connect(function()
                if value then
                    autoPunch()
                end
            end)
        end
    end
})

mainTab:Toggle({
    Title = "自动换服",
    Desc = "180秒换一次 死亡立即换服",
    Value = true,
    Callback = function(value)
        _G.switchServers = value
        
        if value then
            LocalPlayer.CharacterAdded:Connect(function(character)
                local humanoid = character:WaitForChild("Humanoid")
                humanoid.Died:Connect(function()
                    if _G.switchServers then
                        print("玩家死亡，执行换服...")
                        serverHop()
                    end
                end)
            end)
            
            RunService.Heartbeat:Connect(function()
                if _G.switchServers then
                    if tick() - startTime >= 180 then
                        serverHop()
                    end
                end
            end)
        end
    end
})

local infoTab = window:Tab({
    Title = "信息",
    Icon = ""
})

infoTab:Section({
    Title = "本脚本由Nov23Y制作",
    TextSize = 17
})

infoTab:Section({
    Title = "作者QQ3277202938",
    TextSize = 17
})

infoTab:Section({
    Title = "脚本免费",
    TextSize = 17
})

infoTab:Section({
    Title = "上当受骗概不负责",
    TextSize = 17
})

infoTab:Section({
    Title = "脚本群1057585837",
    TextSize = 20
})

createRainbowWatermark()
setupAntiAFK()
teleportToFarmZone()

print("Nov23Y Script Loaded Successfully!")