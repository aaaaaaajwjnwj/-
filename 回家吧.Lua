local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BS58dL/BS/refs/heads/main/骇灵.UI"))()

-- 创建窗口
local window = library.new(library, "UI 示例")

-- 创建第一个标签页
local mainTab = window:Tab("主界面", "6031280882") -- 使用图标ID

-- 创建一个展开的区块
local section1 = mainTab:section("基础控件", true) -- true 表示默认展开

-- 按钮示例
section1:Button("点击我", function()
    print("按钮被点击了！")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "提示",
        Text = "按钮点击成功！",
        Duration = 3
    })
end)

-- 标签示例
local myLabel = section1:Label("这是一个标签，用于显示信息")
task.spawn(function()
    for i = 1, 10 do
        task.wait(1)
        myLabel.Text = "标签已更新: " .. i .. "秒"
    end
end)

-- 开关示例
local toggle = section1:Toggle("启用功能", "my_toggle", false, function(state)
    print("开关状态:", state)
    if state then
        myLabel.Text = "功能已启用"
    else
        myLabel.Text = "功能已禁用"
    end
end)

-- 5秒后自动开启开关
task.spawn(function()
    task.wait(5)
    toggle:SetState(true)
end)

-- 按键绑定示例
local keybind = section1:Keybind("传送快捷键", "LeftControl", function(key)
    print("按键触发:", key)
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(0, 10, 0)
    end
end)

-- 文本框示例
local textbox = section1:Textbox("输入你的名字", "player_name", "玩家", function(text)
    print("名字已更新为:", text)
    myLabel.Text = "欢迎你使用帅AR, " .. text
end)

-- 滑块示例
local slider = section1:Slider("音量控制", "volume", 50, 0, 100, true, function(value)
    print("音量设置为:", value)
    -- 这里可以设置游戏音量
    game:GetService("SoundService").Volume = value / 100
end)

-- 滑块控制标签
task.spawn(function()
    while true do
        task.wait(0.5)
        if slider and slider.SetValue then
            -- 可以动态更新滑块值
            -- slider:SetValue(math.random(0, 100))
        end
    end
end)

-- 创建第二个区块
local section2 = mainTab:section("下拉框和更多", false) -- false 表示默认折叠

-- 下拉框示例
local dropdown = section2:Dropdown("选择武器", "weapon_selection", {"剑", "枪", "魔法杖", "弓箭", "盾牌"}, function(selected)
    print("选择了武器:", selected)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "武器选择",
        Text = "已选择: " .. selected,
        Duration = 3
    })
end)

-- 动态添加选项
task.spawn(function()
    task.wait(3)
    dropdown:AddOption("炸弹")
    dropdown:AddOption("飞镖")
    print("已添加新武器选项")
end)
    Tabs.LOLTab = Window:Section({Title = "服务器脚本", Opened = true})
Tabs.BZTab = Tabs.LOLTab:Tab({ Title = "巴掌模拟器", Icon = "zap" })
Tabs.ZQTab = Tabs.LOLTab:Tab({ Title = "最强战场", Icon = "zap" })
Tabs.FZTab = Tabs.LOLTab:Tab({ Title = "犯罪", Icon = "zap" })
Tabs.MSTab = Tabs.LOLTab:Tab({ Title = "墨水游戏", Icon = "zap" })
Tabs.JJTab = Tabs.LOLTab:Tab({ Title = "99夜", Icon = "zap" })
Tabs.TKTab = Tabs.LOLTab:Tab({ Title = "天空战争", Icon = "zap" })
Tabs.SCTab = Tabs.LOLTab:Tab({ Title = "生存战争", Icon = "zap" })
Tabs.CJTab = Tabs.LOLTab:Tab({ Title = "三叉戟生存", Icon = "zap" })
end
    Tabs.MainTab = Window:Section({Title = "帅脚本牛逼", Opened = true})   
   Tabs.CSJTab = Tabs.MainTab:Tab({ Title = "创世纪FE", Icon = "zap" })
   Tabs.MLTab = Tabs.MainTab:Tab({ Title = "melonFE", Icon = "zap" })
   Tabs.FWTab = Tabs.MainTab:Tab({ Title = "服务器漏洞", Icon = "zap" }) 
   Tabs.HDTab = Tabs.MainTab:Tab({ Title = "黑洞大全", Icon = "zap" })
   Tabs.KFTab = Tabs.MainTab:Tab({ Title = "开发工具", Icon = "zap" })  
   Tabs.ZRTab = Tabs.MainTab:Tab({ Title = "其他注入器", Icon = "zap" }) 
   Tabs.HZTab = Tabs.MainTab:Tab({ Title = "画质光影类", Icon = "zap" }) 
   Tabs.SFTab = Tabs.MainTab:Tab({ Title = "甩飞类", Icon = "zap" })
   Tabs.DZTab = Tabs.MainTab:Tab({ Title = "表情和动作类", Icon = "zap" })
   Tabs.TYGNTab = Tabs.MainTab:Tab({ Title = "通用", Icon = "zap" })
   Tabs.WJTab = Tabs.MainTab:Tab({ Title = "玩家类", Icon = "zap" })
   Tabs.PVPTab = Tabs.MainTab:Tab({ Title = "PVP类", Icon = "zap" })
   Tabs.CBTab = Tabs.MainTab:Tab({ Title = "18+动作专区", Icon = "zap" })
end
Tabs.ZQTab:Button({
    Title = "火车头",
    Desc = "装备英雄猎人",
    Callback = function()
getgenv().settings = {
    ["morph"] = {
        ["enabled"] = false,
        ["dontchangeskincolor"] = false,
    },
    ["ult_forcewalkspeed"] = true, -- forces walkspeed even if set to 0
    ["ult_walkspeed"] = 64, -- how fast you walk in ult
    ["tp_duration"] = 0.15 -- how long it takes to tp
} 

loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/ATrainSounds/refs/heads/main/ATrain.lua"))()
    end
})
Tabs.HDTab:Button({
    Title = "黑洞V1（黑洞中心同款）",
    Desc = "黑洞中心偷过来的。。。",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/1379qpalzmtygvezimaliexcvbnqplasdfg/BS/refs/heads/main/%E6%9B%BF%E8%BA%AB.txt"))()
    end
})

Tabs.HDTab:Button({
    Title = "黑洞v2",
    Desc = "未汉化",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/666/refs/heads/main/656"))()
    end
})

Tabs.HDTab:Button({
    Title = "黑洞中心同款v3",
    Desc = "感谢黑洞中心。",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/1379qpalzmtygvezimaliexcvbnqplasdfg/11284/refs/heads/main/Protected_6980301799988851.lua.txt"))()
    end
})

Tabs.HDTab:Button({
    Title = "简陋黑洞",
    Desc = "我鸡吧好痒",
    Callback = function()
loadstring(game:HttpGet("https://codeberg.org/ajduoxcz/BS/raw/branch/main/199/%E4%BA%91Ul.txt"))()
    end
})

Tabs.HDTab:Button({
    Title = "终极黑洞",
    Desc = "感谢黑洞中心。",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/1379qpalzmtygvezimaliexcvbnqplasdfg/11284/refs/heads/main/Protected_2793948043438411.lua.txt"))()
    end
})

Tabs.HDTab:Button({
    Title = "直接吸",
    Desc = "黑洞",
    Callback = function()
loadstring(game:HttpGet("https://codeberg.org/ajduoxcz/BS/raw/branch/main/1234578/%E4%BA%91Ul.txt"))()
    end
})

Tabs.HDTab:Button({
    Title = "黑洞V1",
    Desc = "已汉化",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/V1.lua.txt"))()
    end
})

Tabs.HDTab:Button({
    Title = "黑洞V3",
    Desc = "已汉化",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/V3.txt"))()
    end
})Tabs.DZTab:Button({
    Title = "r15无敌少侠飞行2",
    Desc = "这个动作好一点",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()     
    end
})
Tabs.WJTab:Button({
    Title = "隐身2",
    Desc = "通用",
    Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()  
    end
})
Tabs.WJTab:Button({
    Title = "飞行",
    Desc = "飞行",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E9%A3%9E%E8%A1%8C%E8%84%9A%E6%9C%ACV3(%E5%85%A8%E6%B8%B8%E6%88%8F%E9%80%9A%E7%94%A8)%20(1)%20(1).txt"))()
    end
})
Tabs.WJTab:Button({
    Title = "物理枪",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/FEwuliqiang"))()
    end
})
Tabs.ZQTab:Button({
    Title = "火车头",
    Desc = "装备英雄猎人",
    Callback = function()
getgenv().settings = {
    ["morph"] = {
        ["enabled"] = false,
        ["dontchangeskincolor"] = false,
    },
    ["ult_forcewalkspeed"] = true, -- forces walkspeed even if set to 0
    ["ult_walkspeed"] = 64, -- how fast you walk in ult
    ["tp_duration"] = 0.15 -- how long it takes to tp
} 

loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/ATrainSounds/refs/heads/main/ATrain.lua"))()
    end
})