local players = game:GetService("Players")
local teams = game:GetService("Teams")

local teamStart = teams.Start

local function play(player)
	player.Team = teamStart
	player.TeamColor = teamStart
	
	player:LoadCharacter()
end

game.Players.PlayerAdded:Connect(function(plr)
	play(plr)
end)
