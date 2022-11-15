local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Vinkyl Hub", HidePremium = false, Intro = false, SaveConfig = false, ConfigFolder = ""})

OrionLib:MakeNotification({
	Name = "Vinkyl Hub",
	Content = "Welcome to the Vinkyl Hub! (This hub is in beta, be aware of bugs!)",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local LocalPlayer = Window:MakeTab({
	Name = "Local Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


LocalPlayer:AddSlider({
	Name = "Walk Speed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walk Speed",
	Callback = function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end    
})

LocalPlayer:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(JumpPower)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
	end    
})

local OtherScripts = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


OtherScripts:AddButton({
	Name = "Infinite Yield",
	Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")),true)()

		OrionLib:MakeNotification({
			Name = "Vinkyl Hub",
			Content = "Loaded Infinite Yield",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
  	end    
})



OtherScripts:AddButton({
	Name = "Chat Spoofer",
	Callback = function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li')),true)()

		OrionLib:MakeNotification({
			Name = "Vinkyl Hub",
			Content = "Loaded Chat Spoofer",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
  	end    
})

OtherScripts:AddButton({
	Name = "Auto Piano Player",
	Callback = function()
		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/MidiPlayer/main/package.lua"))()

		OrionLib:MakeNotification({
			Name = "Vinkyl Hub",
			Content = "Loaded Piano Script",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
  	end    
})

local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



OrionLib:Init()
