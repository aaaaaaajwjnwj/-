GunProps:Button({
    Title = "全枪无后坐力",
    Callback = function()
        local function removeRecoil()
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            
            local itemSystem = require(ReplicatedStorage.devv).load("v3item")
            local inventory = itemSystem.inventory
            
            for _, item in pairs(inventory.items) do
                if item then
                    item.recoilAdd = 0
                    item.maxRecoil = 0
                    item.recoilDiminishFactor = 0
                    item.recoilFastDiminishFactor = 0
                    item.baseSpread = 0
                    item.baseAimSpread = 0
                    item.spread = 0
                    item.aimSpread = 0
                end
            end
        end
        
        removeRecoil()
        
        local recoilLoop = task.spawn(function()
            while true do
                pcall(removeRecoil)
                task.wait(30)
            end
        end)
    end
})