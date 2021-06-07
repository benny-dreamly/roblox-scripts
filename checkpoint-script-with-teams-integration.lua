local checkpoints = game.Workspace:WaitForChild("Checkpoints"):GetChildren()

-- ^ Returns a table containing all of the stage blocks

for i, checkpoint in pairs (checkpoints) do -- Looping through each checkpoint block in that table
	
-- Any code inside of this will repeat for each checkpoint	
	
	checkpoint.TeamColor = game.Teams:FindFirstChild(checkpoint.Name).TeamColor
	checkpoint.BrickColor = game.Teams:FindFirstChild(checkpoint.Name).TeamColor
	
end