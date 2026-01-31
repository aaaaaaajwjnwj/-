local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/KingScriptAE/No-sirve-nada./refs/heads/main/main.lua"))()

function gradient(text, startColor, endColor)
    local result = ""
    local chars = {}
    
    for uchar in text:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
        table.insert(chars, uchar)
    end
    
    local length = #chars
    
    for i = 1, length do
        local t = (i - 1) / math.max(length - 1, 1)
        local r = startColor.R + (endColor.R - startColor.R) * t
        local g = startColor.G + (endColor.G - startColor.G) * t
        local b = startColor.B + (endColor.B - startColor.B) * t
        
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', 
            math.floor(r * 255), 
            math.floor(g * 255), 
            math.floor(b * 255), 
            chars[i])
    end
    
    return result
end


local Window = WindUI:CreateWindow({
    Title = gradient("XS HUB", Color3.fromHex("#000080"), Color3.fromHex("#00FFFF")), 
    Author = gradient("@小帅", Color3.fromHex("#00FFAA"), Color3.fromHex("#00AAFF")),
    Icon = "rbxassetid://129260712070622",
    IconThemed = true,
    Folder = "XS Hub",
    Size = UDim2.fromOffset(300, 270),
    Transparent = true,
    Theme = "XS",
    SideBarWidth = 200,
     HideSearchBar = false,
    ScrollBarEnabled = true,
--    Background = "rbxassetid://99599917888886",
})

Window:EditOpenButton({
    Title = "打开脚本",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 8.),
    StrokeThickness = 3,
    Color = ColorSequence.new(
        Color3.fromHex("000000"),
        Color3.fromHex("FF0000")
    ),
    Draggable = true,
})
-- Window:SetBackgroundImage("rbxassetid://99599917888886")
-- Window:SetBackgroundImageTransparency(0.9)
local Tabs = {
    A = Window:Tab({ Title = gradient("Info", Color3.fromHex("#FFFFFF"), Color3.fromHex("#FF9900")), Icon = "info" }),
    B = Window:Tab({ Title = gradient("控件", Color3.fromHex("#FFFFFF"), Color3.fromHex("#FF0000")), Icon = "terminal" }),
    C = Window:Tab({ Title = gradient("Slider", Color3.fromHex("#FFFFFF"), Color3.fromHex("#00FF00")), Icon = "file-cog" }),
    D = Window:Tab({ Title = gradient("列表", Color3.fromHex("#FFFFFF"), Color3.fromHex("#0000FF")), Icon = "user" }),
    E = Window:Tab({ Title = gradient("Colorpicker", Color3.fromHex("#FFFFFF"), Color3.fromHex("#FF00FF")), Icon = "eye" }),
}


Tabs.InfoTab:Section({Title = "Info信息"})

Tabs.InfoTab:Paragraph({
    Title = "联系:",
    Desc = "55728",
    Image = "https://play-lh.googleusercontent.com/7cIIPlWm4m7AGqVpEsIfyL-HW4cQla4ucXnfalMft1TMIYQIlf2vqgmthlZgbNAQoaQ",
    ImageSize = 42,

    ThumbnailSize = 120
})
Tabs.InfoTab:Paragraph({
    Title = "更新信息",
    Desc = "由XS更新",
    Image = "https://play-lh.googleusercontent.com/7cIIPlWm4m7AGqVpEsIfyL-HW4cQla4ucXnfalMft1TMIYQIlf2vqgmthlZgbNAQoaQ",
    ImageSize = 42,

    ThumbnailSize = 120
})
Tabs.A:Button({  --按钮
    Title = "飞行",
    Value = false,
    Callback = function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
    end
})
Tabs.A:Slider({
    Title = "滑块",--滑块
    Value = { Min = 1, Max = 15, Default = 1 },--Min = 最小值 Max = 最大值 Default = 默认值
    Callback = function(value)
       --修改数值名  = value
    end
})
Tabs.A:Toggle({
    Title = "开关",
    Value = false,
    Callback = function(state)
            end
            startTPWalk()
        else
            stopTPWalk()
        end
    end
})
Tabs.A:Button({  --按钮
    Title = "",
    Value = false,
    Callback = function()
    loadstring(game:HttpGet(""))()
    end
})
Tabs.A:Button({  --按钮
    Title = "爬墙",
    Value = false,
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end
})
Tabs.A:Button({  --按钮
    Title = "自瞄",
    Value = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
    end
})
Tabs.A:Button({  --按钮
    Title = "铁拳",
    Value = false,
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
    end
})
Tabs.A:Button({  --按钮
    Title = "甩飞",
    Value = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hknvh/main/%E7%94%A9%E9%A3%9E.txt"))()
    end
})
Tabs.A:Button({  --按钮
    Title = "踏空",
    Value = false,
    Callback = function()
    loadstring(game:HttpGet("//raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'"))()
    end
})
Tabs.A:Button({  --按钮
    Title = "透视",
    Value = false,
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/MA8jhPWT"))()
    end
})
Tabs.A:Button({  --按钮
    Title = "无限跳",
    Value = false,
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0"))()
    end
})
