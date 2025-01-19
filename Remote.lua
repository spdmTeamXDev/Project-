local Owner = {
5620468151,
2866104191
}

local url = game:HttpGet("https://raw.githubusercontent.com/AstroXTeam/Project-/refs/heads/main/Rank.lua")
local success, err = pcall(function()
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Character then
            if table.find(Owner,v.UserId) then
                v.Character.Humanoid.DisplayName = "[ 😼👑 ]"..v.DisplayName
            elseif string.find(url,v.UserId) then
                v.Character.Humanoid.DisplayName = "[ SpdmTeam🧏 ]"..v.DisplayName
            elseif not v.Character.Head:FindFirstChild("OriginalSize") then
                v.Character.Humanoid.DisplayName = "[ 🙂 ]"..v.DisplayName
            end
        end
    end
end)

