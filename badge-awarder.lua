local BadgeService = game:GetService("BadgeService")
local badge1 =
local badge2 = 

game.Players.PlayerAdded:Connect(function(player)

    local playerUID = player.UserId
    BadgeService:AwardBadge(playerUID, badge1)

end)
