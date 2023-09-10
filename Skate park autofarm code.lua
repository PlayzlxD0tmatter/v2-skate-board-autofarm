local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))();
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key system", HidePremium = false, IntroText = "Key system", SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Logged in",
	Content = "You are logged in as  "..Player.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "lKhbGjGehKnZWHkfoKjfoFKQO"
_G.KeyInput = "string"

function MakeScriptHub()
    
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Lauk hub", HidePremium = false, IntroText = "Lauk hub", SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
	Name = "Autofarm",
	Callback = function()
        game:GetService("ReplicatedStorage").lib.Network.RemoveRide:InvokeServer()
        while wait(0.0) do
          game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Collectables.Storage["Credit"].Root.Position)
        end	
  	end    
})


local Tab = Window:MakeTab({
	Name = "About",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("Join discord https://discord.gg/696qnHRTMZ")
Tab:AddParagraph("Any problems?","Join discord! if you want features just dm me PlayzLx#9696")

--if you decide to leak this please dont i beg you

--i worked on this my first autofarm please?

--dont post it if you have it just dont leak it if you want to give me credit!

end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterd the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function InncorectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Inncorect Key!",
        Content = "You have enterd the Inncorect key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end




local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      		if _G.KeyInput == _G.Key then
                MakeScriptHub()
                CorrectKeyNotification()
            else
                InncorectKeyNotification()
            end
  	end    
})


local Tab = Window:MakeTab({
	Name = "Key here",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("Join discord for key! https://discord.gg/696qnHRTMZ")
Tab:AddParagraph("Any problems?","Join discord! if you want features just dm me PlayzLx#9696")

--end for rn