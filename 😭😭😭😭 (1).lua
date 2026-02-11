local WindUI = 
loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- 渐变文字
function gradient(text, startColor, endColor)
    local result = ""
    local length = #text
    for i = 1, length do
        local t = (i - 1) / math.max(length - 1, 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)
        local char = text:sub(i, i)
        result = result .. "<font color=\"rgb(" .. r .. ", " .. g .. ", " .. b .. ")\">" .. char .. "</font>"
    end
    return result
end

-- 粉色动态渐变
local PinkColors = {
    Color3.fromHex("#ff8fab"),
    Color3.fromHex("#ff5e8f"),
    Color3.fromHex("#ff2e63"),
    Color3.fromHex("#ff9bbb"),
    Color3.fromHex("#f77fbe"),
    Color3.fromHex("#ffc2e2")
}

local function RainbowText(text)
    local result = ""
    for i = 1, #text do
        local c = PinkColors[(i % #PinkColors) + 1]
        local hex = string.format("%02x%02x%02x", math.floor(c.R*255), math.floor(c.G*255), math.floor(c.B*255))
        result = result .. string.format("<font color='#%s'>%s</font>", hex, text:sub(i,i))
    end
    return result
end

-- 弹窗确认
local Confirmed = false
WindUI:Popup({
    Title = "XS 专属脚本",
    IconThemed = true,
    Content = "欢迎使用 " .. gradient("培根专用Hub", Color3.fromHex("#ff5e8f"), Color3.fromHex("#ff2e63")),
    Buttons = {
        { Title = "退出", Callback = function() end, Variant = "Secondary" },
        { Title = "进入", Icon = "arrow-right", Callback = function() Confirmed = true end, Variant = "Primary" }
    }
})

repeat task.wait() until Confirmed

-- 主窗口
local Window = WindUI:CreateWindow({
    Title = "XS 培根专用 HUB",
    Icon = "rbxassetid://6031280882",
    IconThemed = true,
    Author = "一野",
    Folder = "XS_HUB",
    Size = UDim2.fromOffset(200, 460),
    Transparent = true,
    Theme = "Dark",
    User = { Enabled = true, Anonymous = true },
    SideBarWidth = 200,
    ScrollBarEnabled = true,
})

Window:EditOpenButton({
    Title = "XS Hub",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromHex("FF0F7B"), Color3.fromHex("F89B29")),
    Draggable = true,
})

local Tabs = {}

-- 通用功能
Tabs.Main = Window:Section({ Title = "通用功能", Opened = true })
Tabs.Game = Window:Section({ Title = "游戏脚本", Opened = true })
Tabs.Info = Window:Section({ Title = "个人信息", Opened = true })

Tabs.TabMain = Tabs.Main:Tab({ Title = "角色控制", Icon = "user" })
Tabs.TabGame = Tabs.Game:Tab({ Title = "脚本大全", Icon = "code" })
Tabs.TabInfo = Tabs.Info:Tab({ Title = "个人信息", Icon = "info" })

-- 角色控制
Tabs.TabMain:Paragraph({
    Title = RainbowText("XS 专属 · 加载成功"),
    Color = "Pink"
})

-- 跳跃高度
Tabs.TabMain:Slider({
    Title = "跳跃高度",
    Value = { Min = 20, Max = 200, Default = 50 },
    Callback = function(v)
        local plr = game.Players.LocalPlayer
        if plr.Character and plr.Character:FindFirstChild("Humanoid") then
            plr.Character.Humanoid.JumpPower = v
        end
    end
})

-- 移动速度
Tabs.TabMain:Slider({
    Title = "移动速度",
    Value = { Min = 16, Max = 150, Default = 16 },
    Callback = function(v)
        local plr = game.Players.LocalPlayer
        if plr.Character and plr.Character:FindFirstChild("Humanoid") then
            plr.Character.Humanoid.WalkSpeed = v
        end
    end
})

-- 重力
Tabs.TabMain:Slider({
    Title = "重力",
    Value = { Min = 0.1, Max = 500, Default = 196.2 },
    Callback = function(v)
        workspace.Gravity = v
    end
})

Tabs.TabMain:Divider()

-- 快捷功能
local function Notify(title, text)
    WindUI:Notify({ Title = title, Content = text, Duration = 2 })
end

Tabs.TabMain:Button({
    Title = "飞行",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLY-GUI-BY-TUPAK-76975"))()
        Notify("功能", "飞行已加载")
    end
})

Tabs.TabMain:Button({
    Title = "飞行 V3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mciklw/mciklwscript/main/flyvthree"))()
        Notify("功能", "飞行V3已加载")
    end
})

Tabs.TabMain:Button({
    Title = "子弹追踪",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fcsdsss/games/main/Silent%20aim/1.1"))()
        Notify("功能", "子弹追踪已加载")
    end
})

Tabs.TabMain:Button({
    Title = "反挂机防踢",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
        Notify("功能", "反挂机已加载")
    end
})

Tabs.TabMain:Button({
    Title = "隐身",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/main/yinshen"))()
        Notify("功能", "隐身已加载")
    end
})

Tabs.TabMain:Button({
    Title = "悬空",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))()
        Notify("功能", "悬空已加载")
    end
})

-- 游戏脚本
local gameScripts = {
    { Name = "彩虹朋友", Url = "https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770525489111.lua" },
    { Name = "驾驶帝国", Url = "https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770525751596.lua" },
    { Name = "监狱人生", Url = "https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770525964028.lua" },
    { Name = "僵尸起义", Url = "https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770526310277.lua" },
    { Name = "忍者传奇", Url = "https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770526469349.lua" },
    { Name = "战争大亨", Url = "https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770526626847.lua" },
    { Name = "被遗弃", Url = "https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770526853160.lua" },
    { Name = "时间回溯", Url = "https://mscripts.vercel.app/scfiles/reverse-script.lua" },
    { Name = "汽车经销大亨", Url = "https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770527661876.lua" },
    { Name = "最强战场", Url = "https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770527858921.lua" },
}

for _, info in pairs(gameScripts) do
    Tabs.TabGame:Button({
        Title = info.Name,
        Callback = function()
            loadstring(game:HttpGet(info.Url))()
            Notify("游戏脚本", info.Name .. " 已加载")
        end
    })
end

-- 个人信息
local plr = game.Players.LocalPlayer

Tabs.TabInfo:Paragraph({
    Title = RainbowText("XS 专属用户信息"),
    Color = "Pink"
})

Tabs.TabInfo:Label({ Text = "用户名: " .. plr.Name })
Tabs.TabInfo:Label({ Text = "显示名: " .. plr.DisplayName })
Tabs.TabInfo:Label({ Text = "ID: " .. plr.UserId })
Tabs.TabInfo:Label({ Text = "账号年龄: " .. plr.AccountAge .. " 天" })

Tabs.TabInfo:Divider()

Tabs.TabInfo:Button({
    Title = "复制我的ID",
    Callback = function()
        if setclipboard then setclipboard(tostring(plr.UserId)) end
        Notify("XS专属", "已复制ID")
    end
})

Tabs.TabInfo:Button({
    Title = "复制脚本名称",
    Callback = function()
        if setclipboard then setclipboard("XS 培根专用 Hub") end
        Notify("XS专属", "已复制脚本名")
    end
})

Window:SelectTab(1)
WindUI:Notify({ Title = "XS Hub", Content = "脚本加载完成", Duration = 3 }) 