local WindUI = loadstring(game:HttpGet(
    "https://github.com/SCRIPT-1-cyber/sf/releases/latest/download/UI.lua"
))()

local Window = WindUI:CreateWindow({
    Title = "XS｜付费 ",
    Icon = "crown",
    Author = "快手ROWAN",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(560, 360),
    Transparent = true
})

Window:EditOpenButton({
    Title = "XS｜HUB",
    Icon = "crown",
    CornerRadius = UDim.new(1,0),
    StrokeThickness = 3,
    Draggable = true
})

local function NewTab(name)
    return Window:Tab({Title=name, Icon="eye"})
end

local function CopyKey(key, text)
    XSnb886(key)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title="成功",
        Text=text or "已复制到剪贴板",
        Duration=2
    })
end

local player = game.Players.LocalPlayer

local TabAbout = NewTab("关于")
TabAbout:Paragraph({
    Title="系统信息",
    Desc=string.format(
        "用户名: %s\n显示名: %s\n用户ID: %d\n账号年龄: %d天",
        player.Name, player.DisplayName, player.UserId, player.AccountAge
    )
})

local TabCommon = NewTab("通用")
local Settings = {JumpPower=50, WalkSpeed=16}

TabCommon:Slider({
    Title="跳跃高度",
    Value={Min=20,Max=200,Default=50},
    Callback=function(v)
        Settings.JumpPower=v
        local h=player.Character and player.Character:FindFirstChild("Humanoid")
        if h then h.JumpPower=v end
    end
})

TabCommon:Slider({
    Title="移动速度",
    Value={Min=16,Max=150,Default=16},
    Callback=function(v)
        Settings.WalkSpeed=v
        local h=player.Character and player.Character:FindFirstChild("Humanoid")
        if h then h.WalkSpeed=v end
    end
})

player.CharacterAdded:Connect(function(char)
    task.wait(1)
    local h=char:FindFirstChild("Humanoid")
    if h then
        h.JumpPower=Settings.JumpPower
        h.WalkSpeed=Settings.WalkSpeed
    end
end)

TabCommon:Slider({
    Title="重力",
    Value={Min=0.1,Max=500,Default=196.2},
    Step=0.1,
    Callback=function(v) workspace.Gravity=v end
})

TabCommon:Button({Title="飞",Callback=function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLY-GUI-BY-TUPAK-76975"))()
end})

TabCommon:Button({Title="飞行v3",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mciklw/mciklwscript/main/flyvthree"))()
end})

TabCommon:Button({Title="子弹追踪",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fcsdsss/games/main/Silent%20aim/1.1"))()
end})

TabCommon:Button({Title="隐身 [别人看得见]",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/main/yinshen"))()
end})

TabCommon:Button({Title="悬空",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))()
end})

TabCommon:Button({Title="反挂机",Callback=function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end})

TabCommon:Button({Title="玩家进入提示",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
end})

TabCommon:Button({Title="撸管 r6",Callback=function()
    loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
end})

TabCommon:Button({Title="撸管 r15",Callback=function()
    loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
end})

TabCommon:Button({Title="隐身道具",Callback=function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff",true))()
end})

local TabBlind = NewTab("XS")
TabBlind:Button({Title="彩虹朋友",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770525489111.lua"))()
end})

local TabBrain = NewTab("XS")
TabBrain:Button({Title="驾驶帝国",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770525751596.lua"))()
end})

local Tab99 = NewTab("XS")
Tab99:Button({Title="监狱人生",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770525964028.lua",true))()
end})

local TabAim = NewTab("XS")
TabAim:Button({Title="僵尸起义",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770526310277.lua"))()
end})

local TabCarry = NewTab("XS")
TabCarry:Button({Title="忍者传奇",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770526469349.lua"))()
end})

local TabUpdate = NewTab("催更")
TabUpdate:Button({Title="催更或bug提醒",Callback=function() end})
TabUpdate:Button({
    Title="点击复制ks号",
    Callback=function()
        CopyKey("xisoshusi","ks号已复制")
    end
})

local TabMM2 = NewTab("XS")
TabMM2:Button({Title="战争大亨",Callback=function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770526626847.lua'))()
end})

local TabFreeRB = NewTab("XS")
TabFreeRB:Button({Title="被遗弃",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770526853160.lua"))()
end})

local TabAdopt = NewTab("刀刃球")
TabAdopt:Button({Title="ringta",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770527083829.lua"))()
end})

local TabOhio = NewTab("XS")
TabOhio:Button({Title="格蕾丝",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770527277871.lua"))()
end})

local TabPower = NewTab("XS")
TabPower:Button({Title="逃离建筑",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770528377157.lua"))()
end})

local TabBlox = NewTab("XS")
TabBlox:Button({Title="俄亥俄",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770528150774.lua"))()
end})

local TabEvade = NewTab("河北唐县")
TabEvade:Button({Title="XsXS",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770527462824.lua"))()
end})
TabEvade:Button({
    Title="点击复制脚本卡密",
    Callback=function()
        CopyKey("xsxsxs","卡密已复制")
    end
})

local TabDestroy = NewTab("摧毁师")
TabDestroy:Button({Title="不知道",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Joshingtonn123/JoshScript/main/SyrexGenesisXDefuseDivision"))()
end})
local Tab7788 = NewTab("时间回溯")
Tab7788:Button({Title="时间回溯",Callback=function()
    loadstring(game:HttpGet("https://mscripts.vercel.app/scfiles/reverse-script.lua"))()
end}) 
local Tab788 = NewTab("[UPD🎉]Anime Slap Tower✋🏻")
Tab788:Button({Title="获得道具op",Callback=function()
  loadstring(game:HttpGet("https://pastefy.app/aj7u9mDA/raw"))()
end})

local Tab100 = NewTab("XS")
Tab100:Button({Title="汽车经销大亨",Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770527661876.lua"))()
end})

local Tab101 = NewTab("XS")
Tab101:Button({Title="最强战场",Callback=function() loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770527858921.lua"))()
end})