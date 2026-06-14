local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LoadingScreen"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

-- Full Black Background
local Background = Instance.new("Frame")
Background.Size = UDim2.new(1,0,1,0)
Background.Position = UDim2.new(0,0,0,0)
Background.BackgroundColor3 = Color3.fromRGB(0,0,0)
Background.BorderSizePixel = 0
Background.Parent = ScreenGui

-- Logo
local Logo = Instance.new("ImageLabel")
Logo.Size = UDim2.new(0,90,0,90)
Logo.Position = UDim2.new(0.5,-45,0.25,-45)
Logo.BackgroundTransparency = 1
Logo.Image = "rbxassetid://0" -- Put your logo id here
Logo.Parent = Background

local LogoCorner = Instance.new("UICorner")
LogoCorner.CornerRadius = UDim.new(0,20)
LogoCorner.Parent = Logo

-- Main Loading Frame
local Main = Instance.new("Frame")
Main.AnchorPoint = Vector2.new(0.5,0.5)
Main.Position = UDim2.new(0.5,0,0.5,0)
Main.Size = UDim2.new(0,800,0,180)
Main.BackgroundColor3 = Color3.fromRGB(15,15,20)
Main.BorderSizePixel = 0
Main.Parent = Background

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0,18)
MainCorner.Parent = Main

-- Loading Text
local LoadingText = Instance.new("TextLabel")
LoadingText.Size = UDim2.new(1,0,0,60)
LoadingText.BackgroundTransparency = 1
LoadingText.Text = "Loading: 0%"
LoadingText.Font = Enum.Font.GothamBold
LoadingText.TextScaled = true
LoadingText.TextColor3 = Color3.fromRGB(0,170,255)
LoadingText.Parent = Main

-- Bar Background
local BarBG = Instance.new("Frame")
BarBG.Size = UDim2.new(0.92,0,0,28)
BarBG.Position = UDim2.new(0.04,0,0.55,0)
BarBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
BarBG.BorderSizePixel = 0
BarBG.Parent = Main

local BarBGCorner = Instance.new("UICorner")
BarBGCorner.CornerRadius = UDim.new(1,0)
BarBGCorner.Parent = BarBG

-- Fill Bar
local Fill = Instance.new("Frame")
Fill.Size = UDim2.new(0,0,1,0)
Fill.BackgroundColor3 = Color3.fromRGB(0,170,255)
Fill.BorderSizePixel = 0
Fill.Parent = BarBG

local FillCorner = Instance.new("UICorner")
FillCorner.CornerRadius = UDim.new(1,0)
FillCorner.Parent = Fill

-- Bottom Message
local BottomText = Instance.new("TextLabel")
BottomText.Size = UDim2.new(1,0,0,35)
BottomText.Position = UDim2.new(0,0,0.8,0)
BottomText.BackgroundTransparency = 1
BottomText.Font = Enum.Font.Gotham
BottomText.TextScaled = true
BottomText.TextColor3 = Color3.fromRGB(180,180,180)
BottomText.Text = "Please, Be Patience. Preparing Assets..."
BottomText.Parent = Main

-- Random Messages
local Messages = {
	"Please, Be Patience. Preparing Assets...",
	"Please, Be Patience. Loading Inventory...",
	"Please, Be Patience. Synchronizing Data...",
	"Please, Be Patience. Connecting To Server...",
	"Please, Be Patience. Loading Spawner...",
	"Please, Be Patience. Almost Ready...",
	"Please, Be Patience. Checking Resources...",
	"Please, Be Patience. Finalizing..."
}

-- Loading Animation (2 Minutes)
for i = 0,100 do
	LoadingText.Text = "Loading: "..i.."%"
	Fill.Size = UDim2.new(i/100,0,1,0)

	if i % 15 == 0 then
		BottomText.Text = Messages[math.random(1,#Messages)]
	end

	task.wait(1.2) -- 120 seconds total
end

-- Remove Loading Frame
Main:Destroy()
Logo:Destroy()

-- DUPE SYSTEM UI
local DupeFrame = Instance.new("Frame")
DupeFrame.AnchorPoint = Vector2.new(0.5,0.5)
DupeFrame.Position = UDim2.new(0.5,0,0.5,0)
DupeFrame.Size = UDim2.new(0,700,0,250)
DupeFrame.BackgroundColor3 = Color3.fromRGB(10,10,20)
DupeFrame.BorderSizePixel = 0
DupeFrame.Parent = Background

local DupeCorner = Instance.new("UICorner")
DupeCorner.CornerRadius = UDim.new(0,20)
DupeCorner.Parent = DupeFrame

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,60)
Title.BackgroundTransparency = 1
Title.Text = "🤖 DUPE SYSTEM"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true
Title.Parent = DupeFrame

-- Close Button
local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0,40,0,40)
Close.Position = UDim2.new(1,-50,0,10)
Close.Text = "X"
Close.Font = Enum.Font.GothamBold
Close.TextScaled = true
Close.BackgroundTransparency = 1
Close.TextColor3 = Color3.fromRGB(255,255,255)
Close.Parent = DupeFrame

-- Dupe Button
local DupeButton = Instance.new("TextButton")
DupeButton.Size = UDim2.new(0.85,0,0,120)
DupeButton.Position = UDim2.new(0.075,0,0.35,0)
DupeButton.Text = "DUPE"
DupeButton.Font = Enum.Font.GothamBold
DupeButton.TextScaled = true
DupeButton.BackgroundColor3 = Color3.fromRGB(0,200,100)
DupeButton.TextColor3 = Color3.fromRGB(255,255,255)
DupeButton.Parent = DupeFrame

local DupeButtonCorner = Instance.new("UICorner")
DupeButtonCorner.CornerRadius = UDim.new(0,20)
DupeButtonCorner.Parent = DupeButton

-- Credits
local Credits = Instance.new("TextLabel")
Credits.Size = UDim2.new(1,0,0,30)
Credits.Position = UDim2.new(0,0,0.87,0)
Credits.BackgroundTransparency = 1
Credits.Text = "Made by YourName"
Credits.TextColor3 = Color3.fromRGB(255,255,255)
Credits.Font = Enum.Font.Gotham
Credits.TextScaled = true
Credits.Parent = DupeFrame

Close.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

DupeButton.MouseButton1Click:Connect(function()
	print("Button Clicked")
	-- Put your own code here
end)
