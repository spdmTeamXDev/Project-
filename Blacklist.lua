repeat wait() until game:IsLoaded()
BlackList = {7837080873, 7639808387, 5416068413, 3227272858, 4474298399, 7903982191, 7945902429, 3021383877, 7990357915}
if table.find(BlackList, game:GetService("Players").LocalPlayer.UserId) then
    game:Shutdown()
  else
  print("WhiteList")
end
