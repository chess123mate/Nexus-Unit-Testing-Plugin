--[[
TheNexusAvenger

Button for re-running failed tests.
--]]

local NexusUnitTestingPluginProject = require(script.Parent.Parent.Parent)
local NexusPluginFramework = NexusUnitTestingPluginProject:GetResource("NexusPluginFramework")

local RunFailedTestsButton = NexusUnitTestingPluginProject:GetResource("NexusPluginFramework.Base.NexusWrappedInstance"):Extend()
RunFailedTestsButton:SetClassName("RunFailedTestsButton")

local BUTTON_ICONS = "http://www.roblox.com/asset/?id=4734758315"



--[[
Creates a Run Failed Tests Button object.
--]]
function RunFailedTestsButton:__new(Test)
	self:InitializeSuper("ImageButton")
	
	--Create the failed tests icon.
	local Icon = NexusPluginFramework.new("ImageLabel")
	Icon.Hidden = true
	Icon.Size = UDim2.new(0.5,0,0.5,0)
	Icon.Position = UDim2.new(0.5,0,0.5,0)
	Icon.BackgroundTransparency = 1
	Icon.Image = BUTTON_ICONS
	Icon.ImageRectSize = Vector2.new(512,512)
	Icon.ImageRectOffset = Vector2.new(512,0)
	Icon.ImageColor3 = Color3.new(200/255,0,0)
	Icon.Parent = self
	
	--Set the defaults.
	self.Image = BUTTON_ICONS
	self.ImageRectSize = Vector2.new(512,512)
	self.BackgroundColor3 = "MainBackground"
	self.ImageColor3 = Color3.new(0,170/255,0)
	self.BorderSizePixel = 0
end



return RunFailedTestsButton