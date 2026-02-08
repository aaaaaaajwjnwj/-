---   XS HUB
setfpscap(200)

local Stats = game:GetService('Stats')

local Players = game:GetService('Players')

local RunService = game:GetService('RunService')

local ReplicatedStorage = game:GetService('ReplicatedStorage')

local TweenService = game:GetService('TweenService')

local Nurysium_Util = loadstring(game:HttpGet('https://raw.githubusercontent.com/flezzpe/Nurysium/main/nurysium_helper.lua'))()

local local_player = Players.LocalPlayer

local camera = workspace.CurrentCamera

local nurysium_Data = nil


local closest_Entity = nil

local parry_remote = nil

getgenv().aura_Enabled = false

getgenv().trail_Enabled = false

getgenv().self_effect_Enabled = false

getgenv().kill_effect_Enabled = false

getgenv().shaders_effect_Enabled = false

getgenv().ai_Enabled = false

getgenv().spectate_Enabled = false

local Services = {

	game:GetService('AdService'),

	game:GetService('SocialService')

}

function SwordCrateAuto()

while _G.AutoSword do

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalSwordCrate)

wait(1)

end

end

function ExplosionCrateAuto()

while _G.AutoBoom do

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalExplosionCrate)

wait(1)

end

end

local function get_closest_entity(ObjectPart)

    task.spawn(function()

        local closest

        local max_distance = math.huge

        for index, entity in workspace.Alive:GetChildren() do

            if entity.Name ~= Players.LocalPlayer.Name then

                local distance = (Object.Position - entity.HumanoidRootPart.Position).Magnitude

                if distance < max_distance then

                    closest_Entity = entity

                    max_distance = distance

                end

            end

        end

        return closest_Entity

    end)

end

function resolve_parry_Remote()

    for _, value in Services do

        local temp_remote = value:FindFirstChildOfClass('RemoteEvent')

        if not temp_remote then

            continue

        end

        if not temp_remote.Name:find('\n') then

            continue

        end

        parry_remote = temp_remote

    end

end

local aura_table = {

    canParry = true,

    is_Spamming = false,

    parry_Range = 0,

    spam_Range = 0,  

    hit_Count = 0,

    hit_Time = tick(),

    ball_Warping = tick(),

    is_ball_Warping = false

}

ReplicatedStorage.Remotes.ParrySuccess.OnClientEvent:Connect(function()

    if getgenv().hit_sound_Enabled then

        hit_Sound:Play()

    end

    if getgenv().hit_effect_Enabled then

        local hit_effect = game:GetObjects("rbxassetid://17407244385")[1]

        hit_effect.Parent = Nurysium_Util.getBall()

        hit_effect:Emit(3)

        

        task.delay(5, function()

            hit_effect:Destroy()

        end)

    end

end)
local OpenUI = Instance.new("ScreenGui") 
local ImageButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner") 
OpenUI.Name = "OpenUI" 
OpenUI.Parent = game:GetService("CoreGui") 
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
ImageButton.Parent = OpenUI 
ImageButton.BackgroundColor3 = Color3.fromRGB(105, 105, 105) 
ImageButton.BackgroundTransparency = 0.8
ImageButton.Position = UDim2.new(0.9, 0, 0.1, 0) 
ImageButton.Size = UDim2.new(0, 50, 0, 50) 
ImageButton.Image = "rbxassetid://14369638300" 
ImageButton.Draggable = true 
ImageButton.Transparency = 1
UICorner.CornerRadius = UDim.new(0, 200) 
UICorner.Parent = ImageButton 
ImageButton.MouseButton1Click:Connect(function()
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(true, "RightControl", false, game)
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(false, "RightControl", false, game)
end)

local identifiedexec = ""
if identifyexecutor then
	identifiedexec = select(1, identifyexecutor())
end
local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/XT114514/rbx/main/vape.lua"))()
local win = UILib:Window("XS脚本丨刀刃球 " .. identifiedexec, Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)

local Tab = win:Tab("功能")

Tab:Toggle("自动格挡", false, function(Value)
   resolve_parry_Remote()
   getgenv().aura_Enabled = Value
end)

Tab:Toggle("显示范围", false, function(Value)
  if Value then 
            local globals = {}
            local TweenService = game:GetService("TweenService")

            local function get_plr()
                return game.Players.LocalPlayer
            end

            local initialSize = Vector3.new(10, 10, 10)
            local targetSize = Vector3.new(45, 45, 45)  
            local resizeTime = 0.1

            local function ViewParryArea()
                local previousVisual = workspace:FindFirstChild("Parry Range")
                if previousVisual then
                    previousVisual:Destroy()
                end

                local Visual = Instance.new("Part", workspace)
                Visual.Name = "Parry Range"
                Visual.Material = Enum.Material.ForceField
                Visual.CastShadow = false
                Visual.CanCollide = false
                Visual.Anchored = true
                Visual.BrickColor = BrickColor.new("Bright red")
                Visual.Shape = Enum.PartType.Ball
                Visual.Size = initialSize

                local Players = game:GetService("Players")
                local Player = Players.LocalPlayer

                globals.ViewParryArea = true

                while globals.ViewParryArea do
                    task.wait()
                    
                    local plrChar = Player.Character or Player.CharacterAdded:Wait()
                    local plrPP = plrChar:FindFirstChild("HumanoidRootPart") or plrChar.PrimaryPart

                    if plrPP then
                        Visual.CFrame = CFrame.new(plrPP.Position)
                        local targetSize = plrChar:FindFirstChild("Highlight") and targetSize or initialSize

                        local tweenInfo = TweenInfo.new(resizeTime, Enum.EasingStyle.Linear)
                        local tween = TweenService:Create(Visual, tweenInfo, {Size = targetSize})
                        tween:Play()
                        
                        Visual.Position = plrPP.Position
                    else
                        Visual.Position = Vector3.new(1000, 1000, 1000)
                    end
                end
            end

            ViewParryArea()

        else
            local previousVisual = workspace:FindFirstChild("Parry Range")
            if previousVisual then
                previousVisual:Destroy()
            end
        end
end)

Tab:Toggle("追踪球体", false, function(Value)
  getgenv().spectate_Enabled = Value
end)

Tab:Toggle("自动买武器箱", false, function(Value)
  _G.AutoSword = Value
      SwordCrateAuto()
end)

Tab:Toggle("自动买爆炸箱", false, function(Value)
  _G.AutoBoom = Value
      ExplosionCrateAuto()
end)

task.defer(function()

    game:GetService("RunService").Heartbeat:Connect(function()

        if not local_player.Character then

            return

        end

        if getgenv().trail_Enabled then

            local trail = game:GetObjects("rbxassetid://17483658369")[1]

            trail.Name = 'nurysium_fx'

            if local_player.Character.PrimaryPart:FindFirstChild('nurysium_fx') then

                return

            end

            local Attachment0 = Instance.new("Attachment", local_player.Character.PrimaryPart)

            local Attachment1 = Instance.new("Attachment", local_player.Character.PrimaryPart)

            Attachment0.Position = Vector3.new(0, -2.411, 0)

            Attachment1.Position = Vector3.new(0, 2.504, 0)

            trail.Parent = local_player.Character.PrimaryPart

            trail.Attachment0 = Attachment0

            trail.Attachment1 = Attachment1

        else

            

            if local_player.Character.PrimaryPart:FindFirstChild('nurysium_fx') then

                local_player.Character.PrimaryPart['nurysium_fx']:Destroy()

            end

        end

    end)

end)

task.defer(function()

    RunService.RenderStepped:Connect(function()

        if getgenv().spectate_Enabled then

            local self = Nurysium_Util.getBall()

            if not self then

                return

            end

            workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(workspace.CurrentCamera.CFrame.Position, self.Position), 1.5)

        end

    end)

end)

task.defer(function()

    while task.wait(1) do

        if getgenv().night_mode_Enabled then

            game:GetService("TweenService"):Create(game:GetService("Lighting"), TweenInfo.new(3), {ClockTime = 3.9}):Play()

        else

            game:GetService("TweenService"):Create(game:GetService("Lighting"), TweenInfo.new(3), {ClockTime = 13.5}):Play()

        end

    end

end)

task.spawn(function()
    RunService.PreRender:Connect(function()
        if not getgenv().aura_Enabled then return end

        if closest_Entity then
            if workspace.Alive:FindFirstChild(closest_Entity.Name) and workspace.Alive:FindFirstChild(closest_Entity.Name).Humanoid.Health > 0 then
                if aura_table.is_Spamming then
                    if local_player:DistanceFromCharacter(closest_Entity.HumanoidRootPart.Position) <= aura_table.spam_Range then   
                        parry_remote:FireServer(
                            0.5,
				CFrame.new(camera.CFrame.Position, camera.CFrame.Position + camera.CFrame.LookVector * 100), -- Use player's look direction
				{[closest_Entity.Name] = closest_Entity.HumanoidRootPart.Position},
				{closest_Entity.HumanoidRootPart.Position.X, closest_Entity.HumanoidRootPart.Position.Y},
				false
			)
                    end
                end
            end
        end
    end)

    RunService.PreRender:Connect(function()
        if not getgenv().aura_Enabled then return end

        local ping = Stats.Network.ServerStatsItem['Data Ping']:GetValue() / 10
        local self = Nurysium_Util.getBall()

        if not self then return end

        self:GetAttributeChangedSignal('target'):Once(function()
            aura_table.canParry = true
        end)

        if self:GetAttribute('target') ~= local_player.Name or not aura_table.canParry then return end

        get_closest_entity(local_player.Character.PrimaryPart)

        local player_Position = local_player.Character.PrimaryPart.Position

        local ball_Position = self.Position
        local ball_Velocity = self.AssemblyLinearVelocity

        if self:FindFirstChild('zoomies') then
            ball_Velocity = self.zoomies.VectorVelocity
        end

        local ball_Direction = (local_player.Character.PrimaryPart.Position - ball_Position).Unit
        local ball_Distance = local_player:DistanceFromCharacter(ball_Position)
        local ball_Dot = ball_Direction:Dot(ball_Velocity.Unit)
        local ball_Speed = ball_Velocity.Magnitude
        local ball_speed_Limited = math.min(ball_Speed / 1000, 0.1)

        local ball_predicted_Distance = (ball_Distance - ping / 15.5) - (ball_Speed / 3.5)

        local target_Position = closest_Entity.HumanoidRootPart.Position
        local target_Distance = local_player:DistanceFromCharacter(target_Position)
        local target_distance_Limited = math.min(target_Distance / 10000, 0.1)
        local target_Direction = (local_player.Character.PrimaryPart.Position - closest_Entity.HumanoidRootPart.Position).Unit
        local target_Velocity = closest_Entity.HumanoidRootPart.AssemblyLinearVelocity
        local target_isMoving = target_Velocity.Magnitude > 0
        local target_Dot = target_isMoving and math.max(target_Direction:Dot(target_Velocity.Unit), 0)

        aura_table.spam_Range = math.max(ping / 10, 15) + ball_Speed / 10
        aura_table.parry_Range = math.max(math.max(ping, 3.5) + ball_Speed / 3.5, 9.5)
        aura_table.is_Spamming = aura_table.hit_Count > 1 or ball_Distance < 13.5

        if ball_Dot < -0.15 then
            aura_table.ball_Warping = tick()
        end

        task.spawn(function()
            if (tick() - aura_table.ball_Warping) >= 0.15 + target_distance_Limited - ball_speed_Limited or ball_Distance <= 12 then
                aura_table.is_ball_Warping = false
                return
            end

            aura_table.is_ball_Warping = true
        end)

        if ball_Distance <= aura_table.parry_Range and not aura_table.is_Spamming and not aura_table.is_ball_Warping then
            parry_remote:FireServer(
                0.5,
				CFrame.new(camera.CFrame.Position, camera.CFrame.Position + camera.CFrame.LookVector * 100), -- Use player's look direction
				{[closest_Entity.Name] = closest_Entity.HumanoidRootPart.Position},
				{closest_Entity.HumanoidRootPart.Position.X, closest_Entity.HumanoidRootPart.Position.Y},
				false
			)

            aura_table.canParry = false
            aura_table.hit_Time = tick()
            aura_table.hit_Count += 1

            task.delay(0.15, function()
                aura_table.hit_Count -= 1
            end)
        end

        task.spawn(function()
            repeat
                RunService.PreRender:Wait()
            until (tick() - aura_table.hit_Time) >= 1
            aura_table.canParry = true
        end)
    end)
end)