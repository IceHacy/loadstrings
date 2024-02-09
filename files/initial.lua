local player = game.Players.LocalPlayer
local highlight = Instance.new("SelectionBox")
highlight.Color3 = Color3.new(1, 1, 1)
highlight.LineThickness = 0.05
highlight.Adornee = player.Character.HumanoidRootPart
highlight.Parent = player.Character
