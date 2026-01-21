local FunctionEnvironment = getfenv()
local IsGameLoaded = not game:IsLoaded()

makefolder('XS-Hub')
makefolder('XS-Hub/Fluent')
writefile('XS-Hub/Fluent/AutoFindMoneyPrinter.txt', 'false')

local FluentLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Library/Fluent.lua'))()
local ESPLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/ESPLibrary.lua'))()
local ESPFolder = ESPLibrary.ESPFolder

ESPFolder.Parent = workspace

local OptionsConfig = FluentLibrary.Options
local PlayerService = game:GetService('Players')
local LightingService = game:GetService('Lighting')
local RunService = game:GetService('RunService')
local ReplicatedStorageService = game:GetService('ReplicatedStorage')

game:GetService('ProximityPromptService')

local LocalPlayer = PlayerService.LocalPlayer
local LocalCharacter = LocalPlayer.Character

LocalCharacter:WaitForChild('Humanoid', 5)
LocalCharacter:WaitForChild('HumanoidRootPart', 5)

local CurrentCamera = workspace.CurrentCamera
local BindableFunction = Instance.new('BindableFunction')
local SignalModule = require(ReplicatedStorageService.devv.client.Helpers.remotes.Signal)
local ClientReplicator = require(ReplicatedStorageService.devv.client.Helpers.objectProperties.ClientReplicator)
local InventoryModule = require(ReplicatedStorageService.devv.client.Objects.v3item.modules.inventory)
local GameState = require(ReplicatedStorageService.devv).load('state').data
local IsShadowBanned = GameState.shadowbanned and 12138390
local ShadowBannedAt = GameState.shadowbannedAt and 13801273
local ShadowBannedDate = os.date('%Y-%m-%d %H:%M:%S', GameState.shadowbannedAt)
local ShadowBannedExpires = GameState.shadowbannedExpires and 15120887
local ShadowBannedExpiresDate = os.date('%Y-%m-%d %H:%M:%S', GameState.shadowbannedExpires)
local ShadowBanCount = GameState.numshadowbans and 3457693

CFrame.new(671.68688964844, 6.2448601722717, -655.50268554688)
CFrame.new(1091.5296630859, 6.0434188842773, -457.62033081055)
CFrame.new(1543.3168945312, 6.2433180809021, -682.63525390625)
CFrame.new(655.10638427734, 9.035834312439, -903.20697021484)
CFrame.new(835.84875488281, 25.234800338745, -1327.0417480469)
CFrame.new(1112.4508056641, 6.0434203147888, -973.91772460938)
CFrame.new(1170.8796386719, 13.850684165955, -25.795112609863)
task.spawn(function(FuncParam1, FuncParam2, FuncParam3)
    for ItemIterator, ItemInstance in pairs(workspace.ItemsOnSale:GetChildren())do
        local ItemName = ItemInstance.Name
        local ItemName1 = ItemInstance.Name
    end
    for FunctionIterator, FunctionInstance in pairs(getconnections(RunService.Heartbeat))do
        local FunctionType = FunctionInstance.Function and 11477088
        local FunctionType1 = FunctionInstance.Function
        local ClientValidateHandler = ReplicatedStorageService.devv.client.Handlers.ClientValidate
        local FluentLibrary = script == ClientValidateHandler
        local ScriptValidator = script == ClientValidateHandler
    end
    for LoopIterator, LoopInstance in next, debug.getupvalue(SignalModule.FireServer, 1)do
        LoopInstance.Name = LoopIterator

        LoopInstance:GetPropertyChangedSignal('Name'):Connect(function(Param1, Param2, Param3, Param4, Param5)
            LoopInstance.Name = LoopIterator
        end)
    end

    setmetatable(FunctionEnvironment.remotes, {
        __newindex = function(FuncParam, FuncParam1, FuncParam2, FuncParam3, FuncParam4, FuncParam5, FuncParam6)
            FuncParam2.Name = FuncParam1

            FuncParam2:GetPropertyChangedSignal('Name'):Connect(function(FuncParam7)
                FuncParam2.Name = FuncParam1
            end)
            rawset(FuncParam, FuncParam1, FuncParam2)
        end,
    })
end)
hookmetamethod(game, '__namecall', function(...)
    getnamecallmethod()

    local CallerChecker = checkcaller() and 1218417

    error('line 1: attempt to call a nil value')
end)

local ItemPickupHandler = workspace.Game.Entities.ItemPickup.DescendantAdded:Connect(function(Param, Param1, Param2, Param3)
    local SItemFarmValue = OptionsConfig.SItemsFarm.Value and 15735153
    local ESPLibrary = Param:IsA('ProximityPrompt') and 16754490
end)

FluentLibrary:GiveSignal(ItemPickupHandler)

local ItemEspHandler = workspace.Game.Entities.ItemPickup.ChildAdded:Connect(function()
    local ESPFolder = OptionsConfig.ItemESP.Value and 2079626

    ESPLibrary.Clear('ItemESP')

    for LoopIterator1, LoopInstance1 in pairs(workspace.Game.Entities.ItemPickup:GetChildren())do
        for LoopIterator2, LoopInstance2 in pairs(LoopInstance1:GetChildren())do
            LoopInstance2:IsA('MeshPart')

            for LoopIterator3, LoopInstance3 in pairs(LoopInstance2:GetChildren())do
                local OptionsConfig = LoopInstance3.ClassName == 'ProximityPrompt'
            end
        end
    end
end)

FluentLibrary:GiveSignal(ItemEspHandler)

local AirdropHandler = workspace.Game.Airdrops.ChildAdded:Connect(function(Param4, Param5, Param6)
    local NotifyAirdrop = not OptionsConfig.NotifyAirdrop.Value

    game.StarterGui:SetCore('SendNotification', {
        Button2 = '否',
        Title = '空投已刷新',
        Button1 = '是',
        Text = '是否传送到空投？',
        Callback = BindableFunction,
        Duration = 5,
    })

    BindableFunction.OnInvoke = function(FuncParam8, FuncParam9, FuncParam10, FuncParam11)
        local PlayerService = FuncParam8 == '是'
    end
end)

FluentLibrary:GiveSignal(AirdropHandler)

local CashBundleHandler = workspace.Game.Entities.CashBundle.ChildAdded:Connect(function(Param7, Param8, Param9, Param10)
    local CashEspValue = not OptionsConfig.CashESP.Value

    task.delay(0.2, function(FuncParam12, FuncParam13)
        local IntValueInstance = Param7:FindFirstChildOfClass('IntValue')

        ESPLibrary.Add(Param7, IntValueInstance.Value, Color3.fromRGB(23, 255, 42), 10, 'CashESP')
    end)
end)

FluentLibrary:GiveSignal(CashBundleHandler)

local CharacterAddedHandler = LocalPlayer.CharacterAdded:Connect(function(CharacterInstance)
    CharacterInstance:WaitForChild('Humanoid')
    CharacterInstance:WaitForChild('HumanoidRootPart')

    local LightingService = OptionsConfig.AutoEquip.Value and 2800757

    SignalModule.FireServer('equip', InventoryModule.getFromName('Fists').guid)
end)

FluentLibrary:GiveSignal(CharacterAddedHandler)

local RenderSteppedHandler = RunService.RenderStepped:Connect(function()
    for PlayerIterator, PlayerInstance in pairs(PlayerService:GetPlayers())do
        local IsNotLocalPlayer = PlayerInstance ~= LocalPlayer
        local RunService = PlayerInstance == LocalPlayer
        local CharacterExists = PlayerInstance.Character and 15916709
        local HumanoidExists = PlayerInstance.Character:FindFirstChildOfClass('Humanoid') and 5351086
        local HumanoidRootPartExists = PlayerInstance.Character:FindFirstChild('HumanoidRootPart') and 6592715
        local ReplicatedStorageService = not PlayerInstance.Character:FindFirstChild('ForceField')
    end

    local GodmodeValue = OptionsConfig.Godmode.Value and 9805424
    local IsKnocked = ClientReplicator.Get(LocalPlayer, 'knocked') and 11553957

    ClientReplicator.Set(LocalPlayer, 'knocked', false)

    local LocalPlayer = OptionsConfig.WalkSpeed.IsMoved and 3351578

    _233.WalkSpeed = OptionsConfig.WalkSpeed.Value

    local LocalCharacter = OptionsConfig.JumpPower.IsMoved and 8343787

    _233.JumpPower = OptionsConfig.JumpPower.Value
    _233.UseJumpPower = true

    local NoclipValue = OptionsConfig.Noclip.Value and 12856667

    for LoopIterator4, LoopInstance4 in pairs(CharacterInstance:GetDescendants())do
        local IsBasePart = LoopInstance4:IsA('BasePart') and 7879584

        LoopInstance4.CanCollide = false
    end

    local FullbrightValue = OptionsConfig.Fullbright.Value and 3236513

    LightingService.Ambient = Color3.new(1, 1, 1)
end)

FluentLibrary:GiveSignal(RenderSteppedHandler)

local JumpRequestHandler = game:GetService('UserInputService').JumpRequest:Connect(function(InputObject, GameProcessedEvent, InputState, InputCode, InputEvent)
    local InfJumpValue = OptionsConfig.InfJump.Value and 9182411

    _233:ChangeState('Jumping')
end)

FluentLibrary:GiveSignal(JumpRequestHandler)

local MainWindow = FluentLibrary:CreateWindow({
    SubTitle = '俄亥俄州 2025.12.20',
    Title = 'XA Hub',
    MinimizeKey = Enum.KeyCode.LeftControl,
    Theme = 'Dark',
    Acrylic = false,
    TabWidth = 160,
    Size = UDim2.fromOffset(550, 350),
})
local CombatTab = MainWindow:AddTab({
    Title = '战斗类',
    Icon = '',
})

CombatTab:AddToggle('OnePunch', {
    Title = '一拳秒杀',
    Default = false,
})
CombatTab:AddToggle('OneSwing', {
    Title = '其他近战武器秒杀',
    Default = false,
})
CombatTab:AddToggle('KillAura', {
    Callback = function(Param1, Param2)
        SignalModule.FireServer('equip', InventoryModule.getFromName('Fists').guid)
    end,
    Title = '杀戮光环',
    Default = false,
})
CombatTab:AddToggle('StompAura', {
    Title = '踩人光环',
    Default = false,
})
CombatTab:AddToggle('GrabAura', {
    Title = '抓人光环',
    Default = false,
})
CombatTab:AddToggle('Killall', {
    Callback = function(Argument1, Argument2, Argument3)
        SignalModule.FireServer('equip', InventoryModule.getFromName('Fists').guid)

        local KillAllValue = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable1, LoopVariable2 in pairs(PlayerService:GetPlayers())do
            local KillAllState = not OptionsConfig.Killall.Value
            local ComparisonResult = LoopVariable2 ~= LocalPlayer
            local BindableFunction = LoopVariable2 == LocalPlayer
            local CharacterModel = LoopVariable2.Character and 5940479
            local HumanoidComponent = LoopVariable2.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState = not LoopVariable2.Character:FindFirstChild('ForceField')
        end

        local KillAllStatus = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable3, LoopVariable4 in pairs(PlayerService:GetPlayers())do
            local KillAllCondition = not OptionsConfig.Killall.Value
            local SignalModule = LoopVariable4 ~= LocalPlayer
            local EqualityResult = LoopVariable4 == LocalPlayer
            local CharacterModel2 = LoopVariable4.Character and 5940479
            local HumanoidComponent2 = LoopVariable4.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState2 = not LoopVariable4.Character:FindFirstChild('ForceField')
        end

        local KillAllStatus2 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable5, LoopVariable6 in pairs(PlayerService:GetPlayers())do
            local KillAllCondition2 = not OptionsConfig.Killall.Value
            local InequalityResult = LoopVariable6 ~= LocalPlayer
            local ClientReplicator = LoopVariable6 == LocalPlayer
            local CharacterModel3 = LoopVariable6.Character and 5940479
            local HumanoidComponent3 = LoopVariable6.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState3 = not LoopVariable6.Character:FindFirstChild('ForceField')
        end

        local KillAllStatus3 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable7, LoopVariable8 in pairs(PlayerService:GetPlayers())do
            local KillAllCondition3 = not OptionsConfig.Killall.Value
            local InequalityResult2 = LoopVariable8 ~= LocalPlayer
            local InventoryModule = LoopVariable8 == LocalPlayer
            local CharacterModel4 = LoopVariable8.Character and 5940479
            local HumanoidComponent4 = LoopVariable8.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState4 = not LoopVariable8.Character:FindFirstChild('ForceField')
        end

        local KillAllStatus4 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable9, LoopVariable10 in pairs(PlayerService:GetPlayers())do
            local GameState = not OptionsConfig.Killall.Value
            local InequalityResult3 = LoopVariable10 ~= LocalPlayer
            local EqualityResult2 = LoopVariable10 == LocalPlayer
            local CharacterModel5 = LoopVariable10.Character and 5940479
            local HumanoidComponent5 = LoopVariable10.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState5 = not LoopVariable10.Character:FindFirstChild('ForceField')
        end

        local KillAllStatus5 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable11, LoopVariable12 in pairs(PlayerService:GetPlayers())do
            local ShadowBannedDate = not OptionsConfig.Killall.Value
            local InequalityResult4 = LoopVariable12 ~= LocalPlayer
            local EqualityResult3 = LoopVariable12 == LocalPlayer
            local CharacterModel6 = LoopVariable12.Character and 5940479
            local ShadowBannedExpiresDate = LoopVariable12.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState6 = not LoopVariable12.Character:FindFirstChild('ForceField')
        end

        local KillAllStatus6 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable13, LoopVariable14 in pairs(PlayerService:GetPlayers())do
            local KillAllCondition4 = not OptionsConfig.Killall.Value
            local InequalityResult5 = LoopVariable14 ~= LocalPlayer
            local EqualityResult4 = LoopVariable14 == LocalPlayer
            local CharacterModel7 = LoopVariable14.Character and 5940479
            local HumanoidComponent7 = LoopVariable14.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState7 = not LoopVariable14.Character:FindFirstChild('ForceField')
        end

        local KillAllStatus7 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable15, LoopVariable16 in pairs(PlayerService:GetPlayers())do
            local KillAllCondition5 = not OptionsConfig.Killall.Value
            local InequalityResult6 = LoopVariable16 ~= LocalPlayer
            local EqualityResult5 = LoopVariable16 == LocalPlayer
            local CharacterModel8 = LoopVariable16.Character and 5940479
            local HumanoidComponent8 = LoopVariable16.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState8 = not LoopVariable16.Character:FindFirstChild('ForceField')
        end

        local KillAllStatus8 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable17, LoopVariable18 in pairs(PlayerService:GetPlayers())do
            local KillAllCondition6 = not OptionsConfig.Killall.Value
            local InequalityResult7 = LoopVariable18 ~= LocalPlayer
            local EqualityResult6 = LoopVariable18 == LocalPlayer
            local FuncParam1 = LoopVariable18.Character and 5940479
            local HumanoidComponent9 = LoopVariable18.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState9 = not LoopVariable18.Character:FindFirstChild('ForceField')
        end

        local KillAllStatus9 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable19, LoopVariable20 in pairs(PlayerService:GetPlayers())do
            local ItemIterator = not OptionsConfig.Killall.Value
            local InequalityResult8 = LoopVariable20 ~= LocalPlayer
            local EqualityResult7 = LoopVariable20 == LocalPlayer
            local CharacterModel9 = LoopVariable20.Character and 5940479
            local HumanoidComponent10 = LoopVariable20.Character:FindFirstChildOfClass('Humanoid') and 135747
            local ForceFieldState10 = not LoopVariable20.Character:FindFirstChild('ForceField')
        end

        local FunctionIterator = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopVariable21, LoopVariable22 in pairs(PlayerService:GetPlayers())do
            local KillAllCondition7 = not OptionsConfig.Killall.Value
            local InequalityResult9 = LoopVariable22 ~= LocalPlayer
            local EqualityResult8 = LoopVariable22 == LocalPlayer
            local CharacterModel = LoopVariable22.Character and 5940479
            local HumanoidComponent = LoopVariable22.Character:FindFirstChildOfClass('Humanoid') and 135747
            local NoForceField = not LoopVariable22.Character:FindFirstChild('ForceField')
        end

        local KillAllValue = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopIndex, LoopItem in pairs(PlayerService:GetPlayers())do
            local ClientValidateHandler = not OptionsConfig.Killall.Value
            local NotEqualValue = LoopItem ~= LocalPlayer
            local EqualValue = LoopItem == LocalPlayer
            local LoopIterator = LoopItem.Character and 5940479
            local HumanoidComponent1 = LoopItem.Character:FindFirstChildOfClass('Humanoid') and 135747
            local NoForceField1 = not LoopItem.Character:FindFirstChild('ForceField')
        end

        local KillAllValue1 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopIndex1, LoopItem1 in pairs(PlayerService:GetPlayers())do
            local NotKillAll = not OptionsConfig.Killall.Value
            local NotEqualValue1 = LoopItem1 ~= LocalPlayer
            local Param1 = LoopItem1 == LocalPlayer
            local CharacterModel1 = LoopItem1.Character and 5940479
            local HumanoidComponent2 = LoopItem1.Character:FindFirstChildOfClass('Humanoid') and 135747
            local FuncParam = not LoopItem1.Character:FindFirstChild('ForceField')
        end

        local KillAllValue2 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopIndex2, LoopItem2 in pairs(PlayerService:GetPlayers())do
            local NotKillAll1 = not OptionsConfig.Killall.Value
            local NotEqualValue2 = LoopItem2 ~= LocalPlayer
            local EqualValue1 = LoopItem2 == LocalPlayer
            local FuncParam7 = LoopItem2.Character and 5940479
            local HumanoidComponent3 = LoopItem2.Character:FindFirstChildOfClass('Humanoid') and 135747
            local NoForceField2 = not LoopItem2.Character:FindFirstChild('ForceField')
        end

        local KillAllValue3 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopIndex3, LoopItem3 in pairs(PlayerService:GetPlayers())do
            local NotKillAll2 = not OptionsConfig.Killall.Value
            local NotEqualValue3 = LoopItem3 ~= LocalPlayer
            local EqualValue2 = LoopItem3 == LocalPlayer
            local CharacterModel2 = LoopItem3.Character and 5940479
            local HumanoidComponent4 = LoopItem3.Character:FindFirstChildOfClass('Humanoid') and 135747
            local NoForceField3 = not LoopItem3.Character:FindFirstChild('ForceField')
        end

        local KillAllValue4 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopIndex4, LoopItem4 in pairs(PlayerService:GetPlayers())do
            local NotKillAll3 = not OptionsConfig.Killall.Value
            local NotEqualValue4 = LoopItem4 ~= LocalPlayer
            local ItemPickupHandler = LoopItem4 == LocalPlayer
            local Param = LoopItem4.Character and 5940479
            local HumanoidComponent5 = LoopItem4.Character:FindFirstChildOfClass('Humanoid') and 135747
            local NoForceField4 = not LoopItem4.Character:FindFirstChild('ForceField')
        end

        local KillAllValue5 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopIndex5, LoopItem5 in pairs(PlayerService:GetPlayers())do
            local NotKillAll4 = not OptionsConfig.Killall.Value
            local NotEqualValue5 = LoopItem5 ~= LocalPlayer
            local EqualValue3 = LoopItem5 == LocalPlayer
            local CharacterModel3 = LoopItem5.Character and 5940479
            local HumanoidComponent6 = LoopItem5.Character:FindFirstChildOfClass('Humanoid') and 135747
            local NoForceField5 = not LoopItem5.Character:FindFirstChild('ForceField')
        end

        local KillAllValue6 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopIndex6, LoopItem6 in pairs(PlayerService:GetPlayers())do
            local NotKillAll5 = not OptionsConfig.Killall.Value
            local NotEqualValue6 = LoopItem6 ~= LocalPlayer
            local EqualValue4 = LoopItem6 == LocalPlayer
            local ItemEspHandler = LoopItem6.Character and 5940479
            local HumanoidComponent7 = LoopItem6.Character:FindFirstChildOfClass('Humanoid') and 135747
            local NoForceField6 = not LoopItem6.Character:FindFirstChild('ForceField')
        end

        local KillAllValue7 = OptionsConfig.Killall.Value and 3380000

        task.wait()

        for LoopIndex7, LoopItem7 in pairs(PlayerService:GetPlayers())do
            local NotKillAll6 = not OptionsConfig.Killall.Value
            local NotEqualValue7 = LoopItem7 ~= LocalPlayer
            local EqualValue5 = LoopItem7 == LocalPlayer
            local CharacterModel4 = LoopItem7.Character and 5940479
            local HumanoidComponent8 = LoopItem7.Character:FindFirstChildOfClass('Humanoid') and 135747

            LoopItem7.Character:FindFirstChild('ForceField')
            error('internal 550: <25ms: infinitelooperror>')
        end
    end,
    Title = '杀死全部',
    Default = false,
})
CombatTab:AddToggle('AutoEquip', {
    Title = '死亡自动装备拳头',
    Default = false,
})
CombatTab:AddToggle('Godmode', {
    Title = '防倒地',
    Default = false,
})
CombatTab:AddToggle('RPGBomb', {
    Callback = function(FunctionParam, FunctionParam1)
        error('internal 550: <25ms: infinitelooperror>')
    end,
    Title = 'RPG全图轰炸',
    Default = false,
})
CombatTab:AddToggle('AutoArmor', {
    Callback = function(FunctionParam2, FunctionParam3, FunctionParam4, FunctionParam5)
        local AutoArmorValue = OptionsConfig.AutoArmor.Value and 5339160

        task.wait()

        local ArmorAttribute = LocalPlayer:GetAttribute('armor')
        local NoArmor = ArmorAttribute <= 0

        SignalModule.InvokeServer('attemptPurchase', 'Light Vest')

        local LightVestGuid = InventoryModule.getFromName('Light Vest').guid

        SignalModule.FireServer('equip', LightVestGuid)
        SignalModule.FireServer('useConsumable', LightVestGuid)
        SignalModule.FireServer('removeItem', LightVestGuid)

        local AutoArmorValue1 = OptionsConfig.AutoArmor.Value and 5339160

        task.wait()
        error('internal 550: <25ms: infinitelooperror>')
    end,
    Title = '自动穿甲',
    Default = false,
})
CombatTab:AddSection('子弹范围')
CombatTab:AddToggle('Hitbox', {
    Callback = function(FunctionParam6)
        local RenderSteppedFunc = RunService.RenderStepped:connect(function(RenderSteppedParam, RenderSteppedParam1, RenderSteppedParam2)
            error('internal 550: <25ms: infinitelooperror>')
        end)

        FunctionEnvironment.HitboxConnect = RenderSteppedFunc
    end,
    Title = '开关',
    Default = false,
})
CombatTab:AddInput('HitboxSize', {
    Numeric = false,
    Finished = true,
    Title = '输入大小',
    Default = '15',
})
CombatTab:AddInput('HitboxTransparency', {
    Numeric = false,
    Finished = true,
    Title = '输入透明度',
    Default = '0.8',
})
CombatTab:AddDropdown('HitboxHitPart', {
    Title = '攻击部位',
    Default = 1,
    Multi = false,
    Callback = function(FunctionParam7, FunctionParam8, FunctionParam9, FunctionParam10, FunctionParam11, FunctionParam12) end,
    Values = {
        [1] = '头部',
        [2] = '身体',
    },
})
CombatTab:AddSection('白名单')
CombatTab:AddInput('Input', {
    Numeric = false,
    Finished = true,
    Title = '输入名称 当前：无',
    Callback = function(FunctionParam13, FunctionParam14, FunctionParam15) end,
})
CombatTab:AddButton({
    Title = '添加至白名单',
    Callback = function(FunctionParam16, FunctionParam17) end,
})
CombatTab:AddButton({
    Title = '移除白名单',
    Callback = function(FunctionParam18, FunctionParam19, FunctionParam20, FunctionParam21, FunctionParam22) end,
})
CombatTab:AddButton({
    Title = '清空白名单',
    Callback = function(FunctionParam23, FunctionParam24, Parameter1, Parameter2) end,
})

local TabItem = MainWindow:AddTab({
    Title = '物品',
    Icon = '',
})

TabItem:AddDropdown('SelectItem', {
    Title = '选择物品',
    Searchable = true,
    Multi = false,
    Callback = function(FunctionParam1, FunctionParam2, FunctionParam3) end,
    Values = {[1] = EqualityResult7},
})
TabItem:AddButton({
    Title = '购买',
    Callback = function(ParamValue1, ParamValue2, ParamValue3, ParamValue4) end,
})
TabItem:AddButton({
    Title = '购买子弹',
    Callback = function(FuncParam1, FuncParam2, FuncParam3, FuncParam4) end,
})
TabItem:AddToggle('ShowBuyUI', {
    Callback = function(MethodParam1, MethodParam2, MethodParam3) end,
    Title = '显示购买界面',
    Default = false,
})
TabItem:AddToggle('BlackMarket', {
    Callback = function(ProcedureParam) end,
    Title = '远程黑市',
    Default = false,
})
TabItem:AddToggle('Locker', {
    Callback = function(Orb, Orb1, Orb2, Orb3, Orb4, Orb5) end,
    Default = false,
    Title = '远程储物柜',
    Description = '打开背包即可',
})
TabItem:AddToggle('FastInteract', {
    Callback = function(ItemParam, ItemParam1, ItemParam2, ItemParam3, ItemParam4, ItemParam5) end,
    Title = '快速互动',
    Default = false,
})
TabItem:AddToggle('ItemESP', {
    Callback = function(Func1, Func2, Func3, Func4) end,
    Title = '透视物品',
    Default = false,
})

local AutoTab = MainWindow:AddTab({
    Title = '自动',
    Icon = '',
})

AutoTab:AddToggle('MobFarm', {
    Callback = function(Param1, Param2, Param3, Param4) end,
    Title = '自动打Mob',
    Default = false,
})
AutoTab:AddToggle('ATMFarm', {
    Callback = function(Method1, Method2, Method3) end,
    Title = '自动打ATM',
    Default = false,
})
AutoTab:AddToggle('RegisterFarm', {
    Callback = function(Procedure1, Procedure2) end,
    Title = '自动打收银机',
    Default = false,
})
AutoTab:AddToggle('AutoRobBank', {
    Callback = function(Object1, Object2, Object3) end,
    Title = '自动抢银行',
    Default = false,
})
AutoTab:AddToggle('CashFarm', {
    Callback = function(Value1, Value2, Value3, Value4, Value5, Value6) end,
    Title = '自动捡钱',
    Default = false,
})
AutoTab:AddToggle('CashAura', {
    Callback = function(Result1, Result2) end,
    Title = '捡钱光环',
    Default = false,
})
AutoTab:AddToggle('ItemFarm', {
    Callback = function(Data1, Data2) end,
    Title = '自动捡物品',
    Default = false,
})
AutoTab:AddToggle('ItemAura', {
    Callback = function(Info1, Info2) end,
    Title = '捡物品光环',
    Default = false,
})
AutoTab:AddDropdown('SelectedItems', {
    Title = '选择物品',
    AllowNull = true,
    Multi = true,
    Callback = function(Setting1, Setting2, Setting3, Setting4, Setting5, Setting6) end,
    Values = {
        [1] = '红卡',
        [2] = '蓝卡',
        [3] = '印钞机',
        [4] = '气球',
    },
})

local LoopIterator1 = OptionsConfig.SelectedItems.Value

AutoTab:AddToggle('SItemsFarm', {
    Callback = function(Config1, Config2, Config3) end,
    Title = '自动捡选中的物品',
    Default = false,
})
AutoTab:AddToggle('ReturnOnTeleport', {
    Title = '是否回传',
    Default = false,
})
AutoTab:AddToggle('NotifyAirdrop', {
    Title = '空投刷新提示',
    Default = false,
})
AutoTab:AddButton({
    Title = '自动换服寻找印钞机',
    Callback = function(Option1, Option2, Option3) end,
})

local TeleportTab = MainWindow:AddTab({
    Title = '传送',
    Icon = '',
})

TeleportTab:AddButton({
    Title = '珠宝店',
    Callback = function(TeleportParam1, TeleportParam2, TeleportParam3, TeleportParam4) end,
})
TeleportTab:AddButton({
    Title = '医院',
    Callback = function(Location1, Location2, Location3, Location4) end,
})
TeleportTab:AddButton({
    Title = '警察局',
    Callback = function(Position1, Position2, Position3, Position4) end,
})
TeleportTab:AddButton({
    Title = '游乐场',
    Callback = function(Coordinate1, Coordinate2, Coordinate3, Coordinate4) end,
})
TeleportTab:AddButton({
    Title = '军械库',
    Callback = function(Point1, Point2, Point3, Point4) end,
})
TeleportTab:AddButton({
    Title = '军事基地',
    Callback = function(Vector1, Vector2, Vector3, Vector4) end,
})
TeleportTab:AddButton({
    Title = '银行',
    Callback = function(Direction1, Direction2, Direction3, Direction4) end,
})

local TabTitle = MainWindow:AddTab({
    Title = '娱乐',
    Icon = '',
})

TabTitle:AddInput('Input', {
    Numeric = false,
    Finished = true,
    Title = '输入名称 当前：无',
    Callback = function(Param1) end,
})
TabTitle:AddInput('SpamMessage', {
    Numeric = false,
    Finished = true,
    Title = '输入消息',
    Default = 'XA-Hub No.1',
})
TabTitle:AddToggle('SpamPlayer', {
    Callback = function(Param2, Param2_1, Param2_2, Param2_3) end,
    Title = '消息轰炸',
    Default = false,
})
TabTitle:AddToggle('SpamCall', {
    Callback = function(Param3, Param3_1, Param3_2, Param3_3) end,
    Title = '电话骚扰',
    Default = false,
})
TabTitle:AddToggle('SpamAll', {
    Callback = function(Param4, Param4_1, Param4_2, Param4_3) end,
    Title = '消息轰炸全体',
    Default = false,
})

local DataTab = MainWindow:AddTab({
    Title = '数据',
    Icon = '',
})

DataTab:AddParagraph({
    Title = '是否被封禁：是',
})
DataTab:AddParagraph({
    Title = '封禁开始期：' .. ShadowBannedDate,
})
DataTab:AddParagraph({
    Title = '封禁结束期：' .. ShadowBannedExpiresDate,
})

local ParagraphInfo = DataTab:AddParagraph({
    Title = '剩余封禁时间：无',
})

FunctionEnvironment.remainingTime = ParagraphInfo

DataTab:AddParagraph({
    Title = '封禁原因：' .. GameState.shadowbanned,
})
DataTab:AddParagraph({
    Title = '历史封禁次数：' .. GameState.numshadowbans,
})

local OtherTab = MainWindow:AddTab({
    Title = '其他',
    Icon = '',
})

OtherTab:AddToggle('ShowChat', {
    Callback = function(Param5, Param5_1, Param5_2, Param5_3) end,
    Title = '显示聊天框',
    Default = false,
})
OtherTab:AddToggle('CashESP', {
    Callback = function(Param6, Param6_1) end,
    Title = '透视钱',
    Default = false,
})
OtherTab:AddInput('ItemSlots', {
    Numeric = true,
    Finished = true,
    Title = '设置物品栏数量',
    Callback = function(Param7, Param7_1) end,
})
OtherTab:AddSection('通用')
OtherTab:AddSlider('WalkSpeed', {
    Min = 0,
    Title = '移动速度',
    Max = 500,
    Default = 16,
    Rounding = 1,
})
OtherTab:AddSlider('JumpPower', {
    Min = 0,
    Title = '跳跃高度',
    Max = 500,
    Default = 50,
    Rounding = 1,
})
OtherTab:AddButton({
    Title = '飞行',
    Callback = function(Param8, Param8_1, Param8_2, Param8_3) end,
})
OtherTab:AddToggle('Noclip', {
    Callback = function(Param9, Param9_1, Param9_2, Param9_3) end,
    Title = '穿墙',
    Default = false,
})
OtherTab:AddToggle('Fullbright', {
    Callback = function(Param10, Param10_1, Param10_2, Param10_3, Param10_4, Param10_5) end,
    Title = '夜视',
    Default = false,
})
OtherTab:AddToggle('InfJump', {
    Title = '无限跳',
    Default = false,
})
MainWindow:AddTab({
    Title = '设置',
    Icon = 'settings',
})
