local WindUI = loadstring(game:HttpGet(
    "https://github.com/SCRIPT-1-cyber/sf/releases/latest/download/UI.lua"
))()

local Window = WindUI:CreateWindow({
    Title = "TnineHub公益",
    Icon = "crown",
    Author = "TnineHub",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(560, 360),
    Transparent = true
})

Window:EditOpenButton({
    Title = "Tnine｜HUB",
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

TabCommon:Button({Title="🈚",Callback=function()
    
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

local TabBlind = NewTab("盲射")
TabBlind:Button({Title="老外盲射脚本",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/BlindShot"))()
end})

local TabBrain = NewTab("偷走脑红")
TabBrain:Button({Title="🈚",Callback=function()
    
end})

local Tab99 = NewTab("")
Tab99:Button({Title="🈚",Callback=function()
    
end})

local TabAim = NewTab("自喵")
TabAim:Button({Title="自喵可调",Callback=function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Aimbot-Universal-For-Mobile-and-PC-29153"))()
end})

local TabCarry = NewTab("带玩家")
TabCarry:Button({Title="带玩家 r6",Callback=function()
    loadstring(game:HttpGet("https://pastefy.app/acRMjzDk/raw"))()
end})

local TabUpdate = NewTab("催更")
TabUpdate:Button({Title="催更或bug提醒",Callback=function() end})
TabUpdate:Button({
    Title="点击复制ks号",
    Callback=function()
        CopyKey("","ks号已复制")
    end
})

local TabMM2 = NewTab("mm2脚本")
TabMM2:Button({Title="🈚",Callback=function()
 
end})

local TabFreeRB = NewTab("🈚")
TabFreeRB:Button({Title="🈚",Callback=function()
    
end})

local TabAdopt = NewTab("领养我")
TabAdopt:Button({Title="🈚",Callback=function()
    
end})

local TabOhio = NewTab("俄亥俄州")
TabOhio:Button({Title="🈚",Callback=function()
    
end})

local TabPower = NewTab("刀刃球")
TabPower:Button({Title="Tnine",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZARANB666/Cycle/main/DRQ.lua"))()
end})

local TabBlox = NewTab("99天")
TabBlox:Button({Title="Tnine",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZARANB666/Cyberpunk/main/TnineHub99.lua"))()
end})

local TabEvade = NewTab("criminality")
TabEvade:Button({Title="Tnine",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZARANB666/Tnine/main/criminality.lua"))()
end})
TabEvade:Button({
    Title="🈚",
    Callback=function()
        CopyKey("")
    end
})

local TabDestroy = NewTab("GB")
TabDestroy:Button({Title="Tnine",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZARANB666/TnineHub/main/TnineHubGB.lua"))()
end})
local Tab7788 = NewTab("战争大亨")
Tab7788:Button({Title="战争大亨",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZARANB666/Wbdid/main/zanzendahe.lua"))()
end}) 
local Tab788 = NewTab("格雷丝")
Tab788:Button({Title="Tnine",Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZARANB666/Cylinder/main/gls.lua"))()
end})

local Tab100 = NewTab("汽车经销大亨")
Tab100:Button({Title="Tnine",Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZARANB666/dummy/main/qc.lua"))()
end})

local Tab101 = NewTab("最强战场")
Tab101:Button({Title="Tnine",Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZARANB666/Sunset/main/zq.lua"))()
end})

local Tab101 = NewTab("驾驶帝国")
Tab101:Button({Title="Tnine",Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZARANB666/Flower/main/gsdg.lua"))() 
end})
