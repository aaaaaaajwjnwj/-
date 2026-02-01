local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "TnineHub-Dungeon Hunters",
    LoadingTitle = "加载中",
    LoadingSubtitle = "火速赶来功能",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "GameScripts",
        FileName = "Config"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
})

local Tab1 = Window:CreateTab("主要功能")

local killLoop = false
local knifeLoop = false
local skillLoop = false
local killInterval = 0.1
local attackRange = 50
local player = game.Players.LocalPlayer

local KillToggle = Tab1:CreateToggle({
    Name = "自动杀戮",
    CurrentValue = false,
    Flag = "AutoKill",
    Callback = function(Value)
        killLoop = Value
        if Value then
            spawn(function()
                while killLoop do
                    local success, err = pcall(function()
                        local character = player.Character
                        if character and character:FindFirstChild("HumanoidRootPart") then
                            local humanoidRootPart = character.HumanoidRootPart
                            local currentPosition = humanoidRootPart.Position
                            
                            for i = 1, 10 do
                                local angle = math.rad(i * 36)
                                local offset = Vector3.new(math.cos(angle) * attackRange, 0, math.sin(angle) * attackRange)
                                local targetPosition = currentPosition + offset
                                
                                local args = {
                                    [1] = "10016",
                                    [2] = "20",
                                    [3] = {},
                                    [4] = targetPosition
                                }
                                
                                game:GetService("ReplicatedStorage").GameplayAbilitySystem.Remote.ClientApplyServerActivateGA:InvokeServer(unpack(args))
                            end
                        end
                    end)
                    
                    if not success then
                        killLoop = false
                        KillToggle:Set(false)
                        Rayfield:Notify({
                            Title = "错误",
                            Content = "杀戮无法运行",
                            Duration = 3,
                            Image = 4483362458,
                        })
                        break
                    end
                    
                    wait(killInterval)
                end
            end)
            Rayfield:Notify({
                Title = "提示",
                Content = "自动杀戮已开启",
                Duration = 2,
                Image = 4483362458,
            })
        else
            Rayfield:Notify({
                Title = "提示",
                Content = "自动杀戮已关闭",
                Duration = 2,
                Image = 4483362458,
            })
        end
    end
})

local KnifeToggle = Tab1:CreateToggle({
    Name = "自动砍刀(概率)",
    CurrentValue = false,
    Flag = "AutoKnife",
    Callback = function(Value)
        knifeLoop = Value
        if Value then
            spawn(function()
                while knifeLoop do
                    local success, err = pcall(function()
                        local args = {
                            [1] = "10016",
                            [2] = "23",
                            [3] = {}
                        }
                        game:GetService("ReplicatedStorage").GameplayAbilitySystem.Remote.ClientApplyServerActivateGA:InvokeServer(unpack(args))
                    end)
                    
                    if not success then
                        knifeLoop = false
                        KnifeToggle:Set(false)
                        Rayfield:Notify({
                            Title = "错误",
                            Content = "自动砍刀模块无法使用，已自动关闭",
                            Duration = 3,
                            Image = 4483362458,
                        })
                        break
                    end
                    
                    wait(0.1)
                end
            end)
            Rayfield:Notify({
                Title = "提示",
                Content = "自动砍刀已开启",
                Duration = 2,
                Image = 4483362458,
            })
        else
            Rayfield:Notify({
                Title = "提示",
                Content = "自动砍刀已关闭",
                Duration = 2,
                Image = 4483362458,
            })
        end
    end
})

local SkillToggle = Tab1:CreateToggle({
    Name = "自动一技能",
    CurrentValue = false,
    Flag = "AutoSkill",
    Callback = function(Value)
        skillLoop = Value
        if Value then
            spawn(function()
                while skillLoop do
                    local success, err = pcall(function()
                        local args = {
                            [1] = "10016",
                            [2] = "21",
                            [3] = {}
                        }
                        game:GetService("ReplicatedStorage").GameplayAbilitySystem.Remote.ClientApplyServerActivateGA:InvokeServer(unpack(args))
                    end)
                    
                    if not success then
                        skillLoop = false
                        SkillToggle:Set(false)
                        Rayfield:Notify({
                            Title = "错误",
                            Content = "自动一技能模块无法使用，已自动关闭",
                            Duration = 3,
                            Image = 4483362458,
                        })
                        break
                    end
                    
                    wait(0.1)
                end
            end)
            Rayfield:Notify({
                Title = "提示",
                Content = "自动一技能已开启",
                Duration = 2,
                Image = 4483362458,
            })
        else
            Rayfield:Notify({
                Title = "提示",
                Content = "自动一技能已关闭",
                Duration = 2,
                Image = 4483362458,
            })
        end
    end
})

Tab1:CreateSection("技能控制")

local KillIntervalSlider = Tab1:CreateSlider({
    Name = "杀戮攻击速度",
    Range = {0.05, 2},
    Increment = 0.05,
    Suffix = "秒",
    CurrentValue = 0.1,
    Flag = "KillInterval",
    Callback = function(Value)
        killInterval = Value
        Rayfield:Notify({
            Title = "设置已更新",
            Content = "杀戮攻速: " .. Value .. "秒",
            Duration = 2,
            Image = 4483362458,
        })
    end,
})

local RangeSlider = Tab1:CreateSlider({
    Name = "攻击范围[50%无效]",
    Range = {10, 100},
    Increment = 5,
    Suffix = "米",
    CurrentValue = 50,
    Flag = "AttackRange",
    Callback = function(Value)
        attackRange = Value
        Rayfield:Notify({
            Title = "设置已更新",
            Content = "攻击距离: " .. Value .. "米",
            Duration = 2,
            Image = 4483362458,
        })
    end,
})

local AllToggle = Tab1:CreateToggle({
    Name = "一键全开",
    CurrentValue = false,
    Flag = "AllFunctions",
    Callback = function(Value)
        if Value then
            killLoop = true
            knifeLoop = true
            skillLoop = true
            
            KillToggle:Set(true)
            KnifeToggle:Set(true)
            SkillToggle:Set(true)
            
            spawn(function()
                while killLoop do
                    local success1, err1 = pcall(function()
                        local character = player.Character
                        if character and character:FindFirstChild("HumanoidRootPart") then
                            local humanoidRootPart = character.HumanoidRootPart
                            local currentPosition = humanoidRootPart.Position
                            
                            for i = 1, 10 do
                                local angle = math.rad(i * 36)
                                local offset = Vector3.new(math.cos(angle) * attackRange, 0, math.sin(angle) * attackRange)
                                local targetPosition = currentPosition + offset
                                
                                local killArgs = {
                                    [1] = "10016",
                                    [2] = "20",
                                    [3] = {},
                                    [4] = targetPosition
                                }
                                
                                game:GetService("ReplicatedStorage").GameplayAbilitySystem.Remote.ClientApplyServerActivateGA:InvokeServer(unpack(killArgs))
                            end
                        end
                    end)
                    
                    if not success1 then
                        killLoop = false
                        KillToggle:Set(false)
                        AllToggle:Set(false)
                        Rayfield:Notify({
                            Title = "错误",
                            Content = "自动杀戮模块无法运行",
                            Duration = 3,
                            Image = 4483362458,
                        })
                        break
                    end
                    
                    wait(killInterval)
                end
            end)
            
            spawn(function()
                while knifeLoop do
                    local success2, err2 = pcall(function()
                        local knifeArgs = {[1] = "10016", [2] = "23", [3] = {}}
                        game:GetService("ReplicatedStorage").GameplayAbilitySystem.Remote.ClientApplyServerActivateGA:InvokeServer(unpack(knifeArgs))
                    end)
                    
                    if not success2 then
                        knifeLoop = false
                        KnifeToggle:Set(false)
                        AllToggle:Set(false)
                        Rayfield:Notify({
                            Title = "错误",
                            Content = "自动砍刀模块无法使用，已自动关闭",
                            Duration = 3,
                            Image = 4483362458,
                        })
                        break
                    end
                    
                    wait(0.1)
                end
            end)
            
            spawn(function()
                while skillLoop do
                    local success3, err3 = pcall(function()
                        local skillArgs = {[1] = "10016", [2] = "21", [3] = {}}
                        game:GetService("ReplicatedStorage").GameplayAbilitySystem.Remote.ClientApplyServerActivateGA:InvokeServer(unpack(skillArgs))
                    end)
                    
                    if not success3 then
                        skillLoop = false
                        SkillToggle:Set(false)
                        AllToggle:Set(false)
                        Rayfield:Notify({
                            Title = "错误",
                            Content = "自动一技能模块无法运行",
                            Duration = 3,
                            Image = 4483362458,
                        })
                        break
                    end
                    
                    wait(0.1)
                end
            end)
            
            Rayfield:Notify({
                Title = "提示",
                Content = "所有功能已开启",
                Duration = 3,
                Image = 4483362458,
            })
        else
            killLoop = false
            knifeLoop = false
            skillLoop = false
            
            KillToggle:Set(false)
            KnifeToggle:Set(false)
            SkillToggle:Set(false)
            
            Rayfield:Notify({
                Title = "提示",
                Content = "所有功能已关闭",
                Duration = 3,
                Image = 4483362458,
            })
        end
    end
})

local StopButton = Tab1:CreateButton({
    Name = "一键关闭所有",
    Callback = function()
        killLoop = false
        knifeLoop = false
        skillLoop = false
        
        KillToggle:Set(false)
        KnifeToggle:Set(false)
        SkillToggle:Set(false)
        AllToggle:Set(false)
        
        Rayfield:Notify({
            Title = "666",
            Content = "已关闭所有功能",
            Duration = 3,
            Image = 4483362458,
        })
    end,
})