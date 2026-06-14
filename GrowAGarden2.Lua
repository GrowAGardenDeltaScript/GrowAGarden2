local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Background
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundColor3 = Color3.fromRGB(10,10,10)
Frame.Parent = ScreenGui

-- Main Panel
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0,650,0,180)
Main.Position = UDim2.new(0.5,-325,0.5,-90)
Main.BackgroundColor3 = Color3.fromRGB(20,20,25)
Main.Parent = Frame

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0,15)
Corner.Parent = Main

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,50)
Title.BackgroundTransparency = 1
Title.Text = "Loading..."
Title.TextColor3 = Color3.fromRGB(0,170,255)
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true
Title.Parent = Main

-- Percentage
local Percent = Instance.new("TextLabel")
Percent.Size = UDim2.new(1,0,0,50)
Percent.Position = UDim2.new(0,0,0.2,0)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.TextColor3 = Color3.fromRGB(255,255,255)
Percent.Font = Enum.Font.GothamBold
Percent.TextScaled = true
Percent.Parent = Main

-- Progress Bar Background
local BarBG = Instance.new("Frame")
BarBG.Size = UDim2.new(0.9,0,0,25)
BarBG.Position = UDim2.new(0.05,0,0.55,0)
BarBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
BarBG.Parent = Main

local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(1,0)
BarCorner.Parent = BarBG

-- Progress Fill
local Fill = Instance.new("Frame")
Fill.Size = UDim2.new(0,0,1,0)
Fill.BackgroundColor3 = Color3.fromRGB(0,170,255)
Fill.Parent = BarBG

local FillCorner = Instance.new("UICorner")
FillCorner.CornerRadius = UDim.new(1,0)
FillCorner.Parent = Fill

-- Bottom Text
local Bottom = Instance.new("TextLabel")
Bottom.Size = UDim2.new(1,0,0,30)
Bottom.Position = UDim2.new(0,0,0.8,0)
Bottom.BackgroundTransparency = 1
Bottom.Text = "Please, Be Patience. Preparing Assets..."
Bottom.TextColor3 = Color3.fromRGB(180,180,180)
Bottom.Font = Enum.Font.Gotham
Bottom.TextScaled = true
Bottom.Parent = Main

-- Random Messages
local Messages = {
	"Checking inventory...",
	"Preparing spawner...",
	"Loading data...",
	"Synchronizing assets...",
	"Please wait...",
	"Almost ready..."
}

-- 2 Minute Loading
for i = 0,100 do
	Percent.Text = i.."%"
	Fill.Size = UDim2.new(i/100,0,1,0)

	if i % 20 == 0 then
		Bottom.Text = "Please, Be Patience. "..Messages[math.random(1,#Messages)]
	end

	wait(1.2) -- 100 x 1.2 = 120 seconds
end

-- Remove Loading Screen
Main:Destroy()

-- DUPE SYSTEM UI
local DupeFrame = Instance.new("Frame")
DupeFrame.Size = UDim2.new(0,500,0,220)
DupeFrame.Position = UDim2.new(0.5,-250,0.5,-110)
DupeFrame.BackgroundColor3 = Color3.fromRGB(15,15,25)
DupeFrame.Parent = Frame

local DupeCorner = Instance.new("UICorner")
DupeCorner.CornerRadius = UDim.new(0,15)
DupeCorner.Parent = DupeFrame

local DupeTitle = Instance.new("TextLabel")
DupeTitle.Size = UDim2.new(1,0,0,50)
DupeTitle.BackgroundTransparency = 1
DupeTitle.Text = "🤖 DUPE SYSTEM"
DupeTitle.TextColor3 = Color3.fromRGB(255,255,255)
DupeTitle.Font = Enum.Font.GothamBold
DupeTitle.TextScaled = true
DupeTitle.Parent = DupeFrame

local DupeButton = Instance.new("TextButton")
DupeButton.Size = UDim2.new(0.85,0,0,100)
DupeButton.Position = UDim2.new(0.075,0,0.4,0)
DupeButton.Text = "DUPE"
DupeButton.Font = Enum.Font.GothamBold
DupeButton.TextScaled = true
DupeButton.BackgroundColor3 = Color3.fromRGB(0,200,100)
DupeButton.TextColor3 = Color3.fromRGB(255,255,255)
DupeButton.Parent = DupeFrame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0,15)
ButtonCorner.Parent = DupeButton

DupeButton.MouseButton1Click:Connect(function()
	print("DUPE BUTTON CLICKED")
	-- Your code here
end)
