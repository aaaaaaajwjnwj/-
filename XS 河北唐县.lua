---   XS HUB
local OpenUI = Instance.new("ScreenGui") 
local ImageButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner") 
OpenUI.Name = "OpenUI" 
OpenUI.Parent = game.CoreGui 
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
function teleportTo(CFrame) 
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
end
local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyanai/rbx/main/lsui"))()
local win = UILib:Window("XS脚本丨河北唐县", Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)

local Tab = win:Tab("自动功能")

Tab:Toggle("送货员刷钱", false, function(Value)
    _G.autoFarm = Value
    task.spawn(function()
        while task.wait(2) do
            if not _G.autoFarm then
                break
            end
            while _G.autoFarm do
                fireclickdetector(game:GetService("Workspace").DeliverySys.Misc["Package Pile"].ClickDetector)
                task.wait(2.2)
                for _,point in pairs(game:GetService("Workspace").DeliverySys.DeliveryPoints:GetChildren()) do
                    if point.Locate.Locate.Enabled then
                        teleportTo(point.CFrame)
                    end
                end
                task.wait(3)
            end
        end
    end)
end)

Tab:Toggle("卡车刷钱", false, function(state)
getfenv().auto = (state and true or false)
while getfenv().auto do
  wait()
  pcall(function()
local plr = game.Players.LocalPlayer
local chr = plr.Character
if game:GetService("Players").LocalPlayer.PlayerGui.PackagesUI:FindFirstChildOfClass("BillboardGui") then
local plr = game.Players.LocalPlayer
local chr = plr.Character
local seat = chr.Humanoid.SeatPart
local car = seat.Parent
car.PrimaryPart = car.Body["#Weight"]
car:PivotTo(game:GetService("Players").LocalPlayer.PlayerGui.PackagesUI:FindFirstChildOfClass("BillboardGui").Adornee.CFrame*CFrame.new(0,10,-20))
wait(2)
local text = game:GetService("Players").LocalPlayer.PlayerGui.TruckingJobUI.interaction.title.Text
if game:GetService("Players").LocalPlayer.PlayerGui.TruckingJobUI.interaction.Visible == true and string.find(text,"Load") and not string.find(text,"Unload") then
  game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Shared"):WaitForChild("Network"):WaitForChild("RemoteFunctions"):WaitForChild("ClientCoalRequester"):InvokeServer("LoadCoal")
elseif game:GetService("Players").LocalPlayer.PlayerGui.TruckingJobUI.interaction.Visible == true and string.find(text,"Unload")  then
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Shared"):WaitForChild("Network"):WaitForChild("RemoteFunctions"):WaitForChild("ClientCoalRequester"):InvokeServer("UnloadCoal")
end
elseif not game:GetService("Players").LocalPlayer.PlayerGui.PackagesUI:FindFirstChildOfClass("BillboardGui") then
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Civilian")
  wait(1)
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Trucker") game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Shared"):WaitForChild("Network"):WaitForChild("RemoteFunctions"):WaitForChild("ClientRequestCoalTrucks"):InvokeServer()
  wait(1)
  game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Shared"):WaitForChild("Network"):WaitForChild("RemoteFunctions"):WaitForChild("ClientRequestCoalJob"):InvokeServer(workspace:WaitForChild("TruckingJob"):WaitForChild("Coal"):WaitForChild("routeA"),"2012 Shacman M3000 4X2")
  wait(2)
  repeat task.wait()
  until workspace.SpanwedCars[game.Players.LocalPlayer.Name.."'s Car"] or getfenv().auto == false
  repeat wait()
  workspace.SpanwedCars[game.Players.LocalPlayer.Name.."'s Car"].DriveSeat:Sit(game.Players.LocalPlayer.Character.Humanoid)
  until chr.Humanoid.SeatPart ~= nil or getfenv().auto == false
end
end)
end
end)