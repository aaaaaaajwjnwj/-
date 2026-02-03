local Env = getfenv()

pcall(function()
end)

local _ = pcall(function()
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    
    local guiPosition = Vector2.new(50, 100)
    local guiSize = Vector2.new(250, 200)
    
    local mainLogicEnabled = true
    local visualsEnabled = true
    local currentTab = "Main"
    local guiVisible = true
    local userPing = 0
    local pingInputText = "0"
    
    local lastPlayerPosition = Vector3.new(0, 0, 0)
    local currentPlayerVelocity = Vector3.new(0, 0, 0)
    local lastMousePosition = Vector2.new(0, 0)
    
    local backgroundSquare = Drawing.new("Square")
    backgroundSquare.Filled = true
    backgroundSquare.Color = Color3.fromRGB(20, 20, 20)
    backgroundSquare.Transparency = 0.85
    backgroundSquare.Position = guiPosition
    backgroundSquare.Size = guiSize
    backgroundSquare.Visible = true
    
    local borderSquare = Drawing.new("Square")
    borderSquare.Filled = false
    borderSquare.Thickness = 2
    borderSquare.Color = Color3.fromRGB(0, 170, 255)
    borderSquare.Transparency = 1
    borderSquare.Position = guiPosition
    borderSquare.Size = guiSize
    borderSquare.Visible = true
    
    local titleText = Drawing.new("Text")
    titleText.Position = Vector2.new(guiPosition.X + 125, guiPosition.Y + 10)
    titleText.Color = Color3.fromRGB(255, 0, 0)
    titleText.Text = "Yamazz"
    titleText.Outline = true
    titleText.Center = true
    titleText.Visible = true
    
    local subtitleText = Drawing.new("Text")
    subtitleText.Position = Vector2.new(guiPosition.X + 125, guiPosition.Y + 25)
    subtitleText.Color = Color3.fromRGB(200, 200, 200)
    subtitleText.Text = "[F2 to toggle]"
    subtitleText.Outline = true
    subtitleText.Center = true
    subtitleText.Visible = true
    
    local mainTabButton = Drawing.new("Square")
    mainTabButton.Filled = true
    mainTabButton.Color = Color3.fromRGB(0, 170, 255)
    mainTabButton.Transparency = 0.7
    mainTabButton.Position = Vector2.new(guiPosition.X + 10, guiPosition.Y + 45)
    mainTabButton.Size = Vector2.new(110, 25)
    mainTabButton.Visible = true
    
    local mainTabText = Drawing.new("Text")
    mainTabText.Position = Vector2.new(guiPosition.X + 65, guiPosition.Y + 52)
    mainTabText.Color = Color3.fromRGB(255, 255, 255)
    mainTabText.Text = "Main"
    mainTabText.Center = true
    mainTabText.Visible = true
    
    local pingTabButton = Drawing.new("Square")
    pingTabButton.Filled = true
    pingTabButton.Color = Color3.fromRGB(60, 60, 60)
    pingTabButton.Transparency = 0.7
    pingTabButton.Position = Vector2.new(guiPosition.X + 130, guiPosition.Y + 45)
    pingTabButton.Size = Vector2.new(110, 25)
    pingTabButton.Visible = true
    
    local pingTabText = Drawing.new("Text")
    pingTabText.Position = Vector2.new(guiPosition.X + 185, guiPosition.Y + 52)
    pingTabText.Color = Color3.fromRGB(255, 255, 255)
    pingTabText.Text = "Ping"
    pingTabText.Outline = true
    pingTabText.Center = true
    pingTabText.Visible = true
    
    local mainLogicCheckboxBorder = Drawing.new("Square")
    mainLogicCheckboxBorder.Filled = false
    mainLogicCheckboxBorder.Thickness = 2
    mainLogicCheckboxBorder.Color = Color3.fromRGB(255, 255, 255)
    mainLogicCheckboxBorder.Transparency = 1
    mainLogicCheckboxBorder.Position = Vector2.new(guiPosition.X + 20, guiPosition.Y + 85)
    mainLogicCheckboxBorder.Size = Vector2.new(15, 15)
    mainLogicCheckboxBorder.Visible = true
    
    local mainLogicCheckboxFill = Drawing.new("Square")
    mainLogicCheckboxFill.Filled = true
    mainLogicCheckboxFill.Color = Color3.fromRGB(0, 255, 0)
    mainLogicCheckboxFill.Transparency = 1
    mainLogicCheckboxFill.Position = Vector2.new(guiPosition.X + 23, guiPosition.Y + 88)
    mainLogicCheckboxFill.Size = Vector2.new(9, 9)
    mainLogicCheckboxFill.Visible = true
    
    local mainLogicLabel = Drawing.new("Text")
    mainLogicLabel.Position = Vector2.new(guiPosition.X + 45, guiPosition.Y + 87)
    mainLogicLabel.Color = Color3.fromRGB(255, 255, 255)
    mainLogicLabel.Text = "Main Logic"
    mainLogicLabel.Outline = true
    mainLogicLabel.Center = false
    mainLogicLabel.Visible = true
    
    local visualsCheckboxBorder = Drawing.new("Square")
    visualsCheckboxBorder.Filled = false
    visualsCheckboxBorder.Thickness = 2
    visualsCheckboxBorder.Color = Color3.fromRGB(255, 255, 255)
    visualsCheckboxBorder.Transparency = 1
    visualsCheckboxBorder.Position = Vector2.new(guiPosition.X + 20, guiPosition.Y + 120)
    visualsCheckboxBorder.Size = Vector2.new(15, 15)
    visualsCheckboxBorder.Visible = true
    
    local visualsCheckboxFill = Drawing.new("Square")
    visualsCheckboxFill.Filled = true
    visualsCheckboxFill.Color = Color3.fromRGB(0, 255, 0)
    visualsCheckboxFill.Transparency = 1
    visualsCheckboxFill.Position = Vector2.new(guiPosition.X + 23, guiPosition.Y + 123)
    visualsCheckboxFill.Size = Vector2.new(9, 9)
    visualsCheckboxFill.Visible = true
    
    local visualsLabel = Drawing.new("Text")
    visualsLabel.Position = Vector2.new(guiPosition.X + 45, guiPosition.Y + 122)
    visualsLabel.Color = Color3.fromRGB(255, 255, 255)
    visualsLabel.Text = "Visuals"
    visualsLabel.Outline = true
    visualsLabel.Center = false
    visualsLabel.Visible = true
    
    local pingInputLabel = Drawing.new("Text")
    pingInputLabel.Position = Vector2.new(guiPosition.X + 20, guiPosition.Y + 85)
    pingInputLabel.Color = Color3.fromRGB(255, 255, 255)
    pingInputLabel.Text = "Enter Your Ping (ms):"
    pingInputLabel.Outline = true
    pingInputLabel.Center = false
    pingInputLabel.Visible = false
    
    local pingInputBackground = Drawing.new("Square")
    pingInputBackground.Filled = true
    pingInputBackground.Color = Color3.fromRGB(40, 40, 40)
    pingInputBackground.Transparency = 0.9
    pingInputBackground.Position = Vector2.new(guiPosition.X + 20, guiPosition.Y + 105)
    pingInputBackground.Size = Vector2.new(210, 25)
    pingInputBackground.Visible = false
    
    local pingInputBorder = Drawing.new("Square")
    pingInputBorder.Filled = false
    pingInputBorder.Thickness = 2
    pingInputBorder.Color = Color3.fromRGB(100, 100, 100)
    pingInputBorder.Transparency = 1
    pingInputBorder.Position = Vector2.new(guiPosition.X + 20, guiPosition.Y + 105)
    pingInputBorder.Size = Vector2.new(210, 25)
    pingInputBorder.Visible = false
    
    local pingInputText = Drawing.new("Text")
    pingInputText.Position = Vector2.new(guiPosition.X + 25, guiPosition.Y + 112)
    pingInputText.Color = Color3.fromRGB(255, 255, 255)
    pingInputText.Text = "0"
    pingInputText.Outline = true
    pingInputText.Center = false
    pingInputText.Visible = false
    
    local applyButton = Drawing.new("Square")
    applyButton.Filled = true
    applyButton.Color = Color3.fromRGB(0, 200, 0)
    applyButton.Transparency = 0.8
    applyButton.Position = Vector2.new(guiPosition.X + 20, guiPosition.Y + 140)
    applyButton.Size = Vector2.new(100, 25)
    applyButton.Visible = false
    
    local applyButtonText = Drawing.new("Text")
    applyButtonText.Position = Vector2.new(guiPosition.X + 70, guiPosition.Y + 147)
    applyButtonText.Color = Color3.fromRGB(255, 255, 255)
    applyButtonText.Text = "Apply"
    applyButtonText.Outline = true
    applyButtonText.Center = true
    applyButtonText.Visible = false
    
    local resetButton = Drawing.new("Square")
    resetButton.Filled = true
    resetButton.Color = Color3.fromRGB(200, 0, 0)
    resetButton.Transparency = 0.8
    resetButton.Position = Vector2.new(guiPosition.X + 130, guiPosition.Y + 140)
    resetButton.Size = Vector2.new(100, 25)
    resetButton.Visible = false
    
    local resetButtonText = Drawing.new("Text")
    resetButtonText.Position = Vector2.new(guiPosition.X + 180, guiPosition.Y + 147)
    resetButtonText.Color = Color3.fromRGB(255, 255, 255)
    resetButtonText.Text = "Reset"
    resetButtonText.Outline = true
    resetButtonText.Center = true
    resetButtonText.Visible = false
    
    local currentSettingsText = Drawing.new("Text")
    currentSettingsText.Position = Vector2.new(guiPosition.X + 125, guiPosition.Y + 175)
    currentSettingsText.Color = Color3.fromRGB(0, 255, 0)
    currentSettingsText.Text = "Current: Default Settings"
    currentSettingsText.Outline = true
    currentSettingsText.Center = true
    currentSettingsText.Visible = false
    
    spawn(function()
        local success, errorMsg = pcall(function()
            while true do
                for hue = 0.01, 0.99, 0.01 do
                    local rainbowColor = Color3.fromHSV(hue, 1, 1)
                    borderSquare.Color = rainbowColor
                    titleText.Color = rainbowColor
                    wait(0.03)
                end
                local resetColor = Color3.fromHSV(0, 1, 1)
                borderSquare.Color = resetColor
                titleText.Color = resetColor
                wait(0.03)
            end
        end)
    end)
    
    local safeZoneBox = Drawing.new("Square")
    safeZoneBox.Filled = false
    safeZoneBox.Thickness = 2
    safeZoneBox.Color = Color3.fromRGB(0, 255, 0)
    safeZoneBox.Transparency = 1
    safeZoneBox.Visible = false
    
    local dangerZoneBox = Drawing.new("Square")
    dangerZoneBox.Filled = false
    dangerZoneBox.Thickness = 2
    dangerZoneBox.Color = Color3.fromRGB(255, 60, 60)
    dangerZoneBox.Transparency = 1
    dangerZoneBox.Visible = false
    
    local warningZoneBox = Drawing.new("Square")
    warningZoneBox.Filled = false
    warningZoneBox.Thickness = 2
    warningZoneBox.Color = Color3.fromRGB(255, 165, 0)
    warningZoneBox.Transparency = 1
    warningZoneBox.Visible = false
    
    local blueLines = {}
    for i = 1, 32 do
        local line = Drawing.new("Line")
        line.Thickness = 2
        line.Color = Color3.fromRGB(0, 170, 255)
        line.Transparency = 1
        line.Visible = false
        table.insert(blueLines, line)
    end
    
    local orangeLines = {}
    for i = 1, 30 do
        local line = Drawing.new("Line")
        line.Thickness = 2
        line.Color = Color3.fromRGB(255, 165, 0)
        line.Transparency = 1
        line.Visible = false
        table.insert(orangeLines, line)
    end
    
    local statusText = Drawing.new("Text")
    statusText.Position = Vector2.new(20, 20)
    statusText.Color = Color3.fromRGB(255, 255, 255)
    statusText.Outline = true
    statusText.Visible = false
    statusText.Center = false
    
    spawn(function()
        local success, errorMsg = pcall(function()
            while true do
                local isF2Pressed = Env.iskeypressed
                if isF2Pressed and isF2Pressed(113) then
                    guiVisible = not guiVisible
                    backgroundSquare.Visible = guiVisible
                    borderSquare.Visible = guiVisible
                    titleText.Visible = guiVisible
                    subtitleText.Visible = guiVisible
                    mainTabButton.Visible = guiVisible
                    mainTabText.Visible = guiVisible
                    pingTabButton.Visible = guiVisible
                    pingTabText.Visible = guiVisible
                    
                    if currentTab == "Main" then
                        mainLogicCheckboxBorder.Visible = guiVisible
                        mainLogicCheckboxFill.Visible = guiVisible and mainLogicEnabled
                        mainLogicLabel.Visible = guiVisible
                        visualsCheckboxBorder.Visible = guiVisible
                        visualsCheckboxFill.Visible = guiVisible and visualsEnabled
                        visualsLabel.Visible = guiVisible
                    else
                        pingInputLabel.Visible = guiVisible
                        pingInputBackground.Visible = guiVisible
                        pingInputBorder.Visible = guiVisible
                        pingInputText.Visible = guiVisible
                        applyButton.Visible = guiVisible
                        applyButtonText.Visible = guiVisible
                        resetButton.Visible = guiVisible
                        resetButtonText.Visible = guiVisible
                        currentSettingsText.Visible = guiVisible
                    end
                    wait(0.2)
                end
                wait(0.01)
            end
        end)
    end)
    
    spawn(function()
        local success, errorMsg = pcall(function()
            while true do
                wait(0.01)
                local success2, errorMsg2 = pcall(function()
                    if not LocalPlayer then
                        return
                    end
                    local Mouse = LocalPlayer:GetMouse()
                    if not Mouse then
                        return
                    end
                    local mouseX = Mouse.X
                    local mouseY = Mouse.Y
                    local isMouse1Pressed = Env.ismouse1pressed
                    
                    if isMouse1Pressed and isMouse1Pressed() then
                        if mouseX >= mainTabButton.Position.X and mouseX <= mainTabButton.Position.X + mainTabButton.Size.X then
                            if mouseY >= mainTabButton.Position.Y and mouseY <= mainTabButton.Position.Y + mainTabButton.Size.Y then
                                currentTab = "Main"
                                mainTabButton.Color = Color3.fromRGB(0, 170, 255)
                                pingTabButton.Color = Color3.fromRGB(60, 60, 60)
                                
                                mainLogicCheckboxBorder.Visible = true
                                mainLogicCheckboxFill.Visible = mainLogicEnabled
                                mainLogicLabel.Visible = true
                                visualsCheckboxBorder.Visible = true
                                visualsCheckboxFill.Visible = visualsEnabled
                                visualsLabel.Visible = true
                                
                                pingInputLabel.Visible = false
                                pingInputBackground.Visible = false
                                pingInputBorder.Visible = false
                                pingInputText.Visible = false
                                applyButton.Visible = false
                                applyButtonText.Visible = false
                                resetButton.Visible = false
                                resetButtonText.Visible = false
                                currentSettingsText.Visible = false
                            end
                        end
                        
                        if mouseX >= pingTabButton.Position.X and mouseX <= pingTabButton.Position.X + pingTabButton.Size.X then
                            if mouseY >= pingTabButton.Position.Y and mouseY <= pingTabButton.Position.Y + pingTabButton.Size.Y then
                                currentTab = "Ping"
                                mainTabButton.Color = Color3.fromRGB(60, 60, 60)
                                pingTabButton.Color = Color3.fromRGB(0, 170, 255)
                                
                                mainLogicCheckboxBorder.Visible = false
                                mainLogicCheckboxFill.Visible = false
                                mainLogicLabel.Visible = false
                                visualsCheckboxBorder.Visible = false
                                visualsCheckboxFill.Visible = false
                                visualsLabel.Visible = false
                                
                                pingInputLabel.Visible = true
                                pingInputBackground.Visible = true
                                pingInputBorder.Visible = true
                                pingInputText.Visible = true
                                applyButton.Visible = true
                                applyButtonText.Visible = true
                                resetButton.Visible = true
                                resetButtonText.Visible = true
                                currentSettingsText.Visible = true
                            end
                        end
                        
                        if currentTab == "Main" then
                            if mouseX >= mainLogicCheckboxBorder.Position.X and mouseX <= mainLogicCheckboxBorder.Position.X + mainLogicCheckboxBorder.Size.X then
                                if mouseY >= mainLogicCheckboxBorder.Position.Y and mouseY <= mainLogicCheckboxBorder.Position.Y + mainLogicCheckboxBorder.Size.Y then
                                    mainLogicEnabled = not mainLogicEnabled
                                    mainLogicCheckboxFill.Visible = mainLogicEnabled
                                end
                            end
                            
                            if mouseX >= visualsCheckboxBorder.Position.X and mouseX <= visualsCheckboxBorder.Position.X + visualsCheckboxBorder.Size.X then
                                if mouseY >= visualsCheckboxBorder.Position.Y and mouseY <= visualsCheckboxBorder.Position.Y + visualsCheckboxBorder.Size.Y then
                                    visualsEnabled = not visualsEnabled
                                    visualsCheckboxFill.Visible = visualsEnabled
                                end
                            end
                        end
                        
                        if currentTab == "Ping" then
                            if mouseX >= applyButton.Position.X and mouseX <= applyButton.Position.X + applyButton.Size.X then
                                if mouseY >= applyButton.Position.Y and mouseY <= applyButton.Position.Y + applyButton.Size.Y then
                                    local inputValue = tonumber(pingInputText.Text)
                                    if inputValue then
                                        userPing = inputValue
                                        currentSettingsText.Text = "Current: " .. tostring(userPing) .. "ms"
                                        currentSettingsText.Color = Color3.fromRGB(0, 255, 0)
                                    end
                                end
                            end
                            
                            if mouseX >= resetButton.Position.X and mouseX <= resetButton.Position.X + resetButton.Size.X then
                                if mouseY >= resetButton.Position.Y and mouseY <= resetButton.Position.Y + resetButton.Size.Y then
                                    userPing = 0
                                    pingInputText.Text = "0"
                                    currentSettingsText.Text = "Current: Default Settings"
                                    currentSettingsText.Color = Color3.fromRGB(0, 255, 0)
                                end
                            end
                        end
                        
                        wait(0.1)
                    end
                end)
            end
        end)
    end)
    
    spawn(function()
        local success, errorMsg = pcall(function()
            for i = 1, 250 do
                wait(0.05)
            end
        end)
    end)
    
    spawn(function()
        local success, errorMsg = pcall(function()
            while true do
                local success2, errorMsg2 = pcall(function()
                    local BallsFolder = workspace:FindFirstChild("Balls")
                    if not BallsFolder then
                        return
                    end
                    
                    local balls = BallsFolder:GetChildren()
                    for i, ball in ipairs(balls) do
                        local success3, errorMsg3 = pcall(function()
                            local success4, errorMsg4 = pcall(function()
                                local ballPosition = ball.Position
                                if ballPosition == nil then
                                    return
                                end
                                local ballSize = ball.Size
                                if ballSize == nil then
                                    return
                                end
                            end)
                        end)
                    end
                end)
                
                local playerVelocity = Vector3.new(0, 0, 0)
                
                local success3, errorMsg3 = pcall(function()
                    if not LocalPlayer then
                        return
                    end
                    local character = LocalPlayer.Character
                    if not character then
                        return
                    end
                    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                    if not humanoidRootPart then
                        return
                    end
                end)
                
                if not ball then
                    wait(0.01)
                    continue
                end
                
                if not humanoidRootPart then
                    wait(0.01)
                    continue
                end
                
                local success4, errorMsg4 = pcall(function()
                    local success5, errorMsg5 = pcall(function()
                        local ballPosition = ball.Position
                        local playerPosition = humanoidRootPart.Position
                    end)
                end)
                
                if not ballPosition then
                    wait(0.01)
                    continue
                end
                
                if not playerPosition then
                    wait(0.01)
                    continue
                end
                
                local timestamp1 = os.clock()
                
                local success5, errorMsg5 = pcall(function()
                    local success6, errorMsg6 = pcall(function()
                        local ballVelocity = ball.Velocity
                        if not ballVelocity then
                            return
                        end
                        local ballVelocityXZ = Vector3.new(ballVelocity.X, 0, ballVelocity.Z)
                        local ballSpeed = math.sqrt(ballVelocity.X * ballVelocity.X + ballVelocity.Z * ballVelocity.Z)
                    end)
                end)
                
                local dodgeRadius = 20 + ballSpeed * 0.1
                
                local success6, errorMsg6 = pcall(function()
                    if dodgeRadius < 20 then
                        dodgeRadius = 20
                    end
                    if dodgeRadius > 1000 then
                        dodgeRadius = 1000
                    end
                end)
                
                local success7, errorMsg7 = pcall(function()
                    local success8, errorMsg8 = pcall(function()
                        if not LocalPlayer then
                            return
                        end
                        local character = LocalPlayer.Character
                        if not character then
                            return
                        end
                        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                        if not humanoidRootPart then
                            return
                        end
                    end)
                    
                    if not humanoidRootPart then
                        return
                    end
                    
                    local playerPos = humanoidRootPart.Position
                    if not playerPos then
                        return
                    end
                    
                    local AliveFolder = workspace:FindFirstChild("Alive")
                    if not AliveFolder then
                        return
                    end
                    
                    if not LocalPlayer then
                        return
                    end
                    
                    local character = LocalPlayer.Character
                    if not character then
                        return
                    end
                    
                    local playerName = LocalPlayer.Character.Name
                    local alivePlayers = AliveFolder:GetChildren()
                    
                    local nearbyPlayersCount = 0
                    local totalPlayers = #alivePlayers
                    
                    for i, alivePlayer in ipairs(alivePlayers) do
                        if not playerName then
                            return
                        end
                        
                        local alivePlayerName = alivePlayer.Name
                        if alivePlayerName ~= playerName then
                            local playerCharacter = LocalPlayer.Character
                            if not playerCharacter then
                                return
                            end
                            
                            if alivePlayer ~= LocalPlayer.Character then
                                nearbyPlayersCount = nearbyPlayersCount + 1
                            end
                        end
                    end
                    
                    statusText.Text = "None in range (checked " .. tostring(nearbyPlayersCount) .. "/" .. tostring(totalPlayers) .. ")"
                end)
                
                local predictedBallPos = ballPosition + ballVelocityXZ * 0.1
                local predictedPlayerPos = playerPosition + currentPlayerVelocity * 0.1
                
                local deltaX = predictedBallPos.X - predictedPlayerPos.X
                local deltaZ = predictedBallPos.Z - predictedPlayerPos.Z
                local distanceSquared = deltaX * deltaX + deltaZ * deltaZ
                local radiusSquared = dodgeRadius * dodgeRadius
                
                local isInDangerZone = distanceSquared <= radiusSquared
                
                if not isInDangerZone then
                    wait(0.01)
                    continue
                end
                
                wait(0.002)
                
                if not ball then
                    continue
                end
                
                local ballParent = ball.Parent
                if ballParent == nil then
                    continue
                end
                
                local success8, errorMsg8 = pcall(function()
                    if not LocalPlayer then
                        return
                    end
                    local character = LocalPlayer.Character
                    if not character then
                        return
                    end
                    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                    if not humanoidRootPart then
                        return
                    end
                end)
                
                if not ball then
                    continue
                end
                
                if not humanoidRootPart then
                    continue
                end
                
                local success9, errorMsg9 = pcall(function()
                    local success10, errorMsg10 = pcall(function()
                        local ballPosition2 = ball.Position
                        local playerPosition2 = humanoidRootPart.Position
                    end)
                end)
                
                if not ballPosition2 then
                    continue
                end
                
                if not playerPosition2 then
                    continue
                end
                
                local timestamp2 = os.clock()
                
                local success10, errorMsg10 = pcall(function()
                    local success11, errorMsg11 = pcall(function()
                        local ballVelocity2 = ball.Velocity
                        if not ballVelocity2 then
                            return
                        end
                        local ballVelocityXZ2 = Vector3.new(ballVelocity2.X, 0, ballVelocity2.Z)
                        local ballSpeed2 = math.sqrt(ballVelocity2.X * ballVelocity2.X + ballVelocity2.Z * ballVelocity2.Z)
                    end)
                end)
                
                local dodgeRadius2 = 20 + ballSpeed2 * 0.1
                
                local success11, errorMsg11 = pcall(function()
                    if dodgeRadius2 < 20 then
                        dodgeRadius2 = 20
                    end
                    if dodgeRadius2 > 1000 then
                        dodgeRadius2 = 1000
                    end
                end)
                
                local success12, errorMsg12 = pcall(function()
                    local success13, errorMsg13 = pcall(function()
                        if not LocalPlayer then
                            return
                        end
                        local character = LocalPlayer.Character
                        if not character then
                            return
                        end
                        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                        if not humanoidRootPart then
                            return
                        end
                    end)
                    
                    if not humanoidRootPart then
                        return
                    end
                    
                    local playerPos = humanoidRootPart.Position
                    if not playerPos then
                        return
                    end
                    
                    local AliveFolder = workspace:FindFirstChild("Alive")
                    if not AliveFolder then
                        return
                    end
                    
                    if not LocalPlayer then
                        return
                    end
                    
                    local character = LocalPlayer.Character
                    if not character then
                        return
                    end
                    
                    local playerName = LocalPlayer.Character.Name
                    local alivePlayers = AliveFolder:GetChildren()
                    
                    local nearbyPlayersCount = 0
                    local totalPlayers = #alivePlayers
                    
                    for i, alivePlayer in ipairs(alivePlayers) do
                        if not playerName then
                            return
                        end
                        
                        local alivePlayerName = alivePlayer.Name
                        if alivePlayerName ~= playerName then
                            local playerCharacter = LocalPlayer.Character
                            if not playerCharacter then
                                return
                            end
                            
                            if alivePlayer ~= LocalPlayer.Character then
                                nearbyPlayersCount = nearbyPlayersCount + 1
                            end
                        end
                    end
                end)
                
                local predictedBallPos2 = ballPosition2 + ballVelocityXZ2 * 0.1
                local predictedPlayerPos2 = playerPosition2 + currentPlayerVelocity * 0.1
                
                local deltaX2 = predictedBallPos2.X - predictedPlayerPos2.X
                local deltaZ2 = predictedBallPos2.Z - predictedPlayerPos2.Z
                local distanceSquared2 = deltaX2 * deltaX2 + deltaZ2 * deltaZ2
                local radiusSquared2 = dodgeRadius2 * dodgeRadius2
                
                local isInDangerZone2 = distanceSquared2 <= radiusSquared2
                
                if mainLogicEnabled and isInDangerZone2 then
                    local success13, errorMsg13 = pcall(function()
                        local pingOffset = userPing / 1000
                        local adjustedPrediction = ballPosition2 + ballVelocityXZ2 * (0.1 + pingOffset)
                        
                        local directionToBall = Vector3.new(
                            predictedPlayerPos2.X - adjustedPrediction.X,
                            0,
                            predictedPlayerPos2.Z - adjustedPrediction.Z
                        )
                        
                        local directionMagnitude = math.sqrt(directionToBall.X * directionToBall.X + directionToBall.Z * directionToBall.Z)
                        
                        if directionMagnitude > 0 then
                            local normalizedDirection = Vector3.new(
                                directionToBall.X / directionMagnitude,
                                0,
                                directionToBall.Z / directionMagnitude
                            )
                            
                            local dodgeDistance = dodgeRadius2 + 5
                            local safePosition = adjustedPrediction + normalizedDirection * dodgeDistance
                            
                            local success14, errorMsg14 = pcall(function()
                                if not LocalPlayer then
                                    return
                                end
                                local character = LocalPlayer.Character
                                if not character then
                                    return
                                end
                                local humanoid = character:FindFirstChild("Humanoid")
                                if not humanoid then
                                    return
                                end
                                
                                humanoid:MoveTo(safePosition)
                            end)
                        end
                    end)
                end
                
                if visualsEnabled then
                    local success14, errorMsg14 = pcall(function()
                        local camera = workspace.CurrentCamera
                        if not camera then
                            return
                        end
                        
                        local ballScreenPos, ballOnScreen = camera:WorldToViewportPoint(ballPosition2)
                        local playerScreenPos, playerOnScreen = camera:WorldToViewportPoint(playerPosition2)
                        
                        if ballOnScreen and playerOnScreen then
                            local circleSegments = 32
                            local angleStep = (2 * math.pi) / circleSegments
                            
                            for i = 1, circleSegments do
                                local angle1 = (i - 1) * angleStep
                                local angle2 = i * angleStep
                                
                                local point1_3D = Vector3.new(
                                    ballPosition2.X + math.cos(angle1) * dodgeRadius2,
                                    ballPosition2.Y,
                                    ballPosition2.Z + math.sin(angle1) * dodgeRadius2
                                )
                                
                                local point2_3D = Vector3.new(
                                    ballPosition2.X + math.cos(angle2) * dodgeRadius2,
                                    ballPosition2.Y,
                                    ballPosition2.Z + math.sin(angle2) * dodgeRadius2
                                )
                                
                                local point1_Screen, point1_Visible = camera:WorldToViewportPoint(point1_3D)
                                local point2_Screen, point2_Visible = camera:WorldToViewportPoint(point2_3D)
                                
                                if point1_Visible and point2_Visible then
                                    blueLines[i].From = Vector2.new(point1_Screen.X, point1_Screen.Y)
                                    blueLines[i].To = Vector2.new(point2_Screen.X, point2_Screen.Y)
                                    blueLines[i].Visible = true
                                    
                                    if isInDangerZone2 then
                                        blueLines[i].Color = Color3.fromRGB(255, 60, 60)
                                    else
                                        blueLines[i].Color = Color3.fromRGB(0, 170, 255)
                                    end
                                else
                                    blueLines[i].Visible = false
                                end
                            end
                            
                            local warningRadius = dodgeRadius2 * 1.5
                            local orangeSegments = 30
                            local orangeAngleStep = (2 * math.pi) / orangeSegments
                            
                            for i = 1, orangeSegments do
                                local angle1 = (i - 1) * orangeAngleStep
                                local angle2 = i * orangeAngleStep
                                
                                local point1_3D = Vector3.new(
                                    ballPosition2.X + math.cos(angle1) * warningRadius,
                                    ballPosition2.Y,
                                    ballPosition2.Z + math.sin(angle1) * warningRadius
                                )
                                
                                local point2_3D = Vector3.new(
                                    ballPosition2.X + math.cos(angle2) * warningRadius,
                                    ballPosition2.Y,
                                    ballPosition2.Z + math.sin(angle2) * warningRadius
                                )
                                
                                local point1_Screen, point1_Visible = camera:WorldToViewportPoint(point1_3D)
                                local point2_Screen, point2_Visible = camera:WorldToViewportPoint(point2_3D)
                                
                                if point1_Visible and point2_Visible then
                                    orangeLines[i].From = Vector2.new(point1_Screen.X, point1_Screen.Y)
                                    orangeLines[i].To = Vector2.new(point2_Screen.X, point2_Screen.Y)
                                    orangeLines[i].Visible = true
                                else
                                    orangeLines[i].Visible = false
                                end
                            end
                            
                            statusText.Visible = true
                            if isInDangerZone2 then
                                statusText.Text = "DANGER! Ball approaching!"
                                statusText.Color = Color3.fromRGB(255, 60, 60)
                            else
                                statusText.Text = "Safe - Monitoring balls..."
                                statusText.Color = Color3.fromRGB(0, 255, 0)
                            end
                        else
                            for i = 1, 32 do
                                blueLines[i].Visible = false
                            end
                            for i = 1, 30 do
                                orangeLines[i].Visible = false
                            end
                        end
                    end)
                else
                    for i = 1, 32 do
                        blueLines[i].Visible = false
                    end
                    for i = 1, 30 do
                        orangeLines[i].Visible = false
                    end
                    statusText.Visible = false
                end
                
                wait(0.01)
            end
        end)
    end)
    
    spawn(function()
        local success, errorMsg = pcall(function()
            while true do
                wait(0.016)
                
                local success2, errorMsg2 = pcall(function()
                    if not LocalPlayer then
                        return
                    end
                    local character = LocalPlayer.Character
                    if not character then
                        return
                    end
                    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                    if not humanoidRootPart then
                        return
                    end
                    
                    local currentPosition = humanoidRootPart.Position
                    currentPlayerVelocity = (currentPosition - lastPlayerPosition) / 0.016
                    lastPlayerPosition = currentPosition
                end)
            end
        end)
    end)
    
    spawn(function()
        local success, errorMsg = pcall(function()
            local UserInputService = game:GetService("UserInputService")
            
            UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if gameProcessed then
                    return
                end
                
                if currentTab == "Ping" and pingInputBackground.Visible then
                    if input.KeyCode then
                        local keyCode = input.KeyCode.Value
                        
                        if keyCode >= 48 and keyCode <= 57 then
                            local digit = tostring(keyCode - 48)
                            if pingInputText.Text == "0" then
                                pingInputText.Text = digit
                            else
                                pingInputText.Text = pingInputText.Text .. digit
                            end
                        elseif input.KeyCode == Enum.KeyCode.Backspace then
                            if #pingInputText.Text > 1 then
                                pingInputText.Text = string.sub(pingInputText.Text, 1, -2)
                            else
                                pingInputText.Text = "0"
                            end
                        elseif input.KeyCode == Enum.KeyCode.Return then
                            local inputValue = tonumber(pingInputText.Text)
                            if inputValue then
                                userPing = inputValue
                                currentSettingsText.Text = "Current: " .. tostring(userPing) .. "ms"
                                currentSettingsText.Color = Color3.fromRGB(0, 255, 0)
                            end
                        end
                    end
                end
            end)
        end)
    end)
    
    local function cleanup()
        local success, errorMsg = pcall(function()
            backgroundSquare:Remove()
            borderSquare:Remove()
            titleText:Remove()
            subtitleText:Remove()
            mainTabButton:Remove()
            mainTabText:Remove()
            pingTabButton:Remove()
            pingTabText:Remove()
            mainLogicCheckboxBorder:Remove()
            mainLogicCheckboxFill:Remove()
            mainLogicLabel:Remove()
            visualsCheckboxBorder:Remove()
            visualsCheckboxFill:Remove()
            visualsLabel:Remove()
            pingInputLabel:Remove()
            pingInputBackground:Remove()
            pingInputBorder:Remove()
            pingInputText:Remove()
            applyButton:Remove()
            applyButtonText:Remove()
            resetButton:Remove()
            resetButtonText:Remove()
            currentSettingsText:Remove()
            safeZoneBox:Remove()
            dangerZoneBox:Remove()
            warningZoneBox:Remove()
            statusText:Remove()
            
            for i = 1, 32 do
                blueLines[i]:Remove()
            end
            for i = 1, 30 do
                orangeLines[i]:Remove()
            end
        end)
    end
    
    game:GetService("Players").LocalPlayer.CharacterRemoving:Connect(function()
        -- Keep running on respawn
    end)
    
end)