bypass:Button({
    Title = "美化钱包",
    Callback = function()
    for _, v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v, "name") == "Wallet" then
        v.name = "Duffel Bag"
        v.modelName = "Duffel Bag"
        v.subtype = "Wallet"
        if v.TPSOffsets then
            v.TPSOffsets.hold = CFrame.new(-0.1, -1, 0.1)
        end
        if v.viewportOffsets and v.viewportOffsets.hotbar then
            v.viewportOffsets.hotbar.offset = CFrame.new(0.1, 0.2, -2.5)
            v.viewportOffsets.hotbar.rotoffset = CFrame.Angles(0.7853981633974483, 2.6179938779914944, 0)
        end
        break
    end
end

local inventory = require(game.ReplicatedStorage.devv.client.Objects.v3item.modules.inventory)
for _, item in pairs(inventory.items) do
    if item.name == "Duffel Bag" then
        if item.button and item.button.resetModelSkin then
            item.button:resetModelSkin()
        end
        if item.backpackButton and item.backpackButton.resetModelSkin then
            item.backpackButton:resetModelSkin()
        end
    end
end
    end
})