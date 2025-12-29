local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
OrionLib:MakeNotification({
	Name = "加载成功",
	Content = "作者QQ3871788134脚本加载成功",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Window = OrionLib:MakeWindow({Name = "帅脚本中心🇨🇳", HidePremium = false, SaveConfig = true, ConfigFolder = "帅脚本"})

local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

Tab:AddButton({
	Name = "飞行",
	Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/gqv7PXAa"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "俄亥俄州💀",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "皇脚本(会占用ui)",
	Callback = function()
            loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
  	end    
})

Tab:AddButton({
	Name = "xa一拳超人+捡印钞",
	Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/main/Games/Ohio"))()
  	end    
})

Tab:AddButton({
	Name = "俄亥俄州熊脚本普通版",
	Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bear-script0/OHIO/main/%E7%86%8A%E8%84%9A%E6%9C%AC%E6%99%AE%E9%80%9A%E7%89%88"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "中国优质脚本🇨🇳",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "xk脚本中心(会占用ui)",
	Callback = function()
                    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
  	end
})

Tab:AddButton({
	Name = "导管中心",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/useranewrff/roblox/main/%E6%9D%A1%E6%AC%BE%E5%8D%8F%E8%AE%AE.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "最强战场🔥",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Kj动作",
	Callback = function()
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Tariviste/Scripts/eaf7c8bdc00fcd01c656d9b4c103b6e4a260e374/The%20Strongest%20Battlegrounds"))()
	end
})

Tab:AddButton({
	Name = "1v1单挑王",
	Callback = function()
	
	loadstring(game:HttpGet("https://pastefy.app/HxjXAU2d/raw"))()
	end
})

local Tab = Window:MakeTab({
	Name = "BF🌲",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "bf老外刷级王",
	
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/Basicallyy/Basicallyy/main/MinGamingV4.lua")()

	end
})


local Tab = Window:MakeTab({
	Name = "压力和doors中文最强",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "最强doors & 压力",
	Callback = function()
	loadstring(game:HttpGet("https://github.com/Drop56796/CreepyEyeHub/blob/main/obfuscate.lua?raw=true"))()
	end
})

local Tab = Window:MakeTab({
	Name = "巴掌模拟器👋",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "老外超牛脚本",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "一次尘土的旅行🚗",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "老外牛逼脚本",
	Callback = function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/a-dusty-trip-FREE-CAR-Gui-14352"))()
	end
})
local Tab = Window:MakeTab({
	Name = "动感星期五🎤",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "自动唱歌(老外)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
	end
})
local Tab = Window:MakeTab({
	Name = "战斗勇士⚔️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "老外杀人脚本",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IsaaaKK/cwhb/main/cw.txt"))()
	end
})


OrionLib:Init()