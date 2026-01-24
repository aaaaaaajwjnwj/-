-- 加载WindUI库
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- 显示启动通知
WindUI:Notify({
    Title = "在森林中的99天",
    Content = "已开启",
    Duration = 5
})

-- 获取本地玩家信息
local LocalPlayer = game:GetService("Players").LocalPlayer
local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
local PlayerGui = LocalPlayer.PlayerGui

-- 创建主窗口
local Window = WindUI:CreateWindow({
    Title = "XS脚本",
    Icon = "rbxassetid://129260712070622",
    IconThemed = true,
    Author = "森林中的99天",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(300, 270),
    Transparent = true,
    Theme = "Dark",
    User = {
        Enabled = true,
        Callback = function()
            print("clicked")
        end,
        Anonymous = false
    },
    SideBarWidth = 200,
    ScrollBarEnabled = true
})

-- 编辑打开按钮
Window:EditOpenButton({
    Title = "打开脚本",
    Icon = "star",
    CornerRadius = UDim.new(0, 16),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromHex("FF0F7B"), Color3.fromHex("F89B29")),
    Draggable = true
})

-- 创建主区块
MainSection = Window:Section({
    Title = "功能",
    Opened = true
})

-- ============================================
-- 武器标签页
-- ============================================
Main = MainSection:Tab({
    Title = "武器",
    Icon = "Sword"
})

-- 老斧头杀戮光环
local OldAxeKillAuraEnabled = false
Main:Toggle({
    Title = "老斧头杀戮光环",
    Value = false,
    Callback = function(value)
        OldAxeKillAuraEnabled = value
        if value then
            spawn(function()
                while OldAxeKillAuraEnabled do
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("ToolHandle") then
                        local ToolItem = game.Players.LocalPlayer.Character.ToolHandle.OriginalItem.Value
                        if ToolItem and ToolItem.Name == "Old Axe" then
                            for _, character in next, workspace.Characters:GetChildren() do
                                if character:IsA("Model") and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("HitRegisters") then
                                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
                                    if distance <= 100 then
                                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(character, ToolItem, true, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                end
                            end
                        end
                    end
                    wait(0.2)
                end
            end)
        end
    end
})

-- 好斧头杀戮光环
local GoodAxeKillAuraEnabled = false
Main:Toggle({
    Title = "好斧头杀戮光环",
    Value = false,
    Callback = function(value)
        GoodAxeKillAuraEnabled = value
        if value then
            spawn(function()
                while GoodAxeKillAuraEnabled do
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("ToolHandle") then
                        local ToolItem = game.Players.LocalPlayer.Character.ToolHandle.OriginalItem.Value
                        if ToolItem and ToolItem.Name == "Good Axe" then
                            for _, character in next, workspace.Characters:GetChildren() do
                                if character:IsA("Model") and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("HitRegisters") then
                                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
                                    if distance <= 100 then
                                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(character, ToolItem, true, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                end
                            end
                        end
                    end
                    wait(0.2)
                end
            end)
        end
    end
})

-- 矛杀戮光环
local SpearKillAuraEnabled = false
Main:Toggle({
    Title = "矛杀戮光环",
    Value = false,
    Callback = function(value)
        SpearKillAuraEnabled = value
        if value then
            spawn(function()
                while SpearKillAuraEnabled do
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("ToolHandle") then
                        local ToolItem = game.Players.LocalPlayer.Character.ToolHandle.OriginalItem.Value
                        if ToolItem and ToolItem.Name == "Spear" then
                            for _, character in next, workspace.Characters:GetChildren() do
                                if character:IsA("Model") and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("HitRegisters") then
                                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
                                    if distance <= 100 then
                                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(character, ToolItem, true, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                end
                            end
                        end
                    end
                    wait(0.2)
                end
            end)
        end
    end
})

-- 骨棒杀戮光环
local BoneClubKillAuraEnabled = false
Main:Toggle({
    Title = "骨棒杀戮光环",
    Value = false,
    Callback = function(value)
        BoneClubKillAuraEnabled = value
        if value then
            spawn(function()
                while BoneClubKillAuraEnabled do
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("ToolHandle") then
                        local ToolItem = game.Players.LocalPlayer.Character.ToolHandle.OriginalItem.Value
                        if ToolItem and ToolItem.Name == "Bone Club" then
                            for _, character in next, workspace.Characters:GetChildren() do
                                if character:IsA("Model") and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("HitRegisters") then
                                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
                                    if distance <= 100 then
                                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(character, ToolItem, true, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                end
                            end
                        end
                    end
                    wait(0.2)
                end
            end)
        end
    end
})

-- 砍树光环变量
local AutoChopTreeEnabled = false
local AutoChopTreeRange = 30
local AutoChopTreeDelay = 0.7

-- 自动砍树函数
local function AutoChopTree()
    if AutoChopTreeEnabled then
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local axe = player.Inventory:FindFirstChild("Good Axe") or player.Inventory:FindFirstChild("Old Axe")
            if axe then
                local rootPart = player.Character.HumanoidRootPart
                local foliageLocations = {
                    workspace.Map.Foliage,
                    workspace.Map.Landmarks
                }
                for _, folder in ipairs(foliageLocations) do
                    for _, object in pairs(folder:GetChildren()) do
                        if object:IsA("Model") and ({
                            ["Small Tree"] = true,
                            TreeBig1 = true,
                            TreeBig2 = true,
                            TreeBig3 = true
                        })[object.Name] then
                            local trunk = object:FindFirstChild("Trunk") or object:FindFirstChild("HumanoidRootPart") or object.PrimaryPart
                            if trunk and (rootPart.Position - trunk.Position).Magnitude <= AutoChopTreeRange then
                                game:GetService("ReplicatedStorage").RemoteEvents.ReplicateSound:FireServer("FireAllClients", "WoodChop", {
                                    Instance = player.Character.Head,
                                    Volume = 0.4
                                })
                                game:GetService("ReplicatedStorage").RemoteEvents.ToolDamageObject:InvokeServer(object, axe, true, rootPart.CFrame)
                                game:GetService("ReplicatedStorage").RemoteEvents.PlayEnemyHitSound:FireServer("FireAllClients", object, axe)
                                task.wait(0.1)
                            end
                        end
                    end
                end
            else
                WindUI:Notify({
                    Title = "自动砍树",
                    Text = "斧头",
                    Duration = 3
                })
            end
        else
            return
        end
    else
        return
    end
end

-- 砍树光环开关
Main:Toggle({
    Title = "砍树光环",
    Value = false,
    Callback = function(value)
        AutoChopTreeEnabled = value
        if value then
            spawn(function()
                while AutoChopTreeEnabled do
                    AutoChopTree()
                    task.wait(AutoChopTreeDelay)
                end
            end)
            WindUI:Notify({
                Title = "开启",
                Text = "已启用",
                Duration = 3
            })
        else
            WindUI:Notify({
                Title = "关闭",
                Text = "关闭",
                Duration = 3
            })
        end
    end
})

-- ============================================
-- 动物标签页
-- ============================================
Main = MainSection:Tab({
    Title = "动物",
    Icon = "Sword"
})

-- 全图攻击延迟
local GlobalAttackDelay = 0.001
local InfiniteRange = math.huge

-- 全图攻击函数
local function GlobalAttackWithWeapon(weaponName)
    if game.Players.LocalPlayer.Character then
        if game.Players.LocalPlayer.Character:FindFirstChild("ToolHandle") then
            local ToolItem = game.Players.LocalPlayer.Character.ToolHandle.OriginalItem.Value
            if ToolItem and ToolItem.Name == weaponName then
                for _, character in pairs(workspace.Characters:GetChildren()) do
                    if character:IsA("Model") and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("HitRegisters") then
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(character, ToolItem, true, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    end
                end
            end
        else
            return
        end
    else
        return
    end
end

-- 全图击打动物（老斧头）
local GlobalAttackOldAxeEnabled = false
Main:Toggle({
    Title = "全图击打动物（老斧头）",
    Value = false,
    Callback = function(value)
        GlobalAttackOldAxeEnabled = value
        if value then
            coroutine.wrap(function()
                while GlobalAttackOldAxeEnabled do
                    GlobalAttackWithWeapon("Old Axe")
                    task.wait(GlobalAttackDelay)
                end
            end)()
        end
    end
})

-- 全图击打动物（好斧头）
local GlobalAttackGoodAxeEnabled = false
Main:Toggle({
    Title = "全图击打动物（好斧头）",
    Value = false,
    Callback = function(value)
        GlobalAttackGoodAxeEnabled = value
        if value then
            coroutine.wrap(function()
                while GlobalAttackGoodAxeEnabled do
                    GlobalAttackWithWeapon("Good Axe")
                    task.wait(GlobalAttackDelay)
                end
            end)()
        end
    end
})

-- 全图击打动物（矛）
local GlobalAttackSpearEnabled = false
Main:Toggle({
    Title = "全图击打动物（矛）",
    Value = false,
    Callback = function(value)
        GlobalAttackSpearEnabled = value
        if value then
            coroutine.wrap(function()
                while GlobalAttackSpearEnabled do
                    GlobalAttackWithWeapon("Spear")
                    task.wait(GlobalAttackDelay)
                end
            end)()
        end
    end
})

-- 全图击打动物（骨棒）
local GlobalAttackBoneClubEnabled = false
Main:Toggle({
    Title = "全图击打动物（骨棒）",
    Value = false,
    Callback = function(value)
        GlobalAttackBoneClubEnabled = value
        if value then
            coroutine.wrap(function()
                while GlobalAttackBoneClubEnabled do
                    GlobalAttackWithWeapon("Bone Club")
                    task.wait(GlobalAttackDelay)
                end
            end)()
        end
    end
})

-- ============================================
-- 物品光环标签页
-- ============================================
Main = MainSection:Tab({
    Title = "物品光环",
    Icon = "Sword"
})

-- 袋子收集变量
local OldSackAutoCollectEnabled = false
local GoodSackAutoCollectEnabled = false
local SackCollectRange = 25

-- 袋子自动收集函数
local function AutoCollectWithBag(bagName)
    if bagName == "Old Sack" and OldSackAutoCollectEnabled or GoodSackAutoCollectEnabled then
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            local TempStorage = game:GetService("ReplicatedStorage").TempStorage
            for _, item in pairs(workspace.Items:GetChildren()) do
                if item:IsA("Model") then
                    local itemPart = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
                    if itemPart and (rootPart.Position - itemPart.Position).Magnitude <= SackCollectRange then
                        game:GetService("ReplicatedStorage").RemoteEvents.StopDraggingItem:FireServer(item)
                        local bag = player.Inventory:FindFirstChild(bagName)
                        if bag then
                            item.Parent = TempStorage
                            game:GetService("ReplicatedStorage").RemoteEvents.RequestBagStoreItem:InvokeServer(bag, item)
                            game:GetService("ReplicatedStorage").RemoteEvents.ReplicateSound:FireServer("FireAllClients", "BagGet", {
                                Instance = player.Character.Head,
                                Volume = 0.25
                            })
                            WindUI:Notify({
                                Title = "自动收集",
                                Text = "已收集: " .. item.Name,
                                Duration = 1
                            })
                        end
                    end
                end
            end
        end
    else
        return
    end
end

-- 老袋子自动收集
Main:Toggle({
    Title = "老袋子自动收集",
    Value = false,
    Callback = function(value)
        OldSackAutoCollectEnabled = value
        if value then
            spawn(function()
                while OldSackAutoCollectEnabled do
                    AutoCollectWithBag("Old Sack")
                    wait(0.5)
                end
            end)
            WindUI:Notify({
                Title = "自动收集",
                Text = "已启用老袋子自动收集所有物品",
                Duration = 3
            })
        else
            WindUI:Notify({
                Title = "自动收集",
                Text = "已禁用自动收集",
                Duration = 3
            })
        end
    end
})

-- 好袋子收集光环
Main:Toggle({
    Title = "好袋子收集光环",
    Value = false,
    Callback = function(value)
        GoodSackAutoCollectEnabled = value
        if value then
            spawn(function()
                while GoodSackAutoCollectEnabled do
                    AutoCollectWithBag("Good Sack")
                    wait(0.5)
                end
            end)
            WindUI:Notify({
                Title = "自动收集",
                Text = "已启用好袋子自动收集",
                Duration = 3
            })
        else
            WindUI:Notify({
                Title = "自动收集",
                Text = "已关自动收集",
                Duration = 3
            })
        end
    end
})

-- 收集煤炭光环变量
local AutoCollectCoalEnabled = false
local CoalCollectRange = 15

-- 自动收集煤炭函数
local function AutoCollectCoal()
    if AutoCollectCoalEnabled then
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            local TempStorage = game:GetService("ReplicatedStorage").TempStorage
            local bag = player.Inventory:FindFirstChild("Old Sack")
            if bag then
                for _, item in pairs(workspace.Items:GetChildren()) do
                    if item.Name == "Coal" and item:IsA("Model") then
                        local itemPart = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
                        if itemPart and (rootPart.Position - itemPart.Position).Magnitude <= CoalCollectRange then
                            game:GetService("ReplicatedStorage").RemoteEvents.ReplicateSound:FireServer("FireAllClients", "BagGet", {
                                Instance = player.Character.Head,
                                Volume = 0.25
                            })
                            game:GetService("ReplicatedStorage").RemoteEvents.RequestStartDraggingItem:FireServer(item)
                            item.Parent = TempStorage
                            game:GetService("ReplicatedStorage").RemoteEvents.StopDraggingItem:FireServer(item)
                            game:GetService("ReplicatedStorage").RemoteEvents.RequestBagStoreItem:InvokeServer(bag, item)
                            task.wait(0.3)
                        end
                    end
                end
            else
                WindUI:Notify({
                    Title = "需要老袋子",
                    Text = "请先装备Old Sack",
                    Duration = 3
                })
            end
        else
            return
        end
    else
        return
    end
end

-- 收集煤炭光环
Main:Toggle({
    Title = "收集煤炭光环",
    Value = false,
    Callback = function(value)
        AutoCollectCoalEnabled = value
        if value then
            spawn(function()
                while AutoCollectCoalEnabled do
                    AutoCollectCoal()
                    task.wait(0.5)
                end
            end)
        end
    end
})

-- 收集木头光环变量
local AutoCollectLogEnabled = false
local LogCollectRange = 15
local LogCollectDelay = 0.3

-- 自动收集木头函数
local function AutoCollectLog()
    if AutoCollectLogEnabled then
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            local TempStorage = game:GetService("ReplicatedStorage").TempStorage
            local bag = player.Inventory:FindFirstChild("Old Sack")
            if bag then
                for _, item in pairs(workspace.Items:GetChildren()) do
                    if item.Name == "Log" and item:IsA("Model") then
                        local itemPart = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
                        if itemPart and (rootPart.Position - itemPart.Position).Magnitude <= LogCollectRange then
                            game:GetService("ReplicatedStorage").RemoteEvents.ReplicateSound:FireServer("FireAllClients", "BagGet", {
                                Instance = player.Character.Head,
                                Volume = 0.25
                            })
                            game:GetService("ReplicatedStorage").RemoteEvents.RequestStartDraggingItem:FireServer(item)
                            item.Parent = TempStorage
                            game:GetService("ReplicatedStorage").RemoteEvents.StopDraggingItem:FireServer(item)
                            game:GetService("ReplicatedStorage").RemoteEvents.RequestBagStoreItem:InvokeServer(bag, item)
                            task.wait(LogCollectDelay)
                        end
                    end
                end
            else
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "需要袋子",
                    Text = "请装备Old Sack",
                    Duration = 3
                })
            end
        else
            return
        end
    else
        return
    end
end

-- 收集木头光环
Main:Toggle({
    Title = "收集木头光环",
    Value = false,
    Callback = function(value)
        AutoCollectLogEnabled = value
        if value then
            spawn(function()
                while AutoCollectLogEnabled do
                    AutoCollectLog()
                    task.wait(0.5)
                end
            end)
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "自动收集",
                Text = "已启用木头自动收集",
                Duration = 3
            })
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "自动收集",
                Text = "已禁用木头收集",
                Duration = 3
            })
        end
    end
})

-- ============================================
-- 食物类光环标签页
-- ============================================
Main = MainSection:Tab({
    Title = "食物类光环",
    Icon = "Sword"
})

-- 自动吃胡萝卜变量
local AutoEatCarrotEnabled = false
local CarrotEatRange = 10

-- 自动吃胡萝卜函数
local function AutoEatCarrot()
    if AutoEatCarrotEnabled then
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            local TempStorage = game:GetService("ReplicatedStorage").TempStorage
            for _, item in pairs(workspace.Items:GetChildren()) do
                if item.Name == "Carrot" and item:IsA("Model") then
                    local itemPart = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
                    if itemPart and (rootPart.Position - itemPart.Position).Magnitude <= CarrotEatRange then
                        game:GetService("ReplicatedStorage").RemoteEvents.ReplicateSound:FireServer("FireAllClients", "Eat", {
                            Instance = player.Character.Head,
                            Volume = 0.15
                        })
                        item.Parent = TempStorage
                        game:GetService("ReplicatedStorage").RemoteEvents.StopDraggingItem:FireServer(item)
                        game:GetService("ReplicatedStorage").RemoteEvents.RequestConsumeItem:InvokeServer(item)
                        task.wait(1)
                    end
                end
            end
        end
    else
        return
    end
end

-- 自动吃胡萝卜
Main:Toggle({
    Title = "自动吃胡萝卜",
    Value = false,
    Callback = function(value)
        AutoEatCarrotEnabled = value
        if value then
            spawn(function()
                while AutoEatCarrotEnabled do
                    AutoEatCarrot()
                    task.wait(0.5)
                end
            end)
        end
    end
})

-- 自动吃浆果变量
local AutoEatBerryEnabled = false
local BerryEatRange = 10

-- 自动吃浆果函数
local function AutoEatBerry()
    if AutoEatBerryEnabled then
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            local TempStorage = game:GetService("ReplicatedStorage").TempStorage
            for _, item in pairs(workspace.Items:GetChildren()) do
                if item.Name == "Berry" and item:IsA("Model") then
                    local itemPart = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
                    if itemPart and (rootPart.Position - itemPart.Position).Magnitude <= BerryEatRange then
                        game:GetService("ReplicatedStorage").RemoteEvents.ReplicateSound:FireServer("FireAllClients", "Eat", {
                            Instance = player.Character.Head,
                            Volume = 0.15
                        })
                        item.Parent = TempStorage
                        game:GetService("ReplicatedStorage").RemoteEvents.StopDraggingItem:FireServer(item)
                        game:GetService("ReplicatedStorage").RemoteEvents.RequestConsumeItem:InvokeServer(item)
                        task.wait(0.5)
                    end
                end
            end
        end
    else
        return
    end
end

-- 自动吃浆果
Main:Toggle({
    Title = "自动吃浆果",
    Value = false,
    Callback = function(value)
        AutoEatBerryEnabled = value
        if value then
            spawn(function()
                while AutoEatBerryEnabled do
                    AutoEatBerry()
                    task.wait(0.3)
                end
            end)
        end
    end
})

-- 自动吃熟食变量
local AutoEatCookedMorselEnabled = false
local CookedMorselEatRange = 10
local CookedMorselEatDelay = 1

-- 自动吃熟食函数
local function AutoEatCookedMorsel()
    if AutoEatCookedMorselEnabled then
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            local TempStorage = game:GetService("ReplicatedStorage").TempStorage
            for _, item in pairs(workspace.Items:GetChildren()) do
                if item.Name == "Cooked Morsel" and item:IsA("Model") then
                    local itemPart = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
                    if itemPart and (rootPart.Position - itemPart.Position).Magnitude <= CookedMorselEatRange then
                        game:GetService("ReplicatedStorage").RemoteEvents.ReplicateSound:FireServer("FireAllClients", "Eat", {
                            Instance = player.Character.Head,
                            Volume = 0.15
                        })
                        item.Parent = TempStorage
                        game:GetService("ReplicatedStorage").RemoteEvents.StopDraggingItem:FireServer(item)
                        game:GetService("ReplicatedStorage").RemoteEvents.RequestConsumeItem:InvokeServer(item)
                        task.wait(CookedMorselEatDelay)
                        return
                    end
                end
            end
        end
    else
        return
    end
end

-- 自动吃熟食
Main:Toggle({
    Title = "自动吃熟食",
    Value = false,
    Callback = function(value)
        AutoEatCookedMorselEnabled = value
        if value then
            spawn(function()
                while AutoEatCookedMorselEnabled do
                    AutoEatCookedMorsel()
                    task.wait(0.5)
                end
            end)
        end
    end
})

-- ============================================
-- 收集物品标签页
-- ============================================
teleportSection = MainSection:Tab({
    Title = "收集物品",
    Icon = "Package"
})

-- 传送到物品函数
local function TeleportToItem(itemName)
    local player = game:GetService("Players").LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local rootPart = player.Character.HumanoidRootPart
        for _, item in pairs(workspace.Items:GetChildren()) do
            if item.Name == itemName and item:IsA("Model") then
                local itemPart = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
                if itemPart then
                    rootPart.CFrame = itemPart.CFrame + Vector3.new(0, 3, 0)
                    WindUI:Notify({
                        Title = "传送成功",
                        Text = "已传送到: " .. itemName,
                        Duration = 2
                    })
                    return
                end
            end
        end
        WindUI:Notify({
            Title = "传送失败",
            Text = "未找到: " .. itemName,
            Duration = 2
        })
    end
end

-- 传送到木头
teleportSection:Button({
    Title = "传送到木头",
    Callback = function()
        TeleportToItem("Log")
    end
})

-- 传送到煤炭
teleportSection:Button({
    Title = "传送到煤炭",
    Callback = function()
        TeleportToItem("Coal")
    end
})

-- 传送到石头
teleportSection:Button({
    Title = "传送到石头",
    Callback = function()
        TeleportToItem("Rock")
    end
})

-- 传送到胡萝卜
teleportSection:Button({
    Title = "传送到胡萝卜",
    Callback = function()
        TeleportToItem("Carrot")
    end
})

-- 传送到浆果
teleportSection:Button({
    Title = "传送到浆果",
    Callback = function()
        TeleportToItem("Berry")
    end
})

-- 传送到熟食
teleportSection:Button({
    Title = "传送到熟食",
    Callback = function()
        TeleportToItem("Cooked Morsel")
    end
})

-- 传送到生肉
teleportSection:Button({
    Title = "传送到生肉",
    Callback = function()
        TeleportToItem("Morsel")
    end
})

-- 传送到骨头
teleportSection:Button({
    Title = "传送到骨头",
    Callback = function()
        TeleportToItem("Bone")
    end
})

-- 传送到草
teleportSection:Button({
    Title = "传送到草",
    Callback = function()
        TeleportToItem("Grass")
    end
})

-- 传送到树枝
teleportSection:Button({
    Title = "传送到树枝",
    Callback = function()
        TeleportToItem("Stick")
    end
})

-- ============================================
-- 传送位置标签页
-- ============================================
locationSection = MainSection:Tab({
    Title = "传送位置",
    Icon = "MapPin"
})

-- 传送到坐标函数
local function TeleportToPosition(x, y, z)
    local player = game:GetService("Players").LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
        WindUI:Notify({
            Title = "传送成功",
            Text = "已传送到指定位置",
            Duration = 2
        })
    end
end

-- 传送到出生点
locationSection:Button({
    Title = "传送到出生点",
    Callback = function()
        TeleportToPosition(0, 10, 0)
    end
})

-- 传送到地图中心
locationSection:Button({
    Title = "传送到地图中心",
    Callback = function()
        TeleportToPosition(0, 50, 0)
    end
})

-- 传送到矿洞
locationSection:Button({
    Title = "传送到矿洞",
    Callback = function()
        local caveEntrance = workspace.Map.Landmarks:FindFirstChild("CaveEntrance")
        if caveEntrance then
            local part = caveEntrance.PrimaryPart or caveEntrance:FindFirstChildWhichIsA("BasePart")
            if part then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 5, 0)
            end
        end
    end
})

-- ============================================
-- 玩家功能标签页
-- ============================================
playerSection = MainSection:Tab({
    Title = "玩家功能",
    Icon = "User"
})

-- 速度修改变量
local SpeedEnabled = false
local SpeedValue = 16

-- 速度修改
playerSection:Toggle({
    Title = "速度修改",
    Value = false,
    Callback = function(value)
        SpeedEnabled = value
        if value then
            spawn(function()
                while SpeedEnabled do
                    local player = game:GetService("Players").LocalPlayer
                    if player.Character and player.Character:FindFirstChild("Humanoid") then
                        player.Character.Humanoid.WalkSpeed = SpeedValue
                    end
                    wait(0.1)
                end
            end)
        else
            local player = game:GetService("Players").LocalPlayer
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid.WalkSpeed = 16
            end
        end
    end
})

-- 速度滑块
playerSection:Slider({
    Title = "速度值",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(value)
        SpeedValue = value
    end
})

-- 跳跃力修改变量
local JumpEnabled = false
local JumpValue = 50

-- 跳跃力修改
playerSection:Toggle({
    Title = "跳跃力修改",
    Value = false,
    Callback = function(value)
        JumpEnabled = value
        if value then
            spawn(function()
                while JumpEnabled do
                    local player = game:GetService("Players").LocalPlayer
                    if player.Character and player.Character:FindFirstChild("Humanoid") then
                        player.Character.Humanoid.JumpPower = JumpValue
                    end
                    wait(0.1)
                end
            end)
        else
            local player = game:GetService("Players").LocalPlayer
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid.JumpPower = 50
            end
        end
    end
})

-- 跳跃力滑块
playerSection:Slider({
    Title = "跳跃力值",
    Min = 50,
    Max = 300,
    Default = 50,
    Callback = function(value)
        JumpValue = value
    end
})

-- 无限跳跃变量
local InfiniteJumpEnabled = false

-- 无限跳跃
playerSection:Toggle({
    Title = "无限跳跃",
    Value = false,
    Callback = function(value)
        InfiniteJumpEnabled = value
    end
})

-- 无限跳跃监听
game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJumpEnabled then
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)

-- 无碰撞变量
local NoClipEnabled = false

-- 无碰撞
playerSection:Toggle({
    Title = "无碰撞穿墙",
    Value = false,
    Callback = function(value)
        NoClipEnabled = value
        if value then
            spawn(function()
                while NoClipEnabled do
                    local player = game:GetService("Players").LocalPlayer
                    if player.Character then
                        for _, part in pairs(player.Character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                    end
                    wait(0.1)
                end
            end)
        end
    end
})

-- 飞行变量
local FlyEnabled = false
local FlySpeed = 50

-- 飞行功能
playerSection:Toggle({
    Title = "飞行",
    Value = false,
    Callback = function(value)
        FlyEnabled = value
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local rootPart = character.HumanoidRootPart
            local humanoid = character:FindFirstChild("Humanoid")
            
            if value then
                local bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.Name = "FlyVelocity"
                bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                bodyVelocity.Parent = rootPart
                
                local bodyGyro = Instance.new("BodyGyro")
                bodyGyro.Name = "FlyGyro"
                bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bodyGyro.P = 10000
                bodyGyro.Parent = rootPart
                
                spawn(function()
                    while FlyEnabled do
                        local camera = workspace.CurrentCamera
                        local moveDirection = Vector3.new(0, 0, 0)
                        
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
                            moveDirection = moveDirection + camera.CFrame.LookVector
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
                            moveDirection = moveDirection - camera.CFrame.LookVector
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
                            moveDirection = moveDirection - camera.CFrame.RightVector
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
                            moveDirection = moveDirection + camera.CFrame.RightVector
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
                            moveDirection = moveDirection + Vector3.new(0, 1, 0)
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                            moveDirection = moveDirection - Vector3.new(0, 1, 0)
                        end
                        
                        if rootPart:FindFirstChild("FlyVelocity") then
                            rootPart.FlyVelocity.Velocity = moveDirection * FlySpeed
                        end
                        if rootPart:FindFirstChild("FlyGyro") then
                            rootPart.FlyGyro.CFrame = camera.CFrame
                        end
                        
                        wait()
                    end
                end)
            else
                if rootPart:FindFirstChild("FlyVelocity") then
                    rootPart.FlyVelocity:Destroy()
                end
                if rootPart:FindFirstChild("FlyGyro") then
                    rootPart.FlyGyro:Destroy()
                end
            end
        end
    end
})

-- 飞行速度滑块
playerSection:Slider({
    Title = "飞行速度",
    Min = 10,
    Max = 200,
    Default = 50,
    Callback = function(value)
        FlySpeed = value
    end
})

-- ============================================
-- ESP标签页
-- ============================================
espSection = MainSection:Tab({
    Title = "ESP透视",
    Icon = "Eye"
})

-- 物品ESP变量
local ItemESPEnabled = false
local ItemESPFolder = Instance.new("Folder")
ItemESPFolder.Name = "ItemESP"
ItemESPFolder.Parent = game:GetService("CoreGui")

-- 创建ESP函数
local function CreateESP(object, color, text)
    if object:FindFirstChild("ItemESPBillboard") then return end
    
    local part = object.PrimaryPart or object:FindFirstChildWhichIsA("BasePart")
    if not part then return end
    
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ItemESPBillboard"
    billboard.Adornee = part
    billboard.Size = UDim2.new(0, 100, 0, 40)
    billboard.StudsOffset = Vector3.new(0, 2, 0)
    billboard.AlwaysOnTop = true
    billboard.Parent = ItemESPFolder
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = color
    textLabel.Text = text or object.Name
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.GothamBold
    textLabel.Parent = billboard
    
    return billboard
end

-- 清除ESP函数
local function ClearItemESP()
    for _, esp in pairs(ItemESPFolder:GetChildren()) do
        esp:Destroy()
    end
end

-- 物品ESP
espSection:Toggle({
    Title = "物品ESP",
    Value = false,
    Callback = function(value)
        ItemESPEnabled = value
        if value then
            spawn(function()
                while ItemESPEnabled do
                    ClearItemESP()
                    for _, item in pairs(workspace.Items:GetChildren()) do
                        if item:IsA("Model") then
                            local color = Color3.fromRGB(255, 255, 255)
                            if item.Name == "Log" then
                                color = Color3.fromRGB(139, 69, 19)
                            elseif item.Name == "Coal" then
                                color = Color3.fromRGB(50, 50, 50)
                            elseif item.Name == "Carrot" then
                                color = Color3.fromRGB(255, 165, 0)
                            elseif item.Name == "Berry" then
                                color = Color3.fromRGB(255, 0, 100)
                            elseif item.Name == "Morsel" or item.Name == "Cooked Morsel" then
                                color = Color3.fromRGB(255, 100, 100)
                            elseif item.Name == "Bone" then
                                color = Color3.fromRGB(200, 200, 200)
                            end
                            CreateESP(item, color)
                        end
                    end
                    wait(1)
                end
                ClearItemESP()
            end)
        else
            ClearItemESP()
        end
    end
})

-- 动物ESP变量
local AnimalESPEnabled = false
local AnimalESPFolder = Instance.new("Folder")
AnimalESPFolder.Name = "AnimalESP"
AnimalESPFolder.Parent = game:GetService("CoreGui")

-- 清除动物ESP
local function ClearAnimalESP()
    for _, esp in pairs(AnimalESPFolder:GetChildren()) do
        esp:Destroy()
    end
end

-- 创建动物ESP
local function CreateAnimalESP(character)
    if character:FindFirstChild("AnimalESPBillboard") then return end
    
    local part = character:FindFirstChild("HumanoidRootPart")
    if not part then return end
    
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "AnimalESPBillboard"
    billboard.Adornee = part
    billboard.Size = UDim2.new(0, 100, 0, 40)
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    billboard.AlwaysOnTop = true
    billboard.Parent = AnimalESPFolder
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    textLabel.Text = character.Name
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.GothamBold
    textLabel.Parent = billboard
    
    return billboard
end

-- 动物ESP
espSection:Toggle({
    Title = "动物/敌人ESP",
    Value = false,
    Callback = function(value)
        AnimalESPEnabled = value
        if value then
            spawn(function()
                while AnimalESPEnabled do
                    ClearAnimalESP()
                    for _, character in pairs(workspace.Characters:GetChildren()) do
                        if character:IsA("Model") and character:FindFirstChild("HumanoidRootPart") then
                            CreateAnimalESP(character)
                        end
                    end
                    wait(1)
                end
                ClearAnimalESP()
            end)
        else
            ClearAnimalESP()
        end
    end
})

-- ============================================
-- 其他功能标签页
-- ============================================
miscSection = MainSection:Tab({
    Title = "其他功能",
    Icon = "Settings"
})

-- 自动重生
miscSection:Button({
    Title = "重生角色",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.Health = 0
        end
    end
})

-- 满血
miscSection:Button({
    Title = "满血",
    Callback = function()
        game:GetService("ReplicatedStorage").RemoteEvents.RequestHeal:FireServer()
        WindUI:Notify({
            Title = "满血",
            Text = "已请求满血",
            Duration = 2
        })
    end
})

-- 满饱食度
miscSection:Button({
    Title = "满饱食度",
    Callback = function()
        game:GetService("ReplicatedStorage").RemoteEvents.RequestFeed:FireServer()
        WindUI:Notify({
            Title = "满饱食度",
            Text = "已请求满饱食度",
            Duration = 2
        })
    end
})

-- 反AFK变量
local AntiAFKEnabled = false

-- 反AFK
miscSection:Toggle({
    Title = "反AFK挂机",
    Value = false,
    Callback = function(value)
        AntiAFKEnabled = value
        if value then
            local VirtualUser = game:GetService("VirtualUser")
            spawn(function()
                while AntiAFKEnabled do
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton2(Vector2.new())
                    wait(60)
                end
            end)
            WindUI:Notify({
                Title = "反AFK",
                Text = "已启用反AFK",
                Duration = 3
            })
        end
    end
})

-- 删除所有物品
miscSection:Button({
    Title = "删除背包所有物品",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        if player.Inventory then
            for _, item in pairs(player.Inventory:GetChildren()) do
                game:GetService("ReplicatedStorage").RemoteEvents.RequestDropItem:FireServer(item)
            end
            WindUI:Notify({
                Title = "删除物品",
                Text = "已删除所有物品",
                Duration = 3
            })
        end
    end
})

-- ============================================
-- 设置标签页
-- ============================================
settingsSection = MainSection:Tab({
    Title = "设置",
    Icon = "Cog"
})

-- 销毁脚本
settingsSection:Button({
    Title = "销毁脚本",
    Callback = function()
        -- 清理ESP
        ClearItemESP()
        ClearAnimalESP()
        ItemESPFolder:Destroy()
        AnimalESPFolder:Destroy()
        
        -- 重置所有变量
        OldAxeKillAuraEnabled = false
        GoodAxeKillAuraEnabled = false
        SpearKillAuraEnabled = false
        BoneClubKillAuraEnabled = false
        AutoChopTreeEnabled = false
        GlobalAttackOldAxeEnabled = false
        GlobalAttackGoodAxeEnabled = false
        GlobalAttackSpearEnabled = false
        GlobalAttackBoneClubEnabled = false
        OldSackAutoCollectEnabled = false
        GoodSackAutoCollectEnabled = false
        AutoCollectCoalEnabled = false
        AutoCollectLogEnabled = false
        AutoEatCarrotEnabled = false
        AutoEatBerryEnabled = false
        AutoEatCookedMorselEnabled = false
        SpeedEnabled = false
        JumpEnabled = false
        InfiniteJumpEnabled = false
        NoClipEnabled = false
        FlyEnabled = false
        ItemESPEnabled = false
        AnimalESPEnabled = false
        AntiAFKEnabled = false
        
        -- 销毁窗口
        Window:Destroy()
        
        WindUI:Notify({
            Title = "脚本已销毁",
            Text = "感谢使用XS脚本",
            Duration = 5
        })
    end
})

-- 切换主题
settingsSection:Dropdown({
    Title = "主题",
    Items = {"Dark", "Light", "Aqua", "Amethyst"},
    Default = "Dark",
    Callback = function(value)
        WindUI:SetTheme(value)
    end
})

-- 透明度调节
settingsSection:Slider({
    Title = "窗口透明度",
    Min = 0,
    Max = 100,
    Default = 0,
    Callback = function(value)
        Window:SetTransparency(value / 100)
    end
})

-- 显示作者信息
settingsSection:Paragraph({
    Title = "关于",
    Content = "XS脚本 v1.0\n作者:XS\n来源: 未知感谢使用本脚本!"
})

-- 初始化完成通知
WindUI:Notify({
    Title = "脚本加载完成",
    Content = "XS脚本已成功加载!\n按右下角按钮打开菜单",
    Duration = 5
})

print("XS脚本加载完成 - discord.gg/25ms")