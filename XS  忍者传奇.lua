---   XS HUB
local IMAGE = "rbxassetid://114514"
local Positions = UDim2.new(0.822025776, 0, 0.0401606411, 0)
local Sizes = UDim2.new(0, 76, 0, 70)

local KINGHUBMOBILE = Instance.new("ScreenGui")
local _100x100 = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")

KINGHUBMOBILE.Name = "XS HUB"
KINGHUBMOBILE.Parent = game:WaitForChild("CoreGui")
KINGHUBMOBILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

_100x100.Name = "100x100"
_100x100.Parent = KINGHUBMOBILE
_100x100.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_100x100.Position = Positions
_100x100.Size = UDim2.new(0, 76, 0, 70)

ImageButton.Parent = _100x100
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.Size = Sizes
ImageButton.Image = IMAGE
ImageButton.MouseButton1Down:connect(function()
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(true, "RightControl", false, game)

	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(false, "RightControl", false, game)
end)

local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/XT114514/rbx/main/vape.lua"))()
local win = UILib:Window("帅脚本 | 忍者传奇",Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)

local tab = win:Tab("主要")
local tab2 = win:Tab("其他")

tab:Toggle("自动挥舞", false, function(v)
    if v or not v then
        getgenv().autoswing = v
            while true do
                if not getgenv().autoswing then return end
                for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:FindFirstChild("ninjitsuGain") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                        break
                    end
                end
                local A_1 = "swingKatana"
                local Event = game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(A_1)
                wait()
            end
        end
end)

tab:Toggle("自动售卖", false, function(v)
    getgenv().autosell = v
        while true do
            if not getgenv().autosell then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)

tab:Toggle("自动购买排名", false, function(v)
    getgenv().autobuyranks = v
        while true do
            if not getgenv().autobuyranks then return end
            local deku1 = "buyRank"
            for i = 1, #ranks do
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(deku1, ranks[i])
            end
            wait(0.1)
        end
end)

tab:Toggle("自动购买腰带", false, function(v)
    getgenv().autobuybelts = v
        while true do
            if not getgenv().autobuybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
end)

tab:Toggle("自动购买技能", false, function(v)
    getgenv().autobuyskills = v
        while true do
            if not getgenv().autobuyskills then return end
            local A_1 = "buyAllSkills"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
end)

tab:Toggle("自动购买剑", false, function(v)
    getgenv().autobuy = v
        while true do
            if not getgenv().autobuy then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
end)

tab2:Button("解锁所有岛屿", function()
    for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),v,0)
        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),v,1)
        end
end)

local Elements = {}
    for i,v in pairs(game:GetService("ReplicatedStorage").Elements:GetChildren()) do
       table.insert(Elements,v.Name)
    end

tab2:Button("解锁所有元素", function()
    for i,v in pairs(Elements) do
        game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer(v)
        print(v)
        end
end)