--张硕垃圾脚本小帅破解--

local ScreenGui = Instance.new("ScreenGui");
ScreenGui.Name = "LoadingScreen";
ScreenGui.ResetOnSpawn = false;
ScreenGui.IgnoreGuiInset = true;
ScreenGui.DisplayOrder = 999;
local ZIndexBehavior = Enum.ZIndexBehavior;
local Global = ZIndexBehavior.Global;
ScreenGui.ZIndexBehavior = Global;
local Players = game.Players;
local LocalPlayer = Players.LocalPlayer;
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui");
ScreenGui.Parent = PlayerGui;
local Frame = Instance.new("Frame");
Frame.Name = "MainContainer";
local New = Vector2.new;
local _call1 = New(0.5, 0.5);
Frame.AnchorPoint = _call1;
local New_2 = UDim2.new;
local _call2 = New_2(0.5, 0, 0.5, 0);
Frame.Position = _call2;
local New_3 = UDim2.new;
local _call3 = New_3(0, 400, 0, 400);
Frame.Size = _call3;
Frame.BackgroundTransparency = 1;
Frame.Parent = ScreenGui;
local ImageLabel = Instance.new("ImageLabel");
ImageLabel.Name = "Logo";
local New_4 = Vector2.new;
local _call4 = New_4(0.5, 0.5);
ImageLabel.AnchorPoint = _call4;
local New_5 = UDim2.new;
local _call5 = New_5(0.5, 0, 0.4, 0);
ImageLabel.Position = _call5;
local New_6 = UDim2.new;
local _call6 = New_6(0, 200, 0, 200);
ImageLabel.Size = _call6;
ImageLabel.BackgroundTransparency = 1;
ImageLabel.Image = "rbxassetid://128586210657724";
ImageLabel.ImageTransparency = 0;
ImageLabel.ZIndex = 999;
ImageLabel.Parent = Frame;
local UICorner = Instance.new("UICorner");
local New_7 = UDim.new;
local _call7 = New_7(0.2, 0);
UICorner.CornerRadius = _call7;
UICorner.Parent = ImageLabel;
local TextLabel = Instance.new("TextLabel");
TextLabel.Name = "WelcomeText";
local New_8 = Vector2.new;
local _call8 = New_8(0.5, 0.5);
TextLabel.AnchorPoint = _call8;
local New_9 = UDim2.new;
local _call9 = New_9(0.5, 0, 0.75, 0);
TextLabel.Position = _call9;
local New_10 = UDim2.new;
local _call10 = New_10(0, 350, 0, 60);
TextLabel.Size = _call10;
TextLabel.BackgroundTransparency = 1;
TextLabel.Text = "欢迎使用shuai脚本";
local FromRGB = Color3.fromRGB;
local _call11 = FromRGB(255, 255, 255);
TextLabel.TextColor3 = _call11;
TextLabel.TextSize = 42;
local Font = Enum.Font;
local GothamBold = Font.GothamBold;
TextLabel.Font = GothamBold;
TextLabel.TextTransparency = 0;
TextLabel.TextStrokeTransparency = 0.8;
local FromRGB_2 = Color3.fromRGB;
local _call12 = FromRGB_2(50, 50, 50);
TextLabel.TextStrokeColor3 = _call12;
TextLabel.ZIndex = 999;
TextLabel.Parent = Frame;
local var13 = tick();
local var14 = tick();
local var15 = var14 - var13;
-- 0.010052
local var16 = (var15 < 1.5); -- true
local var17 = tick();
local var18 = var17 - var13;
-- 0.020262
local var19 = var18 / 1.5;
-- 0.013508
local var20 = var19 * 3.141592653589793;
-- 0.042437
local Half_var20 = var20 / 2;
-- 0.021219
local New_11 = UDim2.new;
local _call21 = New_11(0.5, -97.87830226244557, 0.4, 0);
ImageLabel.Position = _call21;
ImageLabel.ImageTransparency = 0.9787830226244557;
local New_12 = UDim2.new;
local _call22 = New_12(0.5, 97.87830226244557, 0.75, 0);
TextLabel.Position = _call22;
TextLabel.TextTransparency = 0.9787830226244557;
local RunService = game:GetService("RunService");
local Connection_Result;
Connection_Result = RunService.Heartbeat:Wait();
local var23 = tick();
local var24 = var23 - var13;
-- 0.057868
local var25 = (var24 < 1.5); -- true
local var26 = tick();
local var27 = var26 - var13;
-- 0.068338
local var28 = var27 / 1.5;
-- 0.045559
local var29 = var28 * 3.141592653589793;
-- 0.143127
local Half_2_var29 = var29 / 2;
-- 0.071563
local New_13 = UDim2.new;
local _call30 = New_13(0.5, -92.84977676054052, 0.4, 0);
ImageLabel.Position = _call30;
ImageLabel.ImageTransparency = 0.9284977676054051;
local New_14 = UDim2.new;
local _call31 = New_14(0.5, 92.84977676054052, 0.75, 0);
TextLabel.Position = _call31;
TextLabel.TextTransparency = 0.9284977676054051;
local RunService_2 = game:GetService("RunService");
local Connection_Result_2;
Connection_Result_2 = RunService.Heartbeat:wait();
local var32 = tick();
local var33 = var32 - var13;
-- 0.093710
local var34 = (var33 < 1.5); -- true
local var35 = tick();
local var36 = var35 - var13;
-- 0.104126
local var37 = var36 / 1.5;
-- 0.069417
local var38 = var37 * 3.141592653589793;
-- 0.218081
local Half_3_var38 = var38 / 2;
-- 0.109041
local New_15 = UDim2.new;
local _call39 = New_15(0.5, -89.11752343728914, 0.4, 0);
ImageLabel.Position = _call39;
ImageLabel.ImageTransparency = 0.8911752343728914;
local New_16 = UDim2.new;
local _call40 = New_16(0.5, 89.11752343728914, 0.75, 0);
TextLabel.Position = _call40;
TextLabel.TextTransparency = 0.8911752343728914;
local RunService_3 = game:GetService("RunService");
local Connection_Result_3;
Connection_Result_3 = RunService.Heartbeat:wait();
local var41 = tick();
local var42 = var41 - var13;
-- 0.129295
local var43 = (var42 < 1.5); -- true
local var44 = tick();
local var45 = var44 - var13;
-- 0.139671
local var46 = var45 / 1.5;
-- 0.093114
local var47 = var46 * 3.141592653589793;
-- 0.292526
local Half_4_var47 = var47 / 2;
-- 0.146263
local New_17 = UDim2.new;
local _call48 = New_17(0.5, -85.4257721705606, 0.4, 0);
ImageLabel.Position = _call48;
ImageLabel.ImageTransparency = 0.8542577217056061;
local New_18 = UDim2.new;
local _call49 = New_18(0.5, 85.4257721705606, 0.75, 0);
TextLabel.Position = _call49;
TextLabel.TextTransparency = 0.8542577217056061;
local RunService_4 = game:GetService("RunService");
local Connection_Result_4;
Connection_Result_4 = RunService.Heartbeat:wait();
local var50 = tick();
local var51 = var50 - var13;
-- 0.164693
local var52 = (var51 < 1.5); -- true
local var53 = tick();
local var54 = var53 - var13;
-- 0.174984
local var55 = var54 / 1.5;
-- 0.116656
local var56 = var55 * 3.141592653589793;
-- 0.366485
local Half_5_var56 = var56 / 2;
-- 0.183243
local New_19 = UDim2.new;
local _call57 = New_19(0.5, -81.77812169919848, 0.4, 0);
ImageLabel.Position = _call57;
ImageLabel.ImageTransparency = 0.8177812169919848;
local New_20 = UDim2.new;
local _call58 = New_20(0.5, 81.77812169919848, 0.75, 0);
TextLabel.Position = _call58;
TextLabel.TextTransparency = 0.8177812169919848;
local RunService_5 = game:GetService("RunService");
local Connection_Result_5;
Connection_Result_5 = RunService.Heartbeat:wait();
local var59 = tick();
local var60 = var59 - var13;
-- 0.200443
local var61 = (var60 < 1.5); -- true
local var62 = tick();
local var63 = var62 - var13;
-- 0.210785
local var64 = var63 / 1.5;
-- 0.140523
local var65 = var64 * 3.141592653589793;
-- 0.441466
local Half_6_var65 = var65 / 2;
-- 0.220733
local New_21 = UDim2.new;
local _call66 = New_21(0.5, -78.10549133701024, 0.4, 0);
ImageLabel.Position = _call66;
ImageLabel.ImageTransparency = 0.7810549133701024;
local New_22 = UDim2.new;
local _call67 = New_22(0.5, 78.10549133701024, 0.75, 0);
TextLabel.Position = _call67;
TextLabel.TextTransparency = 0.7810549133701024;
local RunService_6 = game:GetService("RunService");
local Connection_Result_6;
Connection_Result_6 = RunService.Heartbeat:wait();
local var68 = tick();
local var69 = var68 - var13;
-- 0.235996
local var70 = (var69 < 1.5); -- true
local var71 = tick();
local var72 = var71 - var13;
-- 0.246321
local var73 = var72 / 1.5;
-- 0.164214
local var74 = var73 * 3.141592653589793;
-- 0.515893
local Half_7_var74 = var74 / 2;
-- 0.257947
local New_23 = UDim2.new;
local _call75 = New_23(0.5, -74.4904268326246, 0.4, 0);
ImageLabel.Position = _call75;
ImageLabel.ImageTransparency = 0.7449042683262461;
local New_24 = UDim2.new;
local _call76 = New_24(0.5, 74.4904268326246, 0.75, 0);
TextLabel.Position = _call76;
TextLabel.TextTransparency = 0.7449042683262461;
local RunService_7 = game:GetService("RunService");
local Connection_Result_7;
Connection_Result_7 = RunService.Heartbeat:wait();
local var77 = tick();
local var78 = var77 - var13;
-- 0.271693
local var79 = (var78 < 1.5); -- true
local var80 = tick();
local var81 = var80 - var13;
-- 0.282001
local var82 = var81 / 1.5;
-- 0.188001
local var83 = var82 * 3.141592653589793;
-- 0.590623
local Half_8_var83 = var83 / 2;
-- 0.295311
local New_25 = UDim2.new;
local _call84 = New_25(0.5, -70.89623350196386, 0.4, 0);
ImageLabel.Position = _call84;
ImageLabel.ImageTransparency = 0.7089623350196386;
local New_26 = UDim2.new;
local _call85 = New_26(0.5, 70.89623350196386, 0.75, 0);
TextLabel.Position = _call85;
TextLabel.TextTransparency = 0.7089623350196386;
local RunService_8 = game:GetService("RunService");
local Connection_Result_8;
Connection_Result_8 = RunService.Heartbeat:wait();
local var86 = tick();
local var87 = var86 - var13;
-- 0.307257
local var88 = (var87 < 1.5); -- true
local var89 = tick();
local var90 = var89 - var13;
-- 0.317505
local var91 = var90 / 1.5;
-- 0.211670
local var92 = var91 * 3.141592653589793;
-- 0.664981
local Half_9_var92 = var92 / 2;
-- 0.332490
local New_27 = UDim2.new;
local _call93 = New_27(0.5, -67.36020157683275, 0.4, 0);
ImageLabel.Position = _call93;
ImageLabel.ImageTransparency = 0.6736020157683276;
local New_28 = UDim2.new;
local _call94 = New_28(0.5, 67.36020157683275, 0.75, 0);
TextLabel.Position = _call94;
TextLabel.TextTransparency = 0.6736020157683276;
local RunService_9 = game:GetService("RunService");
local Connection_Result_9;
Connection_Result_9 = RunService.Heartbeat:wait();
local var95 = tick();
local var96 = var95 - var13;
-- 0.342827
local var97 = (var96 < 1.5); -- true
local var98 = tick();
local var99 = var98 - var13;
-- 0.353115
local var100 = var99 / 1.5;
-- 0.235410
local var101 = var100 * 3.141592653589793;
-- 0.739563
local Half_10_var101 = var101 / 2;
-- 0.369781
local New_29 = UDim2.new;
local _call102 = New_29(0.5, -63.85882914872039, 0.4, 0);
ImageLabel.Position = _call102;
ImageLabel.ImageTransparency = 0.6385882914872039;
local New_30 = UDim2.new;
local _call103 = New_30(0.5, 63.85882914872039, 0.75, 0);
TextLabel.Position = _call103;
TextLabel.TextTransparency = 0.6385882914872039;
local RunService_10 = game:GetService("RunService");
local Connection_Result_10;
Connection_Result_10 = RunService.Heartbeat:wait();
local var104 = tick();
local var105 = var104 - var13;
-- 0.378425
local var106 = (var105 < 1.5); -- true
local var107 = tick();
local var108 = var107 - var13;
-- 0.388668
local var109 = var108 / 1.5;
-- 0.259112
local var110 = var109 * 3.141592653589793;
-- 0.814024
local Half_11_var110 = var110 / 2;
-- 0.407012
local New_31 = UDim2.new;
local _call111 = New_31(0.5, -60.41325830844876, 0.4, 0);
ImageLabel.Position = _call111;
ImageLabel.ImageTransparency = 0.6041325830844876;
local New_32 = UDim2.new;
local _call112 = New_32(0.5, 60.41325830844876, 0.75, 0);
TextLabel.Position = _call112;
TextLabel.TextTransparency = 0.6041325830844876;
local RunService_11 = game:GetService("RunService");
local Connection_Result_11;
Connection_Result_11 = RunService.Heartbeat:wait();
local var113 = tick();
local var114 = var113 - var13;
-- 0.414153
local var115 = (var114 < 1.5); -- true
local var116 = tick();
local var117 = var116 - var13;
-- 0.424559
local var118 = var117 / 1.5;
-- 0.283039
local var119 = var118 * 3.141592653589793;
-- 0.889194
local Half_12_var119 = var119 / 2;
-- 0.444597
local New_33 = UDim2.new;
local _call120 = New_33(0.5, -56.990589110383794, 0.4, 0);
ImageLabel.Position = _call120;
ImageLabel.ImageTransparency = 0.5699058911038379;
local New_34 = UDim2.new;
local _call121 = New_34(0.5, 56.990589110383794, 0.75, 0);
TextLabel.Position = _call121;
TextLabel.TextTransparency = 0.5699058911038379;
local RunService_12 = game:GetService("RunService");
local Connection_Result_12;
Connection_Result_12 = RunService.Heartbeat:wait();
local var122 = tick();
local var123 = var122 - var13;
-- 0.449770
local var124 = (var123 < 1.5); -- true
local var125 = tick();
local var126 = var125 - var13;
-- 0.460353
local var127 = var126 / 1.5;
-- 0.306902
local var128 = var127 * 3.141592653589793;
-- 0.964160
local Half_13_var128 = var128 / 2;
-- 0.482080
local New_35 = UDim2.new;
local _call129 = New_35(0.5, -53.637671806307566, 0.4, 0);
ImageLabel.Position = _call129;
ImageLabel.ImageTransparency = 0.5363767180630756;
local New_36 = UDim2.new;
local _call130 = New_36(0.5, 53.637671806307566, 0.75, 0);
TextLabel.Position = _call130;
TextLabel.TextTransparency = 0.5363767180630756;
local RunService_13 = game:GetService("RunService");
local Connection_Result_13;
Connection_Result_13 = RunService.Heartbeat:wait();
local var131 = tick();
local var132 = var131 - var13;
-- 0.485561
local var133 = (var132 < 1.5); -- true
local var134 = tick();
local var135 = var134 - var13;
-- 0.495850
local var136 = var135 / 1.5;
-- 0.330566
local var137 = var136 * 3.141592653589793;
-- 1.038505
local Half_14_var137 = var137 / 2;
-- 0.519252
local New_37 = UDim2.new;
local _call138 = New_37(0.5, -50.37686986157417, 0.4, 0);
ImageLabel.Position = _call138;
ImageLabel.ImageTransparency = 0.5037686986157417;
local New_38 = UDim2.new;
local _call139 = New_38(0.5, 50.37686986157417, 0.75, 0);
TextLabel.Position = _call139;
TextLabel.TextTransparency = 0.5037686986157417;
local RunService_14 = game:GetService("RunService");
local Connection_Result_14;
Connection_Result_14 = RunService.Heartbeat:wait();
local var140 = tick();
local var141 = var140 - var13;
-- 0.521016
local var142 = (var141 < 1.5); -- true
local var143 = tick();
local var144 = var143 - var13;
-- 0.531514
local var145 = var144 / 1.5;
-- 0.354343
local var146 = var145 * 3.141592653589793;
-- 1.113201
local Half_15_var146 = var146 / 2;
-- 0.556601
local New_39 = UDim2.new;
local _call147 = New_39(0.5, -47.16970377991987, 0.4, 0);
ImageLabel.Position = _call147;
ImageLabel.ImageTransparency = 0.4716970377991987;
local New_40 = UDim2.new;
local _call148 = New_40(0.5, 47.16970377991987, 0.75, 0);
TextLabel.Position = _call148;
TextLabel.TextTransparency = 0.4716970377991987;
local RunService_15 = game:GetService("RunService");
local Connection_Result_15;
Connection_Result_15 = RunService.Heartbeat:wait();
local var149 = tick();
local var150 = var149 - var13;
-- 0.556731
local var151 = (var150 < 1.5); -- true
local var152 = tick();
local var153 = var152 - var13;
-- 0.567084
local var154 = var153 / 1.5;
-- 0.378056
local var155 = var154 * 3.141592653589793;
-- 1.187699
local Half_16_var155 = var155 / 2;
-- 0.593849
local New_41 = UDim2.new;
local _call156 = New_41(0.5, -44.04445641145666, 0.4, 0);
ImageLabel.Position = _call156;
ImageLabel.ImageTransparency = 0.44044456411456656;
local New_42 = UDim2.new;
local _call157 = New_42(0.5, 44.04445641145666, 0.75, 0);
TextLabel.Position = _call157;
TextLabel.TextTransparency = 0.44044456411456656;
local RunService_16 = game:GetService("RunService");
local Connection_Result_16;
Connection_Result_16 = RunService.Heartbeat:wait();
local var158 = tick();
local var159 = var158 - var13;
-- 0.592369
local var160 = (var159 < 1.5); -- true
local var161 = tick();
local var162 = var161 - var13;
-- 0.602726
local var163 = var162 / 1.5;
-- 0.401817
local var164 = var163 * 3.141592653589793;
-- 1.262346
local Half_17_var164 = var164 / 2;
-- 0.631173
local New_43 = UDim2.new;
local _call165 = New_43(0.5, -40.990789314500816, 0.4, 0);
ImageLabel.Position = _call165;
ImageLabel.ImageTransparency = 0.4099078931450082;
local New_44 = UDim2.new;
local _call166 = New_44(0.5, 40.990789314500816, 0.75, 0);
TextLabel.Position = _call166;
TextLabel.TextTransparency = 0.4099078931450082;
local RunService_17 = game:GetService("RunService");
local Connection_Result_17;
Connection_Result_17 = RunService.Heartbeat:wait();
local var167 = tick();
local var168 = var167 - var13;
-- 0.627902
local var169 = (var168 < 1.5); -- true
local var170 = tick();
local var171 = var170 - var13;
-- 0.638254
local var172 = var171 / 1.5;
-- 0.425502
local var173 = var172 * 3.141592653589793;
-- 1.336755
local Half_18_var173 = var173 / 2;
-- 0.668378
local New_45 = UDim2.new;
local _call174 = New_45(0.5, -38.02864234936709, 0.4, 0);
ImageLabel.Position = _call174;
ImageLabel.ImageTransparency = 0.3802864234936709;
local New_46 = UDim2.new;
local _call175 = New_46(0.5, 38.02864234936709, 0.75, 0);
TextLabel.Position = _call175;
TextLabel.TextTransparency = 0.3802864234936709;
local RunService_18 = game:GetService("RunService");
local Connection_Result_18;
Connection_Result_18 = RunService.Heartbeat:wait();
local var176 = tick();
local var177 = var176 - var13;
-- 0.663571
local var178 = (var177 < 1.5); -- true
local var179 = tick();
local var180 = var179 - var13;
-- 0.673827
local var181 = var180 / 1.5;
-- 0.449218
local var182 = var181 * 3.141592653589793;
-- 1.411259
local Half_19_var182 = var182 / 2;
-- 0.705630
local New_47 = UDim2.new;
local _call183 = New_47(0.5, -35.148673928118846, 0.4, 0);
ImageLabel.Position = _call183;
ImageLabel.ImageTransparency = 0.35148673928118845;
local New_48 = UDim2.new;
local _call184 = New_48(0.5, 35.148673928118846, 0.75, 0);
TextLabel.Position = _call184;
TextLabel.TextTransparency = 0.35148673928118845;
local RunService_19 = game:GetService("RunService");
local Connection_Result_19;
Connection_Result_19 = RunService.Heartbeat:wait();
local var185 = tick();
local var186 = var185 - var13;
-- 0.699070
local var187 = (var186 < 1.5); -- true
local var188 = tick();
local var189 = var188 - var13;
-- 0.709369
local var190 = var189 / 1.5;
-- 0.472913
local var191 = var190 * 3.141592653589793;
-- 1.485699
local Half_20_var191 = var191 / 2;
-- 0.742850
local New_49 = UDim2.new;
local _call192 = New_49(0.5, -32.36104366758351, 0.4, 0);
ImageLabel.Position = _call192;
ImageLabel.ImageTransparency = 0.3236104366758351;
local New_50 = UDim2.new;
local _call193 = New_50(0.5, 32.36104366758351, 0.75, 0);
TextLabel.Position = _call193;
TextLabel.TextTransparency = 0.3236104366758351;
local RunService_20 = game:GetService("RunService");
local Connection_Result_20;
Connection_Result_20 = RunService.Heartbeat:wait();
local var194 = tick();
local var195 = var194 - var13;
-- 0.734780
local var196 = (var195 < 1.5); -- true
local var197 = tick();
local var198 = var197 - var13;
-- 0.745153
local var199 = var198 / 1.5;
-- 0.496769
local var200 = var199 * 3.141592653589793;
-- 1.560645
local Half_21_var200 = var200 / 2;
-- 0.780323
local New_51 = UDim2.new;
local _call201 = New_51(0.5, -29.649128061554652, 0.4, 0);
ImageLabel.Position = _call201;
ImageLabel.ImageTransparency = 0.2964912806155465;
local New_52 = UDim2.new;
local _call202 = New_52(0.5, 29.649128061554652, 0.75, 0);
TextLabel.Position = _call202;
TextLabel.TextTransparency = 0.2964912806155465;
local RunService_21 = game:GetService("RunService");
local Connection_Result_21;
Connection_Result_21 = RunService.Heartbeat:wait();
local var203 = tick();
local var204 = var203 - var13;
-- 0.770386
local var205 = (var204 < 1.5); -- true
local var206 = tick();
local var207 = var206 - var13;
-- 0.780704
local var208 = var207 / 1.5;
-- 0.520469
local var209 = var208 * 3.141592653589793;
-- 1.635102
local Half_22_var209 = var209 / 2;
-- 0.817551
local New_53 = UDim2.new;
local _call210 = New_53(0.5, -27.052705947191992, 0.4, 0);
ImageLabel.Position = _call210;
ImageLabel.ImageTransparency = 0.2705270594719199;
local New_54 = UDim2.new;
local _call211 = New_54(0.5, 27.052705947191992, 0.75, 0);
TextLabel.Position = _call211;
TextLabel.TextTransparency = 0.2705270594719199;
local RunService_22 = game:GetService("RunService");
local Connection_Result_22;
Connection_Result_22 = RunService.Heartbeat:wait();
local var212 = tick();
local var213 = var212 - var13;
-- 0.806074
local var214 = (var213 < 1.5); -- true
local var215 = tick();
local var216 = var215 - var13;
-- 0.816406
local var217 = var216 / 1.5;
-- 0.544271
local var218 = var217 * 3.141592653589793;
-- 1.709878
local Half_23_var218 = var218 / 2;
-- 0.854939
local New_55 = UDim2.new;
local _call219 = New_55(0.5, -24.546919633418053, 0.4, 0);
ImageLabel.Position = _call219;
ImageLabel.ImageTransparency = 0.24546919633418052;
local New_56 = UDim2.new;
local _call220 = New_56(0.5, 24.546919633418053, 0.75, 0);
TextLabel.Position = _call220;
TextLabel.TextTransparency = 0.24546919633418052;
local RunService_23 = game:GetService("RunService");
local Connection_Result_23;
Connection_Result_23 = RunService.Heartbeat:wait();
local var221 = tick();
local var222 = var221 - var13;
-- 0.841695
local var223 = (var222 < 1.5); -- true
local var224 = tick();
local var225 = var224 - var13;
-- 0.852040
local var226 = var225 / 1.5;
-- 0.568027
local var227 = var226 * 3.141592653589793;
-- 1.784509
local Half_24_var227 = var227 / 2;
-- 0.892254
local New_57 = UDim2.new;
local _call228 = New_57(0.5, -22.151137199089433, 0.4, 0);
ImageLabel.Position = _call228;
ImageLabel.ImageTransparency = 0.22151137199089432;
local New_58 = UDim2.new;
local _call229 = New_58(0.5, 22.151137199089433, 0.75, 0);
TextLabel.Position = _call229;
TextLabel.TextTransparency = 0.22151137199089432;
local RunService_24 = game:GetService("RunService");
local Connection_Result_24;
Connection_Result_24 = RunService.Heartbeat:wait();
local var230 = tick();
local var231 = var230 - var13;
-- 0.877446
local var232 = (var231 < 1.5); -- true
local var233 = tick();
local var234 = var233 - var13;
-- 0.887815
local var235 = var234 / 1.5;
-- 0.591876
local var236 = var235 * 3.141592653589793;
-- 1.859434
local Half_25_var236 = var236 / 2;
-- 0.929717
local New_59 = UDim2.new;
local _call237 = New_59(0.5, -19.854916272508238, 0.4, 0);
ImageLabel.Position = _call237;
ImageLabel.ImageTransparency = 0.19854916272508238;
local New_60 = UDim2.new;
local _call238 = New_60(0.5, 19.854916272508238, 0.75, 0);
TextLabel.Position = _call238;
TextLabel.TextTransparency = 0.19854916272508238;
local RunService_25 = game:GetService("RunService");
local Connection_Result_25;
Connection_Result_25 = RunService.Heartbeat:wait();
local var239 = tick();
local var240 = var239 - var13;
-- 0.912882
local var241 = (var240 < 1.5); -- true
local var242 = tick();
local var243 = var242 - var13;
-- 0.923304
local var244 = var243 / 1.5;
-- 0.615536
local var245 = var244 * 3.141592653589793;
-- 1.933764
local Half_26_var245 = var245 / 2;
-- 0.966882
local New_61 = UDim2.new;
local _call246 = New_61(0.5, -17.688088483454756, 0.4, 0);
ImageLabel.Position = _call246;
ImageLabel.ImageTransparency = 0.17688088483454756;
local New_62 = UDim2.new;
local _call247 = New_62(0.5, 17.688088483454756, 0.75, 0);
TextLabel.Position = _call247;
TextLabel.TextTransparency = 0.17688088483454756;
local RunService_26 = game:GetService("RunService");
local Connection_Result_26;
Connection_Result_26 = RunService.Heartbeat:wait();
local var248 = tick();
local var249 = var248 - var13;
-- 0.948466
local var250 = (var249 < 1.5); -- true
local var251 = tick();
local var252 = var251 - var13;
-- 0.958825
local var253 = var252 / 1.5;
-- 0.639217
local var254 = var253 * 3.141592653589793;
-- 2.008158
local Half_27_var254 = var254 / 2;
-- 1.004079
local New_63 = UDim2.new;
local _call255 = New_63(0.5, -15.63320968110653, 0.4, 0);
ImageLabel.Position = _call255;
ImageLabel.ImageTransparency = 0.1563320968110653;
local New_64 = UDim2.new;
local _call256 = New_64(0.5, 15.63320968110653, 0.75, 0);
TextLabel.Position = _call256;
TextLabel.TextTransparency = 0.1563320968110653;
local RunService_27 = game:GetService("RunService");
local Connection_Result_27;
Connection_Result_27 = RunService.Heartbeat:wait();
local var257 = tick();
local var258 = var257 - var13;
-- 0.984041
local var259 = (var258 < 1.5); -- true
local var260 = tick();
local var261 = var260 - var13;
-- 0.994462
local var262 = var261 / 1.5;
-- 0.662975
local var263 = var262 * 3.141592653589793;
-- 2.082797
local Half_28_var263 = var263 / 2;
-- 1.041398
local New_65 = UDim2.new;
local _call264 = New_65(0.5, -13.688870028143318, 0.4, 0);
ImageLabel.Position = _call264;
ImageLabel.ImageTransparency = 0.13688870028143318;
local New_66 = UDim2.new;
local _call265 = New_66(0.5, 13.688870028143318, 0.75, 0);
TextLabel.Position = _call265;
TextLabel.TextTransparency = 0.13688870028143318;
local RunService_28 = game:GetService("RunService");
local Connection_Result_28;
Connection_Result_28 = RunService.Heartbeat:wait();
local var266 = tick();
local var267 = var266 - var13;
-- 1.019912
local var268 = (var267 < 1.5); -- true
local var269 = tick();
local var270 = var269 - var13;
-- 1.030181
local var271 = var270 / 1.5;
-- 0.686787
local var272 = var271 * 3.141592653589793;
-- 2.157606
local Half_29_var272 = var272 / 2;
-- 1.078803
local New_67 = UDim2.new;
local _call273 = New_67(0.5, -11.86070292796032, 0.4, 0);
ImageLabel.Position = _call273;
ImageLabel.ImageTransparency = 0.1186070292796032;
local New_68 = UDim2.new;
local _call274 = New_68(0.5, 11.86070292796032, 0.75, 0);
TextLabel.Position = _call274;
TextLabel.TextTransparency = 0.1186070292796032;
local RunService_29 = game:GetService("RunService");
local Connection_Result_29;
Connection_Result_29 = RunService.Heartbeat:wait();
local var275 = tick();
local var276 = var275 - var13;
-- 1.055439
local var277 = (var276 < 1.5); -- true
local var278 = tick();
local var279 = var278 - var13;
-- 1.065791
local var280 = var279 / 1.5;
-- 0.710527
local var281 = var280 * 3.141592653589793;
-- 2.232187
local Half_30_var281 = var281 / 2;
-- 1.116093
local New_69 = UDim2.new;
local _call282 = New_69(0.5, -10.160847560598107, 0.4, 0);
ImageLabel.Position = _call282;
ImageLabel.ImageTransparency = 0.10160847560598107;
local New_70 = UDim2.new;
local _call283 = New_70(0.5, 10.160847560598107, 0.75, 0);
TextLabel.Position = _call283;
TextLabel.TextTransparency = 0.10160847560598107;
local RunService_30 = game:GetService("RunService");
local Connection_Result_30;
Connection_Result_30 = RunService.Heartbeat:wait();
local var284 = tick();
local var285 = var284 - var13;
-- 1.091100
local var286 = (var285 < 1.5); -- true
local var287 = tick();
local var288 = var287 - var13;
-- 1.101374
local var289 = var288 / 1.5;
-- 0.734250
local var290 = var289 * 3.141592653589793;
-- 2.306713
local Half_31_var290 = var290 / 2;
-- 1.153357
local New_71 = UDim2.new;
local _call291 = New_71(0.5, -8.587009080291196, 0.4, 0);
ImageLabel.Position = _call291;
ImageLabel.ImageTransparency = 0.08587009080291197;
local New_72 = UDim2.new;
local _call292 = New_72(0.5, 8.587009080291196, 0.75, 0);
TextLabel.Position = _call292;
TextLabel.TextTransparency = 0.08587009080291197;
local RunService_31 = game:GetService("RunService");
local Connection_Result_31;
Connection_Result_31 = RunService.Heartbeat:wait();
local var293 = tick();
local var294 = var293 - var13;
-- 1.126601
local var295 = (var294 < 1.5); -- true
local var296 = tick();
local var297 = var296 - var13;
-- 1.137045
local var298 = var297 / 1.5;
-- 0.758030
local var299 = var298 * 3.141592653589793;
-- 2.381422
local Half_32_var299 = var299 / 2;
-- 1.190711
local New_73 = UDim2.new;
local _call300 = New_73(0.5, -7.136705751965533, 0.4, 0);
ImageLabel.Position = _call300;
ImageLabel.ImageTransparency = 0.07136705751965533;
local New_74 = UDim2.new;
local _call301 = New_74(0.5, 7.136705751965533, 0.75, 0);
TextLabel.Position = _call301;
TextLabel.TextTransparency = 0.07136705751965533;
local RunService_32 = game:GetService("RunService");
local Connection_Result_32;
Connection_Result_32 = RunService.Heartbeat:wait();
local var302 = tick();
local var303 = var302 - var13;
-- 1.162207
local var304 = (var303 < 1.5); -- true
local var305 = tick();
local var306 = var305 - var13;
-- 1.172733
local var307 = var306 / 1.5;
-- 0.781822
local var308 = var307 * 3.141592653589793;
-- 2.456166
local Half_33_var308 = var308 / 2;
-- 1.228083
local New_75 = UDim2.new;
local _call309 = New_75(0.5, -5.815368069926052, 0.4, 0);
ImageLabel.Position = _call309;
ImageLabel.ImageTransparency = 0.058153680699260524;
local New_76 = UDim2.new;
local _call310 = New_76(0.5, 5.815368069926052, 0.75, 0);
TextLabel.Position = _call310;
TextLabel.TextTransparency = 0.058153680699260524;
local RunService_33 = game:GetService("RunService");
local Connection_Result_33;
Connection_Result_33 = RunService.Heartbeat:wait();
local var311 = tick();
local var312 = var311 - var13;
-- 1.211944
local var313 = (var312 < 1.5); -- true
local var314 = tick();
local var315 = var314 - var13;
-- 1.222878
local var316 = var315 / 1.5;
-- 0.815252
local var317 = var316 * 3.141592653589793;
-- 2.561190
local Half_34_var317 = var317 / 2;
-- 1.280595
local New_77 = UDim2.new;
local _call318 = New_77(0.5, -4.181369229555177, 0.4, 0);
ImageLabel.Position = _call318;
ImageLabel.ImageTransparency = 0.04181369229555176;
local New_78 = UDim2.new;
local _call319 = New_78(0.5, 4.181369229555177, 0.75, 0);
TextLabel.Position = _call319;
TextLabel.TextTransparency = 0.04181369229555176;
local RunService_34 = game:GetService("RunService");
local Connection_Result_34;
Connection_Result_34 = RunService.Heartbeat:wait();
local var320 = tick();
local var321 = var320 - var13;
-- 1.249111
local var322 = (var321 < 1.5); -- true
local var323 = tick();
local var324 = var323 - var13;
-- 1.260070
local var325 = var324 / 1.5;
-- 0.840047
local var326 = var325 * 3.141592653589793;
-- 2.639085
local Half_35_var326 = var326 / 2;
-- 1.319542
local New_79 = UDim2.new;
local _call327 = New_79(0.5, -3.139858928601569, 0.4, 0);
ImageLabel.Position = _call327;
ImageLabel.ImageTransparency = 0.03139858928601569;
local New_80 = UDim2.new;
local _call328 = New_80(0.5, 3.139858928601569, 0.75, 0);
TextLabel.Position = _call328;
TextLabel.TextTransparency = 0.03139858928601569;
local RunService_35 = game:GetService("RunService");
local Connection_Result_35;
Connection_Result_35 = RunService.Heartbeat:wait();
local var329 = tick();
local var330 = var329 - var13;
-- 1.284697
local var331 = (var330 < 1.5); -- true
local var332 = tick();
local var333 = var332 - var13;
-- 1.295017
local var334 = var333 / 1.5;
-- 0.863345
local var335 = var334 * 3.141592653589793;
-- 2.712277
local Half_36_var335 = var335 / 2;
-- 1.356138
local New_81 = UDim2.new;
local _call336 = New_81(0.5, -2.2950685564371853, 0.4, 0);
ImageLabel.Position = _call336;
ImageLabel.ImageTransparency = 0.022950685564371853;
local New_82 = UDim2.new;
local _call337 = New_82(0.5, 2.2950685564371853, 0.75, 0);
TextLabel.Position = _call337;
TextLabel.TextTransparency = 0.022950685564371853;
local RunService_36 = game:GetService("RunService");
local Connection_Result_36;
Connection_Result_36 = RunService.Heartbeat:wait();
local var338 = tick();
local var339 = var338 - var13;
-- 1.320521
local var340 = (var339 < 1.5); -- true
local var341 = tick();
local var342 = var341 - var13;
-- 1.331066
local var343 = var342 / 1.5;
-- 0.887377
local var344 = var343 * 3.141592653589793;
-- 2.787778
local Half_37_var344 = var344 / 2;
-- 1.393889
local New_83 = UDim2.new;
local _call345 = New_83(0.5, -1.5607299124943297, 0.4, 0);
ImageLabel.Position = _call345;
ImageLabel.ImageTransparency = 0.015607299124943297;
local New_84 = UDim2.new;
local _call346 = New_84(0.5, 1.5607299124943297, 0.75, 0);
TextLabel.Position = _call346;
TextLabel.TextTransparency = 0.015607299124943297;
local RunService_37 = game:GetService("RunService");
local Connection_Result_37;
Connection_Result_37 = RunService.Heartbeat:wait();
local var347 = tick();
local var348 = var347 - var13;
-- 1.355983
local var349 = (var348 < 1.5); -- true
local var350 = tick();
local var351 = var350 - var13;
-- 1.366377
local var352 = var351 / 1.5;
-- 0.910918
local var353 = var352 * 3.141592653589793;
-- 2.861734
local Half_38_var353 = var353 / 2;
-- 1.430867
local New_85 = UDim2.new;
local _call354 = New_85(0.5, -0.9774141682958759, 0.4, 0);
ImageLabel.Position = _call354;
ImageLabel.ImageTransparency = 0.009774141682958759;
local New_86 = UDim2.new;
local _call355 = New_86(0.5, 0.9774141682958759, 0.75, 0);
TextLabel.Position = _call355;
TextLabel.TextTransparency = 0.009774141682958759;
local RunService_38 = game:GetService("RunService");
local Connection_Result_38;
Connection_Result_38 = RunService.Heartbeat:wait();
local var356 = tick();
local var357 = var356 - var13;
-- 1.391729
local var358 = (var357 < 1.5); -- true
local var359 = tick();
local var360 = var359 - var13;
-- 1.402074
local var361 = var360 / 1.5;
-- 0.934716
local var362 = var361 * 3.141592653589793;
-- 2.936496
local Half_39_var362 = var362 / 2;
-- 1.468248
local New_87 = UDim2.new;
local _call363 = New_87(0.5, -0.5253466899564851, 0.4, 0);
ImageLabel.Position = _call363;
ImageLabel.ImageTransparency = 0.0052534668995648515;
local New_88 = UDim2.new;
local _call364 = New_88(0.5, 0.5253466899564851, 0.75, 0);
TextLabel.Position = _call364;
TextLabel.TextTransparency = 0.0052534668995648515;
local RunService_39 = game:GetService("RunService");
local Connection_Result_39;
Connection_Result_39 = RunService.Heartbeat:wait();
local var365 = tick();
local var366 = var365 - var13;
-- 1.427364
local var367 = (var366 < 1.5); -- true
local var368 = tick();
local var369 = var368 - var13;
-- 1.437945
local var370 = var369 / 1.5;
-- 0.958630
local var371 = var370 * 3.141592653589793;
-- 3.011625
local Half_40_var371 = var371 / 2;
-- 1.505812
local New_89 = UDim2.new;
local _call372 = New_89(0.5, -0.21107146044928582, 0.4, 0);
ImageLabel.Position = _call372;
ImageLabel.ImageTransparency = 0.002110714604492858;
local New_90 = UDim2.new;
local _call373 = New_90(0.5, 0.21107146044928582, 0.75, 0);
TextLabel.Position = _call373;
TextLabel.TextTransparency = 0.002110714604492858;
local RunService_40 = game:GetService("RunService");
local Connection_Result_40;
Connection_Result_40 = RunService.Heartbeat:wait();
local var374 = tick();
local var375 = var374 - var13;
-- 1.462954
local var376 = (var375 < 1.5); -- true
local var377 = tick();
local var378 = var377 - var13;
-- 1.473469
local var379 = var378 / 1.5;
-- 0.982313
local var380 = var379 * 3.141592653589793;
-- 3.086026
local Half_41_var380 = var380 / 2;
-- 1.543013
local New_91 = UDim2.new;
local _call381 = New_91(0.5, -0.03859346109138517, 0.4, 0);
ImageLabel.Position = _call381;
ImageLabel.ImageTransparency = 0.00038593461091385173;
local New_92 = UDim2.new;
local _call382 = New_92(0.5, 0.03859346109138517, 0.75, 0);
TextLabel.Position = _call382;
TextLabel.TextTransparency = 0.00038593461091385173;
local RunService_41 = game:GetService("RunService");
local Connection_Result_41;
Connection_Result_41 = RunService.Heartbeat:wait();
local var383 = tick();
local var384 = var383 - var13;
-- 1.498596
local var385 = (var384 < 1.5); -- true
local var386 = tick();
local var387 = var386 - var13;
-- 1.508994
local var388 = var387 / 1.5;
-- 1.005996
local var389 = var388 * 3.141592653589793;
-- 3.160429
local Half_42_var389 = var389 / 2;
-- 1.580214
local New_93 = UDim2.new;
local _call390 = New_93(0.5, -0.004435000185687432, 0.4, 0);
ImageLabel.Position = _call390;
ImageLabel.ImageTransparency = 0.00004435000185687432;
local New_94 = UDim2.new;
local _call391 = New_94(0.5, 0.004435000185687432, 0.75, 0);
TextLabel.Position = _call391;
TextLabel.TextTransparency = 0.00004435000185687432;
local RunService_42 = game:GetService("RunService");
local Connection_Result_42;
Connection_Result_42 = RunService.Heartbeat:wait();
local var392 = tick();
local var393 = var392 - var13;
-- 1.534108
local var394 = (var393 < 1.5); -- false
local var395 = (var394 and function()--[[function ignored]]end);
ImageLabel.ImageTransparency = 0;
TextLabel.TextTransparency = 0;
local Main_Lua = game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua");
local Loadable_Main_Lua = loadstring(Main_Lua);
local Loaded_Main_Lua = Loadable_Main_Lua();
local FromOffset = UDim2.fromOffset;
local _call396 = FromOffset(300, 270);
local CreateWindow = Loaded_Main_Lua.CreateWindow;
local Window = Loaded_Main_Lua:CreateWindow({
    User = {
        Enabled = true,
        Callback = function(p1_0, p2_0, p3_0, p4_0)
            print("clicked") -- clicked
        end,
        Anonymous = false,
    },
    Author = "作者:张硕",
    IconThemed = true,
    ScrollBarEnabled = true,
    Folder = "KG脚本",
    HideSearchBar = true,
    Title = "KG脚本",
    Transparent = true,
    SideBarWidth = 200,
    Theme = "Midnight",
    Icon = "rbxassetid://129260712070622",
    Size = _call396,
});
local New_95 = UDim.new;
local _call398 = New_95(0, 16);
local EditOpenButton = Window.EditOpenButton;
local New_96 = ColorSequence.new;
local FromHex = Color3.fromHex;
local _call399 = FromHex("#00FF7F");
local FromHex_2 = Color3.fromHex;
local _call400 = FromHex_2("#0080FF");
local _call401 = New_96(_call399, _call400);
local EditOpenButton_2 = Window:EditOpenButton({
    StrokeThickness = 4,
    Title = "打开脚本",
    Color = _call401,
    Draggable = true,
    Icon = "monitor",
    CornerRadius = _call398,
});
local var403 = tick();
local var404 = tick();
local var405 = var404 - var403;
-- 0.010083
local var406 = (var405 < 1.2); -- true
local var407 = (var406 and 15098272); -- 15098272
local var408 = tick();
local var409 = var408 - var403;
-- 0.020456
local var410 = var409 / 1.2;
-- 0.017046
local var411 = var410 * 3.141592653589793;
-- 0.053553
local Half_43_var411 = var411 / 2;
-- 0.026776
local New_97 = UDim2.new;
local _call412 = New_97(0.5, -0.03584641379658082, 0.4, 0);
ImageLabel.Position = _call412;
ImageLabel.ImageTransparency = 0.00035846413796580823;
local New_98 = UDim2.new;
local _call413 = New_98(0.5, 0.03584641379658082, 0.75, 0);
TextLabel.Position = _call413;
TextLabel.TextTransparency = 0.00035846413796580823;
local RunService_43 = game:GetService("RunService");
local Connection_Result_43;
Connection_Result_43 = RunService.Heartbeat:wait();
local var414 = tick();
local var415 = var414 - var403;
-- 0.066471
local var416 = (var415 < 1.2); -- true
local var417 = (var416 and 15098272); -- 15098272
local var418 = tick();
local var419 = var418 - var403;
-- 0.077129
local var420 = var419 / 1.2;
-- 0.064274
local var421 = var420 * 3.141592653589793;
-- 0.201922
local Half_44_var421 = var421 / 2;
-- 0.100961
local New_99 = UDim2.new;
local _call422 = New_99(0.5, -0.5092250717889213, 0.4, 0);
ImageLabel.Position = _call422;
ImageLabel.ImageTransparency = 0.005092250717889213;
local New_100 = UDim2.new;
local _call423 = New_100(0.5, 0.5092250717889213, 0.75, 0);
TextLabel.Position = _call423;
TextLabel.TextTransparency = 0.005092250717889213;
local RunService_44 = game:GetService("RunService");
local Connection_Result_44;
Connection_Result_44 = RunService.Heartbeat:wait();
local var424 = tick();
local var425 = var424 - var403;
-- 0.102162
local var426 = (var425 < 1.2); -- true
local var427 = (var426 and 15098272); -- 15098272
local var428 = tick();
local var429 = var428 - var403;
-- 0.112499
local var430 = var429 / 1.2;
-- 0.093750
local var431 = var430 * 3.141592653589793;
-- 0.294523
local Half_45_var431 = var431 / 2;
-- 0.147261
local New_101 = UDim2.new;
local _call432 = New_101(0.5, -1.082338929086324, 0.4, 0);
ImageLabel.Position = _call432;
ImageLabel.ImageTransparency = 0.010823389290863239;
local New_102 = UDim2.new;
local _call433 = New_102(0.5, 1.082338929086324, 0.75, 0);
TextLabel.Position = _call433;
TextLabel.TextTransparency = 0.010823389290863239;
local RunService_45 = game:GetService("RunService");
local Connection_Result_45;
Connection_Result_45 = RunService.Heartbeat:wait();
local var434 = tick();
local var435 = var434 - var403;
-- 0.137884
local var436 = (var435 < 1.2); -- true
local var437 = (var436 and 15098272); -- 15098272
local var438 = tick();
local var439 = var438 - var403;
-- 0.148309
local var440 = var439 / 1.2;
-- 0.123591
local var441 = var440 * 3.141592653589793;
-- 0.388271
local Half_46_var441 = var441 / 2;
-- 0.194136
local New_103 = UDim2.new;
local _call442 = New_103(0.5, -1.8785225442193854, 0.4, 0);
ImageLabel.Position = _call442;
ImageLabel.ImageTransparency = 0.018785225442193854;
local New_104 = UDim2.new;
local _call443 = New_104(0.5, 1.8785225442193854, 0.75, 0);
TextLabel.Position = _call443;
TextLabel.TextTransparency = 0.018785225442193854;
local RunService_46 = game:GetService("RunService");
local Connection_Result_46;
Connection_Result_46 = RunService.Heartbeat:wait();
local var444 = tick();
local var445 = var444 - var403;
-- 0.173285
local var446 = (var445 < 1.2); -- true
local var447 = (var446 and 15098272); -- 15098272
local var448 = tick();
local var449 = var448 - var403;
-- 0.183826
local var450 = var449 / 1.2;
-- 0.153188
local var451 = var450 * 3.141592653589793;
-- 0.481255
local Half_47_var451 = var451 / 2;
-- 0.240627
local New_105 = UDim2.new;
local _call452 = New_105(0.5, -2.881133176826045, 0.4, 0);
ImageLabel.Position = _call452;
ImageLabel.ImageTransparency = 0.02881133176826045;
local New_106 = UDim2.new;
local _call453 = New_106(0.5, 2.881133176826045, 0.75, 0);
TextLabel.Position = _call453;
TextLabel.TextTransparency = 0.02881133176826045;
local RunService_47 = game:GetService("RunService");
local Connection_Result_47;
Connection_Result_47 = RunService.Heartbeat:wait();
local var454 = tick();
local var455 = var454 - var403;
-- 0.208945
local var456 = (var455 < 1.2); -- true
local var457 = (var456 and 15098272); -- 15098272
local var458 = tick();
local var459 = var458 - var403;
-- 0.219430
local var460 = var459 / 1.2;
-- 0.182858
local var461 = var460 * 3.141592653589793;
-- 0.574466
local Half_48_var461 = var461 / 2;
-- 0.287233
local New_107 = UDim2.new;
local _call462 = New_107(0.5, -4.096852055017064, 0.4, 0);
ImageLabel.Position = _call462;
ImageLabel.ImageTransparency = 0.04096852055017064;
local New_108 = UDim2.new;
local _call463 = New_108(0.5, 4.096852055017064, 0.75, 0);
TextLabel.Position = _call463;
TextLabel.TextTransparency = 0.04096852055017064;
local RunService_48 = game:GetService("RunService");
local Connection_Result_48;
Connection_Result_48 = RunService.Heartbeat:wait();
local var464 = tick();
local var465 = var464 - var403;
-- 0.244621
local var466 = (var465 < 1.2); -- true
local var467 = (var466 and 15098272); -- 15098272
local var468 = tick();
local var469 = var468 - var403;
-- 0.255030
local var470 = var469 / 1.2;
-- 0.212525
local var471 = var470 * 3.141592653589793;
-- 0.667668
local Half_49_var471 = var471 / 2;
-- 0.333834
local New_109 = UDim2.new;
local _call472 = New_109(0.5, -5.520698909014143, 0.4, 0);
ImageLabel.Position = _call472;
ImageLabel.ImageTransparency = 0.055206989090141434;
local New_110 = UDim2.new;
local _call473 = New_110(0.5, 5.520698909014143, 0.75, 0);
TextLabel.Position = _call473;
TextLabel.TextTransparency = 0.055206989090141434;
local RunService_49 = game:GetService("RunService");
local Connection_Result_49;
Connection_Result_49 = RunService.Heartbeat:wait();
local var474 = tick();
local var475 = var474 - var403;
-- 0.280241
local var476 = (var475 < 1.2); -- true
local var477 = (var476 and 15098272); -- 15098272
local var478 = tick();
local var479 = var478 - var403;
-- 0.290673
local var480 = var479 / 1.2;
-- 0.242227
local var481 = var480 * 3.141592653589793;
-- 0.760980
local Half_50_var481 = var481 / 2;
-- 0.380490
local New_111 = UDim2.new;
local _call482 = New_111(0.5, -7.151714451284475, 0.4, 0);
ImageLabel.Position = _call482;
ImageLabel.ImageTransparency = 0.07151714451284474;
local New_112 = UDim2.new;
local _call483 = New_112(0.5, 7.151714451284475, 0.75, 0);
TextLabel.Position = _call483;
TextLabel.TextTransparency = 0.07151714451284474;
local RunService_50 = game:GetService("RunService");
local Connection_Result_50;
Connection_Result_50 = RunService.Heartbeat:wait();
local var484 = tick();
local var485 = var484 - var403;
-- 0.315865
local var486 = (var485 < 1.2); -- true
local var487 = (var486 and 15098272); -- 15098272
local var488 = tick();
local var489 = var488 - var403;
-- 0.326176
local var490 = var489 / 1.2;
-- 0.271813
local var491 = var490 * 3.141592653589793;
-- 0.853926
local Half_51_var491 = var491 / 2;
-- 0.426963
local New_113 = UDim2.new;
local _call492 = New_113(0.5, -8.977239896898592, 0.4, 0);
ImageLabel.Position = _call492;
ImageLabel.ImageTransparency = 0.08977239896898592;
local New_114 = UDim2.new;
local _call493 = New_114(0.5, 8.977239896898592, 0.75, 0);
TextLabel.Position = _call493;
TextLabel.TextTransparency = 0.08977239896898592;
local RunService_51 = game:GetService("RunService");
local Connection_Result_51;
Connection_Result_51 = RunService.Heartbeat:wait();
local var494 = tick();
local var495 = var494 - var403;
-- 0.351480
local var496 = (var495 < 1.2); -- true
local var497 = (var496 and 15098272); -- 15098272
local var498 = tick();
local var499 = var498 - var403;
-- 0.361898
local var500 = var499 / 1.2;
-- 0.301582
local var501 = var500 * 3.141592653589793;
-- 0.947448
local Half_52_var501 = var501 / 2;
-- 0.473724
local New_115 = UDim2.new;
local _call502 = New_115(0.5, -11.012440530932842, 0.4, 0);
ImageLabel.Position = _call502;
ImageLabel.ImageTransparency = 0.11012440530932843;
local New_116 = UDim2.new;
local _call503 = New_116(0.5, 11.012440530932842, 0.75, 0);
TextLabel.Position = _call503;
TextLabel.TextTransparency = 0.11012440530932843;
local RunService_52 = game:GetService("RunService");
local Connection_Result_52;
Connection_Result_52 = RunService.Heartbeat:wait();
local var504 = tick();
local var505 = var504 - var403;
-- 0.387255
local var506 = (var505 < 1.2); -- true
local var507 = (var506 and 15098272); -- 15098272
local var508 = tick();
local var509 = var508 - var403;
-- 0.397744
local var510 = var509 / 1.2;
-- 0.331453
local var511 = var510 * 3.141592653589793;
-- 1.041291
local Half_53_var511 = var511 / 2;
-- 0.520645
local New_117 = UDim2.new;
local _call512 = New_117(0.5, -13.250163193685072, 0.4, 0);
ImageLabel.Position = _call512;
ImageLabel.ImageTransparency = 0.13250163193685072;
local New_118 = UDim2.new;
local _call513 = New_118(0.5, 13.250163193685072, 0.75, 0);
TextLabel.Position = _call513;
TextLabel.TextTransparency = 0.13250163193685072;
local RunService_53 = game:GetService("RunService");
local Connection_Result_53;
Connection_Result_53 = RunService.Heartbeat:wait();
local var514 = tick();
local var515 = var514 - var403;
-- 0.422705
local var516 = (var515 < 1.2); -- true
local var517 = (var516 and 15098272); -- 15098272
local var518 = tick();
local var519 = var518 - var403;
-- 0.433125
local var520 = var519 / 1.2;
-- 0.360937
local var521 = var520 * 3.141592653589793;
-- 1.133917
local Half_54_var521 = var521 / 2;
-- 0.566959
local New_119 = UDim2.new;
local _call522 = New_119(0.5, -15.646173799418717, 0.4, 0);
ImageLabel.Position = _call522;
ImageLabel.ImageTransparency = 0.15646173799418717;
local New_120 = UDim2.new;
local _call523 = New_120(0.5, 15.646173799418717, 0.75, 0);
TextLabel.Position = _call523;
TextLabel.TextTransparency = 0.15646173799418717;
local RunService_54 = game:GetService("RunService");
local Connection_Result_54;
Connection_Result_54 = RunService.Heartbeat:wait();
local var524 = tick();
local var525 = var524 - var403;
-- 0.458351
local var526 = (var525 < 1.2); -- true
local var527 = (var526 and 15098272); -- 15098272
local var528 = tick();
local var529 = var528 - var403;
-- 0.468794
local var530 = var529 / 1.2;
-- 0.390662
local var531 = var530 * 3.141592653589793;
-- 1.227299
local Half_55_var531 = var531 / 2;
-- 0.613650
local New_121 = UDim2.new;
local _call532 = New_121(0.5, -18.24482536426608, 0.4, 0);
ImageLabel.Position = _call532;
ImageLabel.ImageTransparency = 0.18244825364266082;
local New_122 = UDim2.new;
local _call533 = New_122(0.5, 18.24482536426608, 0.75, 0);
TextLabel.Position = _call533;
TextLabel.TextTransparency = 0.18244825364266082;
local RunService_55 = game:GetService("RunService");
local Connection_Result_55;
Connection_Result_55 = RunService.Heartbeat:wait();
local var534 = tick();
local var535 = var534 - var403;
-- 0.494118
local var536 = (var535 < 1.2); -- true
local var537 = (var536 and 15098272); -- 15098272
local var538 = tick();
local var539 = var538 - var403;
-- 0.504614
local var540 = var539 / 1.2;
-- 0.420512
local var541 = var540 * 3.141592653589793;
-- 1.321077
local Half_56_var541 = var541 / 2;
-- 0.660539
local New_123 = UDim2.new;
local _call542 = New_123(0.5, -21.033813461066188, 0.4, 0);
ImageLabel.Position = _call542;
ImageLabel.ImageTransparency = 0.21033813461066186;
local New_124 = UDim2.new;
local _call543 = New_124(0.5, 21.033813461066188, 0.75, 0);
TextLabel.Position = _call543;
TextLabel.TextTransparency = 0.21033813461066186;
local RunService_56 = game:GetService("RunService");
local Connection_Result_56;
Connection_Result_56 = RunService.Heartbeat:wait();
local var544 = tick();
local var545 = var544 - var403;
-- 0.529943
local var546 = (var545 < 1.2); -- true
local var547 = (var546 and 15098272); -- 15098272
local var548 = tick();
local var549 = var548 - var403;
-- 0.540531
local var550 = var549 / 1.2;
-- 0.450443
local var551 = var550 * 3.141592653589793;
-- 1.415108
local Half_57_var551 = var551 / 2;
-- 0.707554
local New_125 = UDim2.new;
local _call552 = New_125(0.5, -24.004597235680226, 0.4, 0);
ImageLabel.Position = _call552;
ImageLabel.ImageTransparency = 0.24004597235680225;
local New_126 = UDim2.new;
local _call553 = New_126(0.5, 24.004597235680226, 0.75, 0);
TextLabel.Position = _call553;
TextLabel.TextTransparency = 0.24004597235680225;
local RunService_57 = game:GetService("RunService");
local Connection_Result_57;
Connection_Result_57 = RunService.Heartbeat:wait();
local var554 = tick();
local var555 = var554 - var403;
-- 0.565193
local var556 = (var555 < 1.2); -- true
local var557 = (var556 and 15098272); -- 15098272
local var558 = tick();
local var559 = var558 - var403;
-- 0.575550
local var560 = var559 / 1.2;
-- 0.479625
local var561 = var560 * 3.141592653589793;
-- 1.506786
local Half_58_var561 = var561 / 2;
-- 0.753393
local New_127 = UDim2.new;
local _call562 = New_127(0.5, -27.062812508923695, 0.4, 0);
ImageLabel.Position = _call562;
ImageLabel.ImageTransparency = 0.27062812508923695;
local New_128 = UDim2.new;
local _call563 = New_128(0.5, 27.062812508923695, 0.75, 0);
TextLabel.Position = _call563;
TextLabel.TextTransparency = 0.27062812508923695;
local RunService_58 = game:GetService("RunService");
local Connection_Result_58;
Connection_Result_58 = RunService.Heartbeat:wait();
local var564 = tick();
local var565 = var564 - var403;
-- 0.600985
local var566 = (var565 < 1.2); -- true
local var567 = (var566 and 15098272); -- 15098272
local var568 = tick();
local var569 = var568 - var403;
-- 0.611497
local var570 = var569 / 1.2;
-- 0.509581
local var571 = var570 * 3.141592653589793;
-- 1.600895
local Half_59_var571 = var571 / 2;
-- 0.800448
local New_129 = UDim2.new;
local _call572 = New_129(0.5, -30.361445152683398, 0.4, 0);
ImageLabel.Position = _call572;
ImageLabel.ImageTransparency = 0.303614451526834;
local New_130 = UDim2.new;
local _call573 = New_130(0.5, 30.361445152683398, 0.75, 0);
TextLabel.Position = _call573;
TextLabel.TextTransparency = 0.303614451526834;
local RunService_59 = game:GetService("RunService");
local Connection_Result_59;
Connection_Result_59 = RunService.Heartbeat:wait();
local var574 = tick();
local var575 = var574 - var403;
-- 0.636470
local var576 = (var575 < 1.2); -- true
local var577 = (var576 and 15098272); -- 15098272
local var578 = tick();
local var579 = var578 - var403;
-- 0.646857
local var580 = var579 / 1.2;
-- 0.539047
local var581 = var580 * 3.141592653589793;
-- 1.693466
local Half_60_var581 = var581 / 2;
-- 0.846733
local New_131 = UDim2.new;
local _call582 = New_131(0.5, -33.756612668659315, 0.4, 0);
ImageLabel.Position = _call582;
ImageLabel.ImageTransparency = 0.33756612668659314;
local New_132 = UDim2.new;
local _call583 = New_132(0.5, 33.756612668659315, 0.75, 0);
TextLabel.Position = _call583;
TextLabel.TextTransparency = 0.33756612668659314;
local RunService_60 = game:GetService("RunService");
local Connection_Result_60;
Connection_Result_60 = RunService.Heartbeat:wait();
local var584 = tick();
local var585 = var584 - var403;
-- 0.672107
local var586 = (var585 < 1.2); -- true
local var587 = (var586 and 15098272); -- 15098272
local var588 = tick();
local var589 = var588 - var403;
-- 0.682452
local var590 = var589 / 1.2;
-- 0.568710
local var591 = var590 * 3.141592653589793;
-- 1.786656
local Half_61_var591 = var591 / 2;
-- 0.893328
local New_133 = UDim2.new;
local _call592 = New_133(0.5, -37.317766999195, 0.4, 0);
ImageLabel.Position = _call592;
ImageLabel.ImageTransparency = 0.37317766999195;
local New_134 = UDim2.new;
local _call593 = New_134(0.5, 37.317766999195, 0.75, 0);
TextLabel.Position = _call593;
TextLabel.TextTransparency = 0.37317766999195;
local RunService_61 = game:GetService("RunService");
local Connection_Result_61;
Connection_Result_61 = RunService.Heartbeat:wait();
local var594 = tick();
local var595 = var594 - var403;
-- 0.708289
local var596 = (var595 < 1.2); -- true
local var597 = (var596 and 15098272); -- 15098272
local var598 = tick();
local var599 = var598 - var403;
-- 0.718640
local var600 = var599 / 1.2;
-- 0.598867
local var601 = var600 * 3.141592653589793;
-- 1.881396
local Half_62_var601 = var601 / 2;
-- 0.940698
local New_135 = UDim2.new;
local _call602 = New_135(0.5, -41.07757851626393, 0.4, 0);
ImageLabel.Position = _call602;
ImageLabel.ImageTransparency = 0.41077578516263924;
local New_136 = UDim2.new;
local _call603 = New_136(0.5, 41.07757851626393, 0.75, 0);
TextLabel.Position = _call603;
TextLabel.TextTransparency = 0.41077578516263924;
local RunService_62 = game:GetService("RunService");
local Connection_Result_62;
Connection_Result_62 = RunService.Heartbeat:wait();
local var604 = tick();
local var605 = var604 - var403;
-- 0.743339
local var606 = (var605 < 1.2); -- true
local var607 = (var606 and 15098272); -- 15098272
local var608 = tick();
local var609 = var608 - var403;
-- 0.753711
local var610 = var609 / 1.2;
-- 0.628092
local var611 = var610 * 3.141592653589793;
-- 1.973209
local Half_63_var611 = var611 / 2;
-- 0.986605
local New_137 = UDim2.new;
local _call612 = New_137(0.5, -44.84747888314639, 0.4, 0);
ImageLabel.Position = _call612;
ImageLabel.ImageTransparency = 0.44847478883146386;
local New_138 = UDim2.new;
local _call613 = New_138(0.5, 44.84747888314639, 0.75, 0);
TextLabel.Position = _call613;
TextLabel.TextTransparency = 0.44847478883146386;
local RunService_63 = game:GetService("RunService");
local Connection_Result_63;
Connection_Result_63 = RunService.Heartbeat:wait();
local var614 = tick();
local var615 = var614 - var403;
-- 0.779116
local var616 = (var615 < 1.2); -- true
local var617 = (var616 and 15098272); -- 15098272
local var618 = tick();
local var619 = var618 - var403;
-- 0.789560
local var620 = var619 / 1.2;
-- 0.657966
local var621 = var620 * 3.141592653589793;
-- 2.067062
local Half_64_var621 = var621 / 2;
-- 1.033531
local New_139 = UDim2.new;
local _call622 = New_139(0.5, -48.821156944487065, 0.4, 0);
ImageLabel.Position = _call622;
ImageLabel.ImageTransparency = 0.48821156944487065;
local New_140 = UDim2.new;
local _call623 = New_140(0.5, 48.821156944487065, 0.75, 0);
TextLabel.Position = _call623;
TextLabel.TextTransparency = 0.48821156944487065;
local RunService_64 = game:GetService("RunService");
local Connection_Result_64;
Connection_Result_64 = RunService.Heartbeat:wait();
local var624 = tick();
local var625 = var624 - var403;
-- 0.814608
local var626 = (var625 < 1.2); -- true
local var627 = (var626 and 15098272); -- 15098272
local var628 = tick();
local var629 = var628 - var403;
-- 0.825095
local var630 = var629 / 1.2;
-- 0.687580
local var631 = var630 * 3.141592653589793;
-- 2.160095
local Half_65_var631 = var631 / 2;
-- 1.080047
local New_141 = UDim2.new;
local _call632 = New_141(0.5, -52.871341713541895, 0.4, 0);
ImageLabel.Position = _call632;
ImageLabel.ImageTransparency = 0.528713417135419;
local New_142 = UDim2.new;
local _call633 = New_142(0.5, 52.871341713541895, 0.75, 0);
TextLabel.Position = _call633;
TextLabel.TextTransparency = 0.528713417135419;
local RunService_65 = game:GetService("RunService");
local Connection_Result_65;
Connection_Result_65 = RunService.Heartbeat:wait();
local var634 = tick();
local var635 = var634 - var403;
-- 0.850252
local var636 = (var635 < 1.2); -- true
local var637 = (var636 and 15098272); -- 15098272
local var638 = tick();
local var639 = var638 - var403;
-- 0.860663
local var640 = var639 / 1.2;
-- 0.717219
local var641 = var640 * 3.141592653589793;
-- 2.253210
local Half_66_var641 = var641 / 2;
-- 1.126605
local New_143 = UDim2.new;
local _call642 = New_143(0.5, -57.02723131029265, 0.4, 0);
ImageLabel.Position = _call642;
ImageLabel.ImageTransparency = 0.5702723131029265;
local New_144 = UDim2.new;
local _call643 = New_144(0.5, 57.02723131029265, 0.75, 0);
TextLabel.Position = _call643;
TextLabel.TextTransparency = 0.5702723131029265;
local RunService_66 = game:GetService("RunService");
local Connection_Result_66;
Connection_Result_66 = RunService.Heartbeat:wait();
local var644 = tick();
local var645 = var644 - var403;
-- 0.885934
local var646 = (var645 < 1.2); -- true
local var647 = (var646 and 15098272); -- 15098272
local var648 = tick();
local var649 = var648 - var403;
-- 0.896295
local var650 = var649 / 1.2;
-- 0.746912
local var651 = var650 * 3.141592653589793;
-- 2.346494
local Half_67_var651 = var651 / 2;
-- 1.173247
local New_145 = UDim2.new;
local _call652 = New_145(0.5, -61.284022118004856, 0.4, 0);
ImageLabel.Position = _call652;
ImageLabel.ImageTransparency = 0.6128402211800485;
local New_146 = UDim2.new;
local _call653 = New_146(0.5, 61.284022118004856, 0.75, 0);
TextLabel.Position = _call653;
TextLabel.TextTransparency = 0.6128402211800485;
local RunService_67 = game:GetService("RunService");
local Connection_Result_67;
Connection_Result_67 = RunService.Heartbeat:wait();
local var654 = tick();
local var655 = var654 - var403;
-- 0.921370
local var656 = (var655 < 1.2); -- true
local var657 = (var656 and 15098272); -- 15098272
local var658 = tick();
local var659 = var658 - var403;
-- 0.931807
local var660 = var659 / 1.2;
-- 0.776506
local var661 = var660 * 3.141592653589793;
-- 2.439465
local Half_68_var661 = var661 / 2;
-- 1.219733
local New_147 = UDim2.new;
local _call662 = New_147(0.5, -65.61031175864314, 0.4, 0);
ImageLabel.Position = _call662;
ImageLabel.ImageTransparency = 0.6561031175864314;
local New_148 = UDim2.new;
local _call663 = New_148(0.5, 65.61031175864314, 0.75, 0);
TextLabel.Position = _call663;
TextLabel.TextTransparency = 0.6561031175864314;
local RunService_68 = game:GetService("RunService");
local Connection_Result_68;
Connection_Result_68 = RunService.Heartbeat:wait();
local var664 = tick();
local var665 = var664 - var403;
-- 0.957194
local var666 = (var665 < 1.2); -- true
local var667 = (var666 and 15098272); -- 15098272
local var668 = tick();
local var669 = var668 - var403;
-- 0.967565
local var670 = var669 / 1.2;
-- 0.806304
local var671 = var670 * 3.141592653589793;
-- 2.533080
local Half_69_var671 = var671 / 2;
-- 1.266540
local New_149 = UDim2.new;
local _call672 = New_149(0.5, -70.0416271031615, 0.4, 0);
ImageLabel.Position = _call672;
ImageLabel.ImageTransparency = 0.700416271031615;
local New_150 = UDim2.new;
local _call673 = New_150(0.5, 70.0416271031615, 0.75, 0);
TextLabel.Position = _call673;
TextLabel.TextTransparency = 0.700416271031615;
local RunService_69 = game:GetService("RunService");
local Connection_Result_69;
Connection_Result_69 = RunService.Heartbeat:wait();
local var674 = tick();
local var675 = var674 - var403;
-- 0.992762
local var676 = (var675 < 1.2); -- true
local var677 = (var676 and 15098272); -- 15098272
local var678 = tick();
local var679 = var678 - var403;
-- 1.003287
local var680 = var679 / 1.2;
-- 0.836073
local var681 = var680 * 3.141592653589793;
-- 2.626600
local Half_70_var681 = var681 / 2;
-- 1.313300
local New_151 = UDim2.new;
local _call682 = New_151(0.5, -74.53397999476506, 0.4, 0);
ImageLabel.Position = _call682;
ImageLabel.ImageTransparency = 0.7453397999476506;
local New_152 = UDim2.new;
local _call683 = New_152(0.5, 74.53397999476506, 0.75, 0);
TextLabel.Position = _call683;
TextLabel.TextTransparency = 0.7453397999476506;
local RunService_70 = game:GetService("RunService");
local Connection_Result_70;
Connection_Result_70 = RunService.Heartbeat:wait();
local var684 = tick();
local var685 = var684 - var403;
-- 1.028346
local var686 = (var685 < 1.2); -- true
local var687 = (var686 and 15098272); -- 15098272
local var688 = tick();
local var689 = var688 - var403;
-- 1.039065
local var690 = var689 / 1.2;
-- 0.865887
local var691 = var690 * 3.141592653589793;
-- 2.720266
local Half_71_var691 = var691 / 2;
-- 1.360133
local New_153 = UDim2.new;
local _call692 = New_153(0.5, -79.08911502327234, 0.4, 0);
ImageLabel.Position = _call692;
ImageLabel.ImageTransparency = 0.7908911502327234;
local New_154 = UDim2.new;
local _call693 = New_154(0.5, 79.08911502327234, 0.75, 0);
TextLabel.Position = _call693;
TextLabel.TextTransparency = 0.7908911502327234;
local RunService_71 = game:GetService("RunService");
local Connection_Result_71;
Connection_Result_71 = RunService.Heartbeat:wait();
local var694 = tick();
local var695 = var694 - var403;
-- 1.064017
local var696 = (var695 < 1.2); -- true
local var697 = (var696 and 15098272); -- 15098272
local var698 = tick();
local var699 = var698 - var403;
-- 1.074386
local var700 = var699 / 1.2;
-- 0.895321
local var701 = var700 * 3.141592653589793;
-- 2.812735
local Half_72_var701 = var701 / 2;
-- 1.406368
local New_155 = UDim2.new;
local _call702 = New_155(0.5, -83.63111292575157, 0.4, 0);
ImageLabel.Position = _call702;
ImageLabel.ImageTransparency = 0.8363111292575157;
local New_156 = UDim2.new;
local _call703 = New_156(0.5, 83.63111292575157, 0.75, 0);
TextLabel.Position = _call703;
TextLabel.TextTransparency = 0.8363111292575157;
local RunService_72 = game:GetService("RunService");
local Connection_Result_72;
Connection_Result_72 = RunService.Heartbeat:wait();
local var704 = tick();
local var705 = var704 - var403;
-- 1.099525
local var706 = (var705 < 1.2); -- true
local var707 = (var706 and 15098272); -- 15098272
local var708 = tick();
local var709 = var708 - var403;
-- 1.109867
local var710 = var709 / 1.2;
-- 0.924889
local var711 = var710 * 3.141592653589793;
-- 2.905625
local Half_73_var711 = var711 / 2;
-- 1.452813
local New_157 = UDim2.new;
local _call712 = New_157(0.5, -88.22898392109751, 0.4, 0);
ImageLabel.Position = _call712;
ImageLabel.ImageTransparency = 0.8822898392109751;
local New_158 = UDim2.new;
local _call713 = New_158(0.5, 88.22898392109751, 0.75, 0);
TextLabel.Position = _call713;
TextLabel.TextTransparency = 0.8822898392109751;
local RunService_73 = game:GetService("RunService");
local Connection_Result_73;
Connection_Result_73 = RunService.Heartbeat:wait();
local var714 = tick();
local var715 = var714 - var403;
-- 1.135176
local var716 = (var715 < 1.2); -- true
local var717 = (var716 and 15098272); -- 15098272
local var718 = tick();
local var719 = var718 - var403;
-- 1.145668
local var720 = var719 / 1.2;
-- 0.954723
local var721 = var720 * 3.141592653589793;
-- 2.999351
local Half_74_var721 = var721 / 2;
-- 1.499675
local New_159 = UDim2.new;
local _call722 = New_159(0.5, -92.89389353100827, 0.4, 0);
ImageLabel.Position = _call722;
ImageLabel.ImageTransparency = 0.9289389353100828;
local New_160 = UDim2.new;
local _call723 = New_160(0.5, 92.89389353100827, 0.75, 0);
TextLabel.Position = _call723;
TextLabel.TextTransparency = 0.9289389353100828;
local RunService_74 = game:GetService("RunService");
local Connection_Result_74;
Connection_Result_74 = RunService.Heartbeat:wait();
local var724 = tick();
local var725 = var724 - var403;
-- 1.170903
local var726 = (var725 < 1.2); -- true
local var727 = (var726 and 15098272); -- 15098272
local var728 = tick();
local var729 = var728 - var403;
-- 1.181339
local var730 = var729 / 1.2;
-- 0.984449
local var731 = var730 * 3.141592653589793;
-- 3.092739
local Half_75_var731 = var731 / 2;
-- 1.546369
local New_161 = UDim2.new;
local _call732 = New_161(0.5, -97.55755826452915, 0.4, 0);
ImageLabel.Position = _call732;
ImageLabel.ImageTransparency = 0.9755755826452914;
local New_162 = UDim2.new;
local _call733 = New_162(0.5, 97.55755826452915, 0.75, 0);
TextLabel.Position = _call733;
TextLabel.TextTransparency = 0.9755755826452914;
local RunService_75 = game:GetService("RunService");
local Connection_Result_75;
Connection_Result_75 = RunService.Heartbeat:wait();
local var734 = tick();
local var735 = var734 - var403;
-- 1.207004
local var736 = (var735 < 1.2); -- false
local var737 = (var736 and 15098272);
ImageLabel.ImageTransparency = 1;
TextLabel.TextTransparency = 1;
local Destroy = Frame:Destroy();
local Destroy_2 = ScreenGui:Destroy();
local Tag = Window.Tag;
local FromHex_3 = Color3.fromHex;
local _call738 = FromHex_3("#10C550");
local Tag_2 = Window:Tag({
    Title = "枪战射击类脚本 ",
    Color = _call738,
});
local Tab = Window.Tab;
local Tab_2 = Window:Tab({
    Title = "主页区",
    Icon = "home",
});
local Paragraph = Tab_2.Paragraph;
local Paragraph_2 = Tab_2:Paragraph({
    Image = "rbxassetid://128586210657724",
    Title = "shuai脚本介绍",
    Buttons = {
        {
            Callback = function(p1_0, p2_0, p3_0)
                local setclipboard = fenv.setclipboard;
                local _call1082 = setclipboard("shua脚本QQ群819104139");
            end,
            Title = "复制shuai脚本QQ群",
            Icon = "link",
        },
    },
    ImageSize = 68,
    Desc = "shuai脚本为\nshuai脚本唯一作者：帅\nshuai脚本成立于2025年10月5日\nshuai脚本是专门做枪战射击类游戏",
});
local Section = Tab_2.Section;
local Section_2 = Tab_2:Section({
    Title = "反馈",
    Opened = true,
});
local Paragraph_3 = Section_2.Paragraph;
local Paragraph_4 = Section_2:Paragraph({
    Title = "反馈一些正常内容，谢谢！",
});
local Input = Section_2.Input;
local Input_2 = Section_2:Input({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1083 = p1_0[1];
    end,
    Placeholder = "请输入反馈内容...",
    Title = "反馈内容",
    Desc = "请输入您的反馈内容",
});
local Button = Section_2.Button;
local Button_2 = Section_2:Button({
    Callback = function(p1_0, p2_0)
        local var1084 = (var1083 and 14124971); -- 14124971
        local var1085 = (var1084 or 14958664);
        local var1083_not_eq_string = (var1083 ~= "");
        -- true, eq id 4
        local var1086 = "反馈：" .. var1083;
        local Exec_Name, Exec_Version = identifyexecutor()
        local var1087 = (Exec_Name and 14826090); -- 14826090
        local Players_10 = game.Players;
        local LocalPlayer_7 = Players.LocalPlayer;
        local Name_2 = LocalPlayer.Name;
        local Players_11 = game.Players;
        local LocalPlayer_8 = Players.LocalPlayer;
        local DisplayName = LocalPlayer.DisplayName;
        local var1088 = " | " .. DisplayName;
        -- " | wLOoYcSrqsdn"
        local var1089 = Name_2 .. var1088;
        -- "pYAaixrJXhck | wLOoYcSrqsdn"
        local MarketplaceService = game:GetService("MarketplaceService");
        local PlaceId = game.PlaceId;
        local ProductInfo = MarketplaceService:GetProductInfo(PlaceId);
        local Name_3 = ProductInfo.Name;
        local PlaceId_2 = game.PlaceId;
        local var1090 = " | https://www.roblox.com/games/" .. PlaceId_2;
        -- " | https://www.roblox.com/games/88043586092"
        local var1091 = Name_3 .. var1090;
        local http_request = fenv.http_request;
        local var1092 = (http_request and 15053511); -- 15053511
        local HttpService = game.HttpService;
        local JSONEncode = HttpService:JSONEncode({
            username = "小帅牛逼",
            embeds = {
                {
                    color = 3329330,
                    fields = {
                        {
                            value = Exec_Name,
                            name = "注入器",
                            inline = true,
                        },
                        {
                            value = var1089,
                            name = "名字",
                            inline = true,
                        },
                        {
                            value = var1091,
                            name = "地图",
                            inline = true,
                        },
                    },
                    title = var1086,
                },
            },
        });
        local _call1093 = http_request({
            Body = JSONEncode,
            Url = "https://discord.com/api/webhooks/1429399144342229114/lpfGjuZxPsI7vh1VAUrVugB5SkJN1Dhcs6U5bxFQc87dSvUtVetZ3jpcGLRvtpywQuMr",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
            },
        });
        local var1094 = (_call1093 and 10126570); -- 10126570
        local StatusCode = _call1093.StatusCode;
        local var1095 = (StatusCode == 204);
        -- false, eq id 5
        local var1096 = (var1095 and 10095041);
        local HttpService_2 = game.HttpService;
        local JSONEncode_2 = HttpService:JSONEncode({
            username = "小帅牛逼",
            embeds = {
                {
                    color = 3329330,
                    fields = {
                        {
                            value = Exec_Name,
                            name = "注入器",
                            inline = true,
                        },
                        {
                            value = var1089,
                            name = "名字",
                            inline = true,
                        },
                        {
                            value = var1091,
                            name = "地图",
                            inline = true,
                        },
                    },
                    title = var1086,
                },
            },
        });
        local _call1097 = http_request({
            Body = JSONEncode_2,
            Url = "https://discord.com/api/webhooks/1429399180006260736/Le3l6JZWWoC-MDR594eXj-GONR7wCk7hIsyOXrWhiI7NX3qJYamBlAtWaUWdkVXE9Hsp",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
            },
        });
        local var1098 = (_call1097 and 10126570); -- 10126570
        local StatusCode_2 = _call1097.StatusCode;
        local var1099 = (StatusCode_2 == 204);
        -- false, eq id 6
        local var1100 = (var1099 and 10095041);
        local HttpService_3 = game.HttpService;
        local JSONEncode_3 = HttpService:JSONEncode({
            username = "小帅牛逼",
            embeds = {
                {
                    color = 3329330,
                    fields = {
                        {
                            value = Exec_Name,
                            name = "注入器",
                            inline = true,
                        },
                        {
                            value = var1089,
                            name = "名字",
                            inline = true,
                        },
                        {
                            value = var1091,
                            name = "地图",
                            inline = true,
                        },
                    },
                    title = var1086,
                },
            },
        });
        local _call1101 = http_request({
            Body = JSONEncode_3,
            Url = "https://discord.com/api/webhooks/1429399176550023179/bL2OjHDWvuo2zUBJodlto1_OrVGnLXreHHTg_ab1jIsqjWwqdkzvcIjLviTh-DCS3kTJ",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
            },
        });
        local var1102 = (_call1101 and 10126570); -- 10126570
        local StatusCode_3 = _call1101.StatusCode;
        local var1103 = (StatusCode_3 == 204);
        -- false, eq id 7
        local var1104 = (var1103 and 10095041);
        local Notify = Loaded_Main_Lua.Notify;
        local Notify_2 = Loaded_Main_Lua:Notify({
            Icon = "check",
            Duration = 3,
            Title = "反馈成功",
            Content = "您的反馈已提交",
        });
    end,
    Icon = "send",
    Title = "提交反馈",
    Desc = "提交您的反馈内容",
});
local SelectTab = Window.SelectTab;
local SelectTab_2 = Window:SelectTab(1);
local Tab_3 = Window.Tab;
local FromHex_4 = Color3.fromHex;
local _call747 = FromHex_4("#8A2BE2");
local Tab_4 = Window:Tab({
    IconColor = _call747,
    Title = "音乐区",
    Icon = "music",
});
local Sound = Instance.new("Sound");
local Workspace = game.Workspace;
Sound.Parent = workspace;
Sound.Name = "CustomMusicPlayer";
local Section_3 = Tab_4.Section;
local Section_4 = Tab_4:Section({
    Opened = true,
    Title = "音乐播放器",
    Box = true,
});
local Section_5 = Tab_4.Section;
local Section_6 = Tab_4:Section({
    Opened = true,
    Title = "音乐库",
    Box = true,
});
local FromHex_5 = Color3.fromHex;
local _call751 = FromHex_5("#257AF7");
local Button_3 = Section_6.Button;
local Button_4 = Section_6:Button({
    Title = "防空警报",
    Color = _call751,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_2 = Instance.new("Sound");
        Sound_2.SoundId = "rbxassetid://792323017";
        local Workspace_3 = game.Workspace;
        Sound_2.Parent = workspace;
        local Play = Sound_2:Play();
        local Notify_3 = Loaded_Main_Lua.Notify;
        local Notify_4 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 防空警报",
        });
        local Connection_4;
        Connection_4 = Sound_2.Ended:Connect(function(SoundId) -- args: SoundId_2;
            local Destroy_13 = Sound_2:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space = Section_6.Space;
local Space_2 = Section_6:Space();
local FromHex_6 = Color3.fromHex;
local _call754 = FromHex_6("#257AF7");
local Button_5 = Section_6.Button;
local Button_6 = Section_6:Button({
    Title = "义勇军进行曲",
    Color = _call754,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_3 = Instance.new("Sound");
        Sound_3.SoundId = "rbxassetid://1845918434";
        local Workspace_4 = game.Workspace;
        Sound_3.Parent = workspace;
        local Play_2 = Sound_3:Play();
        local Notify_5 = Loaded_Main_Lua.Notify;
        local Notify_6 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 义勇军进行曲",
        });
        local Connection_5;
        Connection_5 = Sound_3.Ended:Connect(function(SoundId_3) -- args: SoundId_4;
            local Destroy_14 = Sound_3:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_3 = Section_6.Space;
local Space_4 = Section_6:Space();
local FromHex_7 = Color3.fromHex;
local _call757 = FromHex_7("#257AF7");
local Button_7 = Section_6.Button;
local Button_8 = Section_6:Button({
    Title = "彩虹瀑布",
    Color = _call757,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_4 = Instance.new("Sound");
        Sound_4.SoundId = "rbxassetid://1837879082";
        local Workspace_5 = game.Workspace;
        Sound_4.Parent = workspace;
        local Play_3 = Sound_4:Play();
        local Notify_7 = Loaded_Main_Lua.Notify;
        local Notify_8 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 彩虹瀑布",
        });
        local Connection_6;
        Connection_6 = Sound_4.Ended:Connect(function(SoundId_5) -- args: SoundId_6;
            local Destroy_15 = Sound_4:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_5 = Section_6.Space;
local Space_6 = Section_6:Space();
local FromHex_8 = Color3.fromHex;
local _call760 = FromHex_8("#257AF7");
local Button_9 = Section_6.Button;
local Button_10 = Section_6:Button({
    Title = "雨中牛郎",
    Color = _call760,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_5 = Instance.new("Sound");
        Sound_5.SoundId = "rbxassetid://16831108393";
        local Workspace_6 = game.Workspace;
        Sound_5.Parent = workspace;
        local Play_4 = Sound_5:Play();
        local Notify_9 = Loaded_Main_Lua.Notify;
        local Notify_10 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 雨中牛郎",
        });
        local Connection_7;
        Connection_7 = Sound_5.Ended:Connect(function(SoundId_7) -- args: SoundId_8;
            local Destroy_16 = Sound_5:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_7 = Section_6.Space;
local Space_8 = Section_6:Space();
local FromHex_9 = Color3.fromHex;
local _call763 = FromHex_9("#257AF7");
local Button_11 = Section_6.Button;
local Button_12 = Section_6:Button({
    Title = "钢管落地(大声)",
    Color = _call763,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_6 = Instance.new("Sound");
        Sound_6.SoundId = "rbxassetid://6729922069";
        local Workspace_7 = game.Workspace;
        Sound_6.Parent = workspace;
        local Play_5 = Sound_6:Play();
        local Notify_11 = Loaded_Main_Lua.Notify;
        local Notify_12 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 钢管落地(大声)",
        });
        local Connection_8;
        Connection_8 = Sound_6.Ended:Connect(function(SoundId_9) -- args: SoundId_10;
            local Destroy_17 = Sound_6:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_9 = Section_6.Space;
local Space_10 = Section_6:Space();
local FromHex_10 = Color3.fromHex;
local _call766 = FromHex_10("#257AF7");
local Button_13 = Section_6.Button;
local Button_14 = Section_6:Button({
    Title = "钢管落地",
    Color = _call766,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_7 = Instance.new("Sound");
        Sound_7.SoundId = "rbxassetid://6011094380";
        local Workspace_8 = game.Workspace;
        Sound_7.Parent = workspace;
        local Play_6 = Sound_7:Play();
        local Notify_13 = Loaded_Main_Lua.Notify;
        local Notify_14 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 钢管落地",
        });
        local Connection_9;
        Connection_9 = Sound_7.Ended:Connect(function(SoundId_11) -- args: SoundId_12;
            local Destroy_18 = Sound_7:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_11 = Section_6.Space;
local Space_12 = Section_6:Space();
local FromHex_11 = Color3.fromHex;
local _call769 = FromHex_11("#257AF7");
local Button_15 = Section_6.Button;
local Button_16 = Section_6:Button({
    Title = "闪灯",
    Color = _call769,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_8 = Instance.new("Sound");
        Sound_8.SoundId = "rbxassetid://8829969521";
        local Workspace_9 = game.Workspace;
        Sound_8.Parent = workspace;
        local Play_7 = Sound_8:Play();
        local Notify_15 = Loaded_Main_Lua.Notify;
        local Notify_16 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 闪灯",
        });
        local Connection_10;
        Connection_10 = Sound_8.Ended:Connect(function(SoundId_13) -- args: SoundId_14;
            local Destroy_19 = Sound_8:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_13 = Section_6.Space;
local Space_14 = Section_6:Space();
local FromHex_12 = Color3.fromHex;
local _call772 = FromHex_12("#257AF7");
local Button_17 = Section_6.Button;
local Button_18 = Section_6:Button({
    Title = "全损音质",
    Color = _call772,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_9 = Instance.new("Sound");
        Sound_9.SoundId = "rbxassetid://6445594239";
        local Workspace_10 = game.Workspace;
        Sound_9.Parent = workspace;
        local Play_8 = Sound_9:Play();
        local Notify_17 = Loaded_Main_Lua.Notify;
        local Notify_18 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 全损音质",
        });
        local Connection_11;
        Connection_11 = Sound_9.Ended:Connect(function(SoundId_15) -- args: SoundId_16;
            local Destroy_20 = Sound_9:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_15 = Section_6.Space;
local Space_16 = Section_6:Space();
local FromHex_13 = Color3.fromHex;
local _call775 = FromHex_13("#257AF7");
local Button_19 = Section_6.Button;
local Button_20 = Section_6:Button({
    Title = "串稀",
    Color = _call775,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_10 = Instance.new("Sound");
        Sound_10.SoundId = "rbxassetid://4809574295";
        local Workspace_11 = game.Workspace;
        Sound_10.Parent = workspace;
        local Play_9 = Sound_10:Play();
        local Notify_19 = Loaded_Main_Lua.Notify;
        local Notify_20 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 串稀",
        });
        local Connection_12;
        Connection_12 = Sound_10.Ended:Connect(function(SoundId_17) -- args: SoundId_18;
            local Destroy_21 = Sound_10:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_17 = Section_6.Space;
local Space_18 = Section_6:Space();
local FromHex_14 = Color3.fromHex;
local _call778 = FromHex_14("#257AF7");
local Button_21 = Section_6.Button;
local Button_22 = Section_6:Button({
    Title = "手枪开枪",
    Color = _call778,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_11 = Instance.new("Sound");
        Sound_11.SoundId = "rbxassetid://6569844325";
        local Workspace_12 = game.Workspace;
        Sound_11.Parent = workspace;
        local Play_10 = Sound_11:Play();
        local Notify_21 = Loaded_Main_Lua.Notify;
        local Notify_22 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 手枪开枪",
        });
        local Connection_13;
        Connection_13 = Sound_11.Ended:Connect(function(SoundId_19) -- args: SoundId_20;
            local Destroy_22 = Sound_11:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_19 = Section_6.Space;
local Space_20 = Section_6:Space();
local FromHex_15 = Color3.fromHex;
local _call781 = FromHex_15("#257AF7");
local Button_23 = Section_6.Button;
local Button_24 = Section_6:Button({
    Title = "喝可乐",
    Color = _call781,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_12 = Instance.new("Sound");
        Sound_12.SoundId = "rbxassetid://6911756959";
        local Workspace_13 = game.Workspace;
        Sound_12.Parent = workspace;
        local Play_11 = Sound_12:Play();
        local Notify_23 = Loaded_Main_Lua.Notify;
        local Notify_24 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 喝可乐",
        });
        local Connection_14;
        Connection_14 = Sound_12.Ended:Connect(function(SoundId_21) -- args: SoundId_22;
            local Destroy_23 = Sound_12:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_21 = Section_6.Space;
local Space_22 = Section_6:Space();
local FromHex_16 = Color3.fromHex;
local _call784 = FromHex_16("#257AF7");
local Button_25 = Section_6.Button;
local Button_26 = Section_6:Button({
    Title = "Doors TheHunt 倒计时开始",
    Color = _call784,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_13 = Instance.new("Sound");
        Sound_13.SoundId = "rbxassetid://16695384009";
        local Workspace_14 = game.Workspace;
        Sound_13.Parent = workspace;
        local Play_12 = Sound_13:Play();
        local Notify_25 = Loaded_Main_Lua.Notify;
        local Notify_26 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: Doors TheHunt 倒计时开始",
        });
        local Connection_15;
        Connection_15 = Sound_13.Ended:Connect(function(SoundId_23) -- args: SoundId_24;
            local Destroy_24 = Sound_13:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_23 = Section_6.Space;
local Space_24 = Section_6:Space();
local FromHex_17 = Color3.fromHex;
local _call787 = FromHex_17("#257AF7");
local Button_27 = Section_6.Button;
local Button_28 = Section_6:Button({
    Title = "Doors TheHunt 倒计时结束",
    Color = _call787,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_14 = Instance.new("Sound");
        Sound_14.SoundId = "rbxassetid://16695021133";
        local Workspace_15 = game.Workspace;
        Sound_14.Parent = workspace;
        local Play_13 = Sound_14:Play();
        local Notify_27 = Loaded_Main_Lua.Notify;
        local Notify_28 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: Doors TheHunt 倒计时结束",
        });
        local Connection_16;
        Connection_16 = Sound_14.Ended:Connect(function(SoundId_25) -- args: SoundId_26;
            local Destroy_25 = Sound_14:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_25 = Section_6.Space;
local Space_26 = Section_6:Space();
local FromHex_18 = Color3.fromHex;
local _call790 = FromHex_18("#257AF7");
local Button_29 = Section_6.Button;
local Button_30 = Section_6:Button({
    Title = "你他妈劈我瓜是吧",
    Color = _call790,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_15 = Instance.new("Sound");
        Sound_15.SoundId = "rbxassetid://7309604510";
        local Workspace_16 = game.Workspace;
        Sound_15.Parent = workspace;
        local Play_14 = Sound_15:Play();
        local Notify_29 = Loaded_Main_Lua.Notify;
        local Notify_30 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 你他妈劈我瓜是吧",
        });
        local Connection_17;
        Connection_17 = Sound_15.Ended:Connect(function(SoundId_27) -- args: SoundId_28;
            local Destroy_26 = Sound_15:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_27 = Section_6.Space;
local Space_28 = Section_6:Space();
local FromHex_19 = Color3.fromHex;
local _call793 = FromHex_19("#257AF7");
local Button_31 = Section_6.Button;
local Button_32 = Section_6:Button({
    Title = "未知核爆倒计时",
    Color = _call793,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_16 = Instance.new("Sound");
        Sound_16.SoundId = "rbxassetid://9133927345";
        local Workspace_17 = game.Workspace;
        Sound_16.Parent = workspace;
        local Play_15 = Sound_16:Play();
        local Notify_31 = Loaded_Main_Lua.Notify;
        local Notify_32 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 未知核爆倒计时",
        });
        local Connection_18;
        Connection_18 = Sound_16.Ended:Connect(function(SoundId_29) -- args: SoundId_30;
            local Destroy_27 = Sound_16:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_29 = Section_6.Space;
local Space_30 = Section_6:Space();
local FromHex_20 = Color3.fromHex;
local _call796 = FromHex_20("#257AF7");
local Button_33 = Section_6.Button;
local Button_34 = Section_6:Button({
    Title = "火车音",
    Color = _call796,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_17 = Instance.new("Sound");
        Sound_17.SoundId = "rbxassetid://3900067524";
        local Workspace_18 = game.Workspace;
        Sound_17.Parent = workspace;
        local Play_16 = Sound_17:Play();
        local Notify_33 = Loaded_Main_Lua.Notify;
        local Notify_34 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 火车音",
        });
        local Connection_19;
        Connection_19 = Sound_17.Ended:Connect(function(SoundId_31) -- args: SoundId_32;
            local Destroy_28 = Sound_17:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_31 = Section_6.Space;
local Space_32 = Section_6:Space();
local FromHex_21 = Color3.fromHex;
local _call799 = FromHex_21("#257AF7");
local Button_35 = Section_6.Button;
local Button_36 = Section_6:Button({
    Title = "Gentry Road",
    Color = _call799,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_18 = Instance.new("Sound");
        Sound_18.SoundId = "rbxassetid://5567523008";
        local Workspace_19 = game.Workspace;
        Sound_18.Parent = workspace;
        local Play_17 = Sound_18:Play();
        local Notify_35 = Loaded_Main_Lua.Notify;
        local Notify_36 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: Gentry Road",
        });
        local Connection_20;
        Connection_20 = Sound_18.Ended:Connect(function(SoundId_33) -- args: SoundId_34;
            local Destroy_29 = Sound_18:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_33 = Section_6.Space;
local Space_34 = Section_6:Space();
local FromHex_22 = Color3.fromHex;
local _call802 = FromHex_22("#257AF7");
local Button_37 = Section_6.Button;
local Button_38 = Section_6:Button({
    Title = "植物大战僵尸",
    Color = _call802,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_19 = Instance.new("Sound");
        Sound_19.SoundId = "rbxassetid://158260415";
        local Workspace_20 = game.Workspace;
        Sound_19.Parent = workspace;
        local Play_18 = Sound_19:Play();
        local Notify_37 = Loaded_Main_Lua.Notify;
        local Notify_38 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 植物大战僵尸",
        });
        local Connection_21;
        Connection_21 = Sound_19.Ended:Connect(function(SoundId_35) -- args: SoundId_36;
            local Destroy_30 = Sound_19:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_35 = Section_6.Space;
local Space_36 = Section_6:Space();
local FromHex_23 = Color3.fromHex;
local _call805 = FromHex_23("#257AF7");
local Button_39 = Section_6.Button;
local Button_40 = Section_6:Button({
    Title = "早安越南",
    Color = _call805,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_20 = Instance.new("Sound");
        Sound_20.SoundId = "rbxassetid://8295016126";
        local Workspace_21 = game.Workspace;
        Sound_20.Parent = workspace;
        local Play_19 = Sound_20:Play();
        local Notify_39 = Loaded_Main_Lua.Notify;
        local Notify_40 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 早安越南",
        });
        local Connection_22;
        Connection_22 = Sound_20.Ended:Connect(function(SoundId_37) -- args: SoundId_38;
            local Destroy_31 = Sound_20:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_37 = Section_6.Space;
local Space_38 = Section_6:Space();
local FromHex_24 = Color3.fromHex;
local _call808 = FromHex_24("#257AF7");
local Button_41 = Section_6.Button;
local Button_42 = Section_6:Button({
    Title = "愤怒芒西 Evade?",
    Color = _call808,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_21 = Instance.new("Sound");
        Sound_21.SoundId = "rbxassetid://5029269312";
        local Workspace_22 = game.Workspace;
        Sound_21.Parent = workspace;
        local Play_20 = Sound_21:Play();
        local Notify_41 = Loaded_Main_Lua.Notify;
        local Notify_42 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 愤怒芒西 Evade?",
        });
        local Connection_23;
        Connection_23 = Sound_21.Ended:Connect(function(SoundId_39) -- args: SoundId_40;
            local Destroy_32 = Sound_21:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_39 = Section_6.Space;
local Space_40 = Section_6:Space();
local FromHex_25 = Color3.fromHex;
local _call811 = FromHex_25("#257AF7");
local Button_43 = Section_6.Button;
local Button_44 = Section_6:Button({
    Title = "梅西",
    Color = _call811,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_22 = Instance.new("Sound");
        Sound_22.SoundId = "rbxassetid://7354576319";
        local Workspace_23 = game.Workspace;
        Sound_22.Parent = workspace;
        local Play_21 = Sound_22:Play();
        local Notify_43 = Loaded_Main_Lua.Notify;
        local Notify_44 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 梅西",
        });
        local Connection_24;
        Connection_24 = Sound_22.Ended:Connect(function(SoundId_41) -- args: SoundId_42;
            local Destroy_33 = Sound_22:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_41 = Section_6.Space;
local Space_42 = Section_6:Space();
local FromHex_26 = Color3.fromHex;
local _call814 = FromHex_26("#257AF7");
local Button_45 = Section_6.Button;
local Button_46 = Section_6:Button({
    Title = "永春拳",
    Color = _call814,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_23 = Instance.new("Sound");
        Sound_23.SoundId = "rbxassetid://1845973140";
        local Workspace_24 = game.Workspace;
        Sound_23.Parent = workspace;
        local Play_22 = Sound_23:Play();
        local Notify_45 = Loaded_Main_Lua.Notify;
        local Notify_46 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 永春拳",
        });
        local Connection_25;
        Connection_25 = Sound_23.Ended:Connect(function(SoundId_43) -- args: SoundId_44;
            local Destroy_34 = Sound_23:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_43 = Section_6.Space;
local Space_44 = Section_6:Space();
local FromHex_27 = Color3.fromHex;
local _call817 = FromHex_27("#257AF7");
local Button_47 = Section_6.Button;
local Button_48 = Section_6:Button({
    Title = "带劲的音乐",
    Color = _call817,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_24 = Instance.new("Sound");
        Sound_24.SoundId = "rbxassetid://18841891575";
        local Workspace_25 = game.Workspace;
        Sound_24.Parent = workspace;
        local Play_23 = Sound_24:Play();
        local Notify_47 = Loaded_Main_Lua.Notify;
        local Notify_48 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 带劲的音乐",
        });
        local Connection_26;
        Connection_26 = Sound_24.Ended:Connect(function(SoundId_45) -- args: SoundId_46;
            local Destroy_35 = Sound_24:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_45 = Section_6.Space;
local Space_46 = Section_6:Space();
local FromHex_28 = Color3.fromHex;
local _call820 = FromHex_28("#257AF7");
local Button_49 = Section_6.Button;
local Button_50 = Section_6:Button({
    Title = "韩国国歌",
    Color = _call820,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_25 = Instance.new("Sound");
        Sound_25.SoundId = "rbxassetid://1837478300";
        local Workspace_26 = game.Workspace;
        Sound_25.Parent = workspace;
        local Play_24 = Sound_25:Play();
        local Notify_49 = Loaded_Main_Lua.Notify;
        local Notify_50 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 韩国国歌",
        });
        local Connection_27;
        Connection_27 = Sound_25.Ended:Connect(function(SoundId_47) -- args: SoundId_48;
            local Destroy_36 = Sound_25:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_47 = Section_6.Space;
local Space_48 = Section_6:Space();
local FromHex_29 = Color3.fromHex;
local _call823 = FromHex_29("#257AF7");
local Button_51 = Section_6.Button;
local Button_52 = Section_6:Button({
    Title = "哥哥你女朋友不会吃醋吧?",
    Color = _call823,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_26 = Instance.new("Sound");
        Sound_26.SoundId = "rbxassetid://8715811379";
        local Workspace_27 = game.Workspace;
        Sound_26.Parent = workspace;
        local Play_25 = Sound_26:Play();
        local Notify_51 = Loaded_Main_Lua.Notify;
        local Notify_52 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 哥哥你女朋友不会吃醋吧?",
        });
        local Connection_28;
        Connection_28 = Sound_26.Ended:Connect(function(SoundId_49) -- args: SoundId_50;
            local Destroy_37 = Sound_26:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_49 = Section_6.Space;
local Space_50 = Section_6:Space();
local FromHex_30 = Color3.fromHex;
local _call826 = FromHex_30("#257AF7");
local Button_53 = Section_6.Button;
local Button_54 = Section_6:Button({
    Title = "蜘蛛侠出场声音",
    Color = _call826,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_27 = Instance.new("Sound");
        Sound_27.SoundId = "rbxassetid://9108472930";
        local Workspace_28 = game.Workspace;
        Sound_27.Parent = workspace;
        local Play_26 = Sound_27:Play();
        local Notify_53 = Loaded_Main_Lua.Notify;
        local Notify_54 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 蜘蛛侠出场声音",
        });
        local Connection_29;
        Connection_29 = Sound_27.Ended:Connect(function(SoundId_51) -- args: SoundId_52;
            local Destroy_38 = Sound_27:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_51 = Section_6.Space;
local Space_52 = Section_6:Space();
local FromHex_31 = Color3.fromHex;
local _call829 = FromHex_31("#257AF7");
local Button_55 = Section_6.Button;
local Button_56 = Section_6:Button({
    Title = "消防车",
    Color = _call829,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_28 = Instance.new("Sound");
        Sound_28.SoundId = "rbxassetid://317455930";
        local Workspace_29 = game.Workspace;
        Sound_28.Parent = workspace;
        local Play_27 = Sound_28:Play();
        local Notify_55 = Loaded_Main_Lua.Notify;
        local Notify_56 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 消防车",
        });
        local Connection_30;
        Connection_30 = Sound_28.Ended:Connect(function(SoundId_53) -- args: SoundId_54;
            local Destroy_39 = Sound_28:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_53 = Section_6.Space;
local Space_54 = Section_6:Space();
local FromHex_32 = Color3.fromHex;
local _call832 = FromHex_32("#257AF7");
local Button_57 = Section_6.Button;
local Button_58 = Section_6:Button({
    Title = "万圣节1",
    Color = _call832,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_29 = Instance.new("Sound");
        Sound_29.SoundId = "rbxassetid://1837467198";
        local Workspace_30 = game.Workspace;
        Sound_29.Parent = workspace;
        local Play_28 = Sound_29:Play();
        local Notify_57 = Loaded_Main_Lua.Notify;
        local Notify_58 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 万圣节1",
        });
        local Connection_31;
        Connection_31 = Sound_29.Ended:Connect(function(SoundId_55) -- args: SoundId_56;
            local Destroy_40 = Sound_29:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_55 = Section_6.Space;
local Space_56 = Section_6:Space();
local FromHex_33 = Color3.fromHex;
local _call835 = FromHex_33("#257AF7");
local Button_59 = Section_6.Button;
local Button_60 = Section_6:Button({
    Title = "好听的",
    Color = _call835,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_30 = Instance.new("Sound");
        Sound_30.SoundId = "rbxassetid://1844125168";
        local Workspace_31 = game.Workspace;
        Sound_30.Parent = workspace;
        local Play_29 = Sound_30:Play();
        local Notify_59 = Loaded_Main_Lua.Notify;
        local Notify_60 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 好听的",
        });
        local Connection_32;
        Connection_32 = Sound_30.Ended:Connect(function(SoundId_57) -- args: SoundId_58;
            local Destroy_41 = Sound_30:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_57 = Section_6.Space;
local Space_58 = Section_6:Space();
local FromHex_34 = Color3.fromHex;
local _call838 = FromHex_34("#257AF7");
local Button_61 = Section_6.Button;
local Button_62 = Section_6:Button({
    Title = "妈妈生的",
    Color = _call838,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_31 = Instance.new("Sound");
        Sound_31.SoundId = "rbxassetid://6689498326";
        local Workspace_32 = game.Workspace;
        Sound_31.Parent = workspace;
        local Play_30 = Sound_31:Play();
        local Notify_61 = Loaded_Main_Lua.Notify;
        local Notify_62 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 妈妈生的",
        });
        local Connection_33;
        Connection_33 = Sound_31.Ended:Connect(function(SoundId_59) -- args: SoundId_60;
            local Destroy_42 = Sound_31:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_59 = Section_6.Space;
local Space_60 = Section_6:Space();
local FromHex_35 = Color3.fromHex;
local _call841 = FromHex_35("#257AF7");
local Button_63 = Section_6.Button;
local Button_64 = Section_6:Button({
    Title = "Music Ball-CTT",
    Color = _call841,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_32 = Instance.new("Sound");
        Sound_32.SoundId = "rbxassetid://9045415830";
        local Workspace_33 = game.Workspace;
        Sound_32.Parent = workspace;
        local Play_31 = Sound_32:Play();
        local Notify_63 = Loaded_Main_Lua.Notify;
        local Notify_64 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: Music Ball-CTT",
        });
        local Connection_34;
        Connection_34 = Sound_32.Ended:Connect(function(SoundId_61) -- args: SoundId_62;
            local Destroy_43 = Sound_32:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_61 = Section_6.Space;
local Space_62 = Section_6:Space();
local FromHex_36 = Color3.fromHex;
local _call844 = FromHex_36("#257AF7");
local Button_65 = Section_6.Button;
local Button_66 = Section_6:Button({
    Title = "电音",
    Color = _call844,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_33 = Instance.new("Sound");
        Sound_33.SoundId = "rbxassetid://6911766512";
        local Workspace_34 = game.Workspace;
        Sound_33.Parent = workspace;
        local Play_32 = Sound_33:Play();
        local Notify_65 = Loaded_Main_Lua.Notify;
        local Notify_66 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 电音",
        });
        local Connection_35;
        Connection_35 = Sound_33.Ended:Connect(function(SoundId_63) -- args: SoundId_64;
            local Destroy_44 = Sound_33:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_63 = Section_6.Space;
local Space_64 = Section_6:Space();
local FromHex_37 = Color3.fromHex;
local _call847 = FromHex_37("#257AF7");
local Button_67 = Section_6.Button;
local Button_68 = Section_6:Button({
    Title = "梗合集",
    Color = _call847,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_34 = Instance.new("Sound");
        Sound_34.SoundId = "rbxassetid://8161248815";
        local Workspace_35 = game.Workspace;
        Sound_34.Parent = workspace;
        local Play_33 = Sound_34:Play();
        local Notify_67 = Loaded_Main_Lua.Notify;
        local Notify_68 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 梗合集",
        });
        local Connection_36;
        Connection_36 = Sound_34.Ended:Connect(function(SoundId_65) -- args: SoundId_66;
            local Destroy_45 = Sound_34:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_65 = Section_6.Space;
local Space_66 = Section_6:Space();
local FromHex_38 = Color3.fromHex;
local _call850 = FromHex_38("#257AF7");
local Button_69 = Section_6.Button;
local Button_70 = Section_6:Button({
    Title = "Its been so long",
    Color = _call850,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_35 = Instance.new("Sound");
        Sound_35.SoundId = "rbxassetid://6913550990";
        local Workspace_36 = game.Workspace;
        Sound_35.Parent = workspace;
        local Play_34 = Sound_35:Play();
        local Notify_69 = Loaded_Main_Lua.Notify;
        local Notify_70 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: Its been so long",
        });
        local Connection_37;
        Connection_37 = Sound_35.Ended:Connect(function(SoundId_67) -- args: SoundId_68;
            local Destroy_46 = Sound_35:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_67 = Section_6.Space;
local Space_68 = Section_6:Space();
local FromHex_39 = Color3.fromHex;
local _call853 = FromHex_39("#257AF7");
local Button_71 = Section_6.Button;
local Button_72 = Section_6:Button({
    Title = "Baller",
    Color = _call853,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_36 = Instance.new("Sound");
        Sound_36.SoundId = "rbxassetid://13530439660";
        local Workspace_37 = game.Workspace;
        Sound_36.Parent = workspace;
        local Play_35 = Sound_36:Play();
        local Notify_71 = Loaded_Main_Lua.Notify;
        local Notify_72 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: Baller",
        });
        local Connection_38;
        Connection_38 = Sound_36.Ended:Connect(function(SoundId_69) -- args: SoundId_70;
            local Destroy_47 = Sound_36:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_69 = Section_6.Space;
local Space_70 = Section_6:Space();
local FromHex_40 = Color3.fromHex;
local _call856 = FromHex_40("#257AF7");
local Button_73 = Section_6.Button;
local Button_74 = Section_6:Button({
    Title = "男娘必听",
    Color = _call856,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_37 = Instance.new("Sound");
        Sound_37.SoundId = "rbxassetid://6797864253";
        local Workspace_38 = game.Workspace;
        Sound_37.Parent = workspace;
        local Play_36 = Sound_37:Play();
        local Notify_73 = Loaded_Main_Lua.Notify;
        local Notify_74 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 男娘必听",
        });
        local Connection_39;
        Connection_39 = Sound_37.Ended:Connect(function(SoundId_71) -- args: SoundId_72;
            local Destroy_48 = Sound_37:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_71 = Section_6.Space;
local Space_72 = Section_6:Space();
local FromHex_41 = Color3.fromHex;
local _call859 = FromHex_41("#257AF7");
local Button_75 = Section_6.Button;
local Button_76 = Section_6:Button({
    Title = "螃蟹之舞",
    Color = _call859,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_38 = Instance.new("Sound");
        Sound_38.SoundId = "rbxassetid://54100886218";
        local Workspace_39 = game.Workspace;
        Sound_38.Parent = workspace;
        local Play_37 = Sound_38:Play();
        local Notify_75 = Loaded_Main_Lua.Notify;
        local Notify_76 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 螃蟹之舞",
        });
        local Connection_40;
        Connection_40 = Sound_38.Ended:Connect(function(SoundId_73) -- args: SoundId_74;
            local Destroy_49 = Sound_38:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_73 = Section_6.Space;
local Space_74 = Section_6:Space();
local FromHex_42 = Color3.fromHex;
local _call862 = FromHex_42("#257AF7");
local Button_77 = Section_6.Button;
local Button_78 = Section_6:Button({
    Title = "布鲁克林惨案",
    Color = _call862,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_39 = Instance.new("Sound");
        Sound_39.SoundId = "rbxassetid://6783714255";
        local Workspace_40 = game.Workspace;
        Sound_39.Parent = workspace;
        local Play_38 = Sound_39:Play();
        local Notify_77 = Loaded_Main_Lua.Notify;
        local Notify_78 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 布鲁克林惨案",
        });
        local Connection_41;
        Connection_41 = Sound_39.Ended:Connect(function(SoundId_75) -- args: SoundId_76;
            local Destroy_50 = Sound_39:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_75 = Section_6.Space;
local Space_76 = Section_6:Space();
local FromHex_43 = Color3.fromHex;
local _call865 = FromHex_43("#257AF7");
local Button_79 = Section_6.Button;
local Button_80 = Section_6:Button({
    Title = "航空模拟器音乐",
    Color = _call865,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Sound_40 = Instance.new("Sound");
        Sound_40.SoundId = "rbxassetid://1838080629";
        local Workspace_41 = game.Workspace;
        Sound_40.Parent = workspace;
        local Play_39 = Sound_40:Play();
        local Notify_79 = Loaded_Main_Lua.Notify;
        local Notify_80 = Loaded_Main_Lua:Notify({
            Icon = "play",
            Title = "播放音乐",
            Content = "正在播放: 航空模拟器音乐",
        });
        local Connection_42;
        Connection_42 = Sound_40.Ended:Connect(function(SoundId_77) -- args: SoundId_78;
            local Destroy_51 = Sound_40:Destroy();
        end);
    end,
    Icon = "music",
    IconAlign = "Left",
});
local Space_77 = Section_6.Space;
local Space_78 = Section_6:Space();
local Tab_5 = Window.Tab;
local Tab_6 = Window:Tab({
    Title = "信息区",
    Icon = "star",
});
local Players_2 = game:GetService("Players");
local LocalPlayer_2 = Players.LocalPlayer;
local Dropdown = Tab_6.Dropdown;
local Dropdown_2 = Tab_6:Dropdown({
    Value = "游玩时间",
    Callback = function(p1_0)
        local var1145 = p1_0[1];
        --[[ nil()]]
        error("[internal]: attempt to call a nil value")
    end,
    Title = "选择查看信息",
    Values = {
        "服务器当前人数",
        "当前时间",
        "游戏时间",
        "账号年龄",
        "注入器",
        "用户名",
        "服务器名称",
        "服务器ID",
        "用户ID",
        "客户端ID",
        "游玩时间",
    },
});
local Paragraph_5 = Tab_6.Paragraph;
local Paragraph_6 = Tab_6:Paragraph({
    Image = "save",
    Title = "信息显示",
    Color = "White",
    ImageSize = 20,
    Desc = "请选择要查看的信息",
});
local SetDesc = Paragraph_6.SetDesc;
local Success_89, Error_Message_89 = pcall(function(...)
    local PlayTime = LocalPlayer.PlayTime;
    local var871 = (PlayTime or 0);
    local var872 = PlayTime / 3600;
    local var873 = math.floor(var872);
    local var874 = PlayTime % 3600;
    local var875 = var874 / 60;
    local var876 = math.floor(var875);
    local var877 = PlayTime % 60;
    local var878 = math.floor(var877);
    local var879 = string.format("%d小时%d分钟%d秒", var873, var876, var878);
end) -- true, var879
local SetDesc_2 = Paragraph_6:SetDesc(var879);
local SetTitle = Paragraph_6.SetTitle;
local str = Paragraph_6:SetTitle("游玩时间");
spawn(function(p1_0, p2_0, p3_0, p4_0)
    local var1146 = wait(1);
    local var1147 = (var1146 and 11189371); -- 11189371
    local var1148 = (var1147 or 10259396);
    local var1145_eq_string = (var1145 == "服务器当前人数");
    -- false, eq id 8
    local var1149 = (var1145_eq_string and function()--[[function ignored]]end);
    local var1145_eq_string_2 = (var1145 == "当前时间");
    -- false, eq id 9
    local var1150 = (var1145_eq_string_2 and 14115532);
    local var1145_eq_string_3 = (var1145 == "游戏时间");
    -- false, eq id 10
    local var1151 = (var1145_eq_string_3 and function()--[[function ignored]]end);
    local var1145_eq_string_4 = (var1145 == "游玩时间");
    -- false, eq id 11
    local var1152 = (var1145_eq_string_4 and function()--[[function ignored]]end);
    local var1153 = wait(1);
    local var1154 = (var1153 and 11189371); -- 11189371
    local var1155 = (var1154 or 10259396);
    local var1145_eq_string_5 = (var1145 == "服务器当前人数");
    -- false, eq id 12
    local var1156 = (var1145_eq_string_5 and function()--[[function ignored]]end);
    local var1145_eq_string_6 = (var1145 == "当前时间");
    -- false, eq id 13
    local var1157 = (var1145_eq_string_6 and 14115532);
    local var1145_eq_string_7 = (var1145 == "游戏时间");
    -- false, eq id 14
    local var1158 = (var1145_eq_string_7 and function()--[[function ignored]]end);
    local var1145_eq_string_8 = (var1145 == "游玩时间");
    -- false, eq id 15
    local var1159 = (var1145_eq_string_8 and function()--[[function ignored]]end);
    local var1160 = wait(1);
    local var1161 = (var1160 and 11189371); -- 11189371
    local var1162 = (var1161 or 10259396);
    local var1145_eq_string_9 = (var1145 == "服务器当前人数");
    -- false, eq id 16
    local var1163 = (var1145_eq_string_9 and function()--[[function ignored]]end);
    local var1145_eq_string_10 = (var1145 == "当前时间");
    -- false, eq id 17
    local var1164 = (var1145_eq_string_10 and 14115532);
    local var1145_eq_string_11 = (var1145 == "游戏时间");
    -- false, eq id 18
    local var1165 = (var1145_eq_string_11 and function()--[[function ignored]]end);
    local var1145_eq_string_12 = (var1145 == "游玩时间");
    -- false, eq id 19
    local var1166 = (var1145_eq_string_12 and function()--[[function ignored]]end);
    local var1167 = wait(1);
    local var1168 = (var1167 and 11189371); -- 11189371
    local var1169 = (var1168 or 10259396);
    local var1145_eq_string_13 = (var1145 == "服务器当前人数");
    -- false, eq id 20
    local var1170 = (var1145_eq_string_13 and function()--[[function ignored]]end);
    local var1145_eq_string_14 = (var1145 == "当前时间");
    -- false, eq id 21
    local var1171 = (var1145_eq_string_14 and 14115532);
    local var1145_eq_string_15 = (var1145 == "游戏时间");
    -- false, eq id 22
    local var1172 = (var1145_eq_string_15 and function()--[[function ignored]]end);
    local var1145_eq_string_16 = (var1145 == "游玩时间");
    -- false, eq id 23
    local var1173 = (var1145_eq_string_16 and function()--[[function ignored]]end);
    local var1174 = wait(1);
    local var1175 = (var1174 and 11189371); -- 11189371
    local var1176 = (var1175 or 10259396);
    local var1145_eq_string_17 = (var1145 == "服务器当前人数");
    -- false, eq id 24
    local var1177 = (var1145_eq_string_17 and function()--[[function ignored]]end);
    local var1145_eq_string_18 = (var1145 == "当前时间");
    -- false, eq id 25
    local var1178 = (var1145_eq_string_18 and 14115532);
    local var1145_eq_string_19 = (var1145 == "游戏时间");
    -- false, eq id 26
    local var1179 = (var1145_eq_string_19 and function()--[[function ignored]]end);
    local var1145_eq_string_20 = (var1145 == "游玩时间");
    -- false, eq id 27
    local var1180 = (var1145_eq_string_20 and function()--[[function ignored]]end);
    local var1181 = wait(1);
    local var1182 = (var1181 and 11189371); -- 11189371
    local var1183 = (var1182 or 10259396);
    local var1145_eq_string_21 = (var1145 == "服务器当前人数");
    -- false, eq id 28
    local var1184 = (var1145_eq_string_21 and function()--[[function ignored]]end);
    local var1145_eq_string_22 = (var1145 == "当前时间");
    -- false, eq id 29
    local var1185 = (var1145_eq_string_22 and 14115532);
    local var1145_eq_string_23 = (var1145 == "游戏时间");
    -- false, eq id 30
    local var1186 = (var1145_eq_string_23 and function()--[[function ignored]]end);
    local var1145_eq_string_24 = (var1145 == "游玩时间");
    -- false, eq id 31
    local var1187 = (var1145_eq_string_24 and function()--[[function ignored]]end);
    local var1188 = wait(1);
    local var1189 = (var1188 and 11189371); -- 11189371
    local var1190 = (var1189 or 10259396);
    local var1145_eq_string_25 = (var1145 == "服务器当前人数");
    -- false, eq id 32
    local var1191 = (var1145_eq_string_25 and function()--[[function ignored]]end);
    local var1145_eq_string_26 = (var1145 == "当前时间");
    -- false, eq id 33
    local var1192 = (var1145_eq_string_26 and 14115532);
    local var1145_eq_string_27 = (var1145 == "游戏时间");
    -- false, eq id 34
    local var1193 = (var1145_eq_string_27 and function()--[[function ignored]]end);
    local var1145_eq_string_28 = (var1145 == "游玩时间");
    -- false, eq id 35
    local var1194 = (var1145_eq_string_28 and function()--[[function ignored]]end);
    local var1195 = wait(1);
    local var1196 = (var1195 and 11189371); -- 11189371
    local var1197 = (var1196 or 10259396);
    local var1145_eq_string_29 = (var1145 == "服务器当前人数");
    -- false, eq id 36
    local var1198 = (var1145_eq_string_29 and function()--[[function ignored]]end);
    local var1145_eq_string_30 = (var1145 == "当前时间");
    -- false, eq id 37
    local var1199 = (var1145_eq_string_30 and 14115532);
    local var1145_eq_string_31 = (var1145 == "游戏时间");
    -- false, eq id 38
    local var1200 = (var1145_eq_string_31 and function()--[[function ignored]]end);
    local var1145_eq_string_32 = (var1145 == "游玩时间");
    -- false, eq id 39
    local var1201 = (var1145_eq_string_32 and function()--[[function ignored]]end);
    local var1202 = wait(1);
    local var1203 = (var1202 and 11189371); -- 11189371
    local var1204 = (var1203 or 10259396);
    local var1145_eq_string_33 = (var1145 == "服务器当前人数");
    -- false, eq id 40
    local var1205 = (var1145_eq_string_33 and function()--[[function ignored]]end);
    local var1145_eq_string_34 = (var1145 == "当前时间");
    -- false, eq id 41
    local var1206 = (var1145_eq_string_34 and 14115532);
    local var1145_eq_string_35 = (var1145 == "游戏时间");
    -- false, eq id 42
    local var1207 = (var1145_eq_string_35 and function()--[[function ignored]]end);
    local var1145_eq_string_36 = (var1145 == "游玩时间");
    -- false, eq id 43
    local var1208 = (var1145_eq_string_36 and function()--[[function ignored]]end);
    local var1209 = wait(1);
    local var1210 = (var1209 and 11189371); -- 11189371
    local var1211 = (var1210 or 10259396);
    local var1145_eq_string_37 = (var1145 == "服务器当前人数");
    -- false, eq id 44
    local var1212 = (var1145_eq_string_37 and function()--[[function ignored]]end);
    local var1145_eq_string_38 = (var1145 == "当前时间");
    -- false, eq id 45
    local var1213 = (var1145_eq_string_38 and 14115532);
    local var1145_eq_string_39 = (var1145 == "游戏时间");
    -- false, eq id 46
    local var1214 = (var1145_eq_string_39 and function()--[[function ignored]]end);
    local var1145_eq_string_40 = (var1145 == "游玩时间");
    -- false, eq id 47
    local var1215 = (var1145_eq_string_40 and function()--[[function ignored]]end);
    local var1216 = wait(1);
    local var1217 = (var1216 and 11189371); -- 11189371
    local var1218 = (var1217 or 10259396);
    local var1145_eq_string_41 = (var1145 == "服务器当前人数");
    -- false, eq id 48
    local var1219 = (var1145_eq_string_41 and function()--[[function ignored]]end);
    local var1145_eq_string_42 = (var1145 == "当前时间");
    -- false, eq id 49
    local var1220 = (var1145_eq_string_42 and 14115532);
    local var1145_eq_string_43 = (var1145 == "游戏时间");
    -- false, eq id 50
    local var1221 = (var1145_eq_string_43 and function()--[[function ignored]]end);
    local var1145_eq_string_44 = (var1145 == "游玩时间");
    -- false, eq id 51
    local var1222 = (var1145_eq_string_44 and function()--[[function ignored]]end);
    local var1223 = wait(1);
    local var1224 = (var1223 and 11189371); -- 11189371
    local var1225 = (var1224 or 10259396);
    local var1145_eq_string_45 = (var1145 == "服务器当前人数");
    -- false, eq id 52
    local var1226 = (var1145_eq_string_45 and function()--[[function ignored]]end);
    local var1145_eq_string_46 = (var1145 == "当前时间");
    -- false, eq id 53
    local var1227 = (var1145_eq_string_46 and 14115532);
    local var1145_eq_string_47 = (var1145 == "游戏时间");
    -- false, eq id 54
    local var1228 = (var1145_eq_string_47 and function()--[[function ignored]]end);
    local var1145_eq_string_48 = (var1145 == "游玩时间");
    -- false, eq id 55
    local var1229 = (var1145_eq_string_48 and function()--[[function ignored]]end);
    local var1230 = wait(1);
    local var1231 = (var1230 and 11189371); -- 11189371
    local var1232 = (var1231 or 10259396);
    local var1145_eq_string_49 = (var1145 == "服务器当前人数");
    -- false, eq id 56
    local var1233 = (var1145_eq_string_49 and function()--[[function ignored]]end);
    local var1145_eq_string_50 = (var1145 == "当前时间");
    -- false, eq id 57
    local var1234 = (var1145_eq_string_50 and 14115532);
    local var1145_eq_string_51 = (var1145 == "游戏时间");
    -- false, eq id 58
    local var1235 = (var1145_eq_string_51 and function()--[[function ignored]]end);
    local var1145_eq_string_52 = (var1145 == "游玩时间");
    -- false, eq id 59
    local var1236 = (var1145_eq_string_52 and function()--[[function ignored]]end);
    local var1237 = wait(1);
    local var1238 = (var1237 and 11189371); -- 11189371
    local var1239 = (var1238 or 10259396);
    local var1145_eq_string_53 = (var1145 == "服务器当前人数");
    -- false, eq id 60
    local var1240 = (var1145_eq_string_53 and function()--[[function ignored]]end);
    local var1145_eq_string_54 = (var1145 == "当前时间");
    -- false, eq id 61
    local var1241 = (var1145_eq_string_54 and 14115532);
    local var1145_eq_string_55 = (var1145 == "游戏时间");
    -- false, eq id 62
    local var1242 = (var1145_eq_string_55 and function()--[[function ignored]]end);
    local var1145_eq_string_56 = (var1145 == "游玩时间");
    -- false, eq id 63
    local var1243 = (var1145_eq_string_56 and function()--[[function ignored]]end);
    local var1244 = wait(1);
    local var1245 = (var1244 and 11189371); -- 11189371
    local var1246 = (var1245 or 10259396);
    local var1145_eq_string_57 = (var1145 == "服务器当前人数");
    -- false, eq id 64
    local var1247 = (var1145_eq_string_57 and function()--[[function ignored]]end);
    local var1145_eq_string_58 = (var1145 == "当前时间");
    -- false, eq id 65
    local var1248 = (var1145_eq_string_58 and 14115532);
    local var1145_eq_string_59 = (var1145 == "游戏时间");
    -- false, eq id 66
    local var1249 = (var1145_eq_string_59 and function()--[[function ignored]]end);
    local var1145_eq_string_60 = (var1145 == "游玩时间");
    -- false, eq id 67
    local var1250 = (var1145_eq_string_60 and function()--[[function ignored]]end);
    local var1251 = wait(1);
    local var1252 = (var1251 and 11189371); -- 11189371
    local var1253 = (var1252 or 10259396);
    local var1145_eq_string_61 = (var1145 == "服务器当前人数");
    -- false, eq id 68
    local var1254 = (var1145_eq_string_61 and function()--[[function ignored]]end);
    local var1145_eq_string_62 = (var1145 == "当前时间");
    -- false, eq id 69
    local var1255 = (var1145_eq_string_62 and 14115532);
    local var1145_eq_string_63 = (var1145 == "游戏时间");
    -- false, eq id 70
    local var1256 = (var1145_eq_string_63 and function()--[[function ignored]]end);
    local var1145_eq_string_64 = (var1145 == "游玩时间");
    -- false, eq id 71
    local var1257 = (var1145_eq_string_64 and function()--[[function ignored]]end);
    local var1258 = wait(1);
    local var1259 = (var1258 and 11189371); -- 11189371
    local var1260 = (var1259 or 10259396);
    local var1145_eq_string_65 = (var1145 == "服务器当前人数");
    -- false, eq id 72
    local var1261 = (var1145_eq_string_65 and function()--[[function ignored]]end);
    local var1145_eq_string_66 = (var1145 == "当前时间");
    -- false, eq id 73
    local var1262 = (var1145_eq_string_66 and 14115532);
    local var1145_eq_string_67 = (var1145 == "游戏时间");
    -- false, eq id 74
    local var1263 = (var1145_eq_string_67 and function()--[[function ignored]]end);
    local var1145_eq_string_68 = (var1145 == "游玩时间");
    -- false, eq id 75
    local var1264 = (var1145_eq_string_68 and function()--[[function ignored]]end);
    local var1265 = wait(1);
    local var1266 = (var1265 and 11189371); -- 11189371
    local var1267 = (var1266 or 10259396);
    local var1145_eq_string_69 = (var1145 == "服务器当前人数");
    -- false, eq id 76
    local var1268 = (var1145_eq_string_69 and function()--[[function ignored]]end);
    local var1145_eq_string_70 = (var1145 == "当前时间");
    -- false, eq id 77
    local var1269 = (var1145_eq_string_70 and 14115532);
    local var1145_eq_string_71 = (var1145 == "游戏时间");
    -- false, eq id 78
    local var1270 = (var1145_eq_string_71 and function()--[[function ignored]]end);
    local var1145_eq_string_72 = (var1145 == "游玩时间");
    -- false, eq id 79
    local var1271 = (var1145_eq_string_72 and function()--[[function ignored]]end);
    local var1272 = wait(1);
    local var1273 = (var1272 and 11189371); -- 11189371
    local var1274 = (var1273 or 10259396);
    local var1145_eq_string_73 = (var1145 == "服务器当前人数");
    -- false, eq id 80
    local var1275 = (var1145_eq_string_73 and function()--[[function ignored]]end);
    local var1145_eq_string_74 = (var1145 == "当前时间");
    -- false, eq id 81
    local var1276 = (var1145_eq_string_74 and 14115532);
    local var1145_eq_string_75 = (var1145 == "游戏时间");
    -- false, eq id 82
    local var1277 = (var1145_eq_string_75 and function()--[[function ignored]]end);
    local var1145_eq_string_76 = (var1145 == "游玩时间");
    -- false, eq id 83
    local var1278 = (var1145_eq_string_76 and function()--[[function ignored]]end);
    local var1279 = wait(1);
    local var1280 = (var1279 and 11189371); -- 11189371
    local var1281 = (var1280 or 10259396);
    local var1145_eq_string_77 = (var1145 == "服务器当前人数");
    -- false, eq id 84
    local var1282 = (var1145_eq_string_77 and function()--[[function ignored]]end);
    local var1145_eq_string_78 = (var1145 == "当前时间");
    -- false, eq id 85
    local var1283 = (var1145_eq_string_78 and 14115532);
    local var1145_eq_string_79 = (var1145 == "游戏时间");
    -- false, eq id 86
    local var1284 = (var1145_eq_string_79 and function()--[[function ignored]]end);
    local var1145_eq_string_80 = (var1145 == "游玩时间");
    -- false, eq id 87
    local var1285 = (var1145_eq_string_80 and function()--[[function ignored]]end);
    local var1286 = wait(1);
    local var1287 = (var1286 and 11189371); -- 11189371
    local var1288 = (var1287 or 10259396);
    local var1145_eq_string_81 = (var1145 == "服务器当前人数");
    -- false, eq id 88
    local var1289 = (var1145_eq_string_81 and function()--[[function ignored]]end);
    local var1145_eq_string_82 = (var1145 == "当前时间");
    -- false, eq id 89
    local var1290 = (var1145_eq_string_82 and 14115532);
    local var1145_eq_string_83 = (var1145 == "游戏时间");
    -- false, eq id 90
    local var1291 = (var1145_eq_string_83 and function()--[[function ignored]]end);
    local var1145_eq_string_84 = (var1145 == "游玩时间");
    -- false, eq id 91
    local var1292 = (var1145_eq_string_84 and function()--[[function ignored]]end);
    local var1293 = wait(1);
    local var1294 = (var1293 and 11189371); -- 11189371
    local var1295 = (var1294 or 10259396);
    local var1145_eq_string_85 = (var1145 == "服务器当前人数");
    -- false, eq id 92
    local var1296 = (var1145_eq_string_85 and function()--[[function ignored]]end);
    local var1145_eq_string_86 = (var1145 == "当前时间");
    -- false, eq id 93
    local var1297 = (var1145_eq_string_86 and 14115532);
    local var1145_eq_string_87 = (var1145 == "游戏时间");
    -- false, eq id 94
    local var1298 = (var1145_eq_string_87 and function()--[[function ignored]]end);
    local var1145_eq_string_88 = (var1145 == "游玩时间");
    -- false, eq id 95
    local var1299 = (var1145_eq_string_88 and function()--[[function ignored]]end);
    local var1300 = wait(1);
    local var1301 = (var1300 and 11189371); -- 11189371
    local var1302 = (var1301 or 10259396);
    local var1145_eq_string_89 = (var1145 == "服务器当前人数");
    -- false, eq id 96
    local var1303 = (var1145_eq_string_89 and function()--[[function ignored]]end);
    local var1145_eq_string_90 = (var1145 == "当前时间");
    -- false, eq id 97
    local var1304 = (var1145_eq_string_90 and 14115532);
    local var1145_eq_string_91 = (var1145 == "游戏时间");
    -- false, eq id 98
    local var1305 = (var1145_eq_string_91 and function()--[[function ignored]]end);
    local var1145_eq_string_92 = (var1145 == "游玩时间");
    -- false, eq id 99
    local var1306 = (var1145_eq_string_92 and function()--[[function ignored]]end);
    local var1307 = wait(1);
    local var1308 = (var1307 and 11189371); -- 11189371
    local var1309 = (var1308 or 10259396);
    local var1145_eq_string_93 = (var1145 == "服务器当前人数");
    -- false, eq id 100
    local var1310 = (var1145_eq_string_93 and function()--[[function ignored]]end);
    local var1145_eq_string_94 = (var1145 == "当前时间");
    -- false, eq id 101
    local var1311 = (var1145_eq_string_94 and 14115532);
    local var1145_eq_string_95 = (var1145 == "游戏时间");
    -- false, eq id 102
    local var1312 = (var1145_eq_string_95 and function()--[[function ignored]]end);
    local var1145_eq_string_96 = (var1145 == "游玩时间");
    -- false, eq id 103
    local var1313 = (var1145_eq_string_96 and function()--[[function ignored]]end);
    local var1314 = wait(1);
    local var1315 = (var1314 and 11189371); -- 11189371
    local var1316 = (var1315 or 10259396);
    local var1145_eq_string_97 = (var1145 == "服务器当前人数");
    -- false, eq id 104
    local var1317 = (var1145_eq_string_97 and function()--[[function ignored]]end);
    local var1145_eq_string_98 = (var1145 == "当前时间");
    -- false, eq id 105
    local var1318 = (var1145_eq_string_98 and 14115532);
    local var1145_eq_string_99 = (var1145 == "游戏时间");
    -- false, eq id 106
    local var1319 = (var1145_eq_string_99 and function()--[[function ignored]]end);
    local var1145_eq_string_100 = (var1145 == "游玩时间");
    -- false, eq id 107
    local var1320 = (var1145_eq_string_100 and function()--[[function ignored]]end);
    local var1321 = wait(1);
    local var1322 = (var1321 and 11189371); -- 11189371
    local var1323 = (var1322 or 10259396);
    local var1145_eq_string_101 = (var1145 == "服务器当前人数");
    -- false, eq id 108
    local var1324 = (var1145_eq_string_101 and function()--[[function ignored]]end);
    local var1145_eq_string_102 = (var1145 == "当前时间");
    -- false, eq id 109
    local var1325 = (var1145_eq_string_102 and 14115532);
    local var1145_eq_string_103 = (var1145 == "游戏时间");
    -- false, eq id 110
    local var1326 = (var1145_eq_string_103 and function()--[[function ignored]]end);
    local var1145_eq_string_104 = (var1145 == "游玩时间");
    -- false, eq id 111
    local var1327 = (var1145_eq_string_104 and function()--[[function ignored]]end);
    local var1328 = wait(1);
    local var1329 = (var1328 and 11189371); -- 11189371
    local var1330 = (var1329 or 10259396);
    local var1145_eq_string_105 = (var1145 == "服务器当前人数");
    -- false, eq id 112
    local var1331 = (var1145_eq_string_105 and function()--[[function ignored]]end);
    local var1145_eq_string_106 = (var1145 == "当前时间");
    -- false, eq id 113
    local var1332 = (var1145_eq_string_106 and 14115532);
    local var1145_eq_string_107 = (var1145 == "游戏时间");
    -- false, eq id 114
    local var1333 = (var1145_eq_string_107 and function()--[[function ignored]]end);
    local var1145_eq_string_108 = (var1145 == "游玩时间");
    -- false, eq id 115
    local var1334 = (var1145_eq_string_108 and function()--[[function ignored]]end);
    local var1335 = wait(1);
    local var1336 = (var1335 and 11189371); -- 11189371
    local var1337 = (var1336 or 10259396);
    local var1145_eq_string_109 = (var1145 == "服务器当前人数");
    -- false, eq id 116
    local var1338 = (var1145_eq_string_109 and function()--[[function ignored]]end);
    local var1145_eq_string_110 = (var1145 == "当前时间");
    -- false, eq id 117
    local var1339 = (var1145_eq_string_110 and 14115532);
    local var1145_eq_string_111 = (var1145 == "游戏时间");
    -- false, eq id 118
    local var1340 = (var1145_eq_string_111 and function()--[[function ignored]]end);
    local var1145_eq_string_112 = (var1145 == "游玩时间");
    -- false, eq id 119
    local var1341 = (var1145_eq_string_112 and function()--[[function ignored]]end);
    local var1342 = wait(1);
    local var1343 = (var1342 and 11189371); -- 11189371
    local var1344 = (var1343 or 10259396);
    local var1145_eq_string_113 = (var1145 == "服务器当前人数");
    -- false, eq id 120
    local var1345 = (var1145_eq_string_113 and function()--[[function ignored]]end);
    local var1145_eq_string_114 = (var1145 == "当前时间");
    -- false, eq id 121
    local var1346 = (var1145_eq_string_114 and 14115532);
    local var1145_eq_string_115 = (var1145 == "游戏时间");
    -- false, eq id 122
    local var1347 = (var1145_eq_string_115 and function()--[[function ignored]]end);
    local var1145_eq_string_116 = (var1145 == "游玩时间");
    -- false, eq id 123
    local var1348 = (var1145_eq_string_116 and function()--[[function ignored]]end);
    local var1349 = wait(1);
    local var1350 = (var1349 and 11189371); -- 11189371
    local var1351 = (var1350 or 10259396);
    local var1145_eq_string_117 = (var1145 == "服务器当前人数");
    -- false, eq id 124
    local var1352 = (var1145_eq_string_117 and function()--[[function ignored]]end);
    local var1145_eq_string_118 = (var1145 == "当前时间");
    -- false, eq id 125
    local var1353 = (var1145_eq_string_118 and 14115532);
    local var1145_eq_string_119 = (var1145 == "游戏时间");
    -- false, eq id 126
    local var1354 = (var1145_eq_string_119 and function()--[[function ignored]]end);
    local var1145_eq_string_120 = (var1145 == "游玩时间");
    -- false, eq id 127
    local var1355 = (var1145_eq_string_120 and function()--[[function ignored]]end);
    local var1356 = wait(1);
    local var1357 = (var1356 and 11189371); -- 11189371
    local var1358 = (var1357 or 10259396);
    local var1145_eq_string_121 = (var1145 == "服务器当前人数");
    -- false, eq id 128
    local var1359 = (var1145_eq_string_121 and function()--[[function ignored]]end);
    local var1145_eq_string_122 = (var1145 == "当前时间");
    -- false, eq id 129
    local var1360 = (var1145_eq_string_122 and 14115532);
    local var1145_eq_string_123 = (var1145 == "游戏时间");
    -- false, eq id 130
    local var1361 = (var1145_eq_string_123 and function()--[[function ignored]]end);
    local var1145_eq_string_124 = (var1145 == "游玩时间");
    -- false, eq id 131
    local var1362 = (var1145_eq_string_124 and function()--[[function ignored]]end);
    local var1363 = wait(1);
    local var1364 = (var1363 and 11189371); -- 11189371
    local var1365 = (var1364 or 10259396);
    local var1145_eq_string_125 = (var1145 == "服务器当前人数");
    -- false, eq id 132
    local var1366 = (var1145_eq_string_125 and function()--[[function ignored]]end);
    local var1145_eq_string_126 = (var1145 == "当前时间");
    -- false, eq id 133
    local var1367 = (var1145_eq_string_126 and 14115532);
    local var1145_eq_string_127 = (var1145 == "游戏时间");
    -- false, eq id 134
    local var1368 = (var1145_eq_string_127 and function()--[[function ignored]]end);
    local var1145_eq_string_128 = (var1145 == "游玩时间");
    -- false, eq id 135
    local var1369 = (var1145_eq_string_128 and function()--[[function ignored]]end);
    local var1370 = wait(1);
    local var1371 = (var1370 and 11189371); -- 11189371
    local var1372 = (var1371 or 10259396);
    local var1145_eq_string_129 = (var1145 == "服务器当前人数");
    -- false, eq id 136
    local var1373 = (var1145_eq_string_129 and function()--[[function ignored]]end);
    local var1145_eq_string_130 = (var1145 == "当前时间");
    -- false, eq id 137
    local var1374 = (var1145_eq_string_130 and 14115532);
    local var1145_eq_string_131 = (var1145 == "游戏时间");
    -- false, eq id 138
    local var1375 = (var1145_eq_string_131 and function()--[[function ignored]]end);
    local var1145_eq_string_132 = (var1145 == "游玩时间");
    -- false, eq id 139
    local var1376 = (var1145_eq_string_132 and function()--[[function ignored]]end);
    local var1377 = wait(1);
    local var1378 = (var1377 and 11189371); -- 11189371
    local var1379 = (var1378 or 10259396);
    local var1145_eq_string_133 = (var1145 == "服务器当前人数");
    -- false, eq id 140
    local var1380 = (var1145_eq_string_133 and function()--[[function ignored]]end);
    local var1145_eq_string_134 = (var1145 == "当前时间");
    -- false, eq id 141
    local var1381 = (var1145_eq_string_134 and 14115532);
    local var1145_eq_string_135 = (var1145 == "游戏时间");
    -- false, eq id 142
    local var1382 = (var1145_eq_string_135 and function()--[[function ignored]]end);
    local var1145_eq_string_136 = (var1145 == "游玩时间");
    -- false, eq id 143
    local var1383 = (var1145_eq_string_136 and function()--[[function ignored]]end);
    local var1384 = wait(1);
    local var1385 = (var1384 and 11189371); -- 11189371
    local var1386 = (var1385 or 10259396);
    local var1145_eq_string_137 = (var1145 == "服务器当前人数");
    -- false, eq id 144
    local var1387 = (var1145_eq_string_137 and function()--[[function ignored]]end);
    local var1145_eq_string_138 = (var1145 == "当前时间");
    -- false, eq id 145
    local var1388 = (var1145_eq_string_138 and 14115532);
    local var1145_eq_string_139 = (var1145 == "游戏时间");
    -- false, eq id 146
    local var1389 = (var1145_eq_string_139 and function()--[[function ignored]]end);
    local var1145_eq_string_140 = (var1145 == "游玩时间");
    -- false, eq id 147
    local var1390 = (var1145_eq_string_140 and function()--[[function ignored]]end);
    local var1391 = wait(1);
    local var1392 = (var1391 and 11189371); -- 11189371
    local var1393 = (var1392 or 10259396);
    local var1145_eq_string_141 = (var1145 == "服务器当前人数");
    -- false, eq id 148
    local var1394 = (var1145_eq_string_141 and function()--[[function ignored]]end);
    local var1145_eq_string_142 = (var1145 == "当前时间");
    -- false, eq id 149
    local var1395 = (var1145_eq_string_142 and 14115532);
    local var1145_eq_string_143 = (var1145 == "游戏时间");
    -- false, eq id 150
    local var1396 = (var1145_eq_string_143 and function()--[[function ignored]]end);
    local var1145_eq_string_144 = (var1145 == "游玩时间");
    -- false, eq id 151
    local var1397 = (var1145_eq_string_144 and function()--[[function ignored]]end);
    local var1398 = wait(1);
    local var1399 = (var1398 and 11189371); -- 11189371
    local var1400 = (var1399 or 10259396);
    local var1145_eq_string_145 = (var1145 == "服务器当前人数");
    -- false, eq id 152
    local var1401 = (var1145_eq_string_145 and function()--[[function ignored]]end);
    local var1145_eq_string_146 = (var1145 == "当前时间");
    -- false, eq id 153
    local var1402 = (var1145_eq_string_146 and 14115532);
    local var1145_eq_string_147 = (var1145 == "游戏时间");
    -- false, eq id 154
    local var1403 = (var1145_eq_string_147 and function()--[[function ignored]]end);
    local var1145_eq_string_148 = (var1145 == "游玩时间");
    -- false, eq id 155
    local var1404 = (var1145_eq_string_148 and function()--[[function ignored]]end);
    local var1405 = wait(1);
    local var1406 = (var1405 and 11189371); -- 11189371
    local var1407 = (var1406 or 10259396);
    local var1145_eq_string_149 = (var1145 == "服务器当前人数");
    -- false, eq id 156
    local var1408 = (var1145_eq_string_149 and function()--[[function ignored]]end);
    local var1145_eq_string_150 = (var1145 == "当前时间");
    -- false, eq id 157
    local var1409 = (var1145_eq_string_150 and 14115532);
    local var1145_eq_string_151 = (var1145 == "游戏时间");
    -- false, eq id 158
    local var1410 = (var1145_eq_string_151 and function()--[[function ignored]]end);
    local var1145_eq_string_152 = (var1145 == "游玩时间");
    -- false, eq id 159
    local var1411 = (var1145_eq_string_152 and function()--[[function ignored]]end);
    local var1412 = wait(1);
    local var1413 = (var1412 and 11189371); -- 11189371
    local var1414 = (var1413 or 10259396);
    error("[internal]: too many operations")
end)
local Button_81 = Tab_6.Button;
local Button_82 = Tab_6:Button({
    Callback = function(p1_0, p2_0)
        local var1145_eq_string_153 = (var1145 == "服务器当前人数");
        -- false, eq id 160
        local var1145_eq_string_154 = (var1145 == "当前时间");
        -- false, eq id 161
        local var1415 = (var1145_eq_string_154 and 16200554);
        local var1145_eq_string_155 = (var1145 == "游戏时间");
        -- false, eq id 162
        local var1145_eq_string_156 = (var1145 == "账号年龄");
        -- false, eq id 163
        local var1416 = (var1145_eq_string_156 and function()--[[function ignored]]end);
        local var1145_eq_string_157 = (var1145 == "注入器");
        -- false, eq id 164
        local var1145_eq_string_158 = (var1145 == "用户名");
        -- false, eq id 165
        local var1417 = (var1145_eq_string_158 and function()--[[function ignored]]end);
        local var1145_eq_string_159 = (var1145 == "服务器名称");
        -- false, eq id 166
        local var1418 = (var1145_eq_string_159 and 12102392);
        local var1145_eq_string_160 = (var1145 == "服务器ID");
        -- false, eq id 167
        local var1419 = (var1145_eq_string_160 and 14927199);
        local var1145_eq_string_161 = (var1145 == "用户ID");
        -- false, eq id 168
        local var1420 = (var1145_eq_string_161 and 10577450);
        local var1145_eq_string_162 = (var1145 == "客户端ID");
        -- false, eq id 169
        local var1421 = (var1145_eq_string_162 and 10151988);
        local var1145_eq_string_163 = (var1145 == "游玩时间");
        -- false, eq id 170
    end,
    Title = "立即刷新",
    Icon = "refresh-cw",
});
local Tab_7 = Window.Tab;
local Tab_8 = Window:Tab({
    Title = "美化区",
    Icon = "sparkles",
});
local Paragraph_7 = Tab_8.Paragraph;
local Paragraph_8 = Tab_8:Paragraph({
    Title = "只有自己看得见，别人看不见\n可能存在bug，希望谅解",
});
local Toggle = Tab_8.Toggle;
local Toggle_2 = Tab_8:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1422 = p1_0[1];
        local Players_12 = game.Players;
        local LocalPlayer_9 = Players.LocalPlayer;
        local Character_3 = LocalPlayer.Character;
        if Character_3 then -- ran, expr id 2, has an else.
            local Head = Character_3:FindFirstChild("Head");
        error("[internal]: invalid argument #1 to 'FindFirstChild', string expected got boolean")
        end
    end,
    Title = "美化无头",
    Desc = "隐藏角色头部",
});
local Toggle_3 = Tab_8.Toggle;
local Toggle_4 = Tab_8:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0)
        local var1423 = p1_0[1];
        local Players_13 = game.Players;
        local LocalPlayer_10 = Players.LocalPlayer;
        local Character_4 = LocalPlayer.Character;
        if Character_4 then -- ran, expr id 3, has an else.
            local var1424 = (var1423 and 15102256); -- 15102256
            local var1425 = (var1424 or function()--[[function ignored]]end);
        end
        local Children = Character_4:GetChildren();
    end,
    Title = "删除帽子",
    Desc = "移除所有装饰品",
});
local Toggle_5 = Tab_8.Toggle;
local Toggle_6 = Tab_8:Toggle({
    Value = false,
    Callback = function(p1_0)
        local var1426 = p1_0[1];
        local var1427 = (var1426 and 12742224); -- 12742224
        local RunService_79 = game:GetService("RunService");
        local Connection_43;
        Connection_43 = RunService.RenderStepped:connect(function(DeltaTime_3) -- args: DeltaTime_4;
            local Players_54 = game.Players;
            local LocalPlayer_43 = Players.LocalPlayer;
            local Character_40 = LocalPlayer.Character;
            local Not_Character_40 = not Character_40;
            -- false
            local var1531 = (Not_Character_40 and function()--[[function ignored]]end);
            local var1532 = tick();
            local var1533 = var1532 % 5;
            -- 3.959630
            local var1534 = var1533 / 5;
            -- 0.791926
            local FromHSV = Color3.fromHSV;
            local _call1535 = FromHSV(var1534, 1, 1);
            local Children_5 = Character_40:GetChildren();
        end);
    end,
    Title = "彩虹角色",
    Desc = "为角色添加彩虹效果",
});
local Tab_9 = Window.Tab;
local Tab_10 = Window:Tab({
    Title = "玩家区",
    Icon = "user",
});
local Slider = Tab_10.Slider;
local Slider_2 = Tab_10:Slider({
    Value = {
        Min = 16,
        Default = 16,
        Max = 200,
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1428 = p1_0[1];
        local Success_91, Error_Message_91 = pcall(function(...)
            local Players_14 = game.Players;
            local LocalPlayer_11 = Players.LocalPlayer;
            local Character_5 = LocalPlayer.Character;
            if Character_5 then -- ran, expr id 4, has an else.
                local Humanoid = Character_5:FindFirstChild("Humanoid");
            end
        end) -- false, "[script]: invalid argument #1 to 'FindFirstChild', string expected got boolean"
    end,
    Title = "移动速度",
    Step = 1,
});
local Slider_3 = Tab_10.Slider;
local Slider_4 = Tab_10:Slider({
    Value = {
        Min = 50,
        Default = 50,
        Max = 200,
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1429 = p1_0[1];
        local Success_92, Error_Message_92 = pcall(function(...)
            local Players_15 = game.Players;
            local LocalPlayer_12 = Players.LocalPlayer;
            local Character_6 = LocalPlayer.Character;
            if Character_6 then -- ran, expr id 5, has an else.
                local Humanoid_2 = Character_6:FindFirstChild("Humanoid");
            end
        end) -- false, "[script]: invalid argument #1 to 'FindFirstChild', string expected got boolean"
    end,
    Title = "跳跃高度",
    Step = 1,
});
local Toggle_7 = Tab_10.Toggle;
local Toggle_8 = Tab_10:Toggle({
    Value = false,
    Title = "解锁最大视野",
    Callback = function(p1_0, p2_0)
        local var1430 = p1_0[1];
        local Success_93, Error_Message_93 = pcall(function(...)
            if not var1430 then -- didnt run, expr id 6, has an else.
            else
                local Players_16 = game:GetService("Players");
            end
            local LocalPlayer_13 = Players.LocalPlayer;
            LocalPlayer.CameraMaxZoomDistance = 99999;
        end) -- true
    end,
});
local Toggle_9 = Tab_10.Toggle;
local Toggle_10 = Tab_10:Toggle({
    Value = false,
    Title = "穿墙",
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1431 = p1_0[1];
        if not var1431 then -- didnt run, expr id 7, has an else.
        else
            local RunService_80 = game:GetService("RunService");
        end
        local Connection_44;
        Connection_44 = RunService.Stepped:Connect(function(Time, DeltaTime_5, p3_0, p4_0, p5_0) -- args: Time_2, DeltaTime_6;
            local Players_55 = game.Players;
            local LocalPlayer_44 = Players.LocalPlayer;
            local Character_41 = LocalPlayer.Character;
            local var1536 = (Character_41 and 16743799); -- 16743799
            local var1537 = (var1536 or 15450998);
            local Descendants = Character_41:GetDescendants();
        end);
    end,
});
local Toggle_11 = Tab_10.Toggle;
local Toggle_12 = Tab_10:Toggle({
    Value = false,
    Title = "无限跳",
    Callback = function(p1_0)
        local var1432 = p1_0[1];
        local var1433 = (var1432 and 15625112); -- 15625112
        local UserInputService_2 = game.UserInputService;
        local Connection_45;
        Connection_45 = UserInputService.JumpRequest:Connect(function(p1_0, p2_0)
            if var1432 then -- ran, expr id 28, has an else.
                local Players_56 = game.Players;
            end
            local LocalPlayer_45 = Players.LocalPlayer;
            local Character_42 = LocalPlayer.Character;
            if Character_42 then -- ran, expr id 29, has an else.
                local Humanoid_12 = Character_42:FindFirstChild("Humanoid");
            error("[internal]: invalid argument #1 to 'FindFirstChild', string expected got boolean")
            end
        end);
    end,
});
local Toggle_13 = Tab_10.Toggle;
local Toggle_14 = Tab_10:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1434 = p1_0[1];
        local var1435 = (var1434 and 10717784); -- 10717784
        local var1436 = (var1435 or 10710817);
        local RunService_81 = game:GetService("RunService");
        local Connection_46;
        Connection_46 = RunService.Heartbeat:Connect(function() -- args: DeltaTime_7;
            local Players_57 = game.Players;
            local LocalPlayer_46 = Players.LocalPlayer;
            local Character_43 = LocalPlayer.Character;
            if Character_43 then -- ran, expr id 30, has an else.
                local HumanoidRootPart_5 = Character_43:FindFirstChild("HumanoidRootPart");
            error("[internal]: invalid argument #1 to 'FindFirstChild', string expected got boolean")
            end
        end);
    end,
    Title = "走路瞬移",
    Desc = "行走时自动瞬移",
});
local Dropdown_3 = Tab_10.Dropdown;
local Dropdown_4 = Tab_10:Dropdown({
    Value = "亮度一",
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1437 = p1_0[1];
        local var1437_eq_string = (var1437 == "亮度一");
        -- false, eq id 171
        local var1437_eq_string_2 = (var1437 == "亮度二");
        -- false, eq id 172
        local var1438 = (var1437_eq_string_2 and function()--[[function ignored]]end);
        local var1437_eq_string_3 = (var1437 == "亮度三");
        -- false, eq id 173
    end,
    Title = "夜视亮度",
    Values = {
        "亮度一",
        "亮度二",
        "亮度三",
    },
});
local Toggle_15 = Tab_10.Toggle;
local Toggle_16 = Tab_10:Toggle({
    Value = false,
    Title = "夜视",
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1439 = p1_0[1];
        if var1439 then -- ran, expr id 8, has an else.
            local Lighting = game.Lighting;
        end
        local New_163 = Color3.new;
        local _call1440 = New_163(0.5, 0.5, 0.5);
        Lighting.Ambient = _call1440;
        local Lighting_2 = game.Lighting;
        Lighting.Brightness = 0.5;
    end,
});
local Tab_11 = Window.Tab;
local Tab_12 = Window:Tab({
    Title = "传送区",
    Icon = "map-pin",
});
local Section_7 = Tab_12.Section;
local Section_8 = Tab_12:Section({
    Title = "屏幕点击传送",
    Opened = true,
});
local Toggle_17 = Section_8.Toggle;
local Toggle_18 = Section_8:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1441 = p1_0[1];
        if var1441 then -- ran, expr id 9, has an else.
            local Players_17 = game.Players;
        end
        local LocalPlayer_14 = Players.LocalPlayer;
        local Character_7 = LocalPlayer.Character;
        if Character_7 then -- ran, expr id 10, has an else.
            local Character_8 = LocalPlayer.Character;
        end
        local HumanoidRootPart = Character_8:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart = not HumanoidRootPart;
        -- false
        local var1442 = (Not_HumanoidRootPart and 13795814);
        local Mouse = LocalPlayer:GetMouse();
        local Hit = Mouse.Hit;
        local Position = Hit.Position;
        local Success_94, Error_Message_94 = pcall(function(...)
            local Position_2 = HumanoidRootPart.Position;
            local New_164 = CFrame.new;
            local New_165 = Vector3.new;
            local _call1443 = New_165(0, 3, 0);
            local var1444 = Position + _call1443;
            local _call1445 = New_164(var1444);
            HumanoidRootPart.CFrame = _call1445;
            local var1446 = wait(0.1);
            local Position_3 = HumanoidRootPart.Position;
            local var1447 = Position_3 - Position;
            local Magnitude = var1447.Magnitude;
            local var1448 = (Magnitude > 20); -- nil
            local var1449 = (var1448 and 10348737);
        end) -- true
        local Notify_81 = Loaded_Main_Lua.Notify;
        local Notify_82 = Loaded_Main_Lua:Notify({
            Icon = "check-circle",
            Title = "传送成功",
            Content = "已传送到鼠标位置",
        });
    end,
    Title = "传送到鼠标位置",
    Desc = "点哪，传送到哪",
});
local Section_9 = Tab_12.Section;
local Section_10 = Tab_12:Section({
    Title = "保存位置",
    Opened = true,
});
local Input_3 = Section_10.Input;
local Input_4 = Section_10:Input({
    Placeholder = "输入名称",
    Title = "传送点名称",
    Callback = function(p1_0, p2_0, p3_0)
        local var1451 = p1_0[1];
    end,
});
local Button_83 = Section_10.Button;
local Button_84 = Section_10:Button({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1451_eq_string = (var1451 == "");
        -- false, eq id 174
        local var1452 = (var1451_eq_string and 11640655);
        local Players_18 = game.Players;
        local LocalPlayer_15 = Players.LocalPlayer;
        if LocalPlayer then -- ran, expr id 11, has an else.
            local Character_9 = LocalPlayer.Character;
        end
        if Character_9 then -- ran, expr id 12, has an else.
            local Character_10 = LocalPlayer.Character;
        end
        local HumanoidRootPart_2 = Character_10:FindFirstChild("HumanoidRootPart");
        if HumanoidRootPart_2 then -- ran, expr id 13, has an else.
            local Character_11 = LocalPlayer.Character;
        end
        local HumanoidRootPart_3 = Character_11.HumanoidRootPart;
        local Position_4 = HumanoidRootPart_3.Position;
        local Success_95, Error_Message_95 = pcall(function(...)
            local var1453 = isfile("WindUI/KGScript/传送.txt");
        end) -- true, {}
        local X = Position_4.X;
        local Y = Position_4.Y;
        local Z = Position_4.Z;
        local Success_96, Error_Message_96 = pcall(function(...)
            local var1454 = isfolder("WindUI");
            local var1455 = makefolder("WindUI");
            local var1456 = isfolder("WindUI/KGScript");
            local var1457 = makefolder("WindUI/KGScript");
            local var1458 = (var1451 and 13655431); -- 13655431
            local var1459 = (var1458 or function()--[[function ignored]]end);
            local var1460 = Z .. "\n";
            local var1461 = "," .. var1460;
            local var1462 = Y .. var1461;
            local var1463 = "," .. var1462;
            local var1464 = X .. var1463;
            local var1465 = ":" .. var1464;
            local var1466 = var1451 .. var1465;
            local var1467 = "" .. var1466;
            local var1468 = writefile("WindUI/KGScript/传送.txt", var1467);
        end) -- true, true
        local var1469 = "位置已保存: " .. var1451;
        local Notify_83 = Loaded_Main_Lua.Notify;
        local Notify_84 = Loaded_Main_Lua:Notify({
            Icon = "check",
            Title = "成功",
            Content = var1469,
        });
    end,
    Title = "保存当前位置",
    Icon = "save",
});
local Section_11 = Tab_12.Section;
local Section_12 = Tab_12:Section({
    Title = "传送点选择",
    Opened = true,
});
local Dropdown_5 = Section_12.Dropdown;
local Dropdown_6 = Section_12:Dropdown({
    Value = "",
    Callback = function(p1_0, p2_0)
        local var1471 = p1_0[1];
    end,
    Title = "选择传送点",
    Values = {},
});
local Button_85 = Section_12.Button;
local Button_86 = Section_12:Button({
    Callback = function(p1_0, p2_0, p3_0)
        local Success_97, Error_Message_97 = pcall(function(...)
            local var1472 = isfile("WindUI/KGScript/传送.txt");
            local var1473 = readfile("WindUI/KGScript/传送.txt");
        end) -- true, {}
        local Refresh_3 = Dropdown_6.Refresh;
        local Refresh_4 = Dropdown_6:Refresh({});
    end,
    Title = "更新列表",
    Icon = "refresh-cw",
});
local Button_87 = Section_12.Button;
local Button_88 = Section_12:Button({
    Callback = function(p1_0)
        local var1471_eq_string = (var1471 == "");
        -- false, eq id 175
        local Notify_85 = Loaded_Main_Lua.Notify;
        local Notify_86 = Loaded_Main_Lua:Notify({
            Icon = "x",
            Title = "错误",
            Content = "找不到传送点数据",
        });
    end,
    Title = "传送到选择的位置",
    Icon = "navigation",
});
local Button_89 = Section_12.Button;
local Button_90 = Section_12:Button({
    Callback = function(p1_0, p2_0)
        local var1471_eq_string_2 = (var1471 == "");
        -- false, eq id 176
        local var1476 = (var1471_eq_string_2 and function()--[[function ignored]]end);
        local Success_98, Error_Message_98 = pcall(function(...)
            local var1477 = isfile("WindUI/KGScript/传送.txt");
            local var1478 = readfile("WindUI/KGScript/传送.txt");
        end) -- true, {}
    end,
    Title = "删除选择的传送点",
    Icon = "trash-2",
});
local Section_13 = Tab_12.Section;
local Section_14 = Tab_12:Section({
    Title = "批量管理",
    Opened = true,
});
local Button_91 = Section_14.Button;
local Button_92 = Section_14:Button({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local Success_99, Error_Message_99 = pcall(function(...)
            local var1479 = isfile("WindUI/KGScript/传送.txt");
            local var1480 = readfile("WindUI/KGScript/传送.txt");
        end) -- true, {}
        local Notify_87 = Loaded_Main_Lua.Notify;
        local Notify_88 = Loaded_Main_Lua:Notify({
            Icon = "info",
            Title = "提示",
            Content = "没有可删除的传送点",
        });
    end,
    Icon = "trash",
    Title = "删除所有传送点",
    Desc = "清空所有保存的位置",
});
local Success_90, Error_Message_90 = pcall(function(...)
    local var909 = isfile("WindUI/KGScript/传送.txt");
end) -- true, {}
local Refresh = Dropdown_6.Refresh;
local Refresh_2 = Dropdown_6:Refresh({});
local Tab_13 = Window.Tab;
local Tab_14 = Window:Tab({
    Title = "动画区",
    Icon = "user",
});
local Button_93 = Tab_14.Button;
local Button_94 = Tab_14:Button({
    Callback = function()
        local Players_19 = game.Players;
        local LocalPlayer_16 = Players.LocalPlayer;
        local Character_12 = LocalPlayer.Character;
        local Animate = Character_12.Animate;
        local Idle = Animate.idle;
        local Animation1 = Idle.Animation1;
        Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366";
        local Idle_2 = Animate.idle;
        local Animation2 = Idle_2.Animation2;
        Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237";
        local Walk = Animate.walk;
        local WalkAnim = Walk.WalkAnim;
        WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138";
        local Run = Animate.run;
        local RunAnim = Run.RunAnim;
        RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393";
        local Jump = Animate.jump;
        local JumpAnim = Jump.JumpAnim;
        JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522";
        local Climb = Animate.climb;
        local ClimbAnim = Climb.ClimbAnim;
        ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353";
        local Fall = Animate.fall;
        local FallAnim = Fall.FallAnim;
        FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961";
        local Players_20 = game.Players;
        local LocalPlayer_17 = Players.LocalPlayer;
        local Character_13 = LocalPlayer.Character;
        local Humanoid_3 = Character_13.Humanoid;
        Humanoid_3.Jump = true;
    end,
    Title = "宇航员",
    Justify = "Center",
});
local Space_79 = Tab_14.Space;
local Space_80 = Tab_14:Space();
local Button_95 = Tab_14.Button;
local Button_96 = Tab_14:Button({
    Callback = function(p1_0, p2_0)
        local Players_21 = game.Players;
        local LocalPlayer_18 = Players.LocalPlayer;
        local Character_14 = LocalPlayer.Character;
        local Animate_2 = Character_14.Animate;
        local Idle_3 = Animate_2.idle;
        local Animation1_2 = Idle_3.Animation1;
        Animation1_2.AnimationId = "http://www.roblox.com/asset/?id=910004836";
        local Idle_4 = Animate_2.idle;
        local Animation2_2 = Idle_4.Animation2;
        Animation2_2.AnimationId = "http://www.roblox.com/asset/?id=910009958";
        local Walk_2 = Animate_2.walk;
        local WalkAnim_2 = Walk_2.WalkAnim;
        WalkAnim_2.AnimationId = "http://www.roblox.com/asset/?id=910034870";
        local Run_2 = Animate_2.run;
        local RunAnim_2 = Run_2.RunAnim;
        RunAnim_2.AnimationId = "http://www.roblox.com/asset/?id=910025107";
        local Jump_2 = Animate_2.jump;
        local JumpAnim_2 = Jump_2.JumpAnim;
        JumpAnim_2.AnimationId = "http://www.roblox.com/asset/?id=910016857";
        local Fall_2 = Animate_2.fall;
        local FallAnim_2 = Fall_2.FallAnim;
        FallAnim_2.AnimationId = "http://www.roblox.com/asset/?id=910001910";
        local Players_22 = game.Players;
        local LocalPlayer_19 = Players.LocalPlayer;
        local Character_15 = LocalPlayer.Character;
        local Humanoid_4 = Character_15.Humanoid;
        Humanoid_4.Jump = true;
    end,
    Title = "泡状",
    Justify = "Center",
});
local Space_81 = Tab_14.Space;
local Space_82 = Tab_14:Space();
local Button_97 = Tab_14.Button;
local Button_98 = Tab_14:Button({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Players_23 = game.Players;
        local LocalPlayer_20 = Players.LocalPlayer;
        local Character_16 = LocalPlayer.Character;
        local Animate_3 = Character_16.Animate;
        local Idle_5 = Animate_3.idle;
        local Animation1_3 = Idle_5.Animation1;
        Animation1_3.AnimationId = "http://www.roblox.com/asset/?id=742637544";
        local Idle_6 = Animate_3.idle;
        local Animation2_3 = Idle_6.Animation2;
        Animation2_3.AnimationId = "http://www.roblox.com/asset/?id=742638445";
        local Walk_3 = Animate_3.walk;
        local WalkAnim_3 = Walk_3.WalkAnim;
        WalkAnim_3.AnimationId = "http://www.roblox.com/asset/?id=742640026";
        local Run_3 = Animate_3.run;
        local RunAnim_3 = Run_3.RunAnim;
        RunAnim_3.AnimationId = "http://www.roblox.com/asset/?id=742638842";
        local Jump_3 = Animate_3.jump;
        local JumpAnim_3 = Jump_3.JumpAnim;
        JumpAnim_3.AnimationId = "http://www.roblox.com/asset/?id=742637942";
        local Climb_2 = Animate_3.climb;
        local ClimbAnim_2 = Climb_2.ClimbAnim;
        ClimbAnim_2.AnimationId = "http://www.roblox.com/asset/?id=742636889";
        local Fall_3 = Animate_3.fall;
        local FallAnim_3 = Fall_3.FallAnim;
        FallAnim_3.AnimationId = "http://www.roblox.com/asset/?id=742637151";
        local Players_24 = game.Players;
        local LocalPlayer_21 = Players.LocalPlayer;
        local Character_17 = LocalPlayer.Character;
        local Humanoid_5 = Character_17.Humanoid;
        Humanoid_5.Jump = true;
    end,
    Title = "卡通",
    Justify = "Center",
});
local Space_83 = Tab_14.Space;
local Space_84 = Tab_14:Space();
local Button_99 = Tab_14.Button;
local Button_100 = Tab_14:Button({
    Callback = function(p1_0, p2_0, p3_0)
        local Players_25 = game.Players;
        local LocalPlayer_22 = Players.LocalPlayer;
        local Character_18 = LocalPlayer.Character;
        local Animate_4 = Character_18.Animate;
        local Idle_7 = Animate_4.idle;
        local Animation1_4 = Idle_7.Animation1;
        Animation1_4.AnimationId = "http://www.roblox.com/asset/?id=845397899";
        local Idle_8 = Animate_4.idle;
        local Animation2_4 = Idle_8.Animation2;
        Animation2_4.AnimationId = "http://www.roblox.com/asset/?id=845400520";
        local Walk_4 = Animate_4.walk;
        local WalkAnim_4 = Walk_4.WalkAnim;
        WalkAnim_4.AnimationId = "http://www.roblox.com/asset/?id=845403856";
        local Run_4 = Animate_4.run;
        local RunAnim_4 = Run_4.RunAnim;
        RunAnim_4.AnimationId = "http://www.roblox.com/asset/?id=845386501";
        local Jump_4 = Animate_4.jump;
        local JumpAnim_4 = Jump_4.JumpAnim;
        JumpAnim_4.AnimationId = "http://www.roblox.com/asset/?id=845398858";
        local Climb_3 = Animate_4.climb;
        local ClimbAnim_3 = Climb_3.ClimbAnim;
        ClimbAnim_3.AnimationId = "http://www.roblox.com/asset/?id=845392038";
        local Fall_4 = Animate_4.fall;
        local FallAnim_4 = Fall_4.FallAnim;
        FallAnim_4.AnimationId = "http://www.roblox.com/asset/?id=845396048";
        local Players_26 = game.Players;
        local LocalPlayer_23 = Players.LocalPlayer;
        local Character_19 = LocalPlayer.Character;
        local Humanoid_6 = Character_19.Humanoid;
        Humanoid_6.Jump = true;
    end,
    Title = "老人",
    Justify = "Center",
});
local Space_85 = Tab_14.Space;
local Space_86 = Tab_14:Space();
local Button_101 = Tab_14.Button;
local Button_102 = Tab_14:Button({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local Players_27 = game.Players;
        local LocalPlayer_24 = Players.LocalPlayer;
        local Character_20 = LocalPlayer.Character;
        local Animate_5 = Character_20.Animate;
        local Idle_9 = Animate_5.idle;
        local Animation1_5 = Idle_9.Animation1;
        Animation1_5.AnimationId = "http://www.roblox.com/asset/?id=657595757";
        local Idle_10 = Animate_5.idle;
        local Animation2_5 = Idle_10.Animation2;
        Animation2_5.AnimationId = "http://www.roblox.com/asset/?id=657568135";
        local Walk_5 = Animate_5.walk;
        local WalkAnim_5 = Walk_5.WalkAnim;
        WalkAnim_5.AnimationId = "http://www.roblox.com/asset/?id=657552124";
        local Run_5 = Animate_5.run;
        local RunAnim_5 = Run_5.RunAnim;
        RunAnim_5.AnimationId = "http://www.roblox.com/asset/?id=657564596";
        local Jump_5 = Animate_5.jump;
        local JumpAnim_5 = Jump_5.JumpAnim;
        JumpAnim_5.AnimationId = "http://www.roblox.com/asset/?id=658409194";
        local Climb_4 = Animate_5.climb;
        local ClimbAnim_4 = Climb_4.ClimbAnim;
        ClimbAnim_4.AnimationId = "http://www.roblox.com/asset/?id=658360781";
        local Fall_5 = Animate_5.fall;
        local FallAnim_5 = Fall_5.FallAnim;
        FallAnim_5.AnimationId = "http://www.roblox.com/asset/?id=657600338";
        local Players_28 = game.Players;
        local LocalPlayer_25 = Players.LocalPlayer;
        local Character_21 = LocalPlayer.Character;
        local Humanoid_7 = Character_21.Humanoid;
        Humanoid_7.Jump = true;
    end,
    Title = "骑士",
    Justify = "Center",
});
local Space_87 = Tab_14.Space;
local Space_88 = Tab_14:Space();
local Button_103 = Tab_14.Button;
local Button_104 = Tab_14:Button({
    Callback = function()
        local Players_29 = game.Players;
        local LocalPlayer_26 = Players.LocalPlayer;
        local Character_22 = LocalPlayer.Character;
        local Animate_6 = Character_22.Animate;
        local Idle_11 = Animate_6.idle;
        local Animation1_6 = Idle_11.Animation1;
        Animation1_6.AnimationId = "http://www.roblox.com/asset/?id=616006778";
        local Idle_12 = Animate_6.idle;
        local Animation2_6 = Idle_12.Animation2;
        Animation2_6.AnimationId = "http://www.roblox.com/asset/?id=616008087";
        local Walk_6 = Animate_6.walk;
        local WalkAnim_6 = Walk_6.WalkAnim;
        WalkAnim_6.AnimationId = "http://www.roblox.com/asset/?id=616013216";
        local Run_6 = Animate_6.run;
        local RunAnim_6 = Run_6.RunAnim;
        RunAnim_6.AnimationId = "http://www.roblox.com/asset/?id=616010382";
        local Jump_6 = Animate_6.jump;
        local JumpAnim_6 = Jump_6.JumpAnim;
        JumpAnim_6.AnimationId = "http://www.roblox.com/asset/?id=616008936";
        local Climb_5 = Animate_6.climb;
        local ClimbAnim_5 = Climb_5.ClimbAnim;
        ClimbAnim_5.AnimationId = "http://www.roblox.com/asset/?id=616003713";
        local Fall_6 = Animate_6.fall;
        local FallAnim_6 = Fall_6.FallAnim;
        FallAnim_6.AnimationId = "http://www.roblox.com/asset/?id=616005863";
        local Players_30 = game.Players;
        local LocalPlayer_27 = Players.LocalPlayer;
        local Character_23 = LocalPlayer.Character;
        local Humanoid_8 = Character_23.Humanoid;
        Humanoid_8.Jump = true;
    end,
    Title = "悬浮",
    Justify = "Center",
});
local Space_89 = Tab_14.Space;
local Space_90 = Tab_14:Space();
local Button_105 = Tab_14.Button;
local Button_106 = Tab_14:Button({
    Callback = function(p1_0)
        local Players_31 = game.Players;
        local LocalPlayer_28 = Players.LocalPlayer;
        local Character_24 = LocalPlayer.Character;
        local Animate_7 = Character_24.Animate;
        local Idle_13 = Animate_7.idle;
        local Animation1_7 = Idle_13.Animation1;
        Animation1_7.AnimationId = "http://www.roblox.com/asset/?id=707742142";
        local Idle_14 = Animate_7.idle;
        local Animation2_7 = Idle_14.Animation2;
        Animation2_7.AnimationId = "http://www.roblox.com/asset/?id=707855907";
        local Walk_7 = Animate_7.walk;
        local WalkAnim_7 = Walk_7.WalkAnim;
        WalkAnim_7.AnimationId = "http://www.roblox.com/asset/?id=707897309";
        local Run_7 = Animate_7.run;
        local RunAnim_7 = Run_7.RunAnim;
        RunAnim_7.AnimationId = "http://www.roblox.com/asset/?id=707861613";
        local Jump_7 = Animate_7.jump;
        local JumpAnim_7 = Jump_7.JumpAnim;
        JumpAnim_7.AnimationId = "http://www.roblox.com/asset/?id=707853694";
        local Climb_6 = Animate_7.climb;
        local ClimbAnim_6 = Climb_6.ClimbAnim;
        ClimbAnim_6.AnimationId = "http://www.roblox.com/asset/?id=707826056";
        local Fall_7 = Animate_7.fall;
        local FallAnim_7 = Fall_7.FallAnim;
        FallAnim_7.AnimationId = "http://www.roblox.com/asset/?id=707829716";
        local Players_32 = game.Players;
        local LocalPlayer_29 = Players.LocalPlayer;
        local Character_25 = LocalPlayer.Character;
        local Humanoid_9 = Character_25.Humanoid;
        Humanoid_9.Jump = true;
    end,
    Title = "法师",
    Justify = "Center",
});
local Space_91 = Tab_14.Space;
local Space_92 = Tab_14:Space();
local Button_107 = Tab_14.Button;
local Button_108 = Tab_14:Button({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Players_33 = game.Players;
        local LocalPlayer_30 = Players.LocalPlayer;
        local Character_26 = LocalPlayer.Character;
        local Animate_8 = Character_26.Animate;
        local Idle_15 = Animate_8.idle;
        local Animation1_8 = Idle_15.Animation1;
        Animation1_8.AnimationId = "http://www.roblox.com/asset/?id=656117400";
        local Idle_16 = Animate_8.idle;
        local Animation2_8 = Idle_16.Animation2;
        Animation2_8.AnimationId = "http://www.roblox.com/asset/?id=656118341";
        local Walk_8 = Animate_8.walk;
        local WalkAnim_8 = Walk_8.WalkAnim;
        WalkAnim_8.AnimationId = "http://www.roblox.com/asset/?id=656121766";
        local Run_8 = Animate_8.run;
        local RunAnim_8 = Run_8.RunAnim;
        RunAnim_8.AnimationId = "http://www.roblox.com/asset/?id=656118852";
        local Jump_8 = Animate_8.jump;
        local JumpAnim_8 = Jump_8.JumpAnim;
        JumpAnim_8.AnimationId = "http://www.roblox.com/asset/?id=656117878";
        local Climb_7 = Animate_8.climb;
        local ClimbAnim_7 = Climb_7.ClimbAnim;
        ClimbAnim_7.AnimationId = "http://www.roblox.com/asset/?id=656114359";
        local Fall_8 = Animate_8.fall;
        local FallAnim_8 = Fall_8.FallAnim;
        FallAnim_8.AnimationId = "http://www.roblox.com/asset/?id=656115606";
        local Players_34 = game.Players;
        local LocalPlayer_31 = Players.LocalPlayer;
        local Character_27 = LocalPlayer.Character;
        local Humanoid_10 = Character_27.Humanoid;
        Humanoid_10.Jump = true;
    end,
    Title = "忍者",
    Justify = "Center",
});
local Space_93 = Tab_14.Space;
local Space_94 = Tab_14:Space();
local Button_109 = Tab_14.Button;
local Button_110 = Tab_14:Button({
    Callback = function(p1_0, p2_0, p3_0)
        local Players_35 = game.Players;
        local LocalPlayer_32 = Players.LocalPlayer;
        local Character_28 = LocalPlayer.Character;
        local Animate_9 = Character_28.Animate;
        local Idle_17 = Animate_9.idle;
        local Animation1_9 = Idle_17.Animation1;
        Animation1_9.AnimationId = "http://www.roblox.com/asset/?id=750781874";
        local Idle_18 = Animate_9.idle;
        local Animation2_9 = Idle_18.Animation2;
        Animation2_9.AnimationId = "http://www.roblox.com/asset/?id=750782770";
        local Walk_9 = Animate_9.walk;
        local WalkAnim_9 = Walk_9.WalkAnim;
        WalkAnim_9.AnimationId = "http://www.roblox.com/asset/?id=750785693";
        local Run_9 = Animate_9.run;
        local RunAnim_9 = Run_9.RunAnim;
        RunAnim_9.AnimationId = "http://www.roblox.com/asset/?id=750783738";
        local Jump_9 = Animate_9.jump;
        local JumpAnim_9 = Jump_9.JumpAnim;
        JumpAnim_9.AnimationId = "http://www.roblox.com/asset/?id=750782230";
        local Climb_8 = Animate_9.climb;
        local ClimbAnim_8 = Climb_8.ClimbAnim;
        ClimbAnim_8.AnimationId = "http://www.roblox.com/asset/?id=750779899";
        local Fall_9 = Animate_9.fall;
        local FallAnim_9 = Fall_9.FallAnim;
        FallAnim_9.AnimationId = "http://www.roblox.com/asset/?id=750780242";
        local Players_36 = game.Players;
        local LocalPlayer_33 = Players.LocalPlayer;
        local Character_29 = LocalPlayer.Character;
        local Humanoid_11 = Character_29.Humanoid;
        Humanoid_11.Jump = true;
    end,
    Title = "海盗",
    Justify = "Center",
});
local Tab_15 = Window.Tab;
local Tab_16 = Window:Tab({
    Title = "背包区",
    Icon = "backpack",
});
local Toggle_19 = Tab_16.Toggle;
local Toggle_20 = Tab_16:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1411 = p1_0[1];
        if not var1411 then -- didnt run, expr id 14, has an else.
        else
            local RunService_82 = game:GetService("RunService");
        end
        local Connection_47;
        Connection_47 = RunService.Heartbeat:connect(function(DeltaTime_8, p2_0, p3_0, p4_0) -- args: DeltaTime_9;
            local Players_58 = game.Players;
            local Children_6 = Players:GetChildren();
            local Players_59 = game.Players;
            local LocalPlayer_47 = Players.LocalPlayer;
            local var1538 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 184
            local Players_60 = game.Players;
            local LocalPlayer_48 = Players.LocalPlayer;
            local var1539 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 185
            local Players_61 = game.Players;
            local LocalPlayer_49 = Players.LocalPlayer;
            local var1540 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 186
            local Players_62 = game.Players;
            local LocalPlayer_50 = Players.LocalPlayer;
            local var1541 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 187
            local Players_63 = game.Players;
            local LocalPlayer_51 = Players.LocalPlayer;
            local var1542 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 188
            local Players_64 = game.Players;
            local LocalPlayer_52 = Players.LocalPlayer;
            local var1543 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 189
            local Players_65 = game.Players;
            local LocalPlayer_53 = Players.LocalPlayer;
            local var1544 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 190
            local Players_66 = game.Players;
            local LocalPlayer_54 = Players.LocalPlayer;
            local var1545 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 191
            local Players_67 = game.Players;
            local LocalPlayer_55 = Players.LocalPlayer;
            local var1546 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 192
            local Players_68 = game.Players;
            local LocalPlayer_56 = Players.LocalPlayer;
            local var1547 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 193
            local Players_69 = game.Players;
            local LocalPlayer_57 = Players.LocalPlayer;
            local var1548 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 194
            local Players_70 = game.Players;
            local LocalPlayer_58 = Players.LocalPlayer;
            local var1549 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 195
            local Players_71 = game.Players;
            local LocalPlayer_59 = Players.LocalPlayer;
            local var1550 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 196
            local Players_72 = game.Players;
            local LocalPlayer_60 = Players.LocalPlayer;
            local var1551 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 197
            local Players_73 = game.Players;
            local LocalPlayer_61 = Players.LocalPlayer;
            local var1552 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 198
            local Players_74 = game.Players;
            local LocalPlayer_62 = Players.LocalPlayer;
            local var1553 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 199
            local Players_75 = game.Players;
            local LocalPlayer_63 = Players.LocalPlayer;
            local var1554 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 200
            local Players_76 = game.Players;
            local LocalPlayer_64 = Players.LocalPlayer;
            local var1555 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 201
            local Players_77 = game.Players;
            local LocalPlayer_65 = Players.LocalPlayer;
            local var1556 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 202
            local Players_78 = game.Players;
            local LocalPlayer_66 = Players.LocalPlayer;
            local var1557 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 203
            local Players_79 = game.Players;
            local LocalPlayer_67 = Players.LocalPlayer;
            local var1558 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 204
            local Players_80 = game.Players;
            local LocalPlayer_68 = Players.LocalPlayer;
            local var1559 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 205
            local Players_81 = game.Players;
            local LocalPlayer_69 = Players.LocalPlayer;
            local var1560 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 206
            local Players_82 = game.Players;
            local LocalPlayer_70 = Players.LocalPlayer;
            local var1561 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 207
            local Players_83 = game.Players;
            local LocalPlayer_71 = Players.LocalPlayer;
            local var1562 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 208
            local Players_84 = game.Players;
            local LocalPlayer_72 = Players.LocalPlayer;
            local var1563 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 209
            local Players_85 = game.Players;
            local LocalPlayer_73 = Players.LocalPlayer;
            local var1564 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 210
            local Players_86 = game.Players;
            local LocalPlayer_74 = Players.LocalPlayer;
            local var1565 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 211
            local Players_87 = game.Players;
            local LocalPlayer_75 = Players.LocalPlayer;
            local var1566 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 212
            local Players_88 = game.Players;
            local LocalPlayer_76 = Players.LocalPlayer;
            local var1567 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 213
            local Players_89 = game.Players;
            local LocalPlayer_77 = Players.LocalPlayer;
            local var1568 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 214
            local Players_90 = game.Players;
            local LocalPlayer_78 = Players.LocalPlayer;
            local var1569 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 215
            local Players_91 = game.Players;
            local LocalPlayer_79 = Players.LocalPlayer;
            local var1570 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 216
            local Players_92 = game.Players;
            local LocalPlayer_80 = Players.LocalPlayer;
            local var1571 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 217
            local Players_93 = game.Players;
            local LocalPlayer_81 = Players.LocalPlayer;
            local var1572 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 218
            local Players_94 = game.Players;
            local LocalPlayer_82 = Players.LocalPlayer;
            local var1573 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 219
            local Players_95 = game.Players;
            local LocalPlayer_83 = Players.LocalPlayer;
            local var1574 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 220
            local Players_96 = game.Players;
            local LocalPlayer_84 = Players.LocalPlayer;
            local var1575 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 221
            local Players_97 = game.Players;
            local LocalPlayer_85 = Players.LocalPlayer;
            local var1576 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 222
            local Players_98 = game.Players;
            local LocalPlayer_86 = Players.LocalPlayer;
            local var1577 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 223
            local Players_99 = game.Players;
            local LocalPlayer_87 = Players.LocalPlayer;
            local var1578 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 224
            local Players_100 = game.Players;
            local LocalPlayer_88 = Players.LocalPlayer;
            local var1579 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 225
            local Players_101 = game.Players;
            local LocalPlayer_89 = Players.LocalPlayer;
            local var1580 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 226
            local Players_102 = game.Players;
            local LocalPlayer_90 = Players.LocalPlayer;
            local var1581 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 227
            local Players_103 = game.Players;
            local LocalPlayer_91 = Players.LocalPlayer;
            local var1582 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 228
            local Players_104 = game.Players;
            local LocalPlayer_92 = Players.LocalPlayer;
            local var1583 = (LocalPlayer ~= LocalPlayer);
            -- false, eq id 229
        end);
    end,
    Title = "获取所有玩家背包",
    Desc = "自动获取其他玩家的工具",
});
local Button_111 = Tab_16.Button;
local Button_112 = Tab_16:Button({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Players_37 = game.Players;
        local LocalPlayer_34 = Players.LocalPlayer;
        local Character_30 = LocalPlayer.Character;
        local Tool = Character_30:FindFirstChildOfClass("Tool");
        local var1412 = (Tool and 14193230); -- 14193230
        local var1413 = (var1412 or 15430104);
        local Notify_89 = Loaded_Main_Lua.Notify;
        local Name_4 = Tool.Name;
        local var1414 = "当前工具: " .. Name_4;
        local Notify_90 = Loaded_Main_Lua:Notify({
            Icon = "package",
            Title = "工具",
            Content = var1414,
        });
    end,
    Icon = "package",
    Title = "获取当前工具",
    Desc = "获取当前手持工具",
});
local Button_113 = Tab_16.Button;
local Button_114 = Tab_16:Button({
    Callback = function(p1_0, p2_0, p3_0)
        local Players_38 = game.Players;
        local LocalPlayer_35 = Players.LocalPlayer;
        local Backpack = LocalPlayer.Backpack;
        local GetChildren = Backpack.GetChildren;
        local Children_2 = Backpack:GetChildren();
        for i_3, v_3 in pairs(Children_2) do
            if i_3 then -- ran, expr id 15, has an else.
                local IsA = v_3.IsA;
            end
            local Tool_2 = v_3:IsA("Tool");
            if not Tool_2 then -- didnt run, expr id 16, has an else.
            else
                local Players_39 = game.Players;
            end
            local LocalPlayer_36 = Players.LocalPlayer;
            local Character_31 = LocalPlayer.Character;
            v_3.Parent = Character_31;
        end
        local Notify_91 = Loaded_Main_Lua.Notify;
        local Notify_92 = Loaded_Main_Lua:Notify({
            Icon = "check",
            Title = "成功",
            Content = "已装备 1 个工具",
        });
    end,
    Icon = "shield",
    Title = "装备全部工具",
    Desc = "装备背包中的所有工具",
});
local Button_115 = Tab_16.Button;
local Button_116 = Tab_16:Button({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Players_40 = game.Players;
        local LocalPlayer_37 = Players.LocalPlayer;
        local Character_32 = LocalPlayer.Character;
        local Tool_3 = Character_32:FindFirstChildOfClass("Tool");
        if Tool_3 then -- ran, expr id 17, has an else.
            local Destroy_3 = Tool_3.Destroy;
            local Destroy_4 = Tool_3:Destroy();
        end
        local Notify_93 = Loaded_Main_Lua.Notify;
        local Notify_94 = Loaded_Main_Lua:Notify({
            Icon = "check",
            Title = "成功",
            Content = "工具已删除",
        });
    end,
    Icon = "trash-2",
    Title = "删除工具",
    Desc = "删除当前手持工具",
});
local Button_117 = Tab_16.Button;
local Button_118 = Tab_16:Button({
    Callback = function()
        local Players_41 = game.Players;
        local LocalPlayer_38 = Players.LocalPlayer;
        local Character_33 = LocalPlayer.Character;
        local Children_3 = Character_33:GetChildren();
        local Players_42 = game.Players;
        local LocalPlayer_39 = Players.LocalPlayer;
        local Backpack_2 = LocalPlayer.Backpack;
        local GetChildren_2 = Backpack_2.GetChildren;
        local Children_4 = Backpack_2:GetChildren();
        for i_4, v_4 in pairs(Children_4) do
            local var1418 = (i_4 and 16492837); -- 16492837
            local var1419 = (var1418 or function()--[[function ignored]]end);
            local IsA_2 = v_4.IsA;
            local Tool_4 = v_4:IsA("Tool");
            if not Tool_4 then -- didnt run, expr id 18, has an else.
            else
                local Destroy_5 = v_4.Destroy;
                local Destroy_6 = v_4:Destroy();
            end
        end
        local Notify_95 = Loaded_Main_Lua.Notify;
        local Notify_96 = Loaded_Main_Lua:Notify({
            Icon = "check",
            Title = "成功",
            Content = "已删除 1 个工具",
        });
    end,
    Icon = "trash",
    Title = "删除所有工具",
    Desc = "删除所有工具",
});
local Tab_17 = Window.Tab;
local Tab_18 = Window:Tab({
    Title = "交互区",
    Icon = "hand",
});
local Paragraph_9 = Tab_18.Paragraph;
local Paragraph_10 = Tab_18:Paragraph({
    Title = "常见的交互有:长按E 开门 开宝箱 等",
});
local Toggle_21 = Tab_18.Toggle;
local Toggle_22 = Tab_18:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1422 = p1_0[1];
        if var1422 then -- ran, expr id 19, has an else.
            local RunService_83 = game:GetService("RunService");
        end
        local Connection_48;
        Connection_48 = RunService.Heartbeat:connect(function(DeltaTime_10, p2_0) -- args: DeltaTime_11;
            local Descendants_2 = workspace:GetDescendants();
            local ProximityPrompt = Sound:IsA("ProximityPrompt");
            local var1584 = (ProximityPrompt and function()--[[function ignored]]end);
        end);
    end,
    Title = "自动交互",
    Desc = "自动触发所有交互点",
});
local Toggle_23 = Tab_18.Toggle;
local Toggle_24 = Tab_18:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1423 = p1_0[1];
        local var1424 = (var1423 and 15135941); -- 15135941
        local ProximityPromptService = game:GetService("ProximityPromptService");
        local Connection_49;
        Connection_49 = ProximityPromptService.PromptButtonHoldBegan:Connect(function(Prompt, PlayerWhoTriggered) -- args: Prompt_2, PlayerWhoTriggered_2;
            local Prompt_2 = Prompt[1];
            local fireproximityprompt = fenv.fireproximityprompt;
            local _call1585 = fireproximityprompt(Prompt_2);
        end);
    end,
    Title = "快速交互",
    Desc = "减少交互等待时间",
});
local Tab_19 = Window.Tab;
local Tab_20 = Window:Tab({
    Title = "观战区",
    Icon = "eye",
});
local Players_3 = game.Players;
local Players_4 = Players:GetPlayers();
for i, v in pairs(Players_4) do
    local var939 = (i and 15855198); -- 15855198
    local var940 = (var939 or function()--[[function ignored]]end);
    local Players_5 = game.Players;
    local LocalPlayer_3 = Players.LocalPlayer;
    local var941 = (v ~= LocalPlayer);
    -- true, eq id 1
    local Name = v.Name;
    local var942 = (Name and 12940978); -- 12940978
    local Array = {};
    local var943 = table.insert(Array, Name);
end
local Dropdown_7 = Tab_20.Dropdown;
local Dropdown_8 = Tab_20:Dropdown({
    Callback = function(p1_0, p2_0, p3_0)
        local var1425 = p1_0[1];
    end,
    Title = "选择玩家",
    Values = Array,
});
local Dropdown_9 = Tab_20.Dropdown;
local Dropdown_10 = Tab_20:Dropdown({
    Callback = function(p1_0, p2_0)
        local var1426 = p1_0[1];
        local Players_43 = game.Players;
        local Players_44 = Players:GetPlayers();
        for i_5, v_5 in pairs(Players_44) do
            local var1426 = (i_5 and 15855198); -- 15855198
            local var1427 = (var1426 or function()--[[function ignored]]end);
            local Players_45 = game.Players;
            local LocalPlayer_40 = Players.LocalPlayer;
            local var1428 = (v_5 ~= LocalPlayer);
            -- true, eq id 177
            local var1426_eq_string = (var1426 == "用户名");
            -- false, eq id 178
            local var1429 = (var1426_eq_string and 12940978);
            local DisplayName_2 = v_5.DisplayName;
            local Array_2 = {};
            local var1430 = table.insert(Array_2, DisplayName_2);
        end
        local Refresh_5 = Dropdown_8.Refresh;
        local Refresh_6 = Dropdown_8:Refresh(Array_2);
    end,
    Title = "选择玩家列表模式",
    Values = {
        "用户名",
        "显示名称",
    },
});
local Button_119 = Tab_20.Button;
local Button_120 = Tab_20:Button({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local Players_46 = game.Players;
        local Players_47 = Players:GetPlayers();
        for i_6, v_6 in pairs(Players_47) do
            local var1431 = (i_6 and 15855198); -- 15855198
            local var1432 = (var1431 or function()--[[function ignored]]end);
            local Players_48 = game.Players;
            local LocalPlayer_41 = Players.LocalPlayer;
            local var1433 = (v_6 ~= LocalPlayer);
            -- true, eq id 179
            local var1426_eq_string_2 = (var1426 == "用户名");
            -- false, eq id 180
            local var1434 = (var1426_eq_string_2 and 12940978);
            local DisplayName_3 = v_6.DisplayName;
            local Array_3 = {};
            local var1435 = table.insert(Array_3, DisplayName_3);
        end
        local Refresh_7 = Dropdown_8.Refresh;
        local Refresh_8 = Dropdown_8:Refresh(Array_3);
    end,
    Title = "刷新玩家列表",
    Icon = "refresh-cw",
});
local Toggle_25 = Tab_20.Toggle;
local Toggle_26 = Tab_20:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0)
        local var1437 = p1_0[1];
        local Players_49 = game.Players;
        local LocalPlayer_42 = Players.LocalPlayer;
        if var1437 then -- ran, expr id 20, has an else.
            local var1438 = var1425[1];
        end
        local Players_50 = game.Players;
        local Players_51 = Players:GetPlayers();
        for i_7, v_7 in pairs(Players_51) do
            local var1438 = (i_7 and 12346062); -- 12346062
            local var1439 = (var1438 or function()--[[function ignored]]end);
            local var1426_eq_string_3 = (var1426 == "用户名");
            -- false, eq id 181
            local var1440 = (var1426_eq_string_3 and 12940978);
            local DisplayName_4 = v_7.DisplayName;
            local var1441 = (DisplayName_4 == var1438);
            -- false, eq id 182
            local var1442 = (var1441 and function()--[[function ignored]]end);
        end
        local Notify_97 = Loaded_Main_Lua.Notify;
        local Notify_98 = Loaded_Main_Lua:Notify({
            Icon = "x",
            Title = "错误",
            Content = "找不到目标玩家或角色",
        });
    end,
    Title = "观战此玩家",
    Desc = "切换到指定玩家视角",
});
local Tab_21 = Window.Tab;
local Tab_22 = Window:Tab({
    Title = "朝向区",
    Icon = "compass",
});
local Paragraph_11 = Tab_22.Paragraph;
local Paragraph_12 = Tab_22:Paragraph({
    Title = "自动朝向最近的玩家",
});
local Toggle_27 = Tab_22.Toggle;
local Toggle_28 = Tab_22:Toggle({
    Value = false,
    Title = "禁用/开启朝向",
    Callback = function(p1_0, p2_0, p3_0)
        local var1444 = p1_0[1];
        local var1445 = (var1444 and 11310380); -- 11310380
        local var1446 = (var1445 or 13015744);
        local RunService_84 = game:GetService("RunService");
        local Connection_50;
        Connection_50 = RunService.Heartbeat:connect(function(DeltaTime_12, p2_0, p3_0, p4_0) -- args: DeltaTime_13;
            local Players_105 = game:GetService("Players");
            local LocalPlayer_93 = Players.LocalPlayer;
            local Success_101, Error_Message_101 = pcall(function(...)
                local Character_44 = LocalPlayer.Character;
                local Not_Character_44 = not Character_44;
                -- false
                local var1586 = (Not_Character_44 and 13109651);
                local Character_45 = LocalPlayer.Character;
                local HumanoidRootPart_6 = Character_45:FindFirstChild("HumanoidRootPart");
                local Not_HumanoidRootPart_6 = not HumanoidRootPart_6;
                -- false
                local var1587 = (Not_HumanoidRootPart_6 and 13848873);
                local Character_46 = LocalPlayer.Character;
                local HumanoidRootPart_7 = Character_46.HumanoidRootPart;
                local Players_106 = game.Players;
                local Players_107 = Players:GetPlayers();
                for i_9, v_9 in ipairs(Players_107) do
                    local var1587 = (i_9 and 11691822); -- 11691822
                    local var1588 = (var1587 or 12676281);
                    local var1589 = (v_9 == LocalPlayer);
                    -- false, eq id 230
                    local Character_47 = v_9.Character;
                    local Not_Character_47 = not Character_47;
                    -- false
                    local var1590 = (Not_Character_47 and function()--[[function ignored]]end);
                    local Character_48 = v_9.Character;
                    local FindFirstChild_2 = Character_48.FindFirstChild;
                    local HumanoidRootPart_8 = Character_48:FindFirstChild("HumanoidRootPart");
                    local Not_HumanoidRootPart_8 = not HumanoidRootPart_8;
                    -- false
                    local var1591 = (Not_HumanoidRootPart_8 and 15881644);
                    local Character_49 = v_9.Character;
                    local FindFirstChild_3 = Character_49.FindFirstChild;
                    local Humanoid_13 = Character_49:FindFirstChild("Humanoid");
                    local Not_Humanoid_13 = not Humanoid_13;
                    -- false
                    local Character_50 = v_9.Character;
                    local Humanoid_14 = Character_50.Humanoid;
                    local Health = Humanoid_14.Health;
                    local var1592 = (Health <= 0); -- nil
                    if not var1447 then -- didnt run, expr id 31, has an else.
                    else
                        local Team = LocalPlayer.Team;
                    end
                    if Team then -- ran, expr id 32, has an else.
                        local Team_2 = v_9.Team;
                        local var1593 = (Team_2 and 15741255); -- 15741255
                        local var1594 = (var1593 or function()--[[function ignored]]end);
                    end
                    local Team_3 = LocalPlayer.Team;
                    local Team_4 = v_9.Team;
                    local Team_eq_Team_4 = (Team == Team_4);
                    -- false, eq id 231
                    local var1595 = (Team_eq_Team_4 and 15199767);
                    local Position_5 = HumanoidRootPart_7.Position;
                    local Character_51 = v_9.Character;
                    local HumanoidRootPart_9 = Character_51.HumanoidRootPart;
                    local Position_6 = HumanoidRootPart_9.Position;
                    local var1596 = Position_5 - Position_6;
                    local Magnitude_2 = var1596.Magnitude;
                    local var1597 = (Magnitude_2 < math.huge); -- nil
                    local var1598 = (var1597 and 12706406);
                end
            end) -- true
        end);
    end,
});
local Toggle_29 = Tab_22.Toggle;
local Toggle_30 = Tab_22:Toggle({
    Value = false,
    Title = "队伍检测",
    Callback = function(p1_0, p2_0, p3_0)
        local var1447 = p1_0[1];
    end,
});
local Toggle_31 = Tab_22.Toggle;
local Toggle_32 = Tab_22:Toggle({
    Value = true,
    Callback = function(p1_0, p2_0, p3_0)
        local var1448 = p1_0[1];
    end,
    Title = "最近检测",
    Desc = "朝向最近的玩家",
});
local Toggle_33 = Tab_22.Toggle;
local Toggle_34 = Tab_22:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0)
        local var1449 = p1_0[1];
        local Not_Var1449 = not var1449;
        -- false
        local var1450 = (Not_Var1449 and 10787224);
    end,
    Title = "预测移动",
    Desc = "预测目标移动",
});
local Slider_5 = Tab_22.Slider;
local Slider_6 = Tab_22:Slider({
    Value = {
        Min = 0.1,
        Default = 0.1,
        Max = 0.3,
    },
    Callback = function(p1_0)
        local var1451 = p1_0[1];
    end,
    Title = "预测移动速度",
    Step = 0.05,
});
local FromHex_44 = Color3.fromHex;
local _call955 = FromHex_44("#7775F2");
local FromHex_45 = Color3.fromHex;
local _call956 = FromHex_45("#ECA201");
local FromHex_46 = Color3.fromHex;
local _call957 = FromHex_46("#10C550");
local FromHex_47 = Color3.fromHex;
local _call958 = FromHex_47("#83889E");
local FromHex_48 = Color3.fromHex;
local _call959 = FromHex_48("#257AF7");
local FromHex_49 = Color3.fromHex;
local _call960 = FromHex_49("#EF4F1D");
local RunService_76 = game:GetService("RunService");
local Players_6 = game:GetService("Players");
local Workspace_2 = game:GetService("Workspace");
local UserInputService = game:GetService("UserInputService");
local CurrentCamera = workspace.CurrentCamera;
local LocalPlayer_4 = Players.LocalPlayer;
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Tab_23 = Window.Tab;
local Tab_24 = Window:Tab({
    IconColor = _call960,
    Title = "自瞄区",
    Icon = "target",
});
local Players_7 = game:GetService("Players");
local LocalPlayer_5 = Players.LocalPlayer;
local CurrentCamera_2 = workspace.CurrentCamera;
local RunService_77 = game:GetService("RunService");
local FromRGB_3 = Color3.fromRGB;
local _call962 = FromRGB_3(255, 0, 0);
local var963 = Drawing.new("Circle");
var963.Visible = false;
var963.Radius = 120;
var963.Color = _call962;
var963.Thickness = 2;
local ViewportSize = CurrentCamera.ViewportSize;
local Half_76_ViewportSize = ViewportSize / 2;
var963.Position = Half_76_ViewportSize;
var963.Filled = false;
local Section_15 = Tab_24.Section;
local Section_16 = Tab_24:Section({
    Title = "基础设置",
    Side = "Left",
});
local Toggle_35 = Section_16.Toggle;
local Toggle_36 = Section_16:Toggle({
    Title = "开启自瞄",
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1452 = p1_0[1];
        if not var1452 then -- didnt run, expr id 21, has an else.
        else
            local Connection_51;
            Connection_51 = RunService.RenderStepped:connect(function(DeltaTime_14, p2_0, p3_0, p4_0) -- args: DeltaTime_15;
                var963.Visible = var1466;
                var963.Radius = var1469;
                var963.Thickness = var1470;
                local ViewportSize_2 = CurrentCamera.ViewportSize;
                local Half_77_ViewportSize_2 = ViewportSize_2 / 2;
                var963.Position = Half_77_ViewportSize_2;
                local var1599 = (var1468 and 10549163);
                var963.Color = var1471;
                local Not_Var1452 = not var1452;
                -- false
                local var1453_eq_string = (var1453 == "Player");
                -- false, eq id 232
                local var1600 = (var1453_eq_string and function()--[[function ignored]]end);
                local var1453_eq_string_2 = (var1453 == "NPC");
                -- false, eq id 233
                local var1601 = (var1453_eq_string_2 and 11060639);
                local var1453_eq_string_3 = (var1453 == "Both");
                -- false, eq id 234
            end);
        end
    end,
});
local Dropdown_11 = Section_16.Dropdown;
local Dropdown_12 = Section_16:Dropdown({
    Value = "Player",
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1453 = p1_0[1];
    end,
    Title = "瞄准目标",
    Values = {
        "Player",
        "NPC",
        "Both",
    },
});
local Dropdown_13 = Section_16.Dropdown;
local Dropdown_14 = Section_16:Dropdown({
    Value = "Head",
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1454 = p1_0[1];
    end,
    Title = "瞄准部位",
    Values = {
        "Head",
        "HumanoidRootPart",
        "UpperTorso",
        "LowerTorso",
        "Torso",
    },
});
local Slider_7 = Section_16.Slider;
local Slider_8 = Section_16:Slider({
    Min = 50,
    Title = "最大距离",
    Max = 1000,
    Callback = function(p1_0, p2_0, p3_0)
        local var1455 = p1_0[1];
    end,
    Default = 500,
});
local Section_17 = Tab_24.Section;
local Section_18 = Tab_24:Section({
    Title = "检测设置",
    Side = "Left",
});
local Toggle_37 = Section_18.Toggle;
local Toggle_38 = Section_18:Toggle({
    Title = "好友检测",
    Callback = function(p1_0, p2_0)
        local var1456 = p1_0[1];
    end,
});
local Toggle_39 = Section_18.Toggle;
local Toggle_40 = Section_18:Toggle({
    Title = "队伍检测",
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1457 = p1_0[1];
    end,
});
local Toggle_41 = Section_18.Toggle;
local Toggle_42 = Section_18:Toggle({
    Title = "墙体检测",
    Callback = function(p1_0, p2_0)
        local var1458 = p1_0[1];
    end,
});
local Toggle_43 = Section_18.Toggle;
local Toggle_44 = Section_18:Toggle({
    Title = "存活检测",
    Callback = function(p1_0)
        local var1459 = p1_0[1];
    end,
});
local Section_19 = Tab_24.Section;
local Section_20 = Tab_24:Section({
    Title = "平滑自瞄设置",
    Side = "Right",
});
local Toggle_45 = Section_20.Toggle;
local Toggle_46 = Section_20:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1460 = p1_0[1];
    end,
    Title = "开启平滑自瞄",
    Desc = "让瞄准移动更自然，避免被检测",
});
local Slider_9 = Section_20.Slider;
local Slider_10 = Section_20:Slider({
    Min = 0.1,
    Title = "平滑度",
    Max = 1,
    Default = 0.4,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1461 = p1_0[1];
    end,
    Desc = "值越小越平滑，值越大越直接",
});
local Section_21 = Tab_24.Section;
local Section_22 = Tab_24:Section({
    Title = "预测设置",
    Side = "Right",
});
local Toggle_47 = Section_22.Toggle;
local Toggle_48 = Section_22:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1462 = p1_0[1];
    end,
    Title = "开启预测",
    Desc = "预测目标移动位置",
});
local Slider_11 = Section_22.Slider;
local Slider_12 = Section_22:Slider({
    Min = 0,
    Title = "预测强度",
    Max = 0.5,
    Default = 0.1,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1463 = p1_0[1];
    end,
    Desc = "值越大预测越提前",
});
local Section_23 = Tab_24.Section;
local Section_24 = Tab_24:Section({
    Title = "偏移设置",
    Side = "Right",
});
local Slider_13 = Section_24.Slider;
local Slider_14 = Section_24:Slider({
    Min = -50,
    Title = "X轴偏移",
    Max = 50,
    Default = 0,
    Callback = function(p1_0)
        local var1464 = p1_0[1];
    end,
    Desc = "水平方向偏移量",
});
local Slider_15 = Section_24.Slider;
local Slider_16 = Section_24:Slider({
    Min = -50,
    Title = "Y轴偏移",
    Max = 50,
    Default = 0,
    Callback = function(p1_0)
        local var1465 = p1_0[1];
    end,
    Desc = "垂直方向偏移量",
});
local Section_25 = Tab_24.Section;
local Section_26 = Tab_24:Section({
    Title = "FOV设置",
    Side = "Left",
});
local Toggle_49 = Section_26.Toggle;
local Toggle_50 = Section_26:Toggle({
    Title = "显示FOV圆圈",
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1466 = p1_0[1];
    end,
});
local Toggle_51 = Section_26.Toggle;
local Toggle_52 = Section_26:Toggle({
    Callback = function(p1_0, p2_0, p3_0)
        local var1467 = p1_0[1];
    end,
    Title = "使用FOV限制",
    Desc = "只在圆圈内检测目标",
});
local Toggle_53 = Section_26.Toggle;
local Toggle_54 = Section_26:Toggle({
    Callback = function(p1_0, p2_0)
        local var1468 = p1_0[1];
    end,
    Title = "彩虹FOV",
    Desc = "FOV圆圈显示彩虹色",
});
local Slider_17 = Section_26.Slider;
local Slider_18 = Section_26:Slider({
    Min = 50,
    Title = "FOV大小",
    Max = 300,
    Callback = function(p1_0, p2_0)
        local var1469 = p1_0[1];
    end,
    Default = 120,
});
local Slider_19 = Section_26.Slider;
local Slider_20 = Section_26:Slider({
    Min = 1,
    Title = "FOV粗细",
    Max = 5,
    Callback = function(p1_0, p2_0)
        local var1470 = p1_0[1];
    end,
    Default = 2,
});
local Colorpicker = Section_26.Colorpicker;
local FromRGB_4 = Color3.fromRGB;
local _call989 = FromRGB_4(255, 0, 0);
local Colorpicker_2 = Section_26:Colorpicker({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1471 = p1_0[1];
    end,
    Title = "FOV颜色",
    Default = _call989,
});
ESPConfig = {
    ShowBackpack = false,
    OutlineTransparency = 0.2,
    OverallColor = "绿色",
    ShowBox = false,
    ShowTeam = false,
    ShowTracer = false,
    PerformanceMode = false,
    ShowHealth = false,
    TextSize = 14,
    WallhackEnabled = false,
    Enabled = false,
    UpdateRate = 30,
    HideOnDeath = true,
    DistanceScale = false,
    HealthBarEnabled = false,
    FillTransparency = 0.5,
    TextOutline = true,
    HealthBarDynamic = false,
    ShowName = false,
    BoxOutlineEnabled = false,
    UseDistanceFade = true,
    TeamCheck = false,
    MaxDistance = 2000,
    ShowWeapon = false,
    ShowDistance = false,
};
local Players_8 = game:GetService("Players");
local RunService_78 = game:GetService("RunService");
local CurrentCamera_3 = workspace.CurrentCamera;
local LocalPlayer_6 = Players.LocalPlayer;
local FromRGB_5 = Color3.fromRGB;
local _call991 = FromRGB_5(0, 255, 0);
local FromRGB_6 = Color3.fromRGB;
local _call992 = FromRGB_6(255, 0, 0);
local FromRGB_7 = Color3.fromRGB;
local _call993 = FromRGB_7(0, 0, 255);
local FromRGB_8 = Color3.fromRGB;
local _call994 = FromRGB_8(255, 255, 0);
local FromRGB_9 = Color3.fromRGB;
local _call995 = FromRGB_9(128, 0, 128);
local FromRGB_10 = Color3.fromRGB;
local _call996 = FromRGB_10(255, 165, 0);
local FromRGB_11 = Color3.fromRGB;
local _call997 = FromRGB_11(255, 105, 180);
local FromRGB_12 = Color3.fromRGB;
local _call998 = FromRGB_12(0, 255, 255);
local FromRGB_13 = Color3.fromRGB;
local _call999 = FromRGB_13(255, 255, 255);
local Players_9 = Players:GetPlayers();
for i_2, v_2 in pairs(Players_9) do
    local var999 = (i_2 and 10963451); -- 10963451
    local var1000 = (v_2 ~= LocalPlayer);
    -- true, eq id 2
    local var1001 = (var1000 and 11836393); -- 11836393
    local var1002 = (v_2 == LocalPlayer);
    -- false, eq id 3
    local Character = v_2.Character;
    if Character then -- ran, expr id 1, has an else.
        local Character_2 = v_2.Character;
        local Spawned = task.spawn(function(p1_0, p2_0, p3_0)
            local var1472 = p1_0[1];
            task.wait(0.5)
            local Getgenv_ESPConfig = getgenv().ESPConfig;
        end);
    end
    local CharacterAdded = v_2.CharacterAdded;
    local Connect = CharacterAdded.Connect;
    local Connected = CharacterAdded:Connect(function(p1_0, p2_0, p3_0)
            local var1472 = p1_0[1];
            task.wait(0.5)
            local Getgenv_ESPConfig = getgenv().ESPConfig;
        end);
    local CharacterRemoving = v_2.CharacterRemoving;
    local Connect_2 = CharacterRemoving.Connect;
    local Connected_2 = CharacterRemoving:Connect(function(p1_0, p2_0, p3_0)
        local var1473 = p1_0[1];
        local var1474 = var1473[1];
    end);
end
local Connection;
Connection = Players.PlayerAdded:Connect(function(Player, p2_0) -- args: Player_2;
    local Player_2 = Player[1];
    local var1475 = (Player_2 == LocalPlayer);
    -- false, eq id 183
    local Character_34 = Player_2.Character;
    if Character_34 then -- ran, expr id 22, has an else.
        local Character_35 = Player_2.Character;
        local Spawned_2 = task.spawn(function(p1_0, p2_0, p3_0)
            local var1602 = p1_0[1];
            task.wait(0.5)
            local Getgenv_ESPConfig_30 = getgenv().ESPConfig;
            local var1603 = (var1478 and 16094467); -- 16094467
            local var1604 = (var1603 or 12952072);
            local var1605 = var1602[2];
            local var1606 = var1602[1];
            local Not_Var1606 = not var1606;
            -- false
            local Parent = var1606.Parent;
            local Not_Parent = not Parent;
            -- false
            local var1607 = (Not_Parent and function()--[[function ignored]]end);
            local FindFirstChild_4 = var1606.FindFirstChild;
            local HumanoidRootPart_10 = var1606:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_10 = not HumanoidRootPart_10;
            -- false
            local Getgenv_ESPConfig_31 = getgenv().ESPConfig;
            local FromRGB_14 = Color3.fromRGB;
            local _call1608 = FromRGB_14(0, 255, 0);
            local Highlight_2 = Instance.new("Highlight");
            var1606.Highlight = Highlight_2;
            local Highlight_3 = var1606.Highlight;
            Highlight_2.Name = "ESP_Highlight";
            local Highlight_4 = var1606.Highlight;
            Highlight_2.FillColor = _call1608;
            local Highlight_5 = var1606.Highlight;
            local New_168 = Color3.new;
            local _call1606 = New_168(0, 0, 0);
            Highlight_2.OutlineColor = _call1606;
            local Highlight_6 = var1606.Highlight;
            local Getgenv_ESPConfig_32 = getgenv().ESPConfig;
            Highlight_2.FillTransparency = var1488;
            local Highlight_7 = var1606.Highlight;
            local Getgenv_ESPConfig_33 = getgenv().ESPConfig;
            Highlight_2.OutlineTransparency = var1489;
            local Highlight_8 = var1606.Highlight;
            local HighlightDepthMode = Enum.HighlightDepthMode;
            local AlwaysOnTop = HighlightDepthMode.AlwaysOnTop;
            Highlight_2.DepthMode = AlwaysOnTop;
            local Highlight_9 = var1606.Highlight;
            Highlight_2.Enabled = false;
            local Highlight_10 = var1606.Highlight;
            Highlight_2.Parent = var1606;
            local BillboardGui = Instance.new("BillboardGui");
            var1606.Billboard = BillboardGui;
            local Billboard = var1606.Billboard;
            BillboardGui.Name = "ESP_Billboard";
            local Billboard_2 = var1606.Billboard;
            BillboardGui.AlwaysOnTop = true;
            local Billboard_3 = var1606.Billboard;
            local New_169 = UDim2.new;
            local _call1598 = New_169(0, 200, 0, 60);
            BillboardGui.Size = _call1598;
            local Billboard_4 = var1606.Billboard;
            local New_170 = Vector3.new;
            local _call1598 = New_170(0, 3, 0);
            BillboardGui.StudsOffset = _call1598;
            local Billboard_5 = var1606.Billboard;
            BillboardGui.Adornee = HumanoidRootPart_10;
            local Billboard_6 = var1606.Billboard;
            BillboardGui.Enabled = false;
            local Billboard_7 = var1606.Billboard;
            local Getgenv_ESPConfig_34 = getgenv().ESPConfig;
            BillboardGui.MaxDistance = var1481;
            local Billboard_8 = var1606.Billboard;
            BillboardGui.Parent = HumanoidRootPart_10;
            local TextLabel_2 = Instance.new("TextLabel");
            TextLabel_2.Name = "ESP_TextLabel";
            TextLabel_2.BackgroundTransparency = 1;
            local New_171 = UDim2.new;
            local _call1594 = New_171(1, 0, 1, 0);
            TextLabel_2.Size = _call1594;
            TextLabel_2.TextColor3 = _call1608;
            local Getgenv_ESPConfig_35 = getgenv().ESPConfig;
            TextLabel_2.TextSize = var1496;
            local Font_2 = Enum.Font;
            local SourceSansBold = Font_2.SourceSansBold;
            TextLabel_2.Font = SourceSansBold;
            local Getgenv_ESPConfig_36 = getgenv().ESPConfig;
            local var1595 = (var1497 and 0.5); -- 0.5
            local var1596 = (var1595 or 1);
            TextLabel_2.TextStrokeTransparency = 0.5;
            local New_172 = Color3.new;
            local _call1597 = New_172(0, 0, 0);
            TextLabel_2.TextStrokeColor3 = _call1597;
            TextLabel_2.Text = "";
            TextLabel_2.ZIndex = 10;
            local Billboard_9 = var1606.Billboard;
            TextLabel_2.Parent = Billboard_9;
            local Getgenv_ESPConfig_37 = getgenv().ESPConfig;
            if not var1499 then -- didnt run, expr id 33, has an else.
            else
                local Frame_2 = Instance.new("Frame");
            end
            Frame_2.Name = "ESP_HealthBar";
            local New_173 = Color3.new;
            local _call1598 = New_173(0.2, 0.2, 0.2);
            Frame_2.BackgroundColor3 = _call1598;
            Frame_2.BorderSizePixel = 0;
            local New_174 = UDim2.new;
            local _call1599 = New_174(1, 0, 0, 4);
            Frame_2.Size = _call1599;
            local New_175 = UDim2.new;
            local _call1600 = New_175(0, 0, 1, 0);
            Frame_2.Position = _call1600;
            Frame_2.ZIndex = 11;
            local Billboard_10 = var1606.Billboard;
            Frame_2.Parent = Billboard_10;
            local Frame_3 = Instance.new("Frame");
            Frame_3.Name = "ESP_HealthFill";
            Frame_3.BackgroundColor3 = _call1608;
            Frame_3.BorderSizePixel = 0;
            local New_176 = UDim2.new;
            local _call1601 = New_176(1, 0, 1, 0);
            Frame_3.Size = _call1601;
            Frame_3.ZIndex = 12;
            Frame_3.Parent = Frame_2;
            var1606.HealthBar = Frame_3;
            local var1601 = Drawing.new("Line");
            var1606.Tracer = var1601;
            local Tracer = var1606.Tracer;
            var1601.Visible = false;
            local Tracer_2 = var1606.Tracer;
            var1601.Color = _call1608;
            local Tracer_3 = var1606.Tracer;
            var1601.Thickness = 1;
        end);
    end
    local CharacterAdded_2 = Player_2.CharacterAdded;
    local Connect_3 = CharacterAdded_2.Connect;
    local Connected_3 = CharacterAdded_2:Connect(function(p1_0, p2_0, p3_0)
        local Player_2 = p1_0[1];
        task.wait(0.5)
        local Getgenv_ESPConfig_2 = getgenv().ESPConfig;
    end);
    local CharacterRemoving_2 = Player_2.CharacterRemoving;
    local Connect_4 = CharacterRemoving_2.Connect;
    local Connected_4 = CharacterRemoving_2:Connect(function(p1_0, p2_0, p3_0)
        local var1598 = p1_0[1];
        local var1599 = var1598[1];
    end);
end);
local Connection_2;
Connection_2 = Players.PlayerRemoving:Connect(function(Player_3) -- args: Player_4;
    local Player_4 = Player_3[1];
    local Character_36 = Player_4.Character;
    if Character_36 then -- ran, expr id 23, has an else.
        local Character_37 = Player_4.Character;
        local Player_4 = Character_37[1];
    end
end);
local Connection_3;
Connection_3 = RunService.RenderStepped:Connect(function(DeltaTime, p2_0, p3_0) -- args: DeltaTime_2;
    local Getgenv_ESPConfig_3 = getgenv().ESPConfig;
end);
local Tab_25 = Window.Tab;
local Tab_26 = Window:Tab({
    Title = "绘制区",
    Icon = "eye",
});
local Section_27 = Tab_26.Section;
local Section_28 = Tab_26:Section({
    Opened = true,
    Title = "基础设置",
    Box = true,
});
local Toggle_55 = Section_28.Toggle;
local Toggle_56 = Section_28:Toggle({
    Callback = function(p1_0, p2_0)
        local var1478 = p1_0[1];
        local Getgenv_ESPConfig_4 = getgenv().ESPConfig;
    end,
    Default = false,
    Title = "启用 ESP",
    Desc = "开启/关闭 ESP 功能",
});
local Space_95 = Section_28.Space;
local Space_96 = Section_28:Space();
local Toggle_57 = Section_28.Toggle;
local Toggle_58 = Section_28:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1479 = p1_0[1];
        local Getgenv_ESPConfig_5 = getgenv().ESPConfig;
    end,
    Default = false,
    Title = "队伍检测",
    Desc = "不显示同队玩家",
});
local Space_97 = Section_28.Space;
local Space_98 = Section_28:Space();
local Toggle_59 = Section_28.Toggle;
local Toggle_60 = Section_28:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1480 = p1_0[1];
        local Getgenv_ESPConfig_6 = getgenv().ESPConfig;
    end,
    Default = false,
    Title = "穿墙显示",
    Desc = "显示墙壁后的玩家",
});
local Space_99 = Section_28.Space;
local Space_100 = Section_28:Space();
local Slider_21 = Section_28.Slider;
local Slider_22 = Section_28:Slider({
    IsTooltip = true,
    Title = "最大距离",
    Value = {
        Min = 100,
        Default = 2000,
        Max = 5000,
    },
    Callback = function(p1_0, p2_0)
        local var1481 = p1_0[1];
        local Getgenv_ESPConfig_7 = getgenv().ESPConfig;
    end,
    Step = 50,
    Desc = "显示玩家的最大距离",
});
local Space_101 = Section_28.Space;
local Space_102 = Section_28:Space();
local Toggle_61 = Section_28.Toggle;
local Toggle_62 = Section_28:Toggle({
    Callback = function(p1_0, p2_0)
        local var1482 = p1_0[1];
        local Getgenv_ESPConfig_8 = getgenv().ESPConfig;
        local Getgenv_ESPConfig_9 = getgenv().ESPConfig;
        local var1483 = (var1482 and 15); -- 15
        local var1484 = (var1483 or 30);
    end,
    Default = false,
    Title = "性能模式",
    Desc = "降低更新频率以提高性能",
});
local Space_103 = Section_28.Space;
local Space_104 = Section_28:Space();
local Slider_23 = Section_28.Slider;
local Slider_24 = Section_28:Slider({
    IsTooltip = true,
    Title = "更新频率",
    Value = {
        Min = 10,
        Default = 30,
        Max = 60,
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1485 = p1_0[1];
        local Getgenv_ESPConfig_10 = getgenv().ESPConfig;
    end,
    Step = 1,
    Desc = "ESP的每秒更新次数",
});
local Section_29 = Tab_26.Section;
local Section_30 = Tab_26:Section({
    Opened = false,
    Title = "方框设置",
    Box = true,
});
local Toggle_63 = Section_30.Toggle;
local Toggle_64 = Section_30:Toggle({
    Callback = function(p1_0)
        local var1486 = p1_0[1];
        local Getgenv_ESPConfig_11 = getgenv().ESPConfig;
    end,
    Title = "显示方框",
    Default = false,
});
local Space_105 = Section_30.Space;
local Space_106 = Section_30:Space();
local Toggle_65 = Section_30.Toggle;
local Toggle_66 = Section_30:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1487 = p1_0[1];
        local Getgenv_ESPConfig_12 = getgenv().ESPConfig;
    end,
    Title = "方框描边",
    Default = false,
});
local Space_107 = Section_30.Space;
local Space_108 = Section_30:Space();
local Slider_25 = Section_30.Slider;
local Slider_26 = Section_30:Slider({
    IsTooltip = true,
    Title = "填充透明度",
    Value = {
        Min = 0,
        Default = 0.5,
        Max = 1,
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1488 = p1_0[1];
        local Getgenv_ESPConfig_13 = getgenv().ESPConfig;
    end,
    Step = 0.05,
    Desc = "方框填充透明度",
});
local Space_109 = Section_30.Space;
local Space_110 = Section_30:Space();
local Slider_27 = Section_30.Slider;
local Slider_28 = Section_30:Slider({
    IsTooltip = true,
    Title = "轮廓透明度",
    Value = {
        Min = 0,
        Default = 0.2,
        Max = 1,
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1489 = p1_0[1];
        local Getgenv_ESPConfig_14 = getgenv().ESPConfig;
    end,
    Step = 0.05,
    Desc = "方框轮廓透明度",
});
local Section_31 = Tab_26.Section;
local Section_32 = Tab_26:Section({
    Opened = false,
    Title = "文字信息",
    Box = true,
});
local Toggle_67 = Section_32.Toggle;
local Toggle_68 = Section_32:Toggle({
    Callback = function(p1_0, p2_0, p3_0)
        local var1490 = p1_0[1];
        local Getgenv_ESPConfig_15 = getgenv().ESPConfig;
    end,
    Title = "显示玩家名",
    Default = false,
});
local Space_111 = Section_32.Space;
local Space_112 = Section_32:Space();
local Toggle_69 = Section_32.Toggle;
local Toggle_70 = Section_32:Toggle({
    Callback = function(p1_0, p2_0, p3_0)
        local var1491 = p1_0[1];
        local Getgenv_ESPConfig_16 = getgenv().ESPConfig;
    end,
    Title = "显示血量",
    Default = false,
});
local Space_113 = Section_32.Space;
local Space_114 = Section_32:Space();
local Toggle_71 = Section_32.Toggle;
local Toggle_72 = Section_32:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1492 = p1_0[1];
        local Getgenv_ESPConfig_17 = getgenv().ESPConfig;
    end,
    Title = "显示距离",
    Default = false,
});
local Space_115 = Section_32.Space;
local Space_116 = Section_32:Space();
local Toggle_73 = Section_32.Toggle;
local Toggle_74 = Section_32:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1493 = p1_0[1];
        local Getgenv_ESPConfig_18 = getgenv().ESPConfig;
    end,
    Default = false,
    Title = "显示武器",
    Desc = "显示玩家当前手持的武器",
});
local Space_117 = Section_32.Space;
local Space_118 = Section_32:Space();
local Toggle_75 = Section_32.Toggle;
local Toggle_76 = Section_32:Toggle({
    Callback = function(p1_0, p2_0, p3_0)
        local var1494 = p1_0[1];
        local Getgenv_ESPConfig_19 = getgenv().ESPConfig;
    end,
    Default = false,
    Title = "显示背包",
    Desc = "显示玩家背包里的所有武器",
});
local Space_119 = Section_32.Space;
local Space_120 = Section_32:Space();
local Toggle_77 = Section_32.Toggle;
local Toggle_78 = Section_32:Toggle({
    Callback = function(p1_0, p2_0)
        local var1495 = p1_0[1];
        local Getgenv_ESPConfig_20 = getgenv().ESPConfig;
    end,
    Default = false,
    Title = "显示队伍",
    Desc = "显示玩家是否为队友",
});
local Space_121 = Section_32.Space;
local Space_122 = Section_32:Space();
local Slider_29 = Section_32.Slider;
local Slider_30 = Section_32:Slider({
    IsTooltip = true,
    Title = "文字大小",
    Value = {
        Min = 8,
        Default = 14,
        Max = 24,
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1496 = p1_0[1];
        local Getgenv_ESPConfig_21 = getgenv().ESPConfig;
    end,
    Step = 1,
    Desc = "设置ESP文字的大小",
});
local Space_123 = Section_32.Space;
local Space_124 = Section_32:Space();
local Toggle_79 = Section_32.Toggle;
local Toggle_80 = Section_32:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1497 = p1_0[1];
        local Getgenv_ESPConfig_22 = getgenv().ESPConfig;
    end,
    Default = true,
    Title = "文字描边",
    Desc = "为文字添加黑色描边",
});
local Section_33 = Tab_26.Section;
local Section_34 = Tab_26:Section({
    Opened = false,
    Title = "天线设置",
    Box = true,
});
local Toggle_81 = Section_34.Toggle;
local Toggle_82 = Section_34:Toggle({
    Callback = function(p1_0, p2_0)
        local var1498 = p1_0[1];
        local Getgenv_ESPConfig_23 = getgenv().ESPConfig;
    end,
    Default = false,
    Title = "显示天线",
    Desc = "从屏幕位置连接到玩家",
});
local Section_35 = Tab_26.Section;
local Section_36 = Tab_26:Section({
    Opened = false,
    Title = "血条设置",
    Box = true,
});
local Toggle_83 = Section_36.Toggle;
local Toggle_84 = Section_36:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1499 = p1_0[1];
        local Getgenv_ESPConfig_24 = getgenv().ESPConfig;
    end,
    Title = "显示血条",
    Default = false,
});
local Space_125 = Section_36.Space;
local Space_126 = Section_36:Space();
local Toggle_85 = Section_36.Toggle;
local Toggle_86 = Section_36:Toggle({
    Callback = function(p1_0, p2_0, p3_0)
        local var1500 = p1_0[1];
        local Getgenv_ESPConfig_25 = getgenv().ESPConfig;
    end,
    Default = false,
    Title = "动态颜色",
    Desc = "血条颜色根据血量变化",
});
local Section_37 = Tab_26.Section;
local Section_38 = Tab_26:Section({
    Opened = false,
    Title = "颜色设置",
    Box = true,
});
local Dropdown_15 = Section_38.Dropdown;
local Dropdown_16 = Section_38:Dropdown({
    Title = "颜色选择",
    Value = "绿色",
    Values = {
        "绿色",
        "红色",
        "蓝色",
        "黄色",
        "紫色",
        "橙色",
        "粉色",
        "青色",
        "白色",
    },
    Callback = function(p1_0, p2_0, p3_0)
        local var1501 = p1_0[1];
        local Getgenv_ESPConfig_26 = getgenv().ESPConfig;
    end,
    Desc = "选择ESP的显示颜色",
});
local Section_39 = Tab_26.Section;
local Section_40 = Tab_26:Section({
    Opened = false,
    Title = "高级功能",
    Box = true,
});
local Toggle_87 = Section_40.Toggle;
local Toggle_88 = Section_40:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1502 = p1_0[1];
        local Getgenv_ESPConfig_27 = getgenv().ESPConfig;
    end,
    Default = true,
    Title = "距离淡出",
    Desc = "距离越远透明度越高",
});
local Space_127 = Section_40.Space;
local Space_128 = Section_40:Space();
local Toggle_89 = Section_40.Toggle;
local Toggle_90 = Section_40:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1503 = p1_0[1];
        local Getgenv_ESPConfig_28 = getgenv().ESPConfig;
    end,
    Default = false,
    Title = "距离缩放",
    Desc = "根据距离缩放文字大小",
});
local Space_129 = Section_40.Space;
local Space_130 = Section_40:Space();
local Toggle_91 = Section_40.Toggle;
local Toggle_92 = Section_40:Toggle({
    Callback = function(p1_0, p2_0, p3_0)
        local var1504 = p1_0[1];
        local Getgenv_ESPConfig_29 = getgenv().ESPConfig;
    end,
    Default = true,
    Title = "死亡隐藏",
    Desc = "玩家死亡后自动隐藏ESP",
});
local Space_131 = Tab_26.Space;
local Space_132 = Tab_26:Space({
    Columns = 3,
});
local FromHex_50 = Color3.fromHex;
local _call1057 = FromHex_50("#10B981");
local Button_121 = Tab_26.Button;
local Button_122 = Tab_26:Button({
    Title = "保存配置",
    Callback = function(p1_0)
        local Notify_99 = Loaded_Main_Lua.Notify;
        local Notify_100 = Loaded_Main_Lua:Notify({
            Icon = "check",
            Title = "配置已保存",
            Content = "ESP设置已保存到配置文件",
        });
    end,
    Color = _call1057,
    IconAlign = "Left",
    Icon = "save",
    Justify = "Center",
});
local Space_133 = Tab_26.Space;
local Space_134 = Tab_26:Space({
    Columns = 2,
});
local FromHex_51 = Color3.fromHex;
local _call1060 = FromHex_51("#EF4444");
local Button_123 = Tab_26.Button;
local Button_124 = Tab_26:Button({
    Title = "重置设置",
    Callback = function(p1_0, p2_0)
        local Notify_101 = Loaded_Main_Lua.Notify;
        local Notify_102 = Loaded_Main_Lua:Notify({
            Icon = "rotate-ccw",
            Title = "设置已重置",
            Content = "所有ESP设置已恢复默认值",
        });
    end,
    Color = _call1060,
    IconAlign = "Left",
    Icon = "refresh-cw",
    Justify = "Center",
});
local Tab_27 = Window.Tab;
local Tab_28 = Window:Tab({
    Title = "范围区",
    Icon = "target",
});
local Toggle_93 = Tab_28.Toggle;
local Toggle_94 = Tab_28:Toggle({
    Value = false,
    Callback = function(p1_0)
        local var1507 = p1_0[1];
        if not var1507 then -- didnt run, expr id 24, has an else.
        else
            local RunService_85 = game:GetService("RunService");
        end
        local Connection_52;
        Connection_52 = RunService.RenderStepped:connect(function(DeltaTime_16, p2_0) -- args: DeltaTime_17;
            if not var1507 then -- didnt run, expr id 34, has an else.
            else
                local Players_108 = game:GetService("Players");
                local Players_109 = Players:GetPlayers();
                for i_10, v_10 in pairs(Players_109) do
                    local var1599 = (i_10 and 11793207); -- 11793207
                    local var1600 = (var1599 or function()--[[function ignored]]end);
                end
                local Players_110 = game.Players;
                local LocalPlayer_94 = Players.LocalPlayer;
                local var1601 = (v_10 == LocalPlayer);
                -- false, eq id 235
                local Character_52 = v_10.Character;
                if Character_52 then -- ran, expr id 35, has an else.
                    local Character_53 = v_10.Character;
                    local FindFirstChild_5 = Character_53.FindFirstChild;
                end
                local HumanoidRootPart_11 = Character_53:FindFirstChild("HumanoidRootPart");
                if HumanoidRootPart_11 then -- ran, expr id 36, has an else.
                    local Success_102, Error_Message_102 = pcall(function(...)
                        local New_177 = Vector3.new;
                        local _call1602 = New_177(25, 25, 25);
                        HumanoidRootPart_11.Size = _call1602;
                        HumanoidRootPart_11.Transparency = 0.7;
                        local Material_2 = Enum.Material;
                        local Neon = Material_2.Neon;
                        HumanoidRootPart_11.Material = Neon;
                        HumanoidRootPart_11.CanCollide = false;
                        local New_178 = BrickColor.new;
                        local _call1599 = New_178("Really red");
                        HumanoidRootPart_11.BrickColor = _call1599;
                        local FindFirstChildOfClass_3 = HumanoidRootPart_11.FindFirstChildOfClass;
                        local PointLight_2 = HumanoidRootPart_11:FindFirstChildOfClass("PointLight");
                        if not PointLight_2 then -- didnt run, expr id 37, has an else.
                        else
                            local Destroy_52 = PointLight_2.Destroy;
                            local Destroy_53 = PointLight_2:Destroy();
                        end
                        local FindFirstChildOfClass_4 = HumanoidRootPart_11.FindFirstChildOfClass;
                        local Highlight_11 = HumanoidRootPart_11:FindFirstChildOfClass("Highlight");
                        if Highlight_11 then -- ran, expr id 38, has an else.
                            Highlight_11.FillTransparency = 1;
                        end
                        local Color = HumanoidRootPart_11.Color;
                        Highlight_11.OutlineColor = Color;
                        Highlight_11.OutlineTransparency = 0;
                        Highlight_11.Parent = HumanoidRootPart_11;
                    end) -- true
                end
            end
        end);
    end,
    Title = "范围开关",
    Desc = "启用或禁用范围功能",
});
local Input_5 = Tab_28.Input;
local Input_6 = Tab_28:Input({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1508 = p1_0[1];
        local var1509 = tonumber(var1508, nil);
        -- no value
        if not var1509 then -- didnt run, expr id 25, has an else.
        else
        end
    end,
    Placeholder = "输入大小",
    Title = "范围大小",
    Desc = "设置范围大小",
});
local Slider_31 = Tab_28.Slider;
local Slider_32 = Tab_28:Slider({
    Title = "范围透明度",
    Value = {
        Min = 0,
        Default = 0.7,
        Max = 1,
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1510 = p1_0[1];
    end,
    Step = 0.1,
    Desc = "设置范围透明度",
});
local Dropdown_17 = Tab_28.Dropdown;
local Dropdown_18 = Tab_28:Dropdown({
    Title = "范围颜色",
    Value = "亮红色",
    Values = {
        "亮红色",
        "鲜红色",
        "霓虹橙色",
        "亮黄色",
        "酸橙色",
        "亮绿色",
        "深蓝色",
        "亮蓝色",
        "皇家紫色",
        "亮粉色",
        "白色",
        "黑色",
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local var1511 = p1_0[1];
    end,
    Desc = "选择范围颜色",
});
local Dropdown_19 = Tab_28.Dropdown;
local Dropdown_20 = Tab_28:Dropdown({
    Title = "范围材质",
    Value = "霓虹",
    Values = {
        "霓虹",
        "塑料",
        "木材",
        "石板",
        "混凝土",
        "腐蚀金属",
        "钻石板",
        "箔纸",
        "草地",
        "冰面",
        "大理石",
        "花岗岩",
        "砖块",
        "鹅卵石",
        "沙子",
        "织物",
        "光滑塑料",
        "金属",
        "木地板",
        "鹅卵石路",
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1512 = p1_0[1];
    end,
    Desc = "选择范围材质",
});
local Toggle_95 = Tab_28.Toggle;
local Toggle_96 = Tab_28:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1513 = p1_0[1];
        local Not_Var1513 = not var1513;
        -- false
    end,
    Title = "禁用碰撞",
    Desc = "禁用范围碰撞",
});
local Toggle_97 = Tab_28.Toggle;
local Toggle_98 = Tab_28:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0)
        local var1514 = p1_0[1];
    end,
    Title = "仅显示敌人",
    Desc = "只显示敌人的范围",
});
local Toggle_99 = Tab_28.Toggle;
local Toggle_100 = Tab_28:Toggle({
    Value = true,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1515 = p1_0[1];
    end,
    Title = "队伍检查",
    Desc = "检测队伍关系",
});
local Toggle_101 = Tab_28.Toggle;
local Toggle_102 = Tab_28:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0)
        local var1516 = p1_0[1];
    end,
    Title = "彩虹效果",
    Desc = "启用彩虹颜色效果",
});
local Toggle_103 = Tab_28.Toggle;
local Toggle_104 = Tab_28:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1517 = p1_0[1];
    end,
    Title = "脉动效果",
    Desc = "启用大小脉动效果",
});
local Toggle_105 = Tab_28.Toggle;
local Toggle_106 = Tab_28:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0)
        local var1518 = p1_0[1];
    end,
    Title = "发光效果",
    Desc = "启用发光效果",
});
local Toggle_107 = Tab_28.Toggle;
local Toggle_108 = Tab_28:Toggle({
    Value = true,
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1519 = p1_0[1];
    end,
    Title = "显示轮廓",
    Desc = "显示范围轮廓",
});
local Toggle_109 = Tab_28.Toggle;
local Toggle_110 = Tab_28:Toggle({
    Value = false,
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0)
        local var1520 = p1_0[1];
    end,
    Title = "自动调整大小",
    Desc = "自动调整范围大小",
});
local Slider_33 = Tab_28.Slider;
local Slider_34 = Tab_28:Slider({
    Title = "调整速度",
    Value = {
        Min = 0.1,
        Default = 1,
        Max = 5,
    },
    Callback = function(p1_0, p2_0)
        local var1521 = p1_0[1];
    end,
    Step = 0.1,
    Desc = "调整动画速度",
});
local Button_125 = Tab_28.Button;
local Button_126 = Tab_28:Button({
    Callback = function(p1_0, p2_0)
        local var1522 = (var1507 and 10979383); -- 10979383
        local var1523 = (var1522 or function()--[[function ignored]]end);
        Connection_52:Disconnect()
        local Players_52 = game:GetService("Players");
        local Players_53 = Players:GetPlayers();
        for i_8, v_8 in pairs(Players_53) do
            if not i_8 then -- didnt run, expr id 26, has an else.
            else
                local Character_38 = v_8.Character;
                local var1522 = (Character_38 and 10488874); -- 10488874
            end
            local Character_39 = v_8.Character;
            local FindFirstChild = Character_39.FindFirstChild;
            local HumanoidRootPart_4 = Character_39:FindFirstChild("HumanoidRootPart");
            local var1523 = (HumanoidRootPart_4 and 13733421); -- 13733421
            local var1524 = (var1523 or 13590120);
            local Success_100, Error_Message_100 = pcall(function(...)
                local New_166 = Vector3.new;
                local _call1525 = New_166(2, 2, 1);
                HumanoidRootPart_4.Size = _call1525;
                HumanoidRootPart_4.Transparency = 0;
                local New_167 = BrickColor.new;
                local _call1524 = New_167("Medium stone grey");
                HumanoidRootPart_4.BrickColor = _call1524;
                local Material = Enum.Material;
                local Plastic = Material.Plastic;
                HumanoidRootPart_4.Material = Plastic;
                HumanoidRootPart_4.CanCollide = true;
                local FindFirstChildOfClass = HumanoidRootPart_4.FindFirstChildOfClass;
                local PointLight = HumanoidRootPart_4:FindFirstChildOfClass("PointLight");
                local var1522 = (PointLight and 14971781); -- 14971781
                local var1523 = (var1522 or 10428156);
                local Destroy_7 = PointLight.Destroy;
                local Destroy_8 = PointLight:Destroy();
                local FindFirstChildOfClass_2 = HumanoidRootPart_4.FindFirstChildOfClass;
                local Highlight = HumanoidRootPart_4:FindFirstChildOfClass("Highlight");
                if Highlight then -- ran, expr id 27, has an else.
                    local Destroy_9 = Highlight.Destroy;
                    local Destroy_10 = Highlight:Destroy();
                end
            end) -- true
        end
        local RunService_86 = game:GetService("RunService");
        local Connection_53;
        Connection_53 = RunService.RenderStepped:connect(function(DeltaTime_18, p2_0) -- args: DeltaTime_19;
            if not var1507 then -- didnt run, expr id 39, has an else.
            else
                local Players_111 = game:GetService("Players");
                local Players_112 = Players:GetPlayers();
                for i_11, v_11 in pairs(Players_112) do
                    local var1595 = (i_11 and 11793207); -- 11793207
                    local var1596 = (var1595 or function()--[[function ignored]]end);
                end
                local Players_113 = game.Players;
                local LocalPlayer_95 = Players.LocalPlayer;
                local var1597 = (v_11 == LocalPlayer);
                -- false, eq id 236
                local Character_54 = v_11.Character;
                if Character_54 then -- ran, expr id 40, has an else.
                    local Character_55 = v_11.Character;
                    local FindFirstChild_6 = Character_55.FindFirstChild;
                    local HumanoidRootPart_12 = Character_55:FindFirstChild("HumanoidRootPart");
                end
                if HumanoidRootPart_12 then -- ran, expr id 41, has an else.
                    local Success_103, Error_Message_103 = pcall(function(...)
                        local New_179 = Vector3.new;
                        local _call1598 = New_179(25, 25, 25);
                        HumanoidRootPart_12.Size = _call1598;
                        HumanoidRootPart_12.Transparency = 0.7;
                        local Material_3 = Enum.Material;
                        local Neon_2 = Material_3.Neon;
                        HumanoidRootPart_12.Material = Neon_2;
                        HumanoidRootPart_12.CanCollide = false;
                        local New_180 = BrickColor.new;
                        local _call1595 = New_180("Really red");
                        HumanoidRootPart_12.BrickColor = _call1595;
                        local FindFirstChildOfClass_5 = HumanoidRootPart_12.FindFirstChildOfClass;
                        local PointLight_3 = HumanoidRootPart_12:FindFirstChildOfClass("PointLight");
                        if not PointLight_3 then -- didnt run, expr id 42, has an else.
                        else
                            local Destroy_54 = PointLight_3.Destroy;
                            local Destroy_55 = PointLight_3:Destroy();
                        end
                        local FindFirstChildOfClass_6 = HumanoidRootPart_12.FindFirstChildOfClass;
                        local Highlight_12 = HumanoidRootPart_12:FindFirstChildOfClass("Highlight");
                        if Highlight_12 then -- ran, expr id 43, has an else.
                            Highlight_12.FillTransparency = 1;
                        end
                        local Color_2 = HumanoidRootPart_12.Color;
                        Highlight_12.OutlineColor = Color_2;
                        Highlight_12.OutlineTransparency = 0;
                        Highlight_12.Parent = HumanoidRootPart_12;
                    end) -- true
                end
            end
        end);
        local Notify_103 = Loaded_Main_Lua.Notify;
        local Notify_104 = Loaded_Main_Lua:Notify({
            Icon = "check",
            Title = "成功",
            Content = "范围设置已应用",
        });
    end,
    Icon = "refresh-cw",
    Title = "立即应用设置",
    Desc = "立即应用所有设置",
});
local Button_127 = Tab_28.Button;
local Button_128 = Tab_28:Button({
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local Notify_105 = Loaded_Main_Lua.Notify;
        local Notify_106 = Loaded_Main_Lua:Notify({
            Icon = "check",
            Title = "成功",
            Content = "设置已重置为默认值",
        });
    end,
    Icon = "rotate-ccw",
    Title = "重置设置",
    Desc = "重置所有设置为默认",
});
local Tab_29 = Window.Tab;
local Tab_30 = Window:Tab({
    Title = "UI设置",
    Icon = "settings",
});
local Dropdown_21 = Tab_30.Dropdown;
local Dropdown_22 = Tab_30:Dropdown({
    Value = "午夜",
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local var1528 = p1_0[1];
        local SetTheme = Loaded_Main_Lua.SetTheme;
        local SetTheme_2 = Loaded_Main_Lua:SetTheme(nil);
    end,
    Title = "选择主题",
    Values = {
        "深色",
        "浅色",
        "玫瑰",
        "植物",
        "红色",
        "靛蓝",
        "天空",
        "紫罗兰",
        "琥珀",
        "翠绿",
        "午夜",
        "深红",
        "MonokaiPro",
        "棉花糖",
        "彩虹",
    },
});
local Button_129 = Tab_30.Button;
local Button_130 = Tab_30:Button({
    Title = "销毁窗口",
    Callback = function(p1_0, p2_0)
        local Destroy_11 = Window.Destroy;
        local Destroy_12 = Window:Destroy();
    end,
});
error("[string \"tvCUTE\"]: attempt to index nil with 'Init'") -- Internal Error