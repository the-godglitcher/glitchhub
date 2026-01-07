-- ██████╗ ██╗     ██╗████████╗ ██████╗██╗  ██╗      ██╗  ██╗██╗   ██╗██████╗ 
-- ██╔════╝ ██║     ██║╚══██╔══╝██╔════╝██║  ██║      ██║  ██║██║   ██║██╔══██╗
-- ██║  ███╗██║     ██║   ██║   ██║     ███████║█████╗███████║██║   ██║██████╔╝
-- ██║   ██║██║     ██║   ██║   ██║     ██╔══██║╚════╝██╔══██║██║   ██║██╔══██╗
-- ╚██████╔╝███████╗██║   ██║   ╚██████╗██║  ██║      ██║  ██║╚██████╔╝██████╔╝
--  ╚═════╝ ╚══════╝╚═╝   ╚═╝    ╚═════╝╚═╝  ╚═╝      ╚═╝  ╚═╝ ╚═════╝ ╚═════╝

-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "LeftBannerGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- glitch hub --

-- Banner Frame
local banner = Instance.new("Frame")
banner.Name = "Banner"
banner.Parent = gui
banner.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- dark color
banner.BorderSizePixel = 0

-- Size: small width, full height
banner.Size = UDim2.new(0, 120, 1, 0) -- change 120 to make it wider/narrower

-- Start off-screen (left)
banner.Position = UDim2.new(0, -120, 0, 0)

-- Tween settings
local tweenInfo = TweenInfo.new(
	0.6, -- time
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.Out
)

-- End position (visible)
local goal = {
	Position = UDim2.new(0, 0, 0, 0)
}

-- Play tween
local tween = TweenService:Create(banner, tweenInfo, goal)
tween:Play()
