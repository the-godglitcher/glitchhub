-- ██████╗ ██╗     ██╗████████╗ ██████╗██╗  ██╗      ██╗  ██╗██╗   ██╗██████╗ 
-- ██╔════╝ ██║     ██║╚══██╔══╝██╔════╝██║  ██║      ██║  ██║██║   ██║██╔══██╗
-- ██║  ███╗██║     ██║   ██║   ██║     ███████║█████╗███████║██║   ██║██████╔╝
-- ██║   ██║██║     ██║   ██║   ██║     ██╔══██║╚════╝██╔══██║██║   ██║██╔══██╗
-- ╚██████╔╝███████╗██║   ██║   ╚██████╗██║  ██║      ██║  ██║╚██████╔╝██████╔╝
--  ╚═════╝ ╚══════╝╚═╝   ╚═╝    ╚═════╝╚═╝  ╚═╝      ╚═╝  ╚═╝ ╚═════╝ ╚═════╝

-- obfuscated by chatgpt as i dont know how to

-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "LeftBannerGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Banner Frame
local banner = Instance.new("Frame")
banner.Name = "Banner"
banner.Parent = gui
banner.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- dark color
banner.BorderSizePixel = 0

-- Size: small width, full height
banner.Size = UDim2.new(0, 120, 1, 0) -- change width if you want
banner.Position = UDim2.new(0, -120, 0, 0) -- start off-screen

-- Round only top-right corner
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 30) -- 30 pixels radius
corner.Parent = banner
corner.CornerType = Enum.CornerType.TopRight -- <-- only top-right

-- Tween settings
local tweenInfo = TweenInfo.new(
	0.6,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.Out
)

local goal = {
	Position = UDim2.new(0, 0, 0, 0) -- end position
}

local tween = TweenService:Create(banner, tweenInfo, goal)
tween:Play()
