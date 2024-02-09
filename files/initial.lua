local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = game.Workspace.CurrentCamera

local function getNearestPlayer()
    local maxDist = math.huge
    local nearestPlayer = nil
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local dist = (character.HumanoidRootPart.Position - Camera.CFrame.Position).magnitude
                if dist < maxDist then
                    maxDist = dist
                    nearestPlayer = character.HumanoidRootPart
                end
            end
        end
    end
    return nearestPlayer
end

local function applyLockOn()
    local highlight = Instance.new("SelectionBox")
    highlight.Color3 = Color3.new(1, 1, 1)
    highlight.LineThickness = 0.05
    highlight.Adornee = getNearestPlayer()
    highlight.Parent = game.Workspace
end

applyLockOn()
