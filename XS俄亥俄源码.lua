---   XS HUB开源
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaoxi9008/xiaoxi9008.github.io/refs/heads/main/1.lua"))()

local Players = cloneref(game:GetService("Players"))
local RunService = cloneref(game:GetService("RunService"))
local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
local HttpService = cloneref(game:GetService("HttpService"))
local UserInputService = cloneref(game:GetService("UserInputService"))
local TweenService = cloneref(game:GetService("TweenService"))
local LocalizationService = cloneref(game:GetService("LocalizationService"))
local Workspace = cloneref(game:GetService("Workspace"))
local CoreGui = cloneref(game:GetService("CoreGui"))

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    Character = newCharacter
    HumanoidRootPart = newCharacter:WaitForChild("HumanoidRootPart")
    Humanoid = newCharacter:WaitForChild("Humanoid")
end)

local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/454244513/WindUIFix/refs/heads/main/main.lua"))()

local bladeaura = false
local AutoArmor = false
local healThread = nil
local autokz = false
local autoATMCashCombo = false
local autobank = false
local cashAuraEnabled = false

local Load = require(ReplicatedStorage.devv).load
local Signal = Load("Signal")
local FireServer = Signal.FireServer
local InvokeServer = Signal.InvokeServer
local GUID = Load("GUID")
local v3item = Load("v3item")
local Raycast = Load("Raycast")
local Inventory = v3item.inventory

local function getinventory()
    return Inventory.items
end

local function finditem(itemName)
    for i, v in next, Inventory.items do
        if v.name == itemName or v.type == itemName or v.subtype == itemName then
            return v
        end
    end
    return nil
end

local function executebladekill(target, position)
    local ninjastar = nil
    for i, v in next, Inventory.items do
        if v.name == "Ninja Star" or v.type == "Ninja Star" or v.subtype == "Ninja Star" then
            ninjastar = v
            break
        end
    end
    
    if ninjastar then
        local guid = GUID.new()
        FireServer("throwItem", {
            itemId = ninjastar.id,
            targetPosition = position,
            guid = guid
        })
    end
end

local function hackthrow(player, target, position, itemData, velocity)
    if player ~= LocalPlayer then
        return
    end
    
    local ninjastar = finditem("Ninja Star")
    if ninjastar then
        FireServer("throwItem", {
            itemId = ninjastar.id,
            targetPosition = position,
            velocity = velocity
        })
    end
end

local Window = WindUI:CreateWindow({
    Author = "Ohio",
    Title = "XD俄亥俄",
    OpenButton = {
        StrokeThickness = 3,
        Scale = 0.5,
        Title = "XSOhio",
        Draggable = true,
        Color = ColorSequence.new(Color3.fromHex("f9a8d4"), Color3.fromHex("f9a8d4")),
        Enabled = true,
        OnlyMobile = false,
        CornerRadius = UDim.new(0, 16),
    },
})

local ViolenceTab = Window:Tab({
    Title = "暴力",
})
ViolenceTab:Select()

ViolenceTab:Paragraph({
    Title = "官网 没有",
    Desc = "官方qq群没有",
})

ViolenceTab:Paragraph({
    Title = "此脚本为XS",
    Desc = "XSXSXSXS",
})

ViolenceTab:Toggle({
    Title = "飞镖",
    Callback = function(value)
        bladeaura = value
    end,
})

RunService.Heartbeat:Connect(function()
    if not bladeaura then return end
    if not HumanoidRootPart then return end
    
    for i, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer then continue end
        
        local targetCharacter = player.Character
        if not targetCharacter then continue end
        
        local targetHumanoid = targetCharacter:FindFirstChildOfClass("Humanoid")
        local targetHead = targetCharacter:FindFirstChild("Head")
        
        if not targetCharacter or not targetHead then continue end
        if not targetHumanoid or targetHumanoid.Health <= 0 then continue end
        
        local distance = (HumanoidRootPart.Position - targetHead.Position).Magnitude
        
        if distance <= 50 then
            executebladekill(player, targetHead.Position)
        end
    end
end)

local GeneralTab = Window:Tab({
    Title = "通用",
})
GeneralTab:Select()

GeneralTab:Toggle({
    Value = false,
    Title = "透视",
    Callback = function(value)
        if not value then
            if _G.ESPConnection then
                _G.ESPConnection:Disconnect()
                _G.ESPConnection = nil
            end
            return
        end
        
        local function applyESP(player)
            local character = player.Character
            if not character then return end
            
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if not character or not humanoid then return end
            
            humanoid.NameDisplayDistance = 9000000000
            humanoid.NameOcclusion = Enum.NameOcclusion.NoOcclusion
            humanoid.HealthDisplayDistance = 9000000000
            humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOn
        end
        
        for i, player in pairs(Players:GetPlayers()) do
            applyESP(player)
            
            player.CharacterAdded:Connect(function()
                task.wait(0.33)
                applyESP(player)
            end)
        end
        
        Players.PlayerAdded:Connect(function(player)
            applyESP(player)
            
            player.CharacterAdded:Connect(function()
                task.wait(0.33)
                applyESP(player)
            end)
        end)
        
        local espConnection = RunService.Heartbeat:Connect(function()
            for i, player in pairs(Players:GetPlayers()) do
                local character = player.Character
                if not character then continue end
                
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if not humanoid then continue end
                
                humanoid.NameDisplayDistance = 9000000000
                humanoid.NameOcclusion = Enum.NameOcclusion.NoOcclusion
                humanoid.HealthDisplayDistance = 9000000000
                humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOn
            end
        end)
        
        _G.ESPConnection = espConnection
    end,
})

GeneralTab:Toggle({
    Callback = function(value)
        AutoArmor = value
        
        if not value then return end
        
        RunService.Heartbeat:Connect(function()
            if not AutoArmor then return end
            
            pcall(function()
                local character = LocalPlayer.Character
                if not character then return end
                
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if not humanoid then return end
                
                if humanoid.Health > 35 then
                    local armor = finditem("Armor")
                    if armor then
                        InvokeServer("equipItem", armor.id)
                    end
                end
            end)
        end)
    end,
    Title = "自动穿甲",
    Default = false,
})

GeneralTab:Toggle({
    Callback = function(value)
        if healThread then
            healThread:Disconnect()
            healThread = nil
        end
        
        if not value then return end
        
        healThread = RunService.Heartbeat:Connect(function()
            pcall(function()
                local character = LocalPlayer.Character
                if not character then return end
                
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if not humanoid then return end
                
                if humanoid.Health < humanoid.MaxHealth then
                    local bandage = finditem("Bandage")
                    if bandage then
                        InvokeServer("useItem", bandage.id)
                    else
                        InvokeServer("attemptPurchase", "Bandage")
                    end
                end
            end)
        end)
    end,
    Title = "自动回血",
    Default = false,
})

GeneralTab:Toggle({
    Value = false,
    Title = "自动面具",
    Callback = function(value)
        autokz = value
        
        if not value then return end
        
        task.spawn(function()
            while autokz do
                wait(1)
                
                if not autokz then break end
                
                local character = LocalPlayer.Character
                if not character then continue end
                
                local hockeyMask = character:FindFirstChild("Hockey Mask")
                
                if not hockeyMask then
                    local Signal = Load("Signal")
                    local v3item = Load("v3item")
                    local inventory = v3item.inventory
                    
                    for i, item in pairs(inventory.items) do
                        if item.name == "Hockey Mask" or item.type == "Hockey Mask" then
                            Signal.FireServer("equipItem", item.id)
                            break
                        end
                    end
                end
            end
        end)
    end,
})

local MoneyTab = Window:Tab({
    Title = "刷钱",
})
MoneyTab:Select()

MoneyTab:Toggle({
    Callback = function(value)
        autoATMCashCombo = value
        
        if not value then return end
        
        task.spawn(function()
            while autoATMCashCombo do
                task.wait(0.5)
                
                if not autoATMCashCombo then break end
                
                pcall(function()
                    local atms = Workspace.Game.Entities:FindFirstChild("ATM")
                    if atms then
                        for i, atm in pairs(atms:GetChildren()) do
                            local atmPart = atm:FindFirstChildOfClass("Part")
                            if atmPart then
                                local distance = (HumanoidRootPart.Position - atmPart.Position).Magnitude
                                if distance <= 10 then
                                    FireServer("interactATM", atm)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end,
    Title = "自动ATM",
    Default = false,
})

MoneyTab:Toggle({
    Value = false,
    Title = "自动抢银行",
    Callback = function(value)
        autobank = value
        
        if not value then return end
        
        task.spawn(function()
            while autobank do
                task.wait(1)
                
                if not autobank then break end
                
                pcall(function()
                    local bank = Workspace.Game:FindFirstChild("Bank")
                    if bank then
                        local vault = bank:FindFirstChild("Vault")
                        if vault then
                            FireServer("robBank", vault)
                        end
                    end
                end)
            end
        end)
    end,
})

MoneyTab:Toggle({
    Value = false,
    Title = "现金光环",
    Callback = function(value)
        cashAuraEnabled = value
        
        if not value then return end
        
        task.spawn(function()
            while cashAuraEnabled do
                pcall(function()
                    local cashBundle = Workspace.Game.Entities:FindFirstChild("CashBundle")
                    if cashBundle then
                        for i, cash in pairs(cashBundle:GetChildren()) do
                            if not cashAuraEnabled then break end
                            
                            local part = cash:FindFirstChildOfClass("Part")
                            if part then
                                local distance = (HumanoidRootPart.Position - part.Position).Magnitude
                                if distance <= 30 then
                                    FireServer("collectCash", cash)
                                end
                            end
                        end
                    end
                end)
                
                task.wait(0.1)
            end
        end)
    end,
})

MoneyTab:Toggle({
    Callback = function(value)
        if not value then return end
        
        task.spawn(function()
            while value do
                pcall(function()
                    local entities = Workspace.Game.Entities
                    
                    local cashBundle = entities:FindFirstChild("CashBundle")
                    if cashBundle then
                        for i, cash in pairs(cashBundle:GetChildren()) do
                            local part = cash:FindFirstChildOfClass("Part")
                            if part then
                                HumanoidRootPart.CFrame = part.CFrame
                                task.wait(0.1)
                            end
                        end
                    end
                    
                    local droppedItems = entities:FindFirstChild("DroppedItems")
                    if droppedItems then
                        for i, item in pairs(droppedItems:GetChildren()) do
                            local part = item:FindFirstChildOfClass("Part")
                            if part then
                                HumanoidRootPart.CFrame = part.CFrame
                                task.wait(0.1)
                            end
                        end
                    end
                end)
                
                task.wait(0.5)
            end
        end)
    end,
    Title = "自动捡钱",
    Default = false,
})

local PassTab = Window:Tab({
    Title = "免费通行证",
})
PassTab:Select()

PassTab:Toggle({
    Title = "绕过移动经销商[新版本]",
    Callback = function()
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()
            local args = {...}
            
            if method == "InvokeServer" then
                if args[1] == "checkGamepass" or args[1] == "hasGamepass" then
                    if args[2] == "MobileDealer" or args[2] == "mobileDealer" then
                        return true
                    end
                end
            end
            
            return oldNamecall(self, ...)
        end)
        
        LocalPlayer:SetAttribute("mobileDealer", true)
        
        local Indicies = ReplicatedStorage.devv.shared.Indicies
        local MobileDealerModule = require(Indicies.mobileDealer)
        
        for category, items in pairs(MobileDealerModule) do
            for i, item in ipairs(items) do
                item.stock = 999999
            end
        end
        
        local specialItems = {
            "Acid Gun",
            "Candy Bucket",
            "Golden Rose",
            "Black Rose",
            "Dollar Balloon",
            "Bat Balloon",
            "Bunny Balloon",
            "Clover Balloon",
            "Ghost Balloon",
            "Gold Clover Balloon",
            "Heart Balloon",
            "Skull Balloon",
            "Snowflake Balloon",
            "Admin AK-47",
            "Admin Nuke Launcher",
            "Admin RPG",
            "Void Gem",
            "Pulse Rifle",
            "Unusual Money Printer",
            "Money Printer",
            "Trident",
            "NextBot Grenade",
            "El Fuego",
        }
        
        for i, itemName in ipairs(specialItems) do
            table.insert(MobileDealerModule.Gun, {
                stock = 9999,
                itemName = itemName,
            })
        end
    end,
})

PassTab:Toggle({
    Title = "绕过高级表情包",
    Callback = function()
        local PlayerGui = LocalPlayer.PlayerGui
        local Emotes = PlayerGui:FindFirstChild("Emotes")
        
        if Emotes then
            local Frame = Emotes:FindFirstChild("Frame")
            if Frame then
                local ScrollingFrame = Frame:FindFirstChild("ScrollingFrame")
                if ScrollingFrame then
                    for i, descendant in pairs(ScrollingFrame:GetDescendants()) do
                        if descendant.Name == "Locked" then
                            descendant.Visible = false
                            descendant:Destroy()
                        end
                    end
                end
            end
        end
    end,
})

PassTab:Toggle({
    Title = "绕过物品栏封禁",
    Callback = function()
        local devv = ReplicatedStorage:FindFirstChild("devv")
        if devv then
            local remoteStorage = devv:FindFirstChild("remoteStorage")
            if remoteStorage then
                local makeExplosion = remoteStorage:FindFirstChild("makeExplosion")
                if makeExplosion then
                    makeExplosion:Destroy()
                end
                
                local banCheck = remoteStorage:FindFirstChild("banCheck")
                if banCheck then
                    banCheck:Destroy()
                end
                
                local inventoryBan = remoteStorage:FindFirstChild("inventoryBan")
                if inventoryBan then
                    inventoryBan:Destroy()
                end
            end
        end
    end,
})

PassTab:Toggle({
    Title = "绕过飞行检测",
    Callback = function()
        local devv = ReplicatedStorage:FindFirstChild("devv")
        if devv then
            local remoteStorage = devv:FindFirstChild("remoteStorage")
            if remoteStorage then
                local flyCheck = remoteStorage:FindFirstChild("flyCheck")
                if flyCheck then
                    flyCheck:Destroy()
                end
                
                local antiCheat = remoteStorage:FindFirstChild("antiCheat")
                if antiCheat then
                    antiCheat:Destroy()
                end
                
                local noClipDetection = remoteStorage:FindFirstChild("noClipDetection")
                if noClipDetection then
                    noClipDetection:Destroy()
                end
            end
        end
        
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()
            local args = {...}
            
            if method == "FireServer" or method == "InvokeServer" then
                if args[1] == "flyDetected" or args[1] == "antiCheat" or args[1] == "reportPlayer" then
                    return nil
                end
            end
            
            return oldNamecall(self, ...)
        end)
    end,
})

local function enableFly()
    local flying = false
    local flySpeed = 50
    
    local bodyGyro = Instance.new("BodyGyro")
    bodyGyro.P = 9e4
    bodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bodyGyro.cframe = HumanoidRootPart.CFrame
    
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.velocity = Vector3.new(0, 0, 0)
    bodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
    
    local function startFly()
        flying = true
        bodyGyro.Parent = HumanoidRootPart
        bodyVelocity.Parent = HumanoidRootPart
        
        while flying do
            local direction = Vector3.new(0, 0, 0)
            
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                direction = direction + (Workspace.CurrentCamera.CFrame.LookVector)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                direction = direction - (Workspace.CurrentCamera.CFrame.LookVector)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                direction = direction - (Workspace.CurrentCamera.CFrame.RightVector)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                direction = direction + (Workspace.CurrentCamera.CFrame.RightVector)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                direction = direction + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                direction = direction - Vector3.new(0, 1, 0)
            end
            
            if direction.Magnitude > 0 then
                direction = direction.Unit
            end
            
            bodyVelocity.velocity = direction * flySpeed
            bodyGyro.cframe = Workspace.CurrentCamera.CFrame
            
            RunService.RenderStepped:Wait()
        end
    end
    
    local function stopFly()
        flying = false
        bodyGyro.Parent = nil
        bodyVelocity.Parent = nil
    end
    
    return startFly, stopFly
end

local function enableGodMode()
    local character = LocalPlayer.Character
    if not character then return end
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
    
    humanoid.HealthChanged:Connect(function(health)
        if health < humanoid.MaxHealth then
            humanoid.Health = humanoid.MaxHealth
        end
    end)
end

local function setSpeed(speed)
    local character = LocalPlayer.Character
    if not character then return end
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    
    humanoid.WalkSpeed = speed
end

local function setJumpPower(power)
    local character = LocalPlayer.Character
    if not character then return end
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    
    humanoid.JumpPower = power
end

local function teleportTo(position)
    if HumanoidRootPart then
        HumanoidRootPart.CFrame = CFrame.new(position)
    end
end

local function teleportToPlayer(playerName)
    local targetPlayer = nil
    
    for i, player in pairs(Players:GetPlayers()) do
        if string.lower(player.Name):find(string.lower(playerName)) then
            targetPlayer = player
            break
        end
    end
    
    if targetPlayer and targetPlayer.Character then
        local targetHRP = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
        if targetHRP then
            HumanoidRootPart.CFrame = targetHRP.CFrame
        end
    end
end

local function killAll()
    for i, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            if character then
                local head = character:FindFirstChild("Head")
                if head then
                    executebladekill(player, head.Position)
                end
            end
        end
    end
end

local function tryInfiniteMoney()
    pcall(function()
        local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
        if leaderstats then
            local cash = leaderstats:FindFirstChild("Cash")
            if cash then
                cash.Value = 999999999
            end
        end
    end)
end

local function antiKick()
    local oldKick = LocalPlayer.Kick
    LocalPlayer.Kick = function()
        return nil
    end
end

local function hideCharacter()
    local character = LocalPlayer.Character
    if not character then return end
    
    for i, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = 1
        elseif part:IsA("Decal") then
            part.Transparency = 1
        end
    end
end

local function showCharacter()
    local character = LocalPlayer.Character
    if not character then return end
    
    for i, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
            part.Transparency = 0
        elseif part:IsA("Decal") then
            part.Transparency = 0
        end
    end
end

local noclipEnabled = false
local function toggleNoclip(enabled)
    noclipEnabled = enabled
    
    if enabled then
        RunService.Stepped:Connect(function()
            if not noclipEnabled then return end
            
            local character = LocalPlayer.Character
            if not character then return end
            
            for i, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end)
    end
end

local function autoRespawn()
    LocalPlayer.CharacterAdded:Connect(function(character)
        task.wait(0.5)
        
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.Died:Connect(function()
            task.wait(Players.RespawnTime)
            LocalPlayer:LoadCharacter()
        end)
    end)
end

LocalPlayer.Chatted:Connect(function(message)
    local args = string.split(message, " ")
    local command = string.lower(args[1])
    
    if command == "/tp" and args[2] then
        teleportToPlayer(args[2])
    elseif command == "/speed" and args[2] then
        setSpeed(tonumber(args[2]) or 16)
    elseif command == "/jump" and args[2] then
        setJumpPower(tonumber(args[2]) or 50)
    elseif command == "/god" then
        enableGodMode()
    elseif command == "/noclip" then
        toggleNoclip(not noclipEnabled)
    elseif command == "/hide" then
        hideCharacter()
    elseif command == "/show" then
        showCharacter()
    elseif command == "/killall" then
        killAll()
    end
end)

pcall(antiKick)