local Framework = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2zu/OPEN-SOURCE-UI-ROBLOX/refs/heads/main/X2ZU%20UI%20ROBLOX%20OPEN%20SOURCE/DummyUi-leak-by-x2zu/fetching-main/Tools/Framework.luau"))()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local SETTINGS = {
    DISTANCE = 50,
    DAMAGE = 999,
    DELAY = 0.05
}

local Window = Framework:CreateWindow({
    Title = "演示脚本",
    Desc = "作者:xs小帅",
    Icon = 105059922903197,
    Theme = "Dark",
    Config = {
        Keybind = Enum.KeyCode.K,
        Size = UDim2.new(0, 500, 0, 400)
    },
    CloseUIButton = {
        Enabled = true,
        Text = "演示脚本"
    }
})

local Tab1 = Window:CreateTab({
    Title = "脚本说明",
    Icon = "refresh-cw"
})

local Section1 = Tab1:CreateSection({
    Title = "说明"
})

Section1:CreateCode({
    Title = "必看",
    Code = [[仅供学习参考
2. 自瞄开启后打人
3. 部分传送会掉落
4. 作者联系QQ1075226283]]
})

Section1:CreateLine()

local Tab2 = Window:CreateTab({
    Title = "杂项",
    Icon = "user"
})

local Section2_1 = Tab2:CreateSection({
    Title = "杂项功能"
})

Section2_1:CreateCode({
    Title = "使用须知",
    Code = "1.所有功能谨慎开启,被封禁作者概不负责"
})

local AutoPickupEnabled = false
Section2_1:CreateToggle({
    Title = "开启自动拾取(仅供学习参考)",
    Desc = "使用前请将仅供学习参考的物品拿在手上",
    Value = false,
    Callback = function(Value)
        AutoPickupEnabled = Value
        if AutoPickupEnabled then
            spawn(function()
                while AutoPickupEnabled do
                    pcall(function()
                        local character = LocalPlayer.Character
                        if character then
                            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart then
                                for _, item in pairs(Workspace:GetChildren()) do
                                    if item:IsA("Tool") and (item.Position - humanoidRootPart.Position).Magnitude < 10 then
                                        firetouchinterest(humanoidRootPart, item, 0)
                                        firetouchinterest(humanoidRootPart, item, 1)
                                    end
                                end
                            end
                        end
                    end)
                    wait(0.1)
                end
            end)
        end
    end
})

Section2_1:CreateLine()

local Tab3 = Window:CreateTab({
    Title = "自瞄",
    Icon = "crosshair"
})

local Section3_1 = Tab3:CreateSection({
    Title = "自瞄功能"
})

Section3_1:CreateCode({
    Title = "使用须知",
    Code = [[请先选择武器(推荐远程武器)
2. 开启功能
3. 范围自瞄全屏
4. 脚本仅供学习交流,请勿用于非法用途]]
})

_G.AimbotEnabled = false

Section3_1:CreateToggle({
    Title = "自瞄开关",
    Desc = "开启后自动攻击范围内的玩家",
    Value = false,
    Callback = function(Value)
        _G.AimbotEnabled = Value
        
        spawn(function()
            while _G.AimbotEnabled do
                pcall(function()
                    local localPlayer = Players.LocalPlayer
                    local localCharacter = localPlayer.Character
                    if not localCharacter then return end
                    
                    local localRootPart = localCharacter:FindFirstChild("HumanoidRootPart")
                    if not localRootPart then return end

                    local bestTarget = nil
                    local shortestDistance = SETTINGS.DISTANCE

                    local charactersFolder = Workspace:FindFirstChild("Characters") or Workspace
                    for _, character in pairs(charactersFolder:GetChildren()) do
                        if character:IsA("Model") and character ~= localCharacter then
                            local humanoid = character:FindFirstChild("Humanoid")
                            local targetRootPart = character:FindFirstChild("HumanoidRootPart") or character.PrimaryPart
                            
                            if humanoid and humanoid.Health > 0 and targetRootPart then
                                if string.find(character.Name, "Lost Child") or character.Name == "Pelt Trader" or character:FindFirstChild("Head") then
                                    local distance = (targetRootPart.Position - localRootPart.Position).Magnitude
                                    if distance < shortestDistance then
                                        shortestDistance = distance
                                        bestTarget = character
                                    end
                                end
                            end
                        end
                    end

                    if bestTarget then
                        local targetRootPart = bestTarget:FindFirstChild("HumanoidRootPart") or bestTarget.PrimaryPart
                        if targetRootPart then
                            local tool = localCharacter:FindFirstChildOfClass("Tool")
                            if tool then
                                local remoteEvent = ReplicatedStorage:FindFirstChild("ToolDamageObject") or ReplicatedStorage:FindFirstChild("DamageObject")
                                if remoteEvent then
                                    remoteEvent:InvokeServer(bestTarget, targetRootPart, SETTINGS.DAMAGE, targetRootPart.CFrame)
                                    Framework:Notify({Title = "✅ 攻击成功", Desc = "已对目标造成伤害!", Time = 3})
                                end
                            end
                        end
                    end
                end)
                wait(SETTINGS.DELAY)
            end
        end)
    end
})

Section3_1:CreateSlider({
    Title = "自瞄范围",
    Desc = "调整自瞄的搜索范围",
    Min = 10,
    Max = 500,
    Rounding = 5,
    Value = SETTINGS.DISTANCE,
    Callback = function(Value)
        SETTINGS.DISTANCE = Value
        Framework:Notify({Title = "范围已修改", Desc = "当前范围: " .. Value .. " 米", Time = 1})
    end
})

Section3_1:CreateSlider({
    Title = "自瞄延迟",
    Desc = "调整自瞄的攻击速度",
    Min = 5,
    Max = 100,
    Rounding = 5,
    Value = SETTINGS.DELAY * 100,
    Callback = function(Value)
        SETTINGS.DELAY = Value / 100
    end
})

Section3_1:CreateButton({
    Title = "自动选择最佳武器",
    Desc = "从您的背包中选择最好的武器",
    Callback = function()
        pcall(function()
            local character = LocalPlayer.Character
            if not character then return end
            
            local humanoid = character:FindFirstChild("Humanoid")
            if not humanoid then return end
            
            local backpack = LocalPlayer:FindFirstChild("Backpack")
            if not backpack then return end
            
            local bestTool = nil
            local weaponPriority = {"Chainsaw", "Strong Axe", "Good Axe", "Old Axe", "Sword", "Axe"}
            
            for _, weaponName in ipairs(weaponPriority) do
                local tool = backpack:FindFirstChild(weaponName) or character:FindFirstChild(weaponName)
                if tool then
                    bestTool = tool
                    break
                end
            end
            
            if bestTool then
                humanoid:EquipTool(bestTool)
                Framework:Notify({Title = "切换武器", Desc = "最佳武器: " .. bestTool.Name, Time = 2})
            else
                Framework:Notify({Title = "没有武器", Desc = "您没有任何可用的武器", Time = 3})
            end
        end)
    end
})

Section3_1:CreateLine()

local Tab4 = Window:CreateTab({
    Title = "刷物品传送",
    Icon = "package"
})

local Section4_1 = Tab4:CreateSection({
    Title = "传送刷物品"
})

Section4_1:CreateCode({
    Title = "使用须知",
    Code = "1. 请选择要传送刷的物品"
})

local selectedItem = ""
local itemList = {}

local itemDropdown = Section4_1:CreateDropdown({
    Title = "选择传送物品",
    Desc = "选择要传送到的物品位置",
    List = itemList,
    Value = selectedItem,
    Callback = function(Value)
        selectedItem = Value
    end
})

Section4_1:CreateButton({
    Title = "刷新物品列表",
    Desc = "更新可传送的物品列表",
    Callback = function()
        table.clear(itemList)
        local itemsFolder = Workspace:FindFirstChild("Items")
        if itemsFolder then
            for _, item in ipairs(itemsFolder:GetChildren()) do
                if item:IsA("Model") then
                    table.insert(itemList, item.Name)
                end
            end
        end
        itemDropdown:Refresh(itemList, true)
        Framework:Notify({Title = "刷新完成", Desc = "物品列表已更新", Time = 2})
    end
})

Section4_1:CreateButton({
    Title = "传送刷物品",
    Desc = "传送到您选择的物品位置",
    Callback = function()
        if selectedItem ~= "" then
            local character = LocalPlayer.Character
            if not character then return end
            
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then return end
            
            local itemsFolder = Workspace:FindFirstChild("Items")
            if not itemsFolder then return end
            
            local targetItem = itemsFolder:FindFirstChild(selectedItem)
            if targetItem then
                local targetCFrame = targetItem:GetPivot()
                humanoidRootPart.CFrame = targetCFrame + Vector3.new(0, 5, 0)
                Framework:Notify({Title = "传送", Desc = "已传送到 " .. selectedItem, Time = 2})
            else
                Framework:Notify({Title = "失败", Desc = "找不到物品，请刷新", Time = 3})
            end
        else
            Framework:Notify({Title = "失败", Desc = "请先在下拉菜单中选择一个物品", Time = 3})
        end
    end
})

Section4_1:CreateLine()

local Tab5 = Window:CreateTab({
    Title = "刷物品-孩子",
    Icon = "baby"
})

local Section5_1 = Tab5:CreateSection({
    Title = "孩子刷物品"
})

Section5_1:CreateCode({
    Title = "使用须知",
    Code = "1. 请选择要传送孩子的物品"
})

local selectedChild = ""
local childList = {}

local childDropdown = Section5_1:CreateDropdown({
    Title = "选择传送孩子",
    Desc = "选择要传送到的孩子位置",
    List = childList,
    Value = selectedChild,
    Callback = function(Value)
        selectedChild = Value
    end
})

Section5_1:CreateButton({
    Title = "刷新孩子列表",
    Desc = "更新可传送的孩子列表",
    Callback = function()
        table.clear(childList)
        local charactersFolder = Workspace:FindFirstChild("Characters")
        if charactersFolder then
            for _, character in ipairs(charactersFolder:GetChildren()) do
                if character:IsA("Model") and string.match(character.Name, "Lost Child") then
                    table.insert(childList, character.Name)
                end
            end
        end
        childDropdown:Refresh(childList, true)
        Framework:Notify({Title = "刷新完成", Desc = "孩子列表已更新", Time = 2})
    end
})

Section5_1:CreateButton({
    Title = "传送刷孩子",
    Desc = "传送到您选择的孩子位置",
    Callback = function()
        if selectedChild ~= "" then
            local character = LocalPlayer.Character
            if not character then return end
            
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then return end
            
            local charactersFolder = Workspace:FindFirstChild("Characters")
            if not charactersFolder then return end
            
            local targetChild = charactersFolder:FindFirstChild(selectedChild)
            if targetChild then
                local targetPrimary = targetChild.PrimaryPart or targetChild:FindFirstChild("HumanoidRootPart")
                if targetPrimary then
                    targetPrimary.CFrame = humanoidRootPart.CFrame
                    Framework:Notify({Title = "传送", Desc = "已传送 " .. selectedChild, Time = 2})
                end
            else
                Framework:Notify({Title = "失败", Desc = "找不到孩子，请刷新", Time = 3})
            end
        else
            Framework:Notify({Title = "失败", Desc = "请先在下拉菜单中选择一个孩子", Time = 3})
        end
    end
})

Section5_1:CreateLine()

local Tab6 = Window:CreateTab({
    Title = "物品传送",
    Icon = "map-pin"
})

local Section6_1 = Tab6:CreateSection({
    Title = "传送物品"
})

Section6_1:CreateCode({
    Title = "使用须知",
    Code = "1.所有物品传送均为作者测试,具体位置可能有偏差,请谅解"
})

Section6_1:CreateButton({
    Title = "传送-营地",
    Desc = "传送到营地位置",
    Callback = function()
        local character = LocalPlayer.Character
        if not character then return end
        
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then return end
        
        local campfire = Workspace:FindFirstChild("Campground") or Workspace:FindFirstChild("Map")
        if campfire then
            local mainFire = campfire:FindFirstChild("MainFire") or campfire:FindFirstChild("Fire")
            if mainFire then
                humanoidRootPart.CFrame = mainFire.CFrame + Vector3.new(0, 5, 0)
                Framework:Notify({Title = "传送", Desc = "已传送到营地", Time = 2})
            end
        end
    end
})

Section6_1:CreateButton({
    Title = "传送-外星人宝箱",
    Desc = "传送到外星人宝箱位置",
    Callback = function()
        local character = LocalPlayer.Character
        if not character then return end
        
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then return end
        
        local alienChest = Workspace:FindFirstChild("Alien Chest") or Workspace:FindFirstChild("AlienChest")
        if alienChest then
            humanoidRootPart.CFrame = alienChest:GetPivot() + Vector3.new(0, 5, 0)
            Framework:Notify({Title = "传送", Desc = "已传送到外星人宝箱", Time = 2})
        else
            Framework:Notify({Title = "失败", Desc = "找不到外星人宝箱", Time = 3})
        end
    end
})

Section6_1:CreateButton({
    Title = "传送-据点钻石宝箱",
    Desc = "传送到据点钻石宝箱位置",
    Callback = function()
        local character = LocalPlayer.Character
        if not character then return end
        
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then return end
        
        local diamondChest = Workspace:FindFirstChild("Stronghold Diamond Chest") or Workspace:FindFirstChild("DiamondChest")
        if diamondChest then
            humanoidRootPart.CFrame = diamondChest:GetPivot() + Vector3.new(0, 5, 0)
            Framework:Notify({Title = "传送", Desc = "已传送到据点钻石宝箱", Time = 2})
        else
            Framework:Notify({Title = "失败", Desc = "找不到钻石宝箱", Time = 3})
        end
    end
})

spawn(function()
    while true do
        wait(5)
        
        table.clear(itemList)
        local itemsFolder = Workspace:FindFirstChild("Items")
        if itemsFolder then
            for _, item in ipairs(itemsFolder:GetChildren()) do
                if item:IsA("Model") then
                    table.insert(itemList, item.Name)
                end
            end
        end
        
        table.clear(childList)
        local charactersFolder = Workspace:FindFirstChild("Characters")
        if charactersFolder then
            for _, character in ipairs(charactersFolder:GetChildren()) do
                if character:IsA("Model") and string.match(character.Name, "Lost Child") then
                    table.insert(childList, character.Name)
                end
            end
        end
        
        if itemDropdown then
            itemDropdown:Refresh(itemList, true)
        end
        if childDropdown then
            childDropdown:Refresh(childList, true)
        end
    end
end)

Framework:Notify({
    Title = "演示脚本加载成功",
    Desc = "欢迎使用,请您务必谨慎开启所有功能,避免被封禁",
    Time = 4
})

print("演示脚本加载成功!")