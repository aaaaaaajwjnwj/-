WSJ:Toggle({
    Title = "自动全图ATM",
    --Image = "bird",
    Value = false,
    Callback = function(state) 
    autoATM = state
    if autoATM then
    while autoATM and task.wait() do
local ATMsFolder = workspace:FindFirstChild("ATMs")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

if ATMsFolder and localPlayer.Character then
    for _, atm in ipairs(ATMsFolder:GetChildren()) do
        if atm:IsA("Model") then
            local hp = atm:GetAttribute("health")
            if hp ~= 0 then
                for _, part in ipairs(atm:GetChildren()) do
                    if part.Name == "Main" and part:IsA("BasePart") then
                        localPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
                        wait(0.1)
                        atm:SetAttribute("health", 0)
                        break
                    end
                end
                break
            end
        end
    end
end
end
end
    end
})