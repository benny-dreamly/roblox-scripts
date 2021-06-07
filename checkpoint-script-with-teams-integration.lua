local DataStoreService = game:GetService("DataStoreService")

local DataStore = DataStoreService:GetDataStore("ObbyDataStore")

game.Players.PlayerAdded:Connect(function(player)
	
	local data
	
	local success, errorMessage pcall(function()
		print ("Getting data from data store")
		data = DataStore:GetAsync(player.UserId.."-stage")		
	end)
	if success then
		print ("Async worked, checking if we got anything")
		if data then 
			print ("Data returned, setting player team")
			player.Team = game.Teams[data]
		else
			print ("No data found, setting player to stage 1")
			player.Team = game.Teams.Stage1
		end
	else
		print ("Something went wrong getting data from server")
		print (errorMessage)
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	
	local teamName = player.Team.Name
	
	local success, errorMessage pcall(function()
		DataStore:SetAsync(player.UserId.."-stage", teamName)		
	end)
	
	if success then
		print ("All went well")
	else
		print (errorMessage)
	end
	
	player:LoadCharacter()
	
end)