repeat wait() until game:IsLoaded()
BlackList = {7837080873, 7639808387, 5416068413, 3227272858}

if table.find(BlackList, game:GetService("Players").LocalPlayer.UserId) then
    game:GetService("Players").LocalPlayer:Kick("Arctic Client : Blacklisted, Think this was a mistake? Join Our Telegram Server\n لقد تم تبيندك من استرو اكس هل تضن انهو خطأ يرجه دخول سيرفير تليگرام")
  else
  print("WhiteList")
end
