local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["fhxyzyv"] = true,
    ["C01S011130"] = true,
    ["Lookmexc"] = true,
    ["qskxnnks"] = true,
    ["JiuJiDaShaDi"] = true,
    ["ch_ppoy9"] = true,
    ["Robloxkk404"] = true,
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕白名单玩家，稍后会加载脚本",
        Duration = 7,
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/obfuscated_script-1770543143360.lua"))()-- 在这里添加你的脚本不是源码
else
    localPlayer:Kick("你没有被加入白名单，请找群主反馈或购买")
end