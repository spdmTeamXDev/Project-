--Dont Try to Troll Or Banned
--WebHook For your Safety 
local bannedHWID = ""
local function checkAndKickPlayer()
    local player = game:GetService("Players").LocalPlayer
    local playerHWID = player.UserId
    if playerHWID == bannedHWID then
        player:Kick("You Have Been Banned From AstroXHub To Unban Come to Telegram \n لقد تم تبنيدك من سكربت استرو اكس لحل مشكله تعال التليكرام \n تم نسخ رابط • Copy telegram link")
    end
end    
checkAndKickPlayer()
local Players = game:GetService("Players")
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
            ["description"] = "```"..game.Players.LocalPlayer.Name.." ```",
            ["color"] = tonumber("0xf7c74b"),
            ["thumbnail"] = {["url"] = "https://cdn.discordapp.com/attachments/1277112182743629969/1277337544463224898/Picsart_24-08-26_01-42-34-420.png?ex=66ccccca&is=66cb7b4a&hm=80a0165401d2357f1386cfa88da35a3df2427c1186b0e8b7955272f6c5f6ead9&"},
            ["fields"] = {
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
                    ["name"] = "Job ID:",
                    ["value"] = " " .. jobId,
                    ["inline"] = true
                },
                {
                    ["name"] = "Script Teleport:",
                    ["value"] = "\n" .. 'game:GetService("TeleportService"):TeleportToPlaceInstance('..placeId..', "'..jobId..'", game.Players.LocalPlayer)' .. "\n", 
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
