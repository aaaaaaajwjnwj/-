local aimbotEnabled = false
local wallCheckEnabled = false
local aimbotFov = 100
local lockOnRange = 100
local speed_amnt = 20
local fovCircle
local players = game:GetService("Players")
local camera = workspace.CurrentCamera
local UserInputService = game:GetService("UserInputService")
local activeTouch = nil
local mouse1press = mouse1press or function() end
local mouse1release = mouse1release or function() end

local function isMobile()
    return UserInputService.TouchEnabled and not UserInputService.MouseEnabled
end

local function createFovCircle()
    if fovCircle then
        fovCircle:Remove()
    end
    fovCircle = Drawing.new("Circle")
    fovCircle.Thickness = 2
    fovCircle.NumSides = 64
    fovCircle.Radius = aimbotFov
    fovCircle.Color = Color3.new(30,30,30)
    fovCircle.Transparency = 0.4
    fovCircle.Visible = aimbotEnabled
end

local function updateFovCircle()
    if fovCircle then
        fovCircle.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
        fovCircle.Radius = aimbotFov
        fovCircle.Visible = aimbotEnabled
    end
end

local function isPlayerVisible(target)
    local origin = camera.CFrame.Position
    local _, onScreen = camera:WorldToScreenPoint(target.Position)
    if not onScreen then
        return false
    end

    local ray = Ray.new(origin, (target.Position - origin).unit * lockOnRange)
    local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {camera, players.LocalPlayer.Character})
    if part and part:IsDescendantOf(target.Parent) then
        return true
    end

    return false
end

local function getClosestPlayer()
    local closestPlayer = nil
    local lowestHealth = math.huge
    local playersInCircle = {}

    for _, player in pairs(players:GetPlayers()) do
        if player ~= players.LocalPlayer and player.Character and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = player.Character.HumanoidRootPart
            local humanoid = player.Character.Humanoid

            if humanoid.Health > 0 then
                local screenPoint = camera:WorldToScreenPoint(hrp.Position)
                local distanceFromCenter = (Vector2.new(screenPoint.X, screenPoint.Y) - Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)).Magnitude

                if distanceFromCenter <= aimbotFov and (not wallCheckEnabled or isPlayerVisible(hrp)) then
                    table.insert(playersInCircle, player)
                end
            end
        end
    end

    for _, player in pairs(playersInCircle) do
        if player.Character.Humanoid.Health < lowestHealth then
            lowestHealth = player.Character.Humanoid.Health
            closestPlayer = player
        end
    end

    return closestPlayer
end
local s_rs = game:GetService("RunService")
local l_plr = game:GetService("Players").LocalPlayer

local l_humrp = l_plr.Character and l_plr.Character:FindFirstChild("HumanoidRootPart")
local l_hum = l_plr.Character and l_plr.Character:FindFirstChild("Humanoid")

local resp_con = l_plr.CharacterAdded:Connect(function(c) 
    l_humrp = c:WaitForChild("HumanoidRootPart",3)
    l_hum = c:WaitForChild("Humanoid",3)
end)

local function dnec(signal) 
    local s = {}
    for _, con in ipairs(getconnections(signal)) do 
        local func = con.Function
        if (func and islclosure(func)) then
            if (not is_synapse_function(func)) then 
                s[#s+1] = con
                con:Disable() 
            end
        end
    end
    return s
end
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/XT114514/rbx/main/bai.lua"))()
local window = library:new("帅脚本丨俄亥俄州",'')
local Tab3 = window:Tab("战斗类", "10882439086")
local Section = Tab3:section("基础功能")
local Section1 = Tab3:section("自瞄功能")
local Tab1 = window:Tab("自动类", "10882439086")
local Section2 = Tab1:section("银行")
local Section9 = Tab1:section("海盗活动")
local Section6 = Tab1:section("珠宝店")
local Section7 = Tab1:section("保险柜")
local Section12 = Tab1:section("储物柜")
local Section8 = Tab1:section("提款机")
local Section11 = Tab1:section("空投箱")
local Section10 = Tab1:section("运钞车")
local Section3 = Tab1:section("印钞机")
local Tab2 = window:Tab("其他功能", "10882439086")
local Section4 = Tab2:section("透视功能")
local Section5 = Tab2:section("传送功能")

Section11:Button("空投秒拿",function()
game.Workspace.Game.Airdrops.Airdrop.Airdrop.ProximityPrompt.HoldDuration = 0
end)

Section1:Toggle("自瞄开关",'Toggleflag',false,function(Value)
   aimbotEnabled = Value
    createFovCircle()
end)

Section1:Toggle("隔墙不瞄",'Toggleflag',false,function(Value)
   wallCheckEnabled = Value
end)

Section1:Slider("自瞄范围",'Sliderflag', 100, 5, 1000,false, function(num)
   aimbotFov = num
    updateFovCircle()
end)

Section1:Slider("锁定范围",'Sliderflag', 100, 5, 1000,false, function(num)
   lockOnRange = num
end)

Section:Slider("速度设置",'Sliderflag', 20, 5, 500,false, function(Value)
speed_amnt = Value
end)

Section:Toggle("速度开关",'Toggleflag',false,function(Value)
    if Value then
        a = dnec(l_humrp.Changed)
        b = dnec(l_humrp:GetPropertyChangedSignal("CFrame"))
            
        s_rs:BindToRenderStep("speed",2000,function(dt)
                l_humrp.CFrame += l_hum.MoveDirection*dt*0.8*speed_amnt
            end)
        else
            s_rs:UnbindFromRenderStep("speed")
            
            for i,v in ipairs(a) do 
                v:Enable()
            end
            for i,v in ipairs(b) do 
                v:Enable()
            end
        end
end)

Section:Button("补充弹药箱",function()
for i = 1 , 50 do
local ammobx = game.workspace.Game.Local.droppables["Ammo Box"]
ammobx.Handle.ProximityPrompt.HoldDuration = 0
ammobx.Name = "ammoopen"
end
end)

Section:Toggle("查看玩家聊天",'Toggleflag',false,function(Value)
     if Value then
        game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
     else
        game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
     end
end)

Section:Toggle("人物范围",'Toggleflag',false,function(Value)
    if Value then
        _G.HeadSize = 50
        _G.Disabled = true
        game:GetService('RunService').RenderStepped:connect(function()
                if _G.Disabled then
                for i,v in next, game:GetService('Players'):GetPlayers() do
                        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                            pcall(function()
                              v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                               v.Character.HumanoidRootPart.Transparency = 0.7
                              v.Character.HumanoidRootPart.CanCollide = false
                            end)
                    end
                end
            end
        end)
    else
        _G.HeadSize = 1
    end
end)

Section12:Toggle("快捷打开",'Toggleflag',false,function(Value)
    if Value then
        game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Holder.Locker.Visible = true
    else
        game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Holder.Locker.Visible = false
    end
end)

Section:Toggle("远程黑市",'Toggleflag',false,function(Value)
    if Value then
        game.Workspace.BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 10000
    else
        game.Workspace.BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 20
    end
end)

Section:Toggle("秒出售(先开)",'Toggleflag',false,function(Value)
    if Value then
        game:GetService("Workspace").BlackMarket.Dealer.Dealer.ProximityPrompt.HoldDuration = 0
    else
        game.Workspace.BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 20
    end
end)

Section:Button("秒开金保险",function()
        while true do
        wait(0.1)
        local safe = game.workspace.Game.Entities.GoldJewelSafe.GoldJewelSafe
        safe.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
        safe.Name = "safeopen"
    end
end)

Section:Button("秒开黑保险",function()
        while true do
        wait(0.1)
        local safe2 = game.workspace.Game.Entities.JewelSafe.JewelSafe
        safe2.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
        safe2.Name = "safeopen" 
    end
end)

Section:Button("珠宝秒拿",function()
			while true do
		    wait(0.1)
				local rocks = game.workspace.GemRobbery.JewelryCases.HighYieldSpawns
				for _, obj in pairs(rocks:GetChildren()) do
					if obj.ClassName == "Model" then
						for _, innerObj in pairs(obj:GetChildren()) do
							if innerObj.ClassName == "Model" then
								if innerObj.Name == "Case" then
								elseif innerObj.Name == "Emerald" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Sapphire" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Amethyst" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Topaz" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Diamond" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Gold Bar" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Ruby" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								else
									if innerObj:FindFirstChild("Box") and innerObj.Box:FindFirstChild("ProximityPrompt") then
										innerObj.Box.ProximityPrompt.HoldDuration = 0
									end
								end
							end
						end
					end
				end
				local rocks2 = game.workspace.GemRobbery.JewelryCases.LowYieldSpawns
				for _, obj in pairs(rocks2:GetChildren()) do
					if obj.ClassName == "Model" then
						for _, innerObj in pairs(obj:GetChildren()) do
							if innerObj.ClassName == "Model" then
								if innerObj.Name == "Case" then
								elseif innerObj.Name == "Emerald" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Sapphire" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Amethyst" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Topaz" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Diamond" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Gold Bar" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Ruby" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								else
									if innerObj:FindFirstChild("Box") and innerObj.Box:FindFirstChild("ProximityPrompt") then
										innerObj.Box.ProximityPrompt.HoldDuration = 0
									end
								end
							end
						end
					end
				end
			end
        end)

Section7:Toggle("自动开保险柜(黑)",'Toggleflag',false,function(Value)
    AutoSafe3 = Value
    if AutoSafe3 then
         AutoSafe4()
    end
end)

AutoSafe4 = function()
    while AutoSafe3 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
            wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        local JewelSafes = game:GetService("Workspace").Game.Entities.JewelSafe
        local foundModel = false
        for _, model in pairs(JewelSafes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                epoh3.CFrame = epoh1
                wait(1)
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance = 16
                if model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.Enabled == true then
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                    wait(5)
                    model:Destroy()
                end
            end
        end
        if not foundModel then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "小天提醒";
            Text = "黑保险未刷新";
            Icon = "rbxassetid://14369638300"
            })
            wait(30)
        end
    end
end

Section7:Toggle("自动开保险柜(金)",'Toggleflag',false,function(Value)
    AutoSafe1 = Value
    if AutoSafe1 then
         AutoSafe2()
    end
end)

AutoSafe2 = function()
    while AutoSafe1 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
            wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        local GoldJewelSafes = game:GetService("Workspace").Game.Entities.GoldJewelSafe
        local foundModel = false
        for _, model in pairs(GoldJewelSafes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                epoh3.CFrame = epoh1
                wait(1)
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance = 16
                if model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.Enabled == true then
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                    wait(5)
                    model:Destroy()
                    break
                end
            end
        end
        if not foundModel then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "小天提醒";
            Text = "金保险未刷新";
            Icon = "rbxassetid://14369638300"
            })
            wait(30)
        end
    end
end

Section7:Toggle("自动开小保险",'Toggleflag',false,function(Value)
    SmallSafe1 = Value
    if SmallSafe1 then
            SmallSafe2()
    end
end)
SmallSafe2 = function()
    while SmallSafe1 do
	wait(0.1)
    local SmallSaf = game:GetService("Workspace").Game.Entities.SmallSafe
        local foundModel = false
        for _, model in pairs(SmallSaf:GetChildren()) do
            if model.ClassName == "Model" then
                foundModel = true 
                local epoh1 = model.WorldPivot
                local epoh2 = game:GetService("Players")
                local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
				SmallSaf.SmallSafe.Door["Meshes/Safe1_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                epoh3.CFrame = epoh1
                break
            end
        end
        if not foundModel then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "小帅提醒";
            Text = "小保险未刷新";
            Icon = "rbxassetid://14369638300"
            })
			wait(30)
        end
    end
end
	
Section8:Toggle("自动刷ATM",'Toggleflag',false,function(Value)
   AutoPunchAtm = Value
	if AutoPunchAtm then
		pcall(function()
			AutoPunchAtmFunc()
		end)
	end
end)
AutoPunchAtmFunc = function()
    while AutoPunchAtm and task.wait() do
        for _,atm in pairs(game:GetService("Workspace").Game.Props.ATM:GetDescendants()) do
            if atm:IsA("MeshPart") and atm.Name == "Main" and (atm.Parent:FindFirstChild("Screen").BrickColor == BrickColor.new("Sand blue") or atm.Parent:FindFirstChild("Screen").BrickColor ~= BrickColor.new("Really red"))  then
                repeat
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = atm.CFrame
                    task.wait()
                until atm.Parent:FindFirstChild("Screen").BrickColor == BrickColor.new("Really red")
                task.wait()
            end
        end
    end
end

Section6:Toggle("自动抢珠宝店",'Toggleflag',false,function(Value)
    AutoRobjstore = Value
		task.spawn(function()
			while AutoRobjstore do
				task.wait()
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1723, 15, -719)
				task.wait(1)
				repeat
					task.wait()
				until game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild('PurchaseDialog') == nil
				task.wait()
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1710, 15, -726)
				task.wait()
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1742, 7, -748)
				task.wait(3.5)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1638, 9, -720)
				task.wait()
				local gemthing = game:GetService("Workspace").GemRobbery.JewelryCases
				if #gemthing.HighYieldSpawns:GetChildren() ~= 0 or #gemthing.LowYieldSpawns:GetChildren() then
					for i, v in pairs(gemthing.HighYieldSpawns:GetDescendants()) do
						if v.Name == "ProximityPrompt" and v.Parent.Parent.Parent.Glass.Transparency ~= 0 then
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.CFrame
							fireproximityprompt(v)
						else
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.Parent.Parent.Glass.CFrame
							task.wait(0.6)
							fireproximityprompt(v)
						end
					end
					for i, v in pairs(gemthing.LowYieldSpawns:GetDescendants()) do
						if v.Name == "ProximityPrompt" and v.Parent.Parent.Parent.Glass.Transparency ~= 0 then
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.CFrame
							fireproximityprompt(v)
						else
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.Parent.Parent.Glass.CFrame
							task.wait(0.6)
							fireproximityprompt(v)
						end
					end
				end
			end
		end)
	end)

Section3:Button("自动寻找印钞机(重进以关闭)",function()
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui or game.Players.LocalPlayer.PlayerGui
local TextLabel = Instance.new("TextLabel")
TextLabel.Text = "已失效请找小帅"
TextLabel.Parent = ScreenGui
TextLabel.Position = UDim2.new(0.5,0,0.5,0)
TextLabel.AnchorPoint = Vector2.new(0.5,0.5)
TextLabel.TextColor3 = Color3.new(1,1,1)
TextLabel.TextStrokeTransparency = 0.25
TextLabel.Size = UDim2.new(0, 200, 0, 19)
TextLabel.TextSize = 35.000
TextLabel.BackgroundTransparency = 1
_G.gui = ScreenGui
wait(3)
_G.gui:Destroy()
end)

Section2:Toggle("自动抢银行",'Toggleflag',false,function(Value)
AutoRobBank = Value
task.spawn(function()
  while AutoRobBank do
    wait(0.1)
    local bankthing = game:GetService("Workspace").BankRobbery.BankCash
    if #bankthing.Cash:GetChildren() ~= 0 then
    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1055.94153, 15.11950874, -344.58374)
      game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1074, 8, -344)
      if game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.Enabled == true then
        game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
        game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
        local function onKeyPress(inputObject, gameProcessedEvent)
          if inputObject.KeyCode == Enum.KeyCode.E then
            game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
          end
        end
        game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
        fireproximityprompt(game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt)
        wait(0.1)
      end
      repeat
        task.wait()
      until game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.Enabled == false
      game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = bankthing.Main.CFrame
      task.wait()
      fireproximityprompt(game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt)
       end
     end
  end)
end)

Section2:Button("自动抢银行(重进以关闭)",function()
local teleport = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
if teleport then
  teleport([[
if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat task.wait() until game.Players.LocalPlayer
wait(0.25)
loadstring(game:HttpGet("https://pst.innomi.net/paste/ezm4hgczsdudrrqs9froo38f/raw"))()
            ]])
end
wait(0.5)
while true do
  wait(0.1)
  local bankthing = game:GetService("Workspace").BankRobbery.BankCash
  if #bankthing.Cash:GetChildren() ~= 0 then
  game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1055.94153, 15.11950874, -344.58374)
  wait(0.1)
    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1074, 8, -344)
    if game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.Enabled == true then
      game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
      game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
      local function onKeyPress(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.E then
          game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
          game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
        end
      end
      game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
      fireproximityprompt(game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt)
      task.wait(0.1)
    end
    repeat
      task.wait()
    until game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.Enabled == false
    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = bankthing.Main.CFrame
    task.wait()
    fireproximityprompt(game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt)
   else
    wait(2)
    local serverList = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
      if v.playing and type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
        serverList[#serverList + 1] = v.id
      end
    end
    if #serverList > 0 then
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)])
    end
  end
end
end)

Section4:Toggle("透视钱开关",'Toggleflag',false,function(Value)
    getgenv().AutoEspCash = Value
		local highlightedcash = {}
		task.spawn(function()
			while wait() do
				if not getgenv().AutoEspCash then
					for _, objects in pairs(highlightedcash) do
						if objects.highlight then
							objects.highlight:Destroy()
						end
						if objects.ui then
							objects.ui:Destroy()
						end
					end
					highlightedcash = {}
					break
				end
				for _, v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetDescendants()) do
					if v:IsA("Part") and v:FindFirstChildWhichIsA("TouchTransmitter") then
						local distance = (v.Position - game:GetService("Players").LocalPlayer.Character.PrimaryPart.Position).magnitude
						if distance > 900 then
							if highlightedcash[v] then
								if highlightedcash[v].highlight then
									highlightedcash[v].highlight:Destroy()
								end
								if highlightedcash[v].ui then
									highlightedcash[v].ui:Destroy()
								end
								highlightedcash[v] = nil
							end
						else
							if not highlightedcash[v] then
								local Highlight = Instance.new("Highlight", v)
								Highlight.FillColor = Color3.fromRGB(0, 0, 0)
								Highlight.OutlineColor = Color3.fromRGB(0, 0, 0)
								local UI = Instance.new("BillboardGui", v)
								UI.Size = UDim2.new(0, 1000, 0, 30)
								UI.AlwaysOnTop = true
								UI.StudsOffset = Vector3.new(0, 3, 0)
								local Label = Instance.new("TextLabel", UI)
								Label.Size = UDim2.new(1, 0, 1, 0)
								Label.BackgroundTransparency = 1
								Label.TextScaled = true
								Label.Text = "钱"
								Label.TextColor3 = Color3.fromRGB()
								Label.Font = Enum.Font.Oswald
								Label.TextStrokeTransparency = 0
								Label.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
								highlightedcash[v] = {
									highlight = Highlight,
									ui = UI
								}
							end
						end
					end
				end
			end
		end)
end)

Section5:Dropdown("传送列表",'Dropdown',{'银行','珠宝店','沙滩','武器店（撬锁）','武士刀','射线枪','加特林','锯掉','沙漠之鹰','警察局（M4A1）','AUG','军事基地 (军甲)'},function(Value)
    local epoh2 = game:GetService('Players')
    local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
    if Value == '银行' then
        local epoh1 = CFrame.new(1055.94153, 15.11950874, -344.58374)
        epoh3.CFrame = epoh1
    elseif Value == '珠宝店' then
        local epoh1 = CFrame.new(1719.02637, 14.2831011, -714.293091)
        epoh3.CFrame = epoh1
    elseif Value == '沙滩' then
        local epoh1 = CFrame.new(998.4656372070312, 15, 395.9789733886719)
        epoh3.CFrame = epoh1
    elseif Value == '武器店（撬锁）' then
        local epoh1 = CFrame.new(660.5284423828125, 6.4081127643585205, -716.489990234375)
        epoh3.CFrame = epoh1
    elseif Value == '武士刀' then
        local epoh1 = CFrame.new(175.191, 13.937, -132.69)
        epoh3.CFrame = epoh1
    elseif Value == '射线枪' then
        local epoh1 = CFrame.new(148.685471, -90, -529.280945)
        epoh3.CFrame = epoh1
    elseif Value == '加特林' then
        local epoh1 = CFrame.new(364.97076416015625, 0.764974117279053, -1447.3302001953125)
        epoh3.CFrame = epoh1
    elseif Value == '锯掉' then
        local epoh1 = CFrame.new(1179.98523,40,-436.812683)
        epoh3.CFrame = epoh1
    elseif Value == '沙漠之鹰' then
        local epoh1 = CFrame.new(363.341461, 26.0798492, -259.681396)
        epoh3.CFrame = epoh1
    elseif Value == '警察局（M4A1）' then
        local epoh1 = CFrame.new(603.4676513671875,25.662811279296875,-922.0442504882812)
        epoh3.CFrame = epoh1
    elseif Value == 'AUG' then
        local epoh1 = CFrame.new(1170.500244140625,48.37138366699219,-772.55859375)
        epoh3.CFrame = epoh1
    elseif Value == '军事基地 (军甲)' then
        local epoh1 = CFrame.new(563.4422607421875,28.502071380615234,-1472.780517578125)
        epoh3.CFrame = epoh1
    end
end)

Section9:Toggle("秒挖宝藏点",'Toggleflag',false,function(Value)
getgenv().instantredx = Value
		task.spawn(function()
			while true do
				task.wait()
				if not getgenv().instantredx then
					break
				end
				game:GetService("Workspace").Game.Local.Debris.TreasureMarker.ProximityPrompt.HoldDuration = 0
			end
		end)
	end)

Section9:Toggle("自动挖宝藏",'Toggleflag',false,function(Value)
getgenv().autotpx = Value
		task.spawn(function()
			while task.wait() do
				if not getgenv().autotpx then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, 5, 0)
					break
				end
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Game.Local.Debris:FindFirstChild("TreasureMarker").CFrame
				task.wait(0.3)
				repeat
					task.wait()
					fireproximityprompt(game:GetService("Workspace").Game.Local.Debris:FindFirstChild("TreasureMarker"):FindFirstChild("ProximityPrompt"))
				until game:GetService("Workspace").Game.Local.Debris:FindFirstChild("TreasureMarker") == nil
				task.wait()
			end
		end)
	end)

Section9:Toggle("自动传送标记",'Toggleflag',false,function(Value)
getgenv().autotpx = Value
		task.spawn(function()
			while task.wait() do
				if not getgenv().autotpx then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, 5, 0)
					break
				end
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Game.Local.Debris:FindFirstChild("TreasureMarker").CFrame
			end
		end)
	end)

Section9:Toggle("自动传送宝箱",'Toggleflag',false,function(Value)
getgenv().tptochests = Value
		task.spawn(function()
			while true do
				task.wait(3)
				if not getgenv().tptochests then
					break
				end
				local smallchestavail
				local largechestavail
				if #game:GetService("Workspace").Game.Entities.SmallChest:GetChildren() ~= 0 then
					smallchestavail = true
				end
				if #game:GetService("Workspace").Game.Entities.LargeChest:GetChildren() ~= 0 then
					largechestavail = true
				end
				if smallchestavail then
					for i, v in pairs(game:GetService("Workspace").Game.Entities.SmallChest:GetChildren()) do
						for _, yk in pairs(v:GetChildren()) do
							if yk.Name == "Hitbox" then
								game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = yk.CFrame
								task.wait()
							end
						end
					end
				end
				if largechestavail then
					for i, v in pairs(game:GetService("Workspace").Game.Entities.LargeChest:GetChildren()) do
						for _, yk in pairs(v:GetChildren()) do
							if yk.Name == "Hitbox" then
								game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = yk.CFrame
								task.wait()
							end
						end
					end
				end
			end
		end)
	end)

Section9:Toggle("自动传送海盗船",'Toggleflag',false,function(Value)
    getgenv().autotpship = Value
	    task.spawn(function()
			while task.wait() do
				if not getgenv().autotpship then
                    break
                end
				for i,v in pairs(game:GetService("Workspace").Game.Other:GetChildren()) do
                    if v.Name == "PirateShip" then
                        for _, part in pairs(v:GetDescendants()) do
                            if part.Name == "Meshes/PirateShip12_Cylinder.002_Material.013" and (part:IsA("Part") or part:IsA("MeshPart") or part:IsA("BasePart")) then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = part.CFrame
                                task.wait()
                            end
                        end
                    end
                end
			end
	    end)
end)

Section10:Toggle("自动传送运钞车",'Toggleflag',false,function(Value)
    getgenv().tptoarmoredtruck = Value
	    task.spawn(function()
			while true do
				task.wait()
				if not getgenv().tptoarmoredtruck then
					break
				end
				for i, v in pairs(game:GetService("Workspace").Game.Vehicles:GetChildren()) do
					if v.Name == "Armored Truck" and v:FindFirstChild("Body") then
						for _, parts in (v:GetChildren()) do
							if parts.Name == "Seats" and parts:FindFirstChild("DriversSeat") then
								game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = parts.CFrame
								task.wait()
							end
						end
					end
				end
			end
       end)
end)

game:GetService("RunService").RenderStepped:Connect(function()
    updateFovCircle()

    if aimbotEnabled then
        local closestPlayer = getClosestPlayer()
        if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
            camera.CFrame = CFrame.new(camera.CFrame.Position, closestPlayer.Character.HumanoidRootPart.Position)
        end
    end
end)

while true do
  for i,l in pairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren()) do
    for i,v in pairs(l:GetChildren()) do
      if v.ClassName == "MeshPart" or "Part" then
        for i,e in pairs(v:GetChildren()) do
          if e.ClassName == "ProximityPrompt" then
            if e.ObjectText == "Military Armory Keycard" or e.ObjectText == "Sawn Off" or e.ObjectText == "Scar L" or e.ObjectText == "Military Vest" or e.ObjectText == "Raygun" or e.ObjectText == "UPS 45" or e.ObjectText == "Medium Vest" or e.ObjectText == "Deagle" or e.ObjectText == "Glock 18" or e.ObjectText == "Heavy Vest" or e.ObjectText == "Diamond Ring" or e.ObjectText == "AS Val" or e.ObjectText == "Money Printer" or e.ObjectText == "Aug" or e.ObjectText == "M4A1" or e.ObjectText == "C4" or e.ObjectText == "Stagecoach" or e.ObjectText == "Diamond" or e.ObjectText == "Void Gem" or e.ObjectText == "Dark Matter Gem" or e.ObjectText == "Gold AK-47" or e.ObjectText == "Barrett M107" or e.ObjectText == "Gold Deagle" or e.ObjectText == "Double Barrel" or e.ObjectText == "Dragunov" or e.ObjectText == "RPK" or e.ObjectText == "M249 SAW" or e.ObjectText == "Flamethrower" or e.ObjectText == "Police Armory Keycard" or e.ObjectText == "RPG" or e.ObjectText == "Saiga 12" or e.ObjectText == "Ammo Box" then
              xd = Instance.new("BillboardGui")
              xd.Parent = v
              xd.AlwaysOnTop = true
              xd.Size = UDim2.new(0, 100, 0, 25)
              Frame = Instance.new("Frame")
              Frame.Parent = xd
              Frame.BackgroundColor3 = Color3.new(1, 1, 1)
              Frame.Size = UDim2.new(1, 0, 1, 0)
              Frame.BackgroundTransparency = 1
              text = Instance.new("TextLabel")
              text.TextScaled = true
              text.BackgroundColor3 = Color3.new(255, 0, 0)
              text.Parent = Frame
              text.Text = e.ObjectText
              text.Size = UDim2.new(1, 0, 1, 0)
              text.BackgroundTransparency = 1
              text.TextColor3 = Color3.new(1, 1, 1)
             else

            end
          end

        end

      end


    end
  end
  wait()
  for i,v in pairs (game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren()) do
    for i,k in pairs(v:GetChildren()) do
      for i,l in pairs(k:GetChildren()) do
        if l.ClassName == "BillboardGui" then
          l:Remove()
        end
      end
    end
  end

end