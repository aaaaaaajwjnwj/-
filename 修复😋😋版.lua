local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local GuiService = game:GetService("GuiService")
local plr = Players.LocalPlayer or Players.PlayerAdded:Wait()
local char = plr.Character or plr.CharacterAdded:Wait()

local WindUI = nil
local loadSuccess, err = pcall(function()
    local winduiLinks = {
        "https://raw.githubusercontent.com/Footagesus/WindUI/main/main.lua",
        "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
    }
    for _, link in ipairs(winduiLinks) do
        local code = game:HttpGet(link, true)
        WindUI = loadstring(code)()
        if WindUI then break end
    end
end)
if not loadSuccess or not WindUI then
    error("WindUI加载失败："..tostring(err).."\n请检查Executor网络/权限")
end

local function gradient(text, startColor, endColor)
    if type(text) ~= "string" or text == "" then return "" end
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

local PinkColors = {
    Color3.fromHex("#ff8fab"),
    Color3.fromHex("#ff5e8f"),
    Color3.fromHex("#ff2e63"),
    Color3.fromHex("#ff9bbb"),
    Color3.fromHex("#f77fbe"),
    Color3.fromHex("#ffc2e2")
}

local function RainbowText(text)
    if type(text) ~= "string" or text == "" then return "" end
    local result = ""
    for i = 1, #text do
        local c = PinkColors[(i % #PinkColors) + 1]
        local hex = string.format("%02x%02x%02x", math.floor(c.R*255), math.floor(c.G*255), math.floor(c.B*255))
        result = result .. string.format("<font color='#%s'>%s</font>", hex, text:sub(i,i))
    end
    return result
end

local Confirmed = false
WindUI:Popup({
    Title = "XS 脚本",
    IconThemed = true,
    Content = "欢迎使用 " .. gradient("培根", Color3.fromHex("#ff5e8f"), Color3.fromHex("#ff2e63")),
    Buttons = {
        { Title = "退出", Callback = function() end, Variant = "Secondary" },
        { Title = "进入", Icon = "arrow-right", Callback = function() Confirmed = true end, Variant = "Primary" }
    }
})

local start = os.clock()
local timeout = 10
repeat task.wait() until Confirmed or os.clock() - start > timeout
if not Confirmed then return end

local Window = WindUI:CreateWindow({
    Title = "XS 培根 HUB",
    Icon = "rbxassetid://6031280882",
    IconThemed = true,
    Author = "XS",
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

local Tabs = {
    TabMain = Window:Tab({ Title = "角色控制", Icon = "user" }),
    TabGame = Window:Tab({ Title = "脚本大全", Icon = "code" }),
    TabInfo = Window:Tab({ Title = "个人信息", Icon = "info" })
}

Tabs.Main = Tabs.TabMain:Section({ Title = "通用功能", Opened = true })
Tabs.Game = Tabs.TabGame:Section({ Title = "游戏脚本", Opened = true })
Tabs.Info = Tabs.TabInfo:Section({ Title = "个人信息", Opened = true })

local function updateHumanoidProperty(prop, value)
    local char = plr.Character
    if char then
        local humanoid = char:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid[prop] = value
        end
    end
end

plr.CharacterAdded:Connect(function(newChar)
    newChar:WaitForChild("Humanoid")
end)

Tabs.Main:Paragraph({
    Title = RainbowText("XS 专属 · 加载成功"),
    Color = "Pink"
})

Tabs.Main:Slider({
    Title = "跳跃高度",
    Min = 20,
    Max = 200,
    Default = 50,
    Value = 50,
    Callback = function(v)
        updateHumanoidProperty("JumpPower", v)
    end
})

Tabs.Main:Slider({
    Title = "移动速度",
    Min = 16,
    Max = 150,
    Default = 16,
    Value = 16,
    Callback = function(v)
        updateHumanoidProperty("WalkSpeed", v)
    end
})

Tabs.Main:Slider({
    Title = "重力",
    Min = 0.1,
    Max = 500,
    Default = 196.2,
    Value = 196.2,
    Callback = function(v)
        Workspace.Gravity = v
    end
})

Tabs.Main:Divider()

local function Notify(title, text)
    WindUI:Notify({ Title = title, Content = text, Duration = 2 })
end

local function loadRemoteScript(url, notifyTitle, notifyText)
    local success, err = pcall(function()
        loadstring(game:HttpGet(url, true))()
    end)
    if success then
        Notify(notifyTitle, notifyText)
    else
        Notify("错误", notifyText .. "加载失败：" .. tostring(err))
    end
end

Tabs.Main:Button({
    Title = "飞行",
    Callback = function()
        loadRemoteScript("https://rawscripts.net/raw/Universal-Script-FLY-GUI-BY-TUPAK-76975", "功能", "飞行已加载")
    end
})

Tabs.Main:Button({
    Title = "飞行 V3",
    Callback = function()
        loadRemoteScript("https://raw.githubusercontent.com/mciklw/mciklwscript/main/flyvthree", "功能", "飞行V3已加载")
    end
})

Tabs.Main:Button({
    Title = "子弹追踪",
    Callback = function()
        loadRemoteScript("https://raw.githubusercontent.com/fcsdsss/games/main/Silent%20aim/1.1", "功能", "子弹追踪已加载")
    end
})

Tabs.Main:Button({
    Title = "反挂机防踢",
    Callback = function()
        loadRemoteScript("https://pastebin.com/raw/9fFu43FF", "功能", "反挂机已加载")
    end
})

Tabs.Main:Button({
    Title = "隐身",
    Callback = function()
        loadRemoteScript("https://raw.githubusercontent.com/Yungengxin/roblox/main/yinshen", "功能", "隐身已加载")
    end
})

Tabs.Main:Button({
    Title = "悬空",
    Callback = function()
        loadRemoteScript("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float", "功能", "悬空已加载")
    end
})

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
    Tabs.Game:Button({
        Title = info.Name,
        Callback = function()
            loadRemoteScript(info.Url, "游戏脚本", info.Name .. " 已加载")
        end
    })
end

Tabs.Info:Paragraph({
    Title = RainbowText("XS 专属用户信息"),
    Color = "Pink"
})

Tabs.Info:Label({ Text = "用户名: " .. plr.Name })
Tabs.Info:Label({ Text = "显示名: " .. plr.DisplayName })
Tabs.Info:Label({ Text = "ID: " .. plr.UserId })
Tabs.Info:Label({ Text = "账号年龄: " .. plr.AccountAge .. " 天" })
Tabs.Info:Divider()

Tabs.Info:Button({
    Title = "复制我的ID",
    Callback = function()
        if setclipboard then
            setclipboard(tostring(plr.UserId))
        elseif GuiService then
            pcall(function() GuiService:SetClipboard(tostring(plr.UserId)) end)
        end
        Notify("XS专属", "已复制ID")
    end
})

Tabs.Info:Button({
    Title = "复制脚本名称",
    Callback = function()
        if setclipboard then
            setclipboard("XS 培根专用 Hub")
        elseif GuiService then
            pcall(function() GuiService:SetClipboard("XS 培根专用 Hub") end)
        end
        Notify("XS专属", "已复制脚本名")
    end
})

Window:SelectTab(1)
WindUI:Notify({ Title = "XS Hub", Content = "脚本加载完成", Duration = 3 })
