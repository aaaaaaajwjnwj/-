---   XS HUB
local animationIDs = {
    ["rbxassetid://10468665991"] = true,
    ["rbxassetid://10466974800"] = true,
    ["rbxassetid://10471336737"] = true,
    ["rbxassetid://12510170988"] = true,
    ["rbxassetid://12272894215"] = true,
    ["rbxassetid://12296882427"] = true,
    ["rbxassetid://12307656616"] = true,
    ["rbxassetid://12351854556"] = true,
    ["rbxassetid://12534735382"] = true,
    ["rbxassetid://12502664044"] = true,
    ["rbxassetid://12509505723"] = true,
    ["rbxassetid://12618292188"] = true,
    ["rbxassetid://12684185971"] = true,
    ["rbxassetid://13376869471"] = true,
    ["rbxassetid://13294790250"] = true,
    ["rbxassetid://13376962659"] = true,
    ["rbxassetid://13501296372"] = true,
    ["rbxassetid://14004235777"] = true,
    ["rbxassetid://14003607057"] = true,
    ["rbxassetid://14046756619"] = true,
    ["rbxassetid://14048349132"] = true,
    ["rbxassetid://14299135500"] = true,
    ["rbxassetid://14967219354"] = true,
    ["rbxassetid://14357997687"] = true,
    ["rbxassetid://14357943487"] = true,
    ["rbxassetid://15290930205"] = true,
    ["rbxassetid://15145462680"] = true,
    ["rbxassetid://15295895753"] = true,
    ["rbxassetid://15311685628"] = true,
    ["rbxassetid://16139108718"] = true,
    ["rbxassetid://16139402582"] = true,
    ["rbxassetid://16515850153"] = true,
    ["rbxassetid://16431491215"] = true,
    ["rbxassetid://16597322398"] = true,
    ["rbxassetid://10469493270"] = true,
    ["rbxassetid://10469630950"] = true,
    ["rbxassetid://10469639222"] = true,
    ["rbxassetid://10469643643"] = true,
    ["rbxassetid://13532562418"] = true,
    ["rbxassetid://13491635433"] = true,
    ["rbxassetid://13296577783"] = true,
    ["rbxassetid://13295919399"] = true,
    ["rbxassetid://13370310513"] = true,
    ["rbxassetid://13390230973"] = true,
    ["rbxassetid://13378751717"] = true,
    ["rbxassetid://13378708199"] = true,
    ["rbxassetid://14004222985"] = true,
    ["rbxassetid://13997092940"] = true,
    ["rbxassetid://14001963401"] = true,
    ["rbxassetid://14136436157"] = true,
    ["rbxassetid://15259161390"] = true,
    ["rbxassetid://15240216931"] = true,
    ["rbxassetid://15240176873"] = true,
    ["rbxassetid://15162694192"] = true,
    ["rbxassetid://16515503507"] = true,
    ["rbxassetid://16515520431"] = true,
    ["rbxassetid://16515448089"] = true,
    ["rbxassetid://16552234590"] = true,
    ["rbxassetid://17889458563"] = true,
    ["rbxassetid://17889461810"] = true,
    ["rbxassetid://17889471098"] = true,
    ["rbxassetid://17889290569"] = true,
    ["rbxassetid://10479335397"] = true,
    ["rbxassetid://13380255751"] = true,
    ["rbxassetid://13362587853"] = true,
    ["rbxassetid://11365563255"] = {range = 175, behind = 17},
    ["rbxassetid://12983333733"] = {range = 200, behind = 16},
    ["rbxassetid://13927612951"] = {range = 100, behind = 16},
    ["rbxassetid://13146710762"] = {range = 200, behind = 24},
    ["rbxassetid://15520132233"] = {range = 100, behind = 75},
    ["rbxassetid://16082123712"] = {range = 40, behind = 20}
}

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local detectionRange = 15
local detectionMode = "360"
local lastTeleportTime = 0

local function getNearbyPlayers(radius)
    local players = {}
    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            local otherCharacter = otherPlayer.Character
            if otherCharacter then
                local otherHumanoidRootPart = otherCharacter:FindFirstChild("HumanoidRootPart")
                if otherHumanoidRootPart and (otherHumanoidRootPart.Position - humanoidRootPart.Position).Magnitude <= radius then
                    table.insert(players, otherPlayer)
                end
            end
        end
    end
    return players
end

local function isInFront(character, target)
    local lookVector = character.CFrame.lookVector
    local directionToTarget = (target.Position - character.Position).unit
    return lookVector:Dot(directionToTarget) > 0.5 -- Adjust the threshold as necessary
end

local function checkAnimations()
    local currentTime = tick()
    if currentTime - lastTeleportTime < 0.1 then
        return
    end
    
    local nearbyPlayers = getNearbyPlayers(detectionRange)
    for _, otherPlayer in pairs(nearbyPlayers) do
        local otherCharacter = otherPlayer.Character
        if otherCharacter then
            local otherHumanoidRootPart = otherCharacter:FindFirstChild("HumanoidRootPart")
            if otherHumanoidRootPart then
                if (detectionMode == "360" or isInFront(humanoidRootPart, otherHumanoidRootPart)) then
                    for _, animTrack in pairs(otherCharacter:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks()) do
                        local animId = animTrack.Animation.AnimationId
                        local data = animationIDs[animId]
                        if data then
                            local teleportDistance = (type(data) == "table" and data.behind) or 18 -- default behind distance
                            local newPosition = otherHumanoidRootPart.Position - otherHumanoidRootPart.CFrame.lookVector * teleportDistance + Vector3.new(math.random(-1, 1), 0, math.random(-1, 1))
                            humanoidRootPart.CFrame = CFrame.new(newPosition)
                            lastTeleportTime = currentTime
                            return
                        end
                    end
                end
            end
        end
    end
end

local ultraInstinctActive = false

local RunService = game:GetService("RunService")

local function ultraInstinctLoop()
    local connection
    connection = RunService.Heartbeat:Connect(function()
        if ultraInstinctActive then
            checkAnimations()
        else
            connection:Disconnect()
        end
    end)
end

local function onCharacterAdded(newCharacter)
    character = newCharacter
    humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    if ultraInstinctActive then
        ultraInstinctLoop()
    end
end

local animationsToAvoid = {
    ["rbxassetid://10468665991"] = true,
    ["rbxassetid://10466974800"] = true,
    ["rbxassetid://10471336737"] = true,
    ["rbxassetid://12510170988"] = true,
    ["rbxassetid://12272894215"] = true,
    ["rbxassetid://12296882427"] = true,
    ["rbxassetid://12307656616"] = true,
    ["rbxassetid://12351854556"] = true,
    ["rbxassetid://12534735382"] = true,
    ["rbxassetid://12502664044"] = true,
    ["rbxassetid://12509505723"] = true,
    ["rbxassetid://12618292188"] = true,
    ["rbxassetid://12684185971"] = true,
    ["rbxassetid://13376869471"] = true,
    ["rbxassetid://13294790250"] = true,
    ["rbxassetid://13376962659"] = true,
    ["rbxassetid://13501296372"] = true,
    ["rbxassetid://14004235777"] = true,
    ["rbxassetid://14003607057"] = true,
    ["rbxassetid://14046756619"] = true,
    ["rbxassetid://14048349132"] = true,
    ["rbxassetid://14299135500"] = true,
    ["rbxassetid://14967219354"] = true,
    ["rbxassetid://14357997687"] = true,
    ["rbxassetid://14357943487"] = true,
    ["rbxassetid://15290930205"] = true,
    ["rbxassetid://15145462680"] = true,
    ["rbxassetid://15295895753"] = true,
    ["rbxassetid://15311685628"] = true,
    ["rbxassetid://16139108718"] = true,
    ["rbxassetid://16139402582"] = true,
    ["rbxassetid://16515850153"] = true,
    ["rbxassetid://16431491215"] = true,
    ["rbxassetid://16597322398"] = true,
    ["rbxassetid://10469493270"] = "special"
}

local skills = {
    firstskill = {"Normal Punch", "Flowing Water", "Machine Gun Blows", "Flash Strike", "Homerun", "Quick Slice", "Bullet Barrage", "Crushing Pull"},
    secondskill = {"Atmos Cleave", "Windstorm Fury", "Ignition Burst", "Whirlwind Kick", "Beatdown", "Consecutive Punches", "Lethal Whirlwind Stream", "Vanishing Kick"},
    thirdskill = {"Shove", "Hunter's Grasp", "Blitz Shot", "Scatter", "Grand Slam", "Pinpoint Cut", "Stone Coffin", "Whirlwind Drop"},
    fourthskill = {"Split Second Counter", "Expulsive Push", "Jet Dive", "Explosive Shuriken", "Foul Ball", "Uppercut", "Head First", "Prey's Peril"}
}

local skillCooldowns = {
    ["Normal Punch"] = 21,
    ["Flowing Water"] = 19,
    ["Machine Gun Blows"] = 17,
    ["Flash Strike"] = 18.5,
    ["Homerun"] = 18.6,
    ["Quick Slice"] = 21.5,
    ["Bullet Barrage"] = 22,
    ["Crushing Pull"] = 23,
    ["Consecutive Punches"] = 19,
    ["Lethal Whirlwind Stream"] = 22,
    ["Ignition Burst"] = 18.3,
    ["Whirlwind Kick"] = 21.5,
    ["Beatdown"] = 24.3,
    ["Atmos Cleave"] = 23.2,
    ["Windstorm Fury"] = 21,
    ["Vanishing Kick"] = 21,
    ["Shove"] = 11,
    ["Hunter's Grasp"] = 17.8,
    ["Blitz Shot"] = 26,
    ["Scatter"] = 22.3,
    ["Grand Slam"] = 21.7,
    ["Pinpoint Cut"] = 18,
    ["Stone Coffin"] = 25.7,
    ["Whirlwind Drop"] = 15.7,
    ["Jet Dive"] = 19.5,
    ["Explosive Shuriken"] = 18.5,
    ["Foul Ball"] = 24.8,
    ["Split Second Counter"] = 18.7,
    ["Expulsive Push"] = 20.7,
    ["Prey's Peril"] = 18.5,
    ["Head First"] = 22,
    ["Uppercut"] = 21
}

local skillUsage = {
    firstskill = 0,
    secondskill = 0,
    thirdskill = 0,
    fourthskill = 0
}

local function isAnimationPlaying(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
            if animationsToAvoid[track.Animation.AnimationId] then
                return animationsToAvoid[track.Animation.AnimationId]
            end
        end
    end
    return false
end

local function teleportBehindTarget(player, targetPlayer, distance)
    local targetCharacter = targetPlayer.Character
    if targetCharacter then
        local targetHRP = targetCharacter:FindFirstChild("HumanoidRootPart")
        local playerHRP = player.Character:FindFirstChild("HumanoidRootPart")
        if targetHRP and playerHRP then
            local backOffset = targetHRP.CFrame.lookVector * -distance
            playerHRP.CFrame = CFrame.new(targetHRP.Position + backOffset, targetHRP.Position)
        end
    end
end

local function equipAndUseSkill(player, skillType)
    local character = player.Character
    if character then
        local backpack = player.Backpack
        local liveFolder = workspace:FindFirstChild("Live")
        if backpack and liveFolder then
            for _, skill in pairs(skills[skillType]) do
                local tool = backpack:FindFirstChild(skill) or character:FindFirstChild(skill)
                if tool then
                    character.Humanoid:EquipTool(tool)
                    
                    -- Execute left click and left click release actions
                    local args = {
                        [1] = {
                            ["Mobile"] = true,
                            ["Goal"] = "LeftClick"
                        }
                    }
                    game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                    wait(0.02)

                    local argsRelease = {
                        [1] = {
                            ["Goal"] = "LeftClickRelease",
                            ["Mobile"] = true
                        }
                    }
                    game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(argsRelease))

                    -- Unequip tool
                    character.Humanoid:UnequipTools()

                    -- Wait for cooldown if defined
                    if skillCooldowns[skill] then
                        skillUsage[skillType] = tick()
                        wait(skillCooldowns[skill])
                    end
                end
            end
        end
    end
end

local autoFarmThread
local useFirstSkill = false
local useSecondSkill = false
local useThirdSkill = false
local useFourthSkill = false
local ignoreFriends = false
local specificPlayerUsername = ""
local specificPlayerTarget = nil

local function findClosestMatchingPlayer(inputName)
    local players = game:GetService("Players"):GetPlayers()
    local closestPlayer = nil
    local closestDistance = math.huge

    for _, player in pairs(players) do
        local distance = string.len(player.Name) + string.len(inputName) - 2 * string.len(player.Name:sub(1, string.len(inputName)))
        if distance < closestDistance then
            closestDistance = distance
            closestPlayer = player
        end
    end

    return closestPlayer
end

local function autoFarm()
    local player = game:GetService("Players").LocalPlayer
    local targetPlayer

    while true do
        wait(0.02)

        -- Select target player
        if specificPlayerTarget then
            targetPlayer = specificPlayerTarget
        else
            if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") or targetPlayer.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
                local players = game:GetService("Players"):GetPlayers()
                repeat
                    targetPlayer = players[math.random(1, #players)]
                until targetPlayer ~= player and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and (not ignoreFriends or not player:IsFriendsWith(targetPlayer.UserId))
            end
        end

        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
            repeat wait() until player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        end

        local function handleAvoidAnimation()
            local endTime = tick() + 1
            while tick() < endTime do
                teleportBehindTarget(player, targetPlayer, 13)
                wait(0.02)
            end
        end

        if isAnimationPlaying(targetPlayer.Character) then
            handleAvoidAnimation()
        else
            teleportBehindTarget(player, targetPlayer, 3)

            local args = {
                [1] = {
                    ["Goal"] = "LeftClick",
                    ["Mobile"] = true
                }
            }
            game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

            local argsRelease = {
                [1] = {
                    ["Goal"] = "LeftClickRelease",
                    ["Mobile"] = true
                }
            }
            game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(argsRelease))

            local currentTime = tick()

            -- Use skills concurrently without stopping the teleportation
            if useFirstSkill and (currentTime - skillUsage["firstskill"] >= skillCooldowns[skills.firstskill[1]]) then
                coroutine.wrap(equipAndUseSkill)(player, "firstskill")
                skillUsage["firstskill"] = currentTime
            end
            if useSecondSkill and (currentTime - skillUsage["secondskill"] >= skillCooldowns[skills.secondskill[1]]) then
                coroutine.wrap(equipAndUseSkill)(player, "secondskill")
                skillUsage["secondskill"] = currentTime
            end
            if useThirdSkill and (currentTime - skillUsage["thirdskill"] >= skillCooldowns[skills.thirdskill[1]]) then
                coroutine.wrap(equipAndUseSkill)(player, "thirdskill")
                skillUsage["thirdskill"] = currentTime
            end
            if useFourthSkill and (currentTime - skillUsage["fourthskill"] >= skillCooldowns[skills.fourthskill[1]]) then
                coroutine.wrap(equipAndUseSkill)(player, "fourthskill")
                skillUsage["fourthskill"] = currentTime
            end
        end
    end
end

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

local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/XT114514/rbx/main/vape.lua"))()
local win = UILib:Window("XS脚本丨最强战场",Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)

local Tab = win:Tab("战斗功能")
local Tab2 = win:Tab("自动功能")

Tab:Toggle("防击打", false, function(Value)
	ultraInstinctActive = Value
    if ultraInstinctActive then
    print("开")
       ultraInstinctLoop()
    else
    print("关")
    end
end)

Tab:Toggle("自动打人", false, function(Value)
	if Value then
        autoFarmThread = coroutine.create(autoFarm)
        coroutine.resume(autoFarmThread)
    else
        if autoFarmThread then
            coroutine.close(autoFarmThread)
            autoFarmThread = nil
        end
    end
end)

Tab:Textbox("输入玩家用户名",false,function(Value)
    specificPlayerUsername = Value
    specificPlayerTarget = findClosestMatchingPlayer(specificPlayerUsername)
end)

Tab:Button("关闭自动打人", function()
    specificPlayerTarget = nil
end)

local autoBlockEnabled = false
local detectionMode = "360"
local autoBlockRange = 50
local autoPunchEnabled = false

Tab:Toggle("自动防御",false,function(Value)
    autoBlockEnabled = Value
    if Value then
    print("开")
    else
    print("关")
    end
end)

Tab:Toggle("自动挥拳",false,function(Value)
    autoPunchEnabled = Value
    if Value then
        print("开")
    else
        print("关")
    end
end)

Tab:Toggle("自瞄玩家",'Toggleflag',false,function(Value)
getgenv().AutoAimlocking = Value
    game:GetService("RunService").RenderStepped:Connect(function() if not getgenv().AutoAimlocking == true then return end local x,b for _,v in ipairs(game:GetService("Players"):GetPlayers()) do if v.Character and v ~= game:GetService("Players").LocalPlayer then if not x or (v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude < b then x = v b = (v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude end end end if x and b <= 15 then game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, x.Character.HumanoidRootPart.Position) end end);
end)

Tab:Toggle("自动躲技能",'Toggleflag',false,function(Value)
     getgenv().AutoDodging = Value

    local DashAnims = {NormalDash = {10479335397},WeaponDash = {13380255751}};

    local SaitamaAnims = {
        NormalPunch = {10468665991};
        ConsecutivePunches = {10466974800};
        Shove = {10471336737};
        Uppercut = {12510170988};
    }

    local GarouAnims = {
        FlowingWater = {12272894215};
        LethalWhirlwindStream = {12296882427};
        HunterGrasp = {12307656616};
    }

    local GenosAnims = {
        MachineGunBlows = {12534735382};
        IgnitionBurst = {12502664044};
        BlitzShot = {12618271998};
        JetDive = {12684390285};
    }

    local SonicAnims = {
        FlashStrike = {13376869471};
        WhirlwindKick = {13294790250};
        Scatter = {13376962659,13365849295};
        ExplosiveShuriken = {13501296372};
    }

    local MetalBatAnims = {
        Homerun = {14004235777,14003607057};
        Beatdown = {14046756619,14048349132};
        GrandSlam = {14299135500,14967219354};
        FoulBall = {14351441234};
    }

    local SamuraiAnims = {
        QuickSlice = {15290930205};
        AtomsCleave = {15145462680};
        PinPointCut = {15295895753};
    }

    local EsperAnims = {
        CrushingPull = {16139108718,16139402582};
        WindstormFury = {16515850153};
        StoneCoffin = {16431491215};
        ExplosivePush = {16597322398,16597912086};
    }

    local Animations = {}
    for _,x in pairs({DashAnims,SaitamaAnims,GarouAnims,GenosAnims,SonicAnims,MetalBatAnims,SamuraiAnims,EsperAnims}) do
        for _,k in pairs(x) do
            for _,v in pairs(k) do
                table.insert(Animations,v);
            end
        end
    end

    task.spawn(function()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if getgenv().AutoDodging == true then
                pcall(function()
                    for _,k in ipairs(workspace.Live:GetChildren()) do
                        if k:IsA("Model") and k:FindFirstChild("Head") and k.Head:IsA("Part") and k.Head.Name == "Head" and k.Head ~= game.Players.LocalPlayer.Character.Head then
                            if (k.Head.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude <= 25 then
                                if k:FindFirstChildOfClass("Humanoid") and k:FindFirstChildOfClass("Humanoid").Health > 0 then local IsUsingAttacks = false;
                                    for _,x in pairs(k:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks()) do
                                        if table.find(Animations,tonumber(x.Animation.AnimationId:match("%d+"))) then
                                            IsUsingAttacks = true;
                                            break
                                        end
                                    end

                                    if k:FindFirstChild("M1ing") or IsUsingAttacks then    
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(k.Head.Position + k.Head.CFrame.lookVector * -20 + Vector3.new(0,35,0),k.Head.Position);
                                    end
                                end
                            end
                        end
                    end
                end)
            else
                connection:Disconnect();
            end
        end)
    end)
end)

Tab2:Toggle("自动放技能1", false, function(Value)
     useFirstSkill = Value
end)

Tab2:Toggle("自动放技能2", false, function(Value)
     useSecondSkill = Value
end)

Tab2:Toggle("自动放技能3", false, function(Value)
     useThirdSkill = Value
end)

Tab2:Toggle("自动放技能4", false, function(Value)
     useFourthSkill = Value
end)

local punchAnimations = {
    ["10469493270"] = true,
    ["10469630950"] = true,
    ["10469639222"] = true,
    ["10469643643"] = true,
    ["13532562418"] = true,
    ["13491635433"] = true,
    ["13296577783"] = true,
    ["13295919399"] = true,
    ["13370310513"] = true,
    ["13390230973"] = true,
    ["13378751717"] = true,
    ["13378708199"] = true,
    ["14004222985"] = true,
    ["13997092940"] = true,
    ["14001963401"] = true,
    ["14136436157"] = true,
    ["15259161390"] = true,
    ["15240216931"] = true,
    ["15240176873"] = true,
    ["15162694192"] = true,
    ["16515503507"] = true,
    ["16515520431"] = true,
    ["16515448089"] = true,
    ["16552234590"] = true,
    ["17889458563"] = true,
    ["17889461810"] = true,
    ["17889471098"] = true,
    ["17889290569"] = true
}

-- Define the dash animations to detect
local dashAnimations = {
    ["10479335397"] = true,
    ["13380255751"] = true
}

-- Define the skill animations to detect with their respective delays
local skillAnimations = {
    ["10466974800"] = 1.8,  -- Satima Punches
    ["12534735382"] = 1.9,
    ["14046756619"] = 0.5,
    ["13376962659"] = 1.0,  -- Scatter Sonic
    ["12296882427"] = 0.4,
    ["12618292188"] = 0.6,
    ["12618271998"] = 0.6,
    ["13376869471"] = 0.5,
    ["17799224866"] = 0.9,  -- Bullet Barrage
    ["18179181663"] = 0.6,  -- Headfirst
    ["16515850153"] = 0.8,  -- Windstorm Fury
    ["16431491215"] = 0.7   -- Stone Coffin
}

-- Define the block animation to detect
local blockAnimations = {
    ["BlockingAnimationId"] = true -- Replace with the actual animation ID for blocking
}

-- Function to check if a player is within range
local function isPlayerInRange(player, range)
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")

    local targetCharacter = player.Character
    if targetCharacter then
        local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
        if targetRootPart then
            local distance = (rootPart.Position - targetRootPart.Position).Magnitude
            return distance <= range
        end
    end
    return false
end

local function isLocalPlayerPlayingAnimation()
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    for _, animTrack in pairs(character.Humanoid:GetPlayingAnimationTracks()) do
        local animId = animTrack.Animation.AnimationId:match("%d+$")
        if punchAnimations[animId] or dashAnimations[animId] or skillAnimations[animId] then
            return true
        end
    end
    return false
end

-- Function to check if the local player is blocking
local function isLocalPlayerBlocking()
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    for _, animTrack in pairs(character.Humanoid:GetPlayingAnimationTracks()) do
        local animId = animTrack.Animation.AnimationId:match("%d+$")
        if blockAnimations[animId] then
            return true
        end
    end
    return false
end

-- Function to detect animations
local function detectAnimations()
    local players = game:GetService("Players")

    for _, player in pairs(players:GetPlayers()) do
        if player ~= players.LocalPlayer then
            local inRange = false
            if detectionMode == "360" then
                inRange = isPlayerInRange(player, autoBlockRange)
            end

            if inRange then
                local character = player.Character
                if character then
                    for _, animTrack in pairs(character.Humanoid:GetPlayingAnimationTracks()) do
                        local animId = animTrack.Animation.AnimationId:match("%d+$")
                        if not isLocalPlayerPlayingAnimation() then
                            if punchAnimations[animId] then
                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyPress",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                                wait(0.45)

                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyRelease",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
                            elseif dashAnimations[animId] then
                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyPress",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                                wait(0.90)

                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyRelease",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
                            elseif skillAnimations[animId] then
                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyPress",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                                wait(skillAnimations[animId])

                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyRelease",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
                            end
                        end
                    end
                end
            end
        end
    end
end

-- Function to perform auto punch
local function autoPunch()
    local players = game:GetService("Players")

    for _, player in pairs(players:GetPlayers()) do
        if player ~= players.LocalPlayer then
            local inRange = false
            if detectionMode == "360" then
                inRange = isPlayerInRange(player, 7)
            end

            if inRange and not isLocalPlayerBlocking() then
                local args = {
                    [1] = {
                        ["Goal"] = "LeftClick",
                        ["Mobile"] = true
                    }
                }
                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                local argsRelease = {
                    [1] = {
                        ["Goal"] = "LeftClickRelease",
                        ["Mobile"] = true
                    }
                }
                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(argsRelease))
            end
        end
    end
end

-- Connect the detection functions to RunService
game:GetService("RunService").Heartbeat:Connect(function()
    if autoBlockEnabled then
        detectAnimations()
    end
    if autoPunchEnabled then
        autoPunch()
    end
end)