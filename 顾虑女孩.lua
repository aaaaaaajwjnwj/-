local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
local Confirmed = false
task.wait(1)
Confirmed = true

repeat task.wait() until Confirmed

local UserGui = Instance.new("ScreenGui", game.CoreGui)
local UserLabel = Instance.new("TextLabel", UserGui)
local UIGradient = Instance.new("UIGradient")

UserGui.Name = "UserGui"
UserGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UserGui.Enabled = true
UserLabel.Name = "UserLabel"
UserLabel.BackgroundColor3 = Color3.new(1, 1, 1)
UserLabel.BackgroundTransparency = 1
UserLabel.BorderColor3 = Color3.new(0, 0, 0)
UserLabel.Position = UDim2.new(0.80, 0.80, 0.00090, 0)
UserLabel.Size = UDim2.new(0, 135, 0, 50)
UserLabel.Font = Enum.Font.GothamSemibold
UserLabel.Text = "尊敬的王脚本用户，祝你每天撸管射100升！"
UserLabel.TextColor3 = Color3.new(1, 1, 1)
UserLabel.TextScaled = true
UserLabel.TextWrapped = true
UserLabel.Visible = true

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)),
    ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)),
    ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)),
    ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)),
    ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)),
    ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))
}
UIGradient.Rotation = 10
UIGradient.Parent = UserLabel

local Window = Rayfield:CreateWindow({
    Name = "王",
    LoadingTitle = "加载中...",
    LoadingSubtitle = "感谢使用",
    ConfigurationSaving = {
        Enabled = false,
    },
})

local Tab1 = Window:CreateTab("公告")
local Tab2 = Window:CreateTab("战争大亨")
local Tab3 = Window:CreateTab("通用")
local Tab4 = Window:CreateTab("破解剑客"）

local ButtonExample = Tab1:CreateButton({
about:AddParagraph("功能改为操逼是什么功能自己猜")
about:AddParagraph("作者:王")
about:AddParagraph("恩师:小帅")

local Tab =Window:MakeTab({
	Name = "恩师小帅",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制作者QQ",
	Callback = function()
     setclipboard("11111111111")
  	end
})

local ButtonExample = Tab2:CreateButton({
    Name = "操逼",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/21sd/HanHud/19f9d014130353923b6520e64d79b44f365dc642/Protected_4525947765576429.lua.txt"))()
        print("按钮被点击了!")
    end,
})

-- 7. 输入框(TextBox)示例
local TextBoxExample = Tab2:CreateInput({
    Name = "输入框",
    PlaceholderText = "输入",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        print("输入:", Text)
    end,
})

local KeybindExample = Tab3:CreateKeybind({
    Name = "键位绑定",
    CurrentKeybind = "Q",
    HoldToInteract = false,
    Flag = "KeybindExample", 
    Callback = function(Keybind)
        print("按下的键:", Keybind)
    end,
})

local LabelExample = Tab3:CreateLabel({
Tab:AddButton({
	Name = "人物操逼",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "操逼",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()
	end 
})

Tab:AddButton({
	Name = "速度操逼",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/Zuw5T7DP",true))()
	end    
})

Tab:AddButton({
	Name = "甩飞操逼",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})

Tab:AddButton({
	Name = "操逼",
	Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
  	end    
})

Tab:AddButton({
	Name = "子弹操逼",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/1AJ69eRG"))()
  	end    
})

local fgdtzydhd = Tab4:CreateLabel({
	Name = "操逼破解版",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/eksan966/Sword_Guest/refs/heads/main/VIP"))()
  	end    
})