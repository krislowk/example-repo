-- Null Hub v3 | guarded boot
local _ok, _err = pcall(function()

print("[NullHub] v3 boot")
print("[NH 1] services")

local U = utf8.char
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local UIS = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")
local TeleportService = game:GetService("TeleportService")
local Stats = game:GetService("Stats")

local _LOAD = loadstring or load
local _HTTP
do
    local o = game.HttpGet
    _HTTP = function(u, ...) return o(game, u, ...) end
end

if _G.__nh and _G.__nhK then pcall(_G.__nhK) task.wait(0.3) end
_G.__nh = true

local LP = Players.LocalPlayer
if not LP then
    repeat task.wait(0.1) until Players.LocalPlayer
    LP = Players.LocalPlayer
end

local VERSION = "v3"
print("[NH 2] db loading")

local GAME_DB = {
    {name="Steal an Egg",ids={107778070777162},keyless={
        {name="Clouthub ESP Egg Sniper",url="https://raw.githubusercontent.com/ClouthubOnTop/Loader/main/main.lua"},
        {name="Kira Hub Auto Steal Plot Serverhop",url="https://raw.githubusercontent.com/LSSOPS/OpenSource/refs/heads/main/KiraHub_Steal_An_Egg.lua"},
        {name="Monarch Hub Fly Box ESP",url="https://raw.githubusercontent.com/nobuxy/monarch.win/refs/heads/main/Monarch.lua"},
        {name="Pulse Hub Auto Equip Best Pets",url="https://raw.githubusercontent.com/PulseZax/Loader/refs/heads/main/.lua"},
        {name="Yokudo Hub Farming Combat",url="https://raw.githubusercontent.com/betdoyvaka/stealanegg/main/Loader.lua"},
        {name="Cyrus Hub Auto Steal Tween",url="https://raw.githubusercontent.com/CyrusOffc/scriptcyrus/refs/heads/main/loader"},
        {name="Neva Hub Auto Farm Egg Selection",url="https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2"},
        {name="BK's Hub Rift Boss Capture",url="https://api.luarmor.net/files/v4/loaders/9ee4edde227ac85f50872bf9e4226508.lua"},
        {name="Ajjan's Hub Auto Farm",url="https://api.luarmor.net/files/v4/loaders/359e97f8618e9008afe5f496184ebb7c.lua"},
        {name="Chilli Hub Speed Anti Ragdoll",url="https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"},
        {name="Ouroboros Hub Clone Auto Steal",url="https://raw.githubusercontent.com/joustingmatch/Ouroboros/main/loader.lua"},
        {name="Gemini PVP ESP Aimbot",url="https://raw.githubusercontent.com/gemini-scripts/sae-pvp/main/loader.lua"},
        {name="Decode Auto Steal Infested",url="https://raw.githubusercontent.com/ItzYumi/Decode/refs/heads/main/DE%3ACODE.lua"},
        {name="Speed Hub X",url="https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"},
        {name="Fake Admin",url="https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/StealAnEggs.luau"},
        {name="Foxname Hub",url="https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"},
        {name="Oxide Hub",url="https://raw.githubusercontent.com/LSSOPS/OpenSource/refs/heads/main/OxideHub_Steal_An_Egg.lua"},
        {name="Rift Goha",url="https://raw.githubusercontent.com/Dodoyung24/script-core/main/Steal-An-Egg"},
        {name="BobloScript",url="https://raw.githubusercontent.com/bobloscript/scripts/refs/heads/main/StealAnEgg"},
        {name="Miranda Hub",url="https://raw.githubusercontent.com/miirandahub/loader/main/stealaeggs"},
        {name="Ronnei Hub",url="https://raw.githubusercontent.com/elonmod/skibidi/refs/heads/main/Ronneihub-keyless.lua"},
        {name="Hoshi Hub",url="https://hoshihub.site/loader.lua"},
        {name="Pig Hub",url="https://raw.githubusercontent.com/mopsscript7-gif/steal-an-egg/refs/heads/main/script.lua"},
        {name="Sena Hub",url="https://raw.githubusercontent.com/senarblx/sena/refs/heads/main/loaderv2sena"},
        {name="ON Hub",url="https://raw.githubusercontent.com/davizin713/ONhub/refs/heads/main/script.lua"},
        {name="Toolbox Hub",url="https://raw.githubusercontent.com/Abdullahking20/loader-lua/main/loader"},
        {name="Zeroin Hub",url="https://zeroinhub.com/api/script"},
        {name="Blyxo Hub",url="https://raw.githubusercontent.com/BlyxoHub/loader/main/stealanegg.lua"},
        {name="Valinc Hub",url="https://raw.githubusercontent.com/ValincHUB/loader/main/stealanegg.lua"},
        {name="Tsuo Hub",url="https://raw.githubusercontent.com/TsuoHub/loader/main/stealanegg.lua"},
        {name="Solix Hub",url="https://raw.githubusercontent.com/solixhub/sae/main/loader.lua"},
        {name="Genesis Hub",url="https://raw.githubusercontent.com/genesishub/sae/main/stealanegg.lua"},
        {name="Ronix Hub",url="https://raw.githubusercontent.com/ronixhub/sae/main/loader.lua"},
        {name="Rene Baterbonia",url="https://raw.githubusercontent.com/sabscrip-arch/srver/refs/heads/main/Stealanegg"},
        {name="Cat Hub",url="https://raw.githubusercontent.com/showscript-hub/Script/refs/heads/main/Cat-hub"},
        {name="Bee Hub",url="https://flowauth.net/v1/loaders/026c52c6ec62cd086277f45a113a680a.lua"},
        {name="Lennon Hub Farm V2",url="https://raw.githubusercontent.com/lennonxscripts/lennonhubv4/refs/heads/main/stealanegg"},
        {name="VoidShell Hub",url="https://raw.githubusercontent.com/VoidShell-null/VoidShell-Hub/refs/heads/main/Scripts/StealAnEgg.luau"},
        {name="Axurs Games Hub",url="https://raw.githubusercontent.com/XE3Scripts/Axur-sGamesHub/refs/heads/main/StealAnEgg"},
        {name="Wis Hub",url="https://api.wishub.cloud/files/loader.lua"},
        {name="Chiyo Hub",url="https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"},
        {name="Asvra Hub",url="https://raw.githubusercontent.com/asvraRoblox/stealegg/refs/heads/main/main"},
        {name="Mono Hub",url="https://raw.githubusercontent.com/monohubscripts/steal-an-egg/main/loader.lua"},
        {name="Zenith Hub",url="https://raw.githubusercontent.com/ZenithHubRBX/StealAnEgg/main/loader.luau"},
        {name="Ghost Hub",url="https://raw.githubusercontent.com/GhostSAE/loader/main/stealanegg.lua"},
        {name="Raven Hub",url="https://raw.githubusercontent.com/ravenhubscripts/sae/main/loader.lua"},
        {name="Apex Hub",url="https://raw.githubusercontent.com/apexhubsae/main/loader.lua"},
        {name="Midnight Hub",url="https://raw.githubusercontent.com/midnighthub-sae/main/loader.lua"},
        {name="Eclipse Hub",url="https://raw.githubusercontent.com/eclipsehub-rbx/sae/main/stealanegg.lua"},
        {name="Solar Hub",url="https://raw.githubusercontent.com/solarhub-sae/loader/main/stealanegg.lua"},
        {name="Vortex Hub",url="https://raw.githubusercontent.com/vortexhub-rbx/stealanegg/main/loader.lua"},
        {name="Star Hub",url="https://raw.githubusercontent.com/starhubsae/loader/main/stealanegg.lua"},
        {name="Quantum Hub",url="https://raw.githubusercontent.com/quantumhub-rbx/sae/main/loader.luau"},
        {name="Flux Hub",url="https://raw.githubusercontent.com/fluxhub-sae/loader/main/stealanegg.lua"},
        {name="Onyx Hub",url="https://raw.githubusercontent.com/onyxhubscripts/sae/main/stealanegg.lua"},
        {name="Phantom Hub",url="https://raw.githubusercontent.com/phantomhub-rbx/sae/main/stealanegg.lua"},
        {name="Ember Hub",url="https://raw.githubusercontent.com/emberhubsae/loader/main/loader.lua"},
        {name="Titan Hub",url="https://raw.githubusercontent.com/titanhub-rbx/sae/main/loader.lua"},
        {name="Hydra Hub",url="https://raw.githubusercontent.com/hydrahub-sae/loader/main/stealanegg.lua"},
        {name="Venom Hub",url="https://raw.githubusercontent.com/venomhub-rbx/sae/main/loader.lua"},
        {name="Frost Hub",url="https://raw.githubusercontent.com/frosthubsae/loader/main/stealanegg.lua"},
        {name="Storm Hub",url="https://raw.githubusercontent.com/stormhub-rbx/sae/main/loader.lua"},
        {name="Cyclone Hub",url="https://raw.githubusercontent.com/cyclonehubsae/loader/main/loader.lua"},
        {name="Comet Hub",url="https://raw.githubusercontent.com/comethub-sae/loader/main/stealanegg.lua"},
        {name="Pulsar Hub",url="https://raw.githubusercontent.com/pulsarhubsae/loader/main/loader.luau"},
        {name="Abyss Hub",url="https://raw.githubusercontent.com/abysshub-rbx/sae/main/stealanegg.lua"},
        {name="Chaos Hub",url="https://raw.githubusercontent.com/chaoshubsae/loader/main/loader.lua"},
        {name="Sigma Hub",url="https://raw.githubusercontent.com/sigmahub-rbx/sae/main/stealanegg.lua"},
        {name="Orion Hub",url="https://raw.githubusercontent.com/orionhubsae/loader/main/loader.lua"},
        {name="Wraith Hub",url="https://raw.githubusercontent.com/wraithhub-sae/loader/main/stealanegg.luau"},
        {name="Spectre Hub",url="https://raw.githubusercontent.com/spectrehubsae/loader/main/loader.lua"},
        {name="Umbra Hub",url="https://raw.githubusercontent.com/umbrahub-rbx/sae/main/stealanegg.lua"},
        {name="Glitch Hub",url="https://raw.githubusercontent.com/glitchhubsae/loader/main/loader.lua"},
        {name="Project Madara",url="https://raw.githubusercontent.com/ProjectMadara/SAE/main/loader.lua"},
    },keyed={
        {name="Snowy Hub Auto Farm",url="https://flowauth.net/v1/ui/a87f00d9adf63658655fcd02ab86a4ef.lua"},
        {name="Rscripts Auto Steal Secret Eggs",url="https://rscripts.net/raw/auto-steal-secret-eggs-auto-pets-auto-tool-30-more_1787628515262_YDShlrZ5VL.txt"},
        {name="Goha Angel and Demon",url="https://goha.dev/loader/stealanegg"},
        {name="Nasi Rendang Hub",url="https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua"},
        {name="OMG Hub",url="https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"},
        {name="Nova Hub",url="https://raw.githubusercontent.com/NovaHubRBLX/NovaHub/refs/heads/main/novahub.lua"},
        {name="ScriptVerse",url="https://scriptversekey.xyz/s/steal-an-egg-pet-spawner"},
        {name="NEOX Hub",url="https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader"},
        {name="Axon Hub",url="https://api.luarmor.net/files/v3/loaders/97c3f6db55a2cf72141537a85458e5a7.lua"},
        {name="Fishy Hub",url="https://api.jnkie.com/api/v1/luascripts/public/4965c0d52f5d1dde43256d20cb1f511f225b45a1b370fccc4e6ba7252df76d88/download"},
        {name="BigFroot Hub",url="https://raw.githubusercontent.com/hanniii1/Loader/refs/heads/main/BFLoader.lua"},
        {name="CloverHub",url="https://raw.githubusercontent.com/Ryuun0x/Clover/refs/heads/main/main.lua"},
        {name="Lumin Hub",url="https://raw.githubusercontent.com/luminhub-sae/loader/main/loader.lua"},
        {name="Zware",url="https://api.luarmor.net/files/v4/loaders/53f54e99aa490d4741858889f586475a.lua"},
        {name="Krnl Premium",url="https://api.luarmor.net/files/v4/loaders/bf1faa9c9cf7e3bb2d9cdba8f3a1d8d5.lua"},
        {name="Vega X",url="https://api.luarmor.net/files/v4/loaders/8b0a37f6c6c1b3e4e8c8d8b4e2a4c8d0.lua"},
        {name="Aurora Hub",url="https://flowauth.net/v1/loaders/aurora-sae-loader.lua"},
        {name="Cobalt Hub",url="https://api.luarmor.net/files/v4/loaders/cobalt-sae-loader.lua"},
        {name="Nemesis Hub",url="https://flowauth.net/v1/loaders/nemesis-sae.lua"},
        {name="Phantasm",url="https://api.luarmor.net/files/v4/loaders/phantasm-sae.lua"},
        {name="Obsidian Hub",url="https://flowauth.net/v1/loaders/obsidian-sae.lua"},
        {name="Nebula Hub",url="https://flowauth.net/v1/loaders/nebula-sae.lua"},
        {name="Cosmic Hub",url="https://api.luarmor.net/files/v4/loaders/cosmic-sae.lua"},
        {name="Astral Hub",url="https://flowauth.net/v1/loaders/astral-sae.lua"},
        {name="Reaper Hub",url="https://api.luarmor.net/files/v4/loaders/reaper-sae.lua"},
        {name="Kraken Hub",url="https://flowauth.net/v1/loaders/kraken-sae.lua"},
        {name="Fusion Hub",url="https://api.luarmor.net/files/v4/loaders/fusion-sae.lua"},
        {name="Elemental Hub",url="https://flowauth.net/v1/loaders/elemental-sae.lua"},
        {name="Moonblack Hub",url="https://raw.githubusercontent.com/MoonblackSAE/loader/main/stealanegg.lua"},
        {name="Nyx Hub",url="https://flowauth.net/v1/loaders/nyx-sae.lua"},
        {name="Wraith Syndicate",url="https://api.luarmor.net/files/v4/loaders/wraith-sae.lua"},
        {name="Void Hub",url="https://flowauth.net/v1/loaders/void-sae.lua"},
        {name="Lunaris Hub",url="https://raw.githubusercontent.com/lunarishub/sae/main/loader.lua"},
        {name="SolvexGUI",url="https://raw.githubusercontent.com/SolvexGUI/SAE/main/loader.lua"},
        {name="Nexus Hub",url="https://raw.githubusercontent.com/NexusScripts-hub/loader/main/stealanegg.lua"},
        {name="Valinc Syndicate",url="https://raw.githubusercontent.com/ValincSyndicate/loader/main/stealanegg.lua"},
        {name="Fyy Community",url="https://FyyCommunity.my.id"},
    }},
    {name="Break and Steal an Egg",ids={114326934417838},keyless={
        {name="Ouroboros Hub Auto Sell Egg ESP",url="https://raw.githubusercontent.com/joustingmatch/Ouroboros/main/loader.lua"},
        {name="Mauscripts Auto Break Auto Steal",url="https://t.me/mauscripts/1269"},
        {name="Ronix Hub Break and Steal",url="https://raw.githubusercontent.com/ronixhub/sae/main/stealanegg.lua"},
        {name="Solix Hub Break and Steal",url="https://raw.githubusercontent.com/solixhub/sae/main/loader.lua"},
        {name="Genesis Hub Break and Steal",url="https://raw.githubusercontent.com/genesishub/sae/main/stealanegg.lua"},
        {name="Nexus Hub Break and Steal",url="https://raw.githubusercontent.com/NexusScripts-hub/loader/main/stealanegg.lua"},
    },keyed={
        {name="Break a Brainrot Egg Auto Hit",url="https://bypass.tools/roblox/scripts/break-a-brainrot-egg"},
        {name="Goha Dev Key System",url="https://goha.dev/loader/breakandsteal"},
        {name="Rscripts Break and Steal",url="https://rscripts.net/raw/break-and-steal-an-egg_1787628515262_YDShlrZ5VL.txt"},
    }},
    {name="Karinderya",ids={116497287371701},keyless={
        {name="Baan Hub Two Game Router",url="https://raw.githubusercontent.com/fast007x2-blip/baan-hub/main/baan-hub.lua"},
        {name="Kosowa Auto Serve Auto Hit",url="https://raw.githubusercontent.com/kosowa02/x/refs/heads/main/karinderya"},
        {name="Zanxanax All In One",url="https://raw.githubusercontent.com/Zanxanax/scripts/main/Loader.lua"},
        {name="Kronos Multi-Game 142 Games",url="https://raw.githubusercontent.com/Nanana291/Kronos/refs/heads/main/Loader.lua"},
        {name="Ouroboros Hub v0.17 Beta Auto Play",url="https://raw.githubusercontent.com/joustingmatch/Ouroboros/main/loader.lua"},
        {name="Ronix Ron Menu Auto Farm",url="https://rscripts.net/raw/ron-menu-karinderya_1787628515262_YDShlrZ5VL.txt"},
    },keyed={
        {name="JinHub Auto Farm Everything",url="https://rscripts.net/raw/jinhub-karinderya_1787628515262_YDShlrZ5VL.txt"},
        {name="Paid Key Menu Auto Farm Auto Hit",url="https://api.jnkie.com/api/v1/luascripts/public/bcd7acc3f118f84e5356caa35244996cee11fea9deead0ebd94bfe9a1b18b7f7/download"},
    }},
    {name="Ride a Pet",ids={124216119978534},keyless={
        {name="Decode Full Config ESP",url="https://raw.githubusercontent.com/ItzYumi/Decode/refs/heads/main/DE%3ACODE.lua"},
        {name="sapka342 Egg Autofarm",url="https://raw.githubusercontent.com/sapka342-sudo/sapka-rblx/refs/heads/main/ride-a-pet.luau"},
        {name="XyronHub Auto Farm Auto Upg Luck",url="https://raw.githubusercontent.com/vikrantsudo/XyronHub/refs/heads/main/RideAPet"},
        {name="NemoHub Eggs ESP Autofarm",url="https://raw.githubusercontent.com/NemoScripts/NemoHubGames/refs/heads/main/besthub"},
        {name="ThiAez Auto Best Eggs ESP",url="https://raw.githubusercontent.com/GZSSF/RideAPet/refs/heads/main/RideAPet"},
        {name="Darkduy Egg ESP Teleport",url="https://raw.githubusercontent.com/darkduy/lua/refs/heads/main/ride-a-pet.lua"},
        {name="EGGIUM Rare Egg ESP Fly Home",url="https://pastebin.com/raw/qWb1aCUk"},
        {name="Axel FF Auto Farm Ranch Teleport",url="https://raw.githubusercontent.com/Axel-FF/MONTAR-UNA-MASCOTA/refs/heads/main/Script.txt"},
        {name="Serenity Hub Auto Steal Auto Feed",url="https://raw.githubusercontent.com/SerenityHubRBX/loader/main/rideapet.lua"},
        {name="Akaz Hub Farm Rarities ESP",url="https://akazhub.netlify.app/script.lua"},
        {name="Bac0nH1ckOff Auto Collect Egg",url="https://raw.githubusercontent.com/Bac0nH1ck/Scripts/refs/heads/main/rideapet.lua"},
        {name="xRoxyHubx",url="https://raw.githubusercontent.com/xRoxyHubx/Ride-A-Pet/refs/heads/main/Script"},
        {name="Porqueijjmzm Hub",url="https://raw.githubusercontent.com/porqueijjmzm1/cool/main/RideAPet"},
    },keyed={
        {name="Chiyo Hub Auto Farm Place Hatch",url="https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"},
        {name="LunaHub Auto Farm Place Hatch",url="https://rscripts.net/raw/lunahub-ride-a-pet_1787628515262_YDShlrZ5VL.txt"},
        {name="Acro Hub Easy Key 15+ Games",url="https://rscripts.net/raw/acro-hub-ride-a-pet_1787628515262_YDShlrZ5VL.txt"},
        {name="ZapretHub OP Autofarm",url="https://rscripts.net/raw/zaprethub-ride-a-pet_1787628515262_YDShlrZ5VL.txt"},
        {name="WolaWar Auto Dragon Egg",url="https://raw.githubusercontent.com/APRelease/WolaWar/refs/heads/main/rbx.lua"},
    }},
    {name="Blox Fruits",ids={2753915549,4442272183,7449423635},keyless={
        {name="Gravity Hub Auto Farm Magnet",url="https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/main/MainPremium.lua"},
        {name="NOKA V3 Skin Weapon Changer",url="https://rawscripts.net/raw/RIVALS-Noks-unlock-all-205613"},
        {name="GHOSTYHUB Villain Auto Attack",url="https://raw.githubusercontent.com/GHOSTYHUB/BloxFruits/main/script.lua"},
        {name="ARC Hub Auto Farm Quest ESP",url="https://raw.githubusercontent.com/bloxfruitsnokey/Arcylic/refs/heads/main/ARC/update.luau"},
        {name="CattStar PvP v4 AimLock",url="https://rblxscripts.net/raw/cattstar-pvp-v4-blox-fruits-aimlock"},
        {name="Axonic Blox Fruits OP",url="https://raw.githubusercontent.com/Kenniel123/Axonic/main/BloxFruits"},
        {name="Redz Hub",url="https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"},
        {name="Banana Cat Hub",url="https://raw.githubusercontent.com/VoidDeveloper67/VoidHub/refs/heads/main/Void"},
        {name="4479Hub",url="https://raw.githubusercontent.com/4479cantcode/4479Hub/refs/heads/main/Script.lua"},
        {name="Speed Hub X",url="https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"},
        {name="Thunder Z Hub",url="https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Main/Chest/AllDevice.lua"},
        {name="Quartyz Hub",url="https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"},
        {name="HoHo Hub",url="https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"},
        {name="Nix Hub",url="https://raw.githubusercontent.com/NYX8HUB/premium/refs/heads/main/script"},
        {name="Cookie Script",url="https://raw.githubusercontent.com/Jadelly261/BloxFruits/refs/heads/main/Cookie"},
        {name="Hermanos Hub PvP",url="https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua"},
        {name="HoangTrong Script",url="https://raw.githubusercontent.com/trongdeptraihucscript/Main/refs/heads/Hoangtrongdepzai.lua"},
        {name="Leaf Hub",url="https://leaf-zeta.onrender.com/api/script"},
        {name="Spiem Hub Universal",url="https://raw.githubusercontent.com/SpiemHub/Spiem/main/loader.lua"},
        {name="MeoLazy Script",url="https://raw.githubusercontent.com/MeoLazy/Script/refs/heads/main/V1.lua"},
        {name="Tgferr AFK Fruit Sniper",url="https://api.tgferr.com.br/nexusproxy"},
        {name="Roni Auto Farm",url="https://raw.githubusercontent.com/RoniScripts/BloxFruits/main/loader.lua"},
        {name="Cokka Hub",url="https://raw.githubusercontent.com/glossycannon/Blox-Fruits-Mastery-Boss-Farm-Toolkit/main/loader.lua"},
    },keyed={
        {name="Quantum Onyx Hub",url="https://api.luarmor.net/files/v4/loaders/0ae9fe4cf963e3a13d25eed0e2ce5940.lua"},
        {name="Banana Cat Hub Keyed",url="https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"},
        {name="SF Hub 1000+ Games",url="https://rscripts.net/raw/sf-hub-blox-fruits_1787628515262_YDShlrZ5VL.txt"},
        {name="Lunaris Hub",url="https://rscripts.net/raw/lunaris-hub-blox-fruits_1787628515262_YDShlrZ5VL.txt"},
        {name="Anubis Hub",url="https://rscripts.net/raw/anubis-hub-blox-fruits_1787628515262_YDShlrZ5VL.txt"},
        {name="Nexus Fruits Hub",url="https://rscripts.net/raw/nexus-fruits-hub-blox-fruits_1787628515262_YDShlrZ5VL.txt"},
        {name="Solix Hub",url="https://rscripts.net/raw/solix-hub-blox-fruits_1787628515262_YDShlrZ5VL.txt"},
        {name="4479 HUB God Script",url="https://rscripts.net/raw/4479-hub-blox-fruits_1787628515262_YDShlrZ5VL.txt"},
    }},
}
print("[NH 3] db done")

local currentGame = nil
for _, g in ipairs(GAME_DB) do
    for _, id in ipairs(g.ids) do
        if id == game.PlaceId then currentGame = g break end
    end
    if currentGame then break end
end
if not currentGame then
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "Null Hub " .. VERSION,
            Text = "This game is not supported yet. Loading UI anyway.",
            Duration = 8
        })
    end)
end
if not game:IsLoaded() then game.Loaded:Wait() end

-- ========== GUI PARENT RESOLVER ==========
local function resolveGuiParent()
    local candidates = {}
    if type(gethui) == "function" then
        local ok, h = pcall(gethui)
        if ok and h then table.insert(candidates, h) end
    end
    if type(get_hidden_gui) == "function" then
        local ok, h = pcall(get_hidden_gui)
        if ok and h then table.insert(candidates, h) end
    end
    local okcg, cg = pcall(function() return game:GetService("CoreGui") end)
    if okcg and cg then table.insert(candidates, cg) end
    local pg = LP:FindFirstChildOfClass("PlayerGui") or LP:WaitForChild("PlayerGui", 10)
    if pg then table.insert(candidates, pg) end

    for _, parent in ipairs(candidates) do
        local ok, test = pcall(function()
            local s = Instance.new("ScreenGui")
            s.Name = "__nh_test"
            s.Parent = parent
            s:Destroy()
            return true
        end)
        if ok and test then
            print("[NH] GUI parent resolved:", parent:GetFullName())
            return parent
        end
    end
    warn("[NH] No verified GUI parent, falling back to PlayerGui")
    return pg or LP:WaitForChild("PlayerGui", 30)
end

local GUIPARENT = resolveGuiParent()
if not GUIPARENT then
    error("[NH] FATAL: no valid GUI parent")
end
print("[NH 3.5] GUIPARENT:", GUIPARENT and GUIPARENT.Name or "NONE")

-- Cleanup old Null* ScreenGuis in both parents
local PG = LP:FindFirstChildOfClass("PlayerGui")
for _, ctr in ipairs({ GUIPARENT, PG }) do
    if ctr then
        local okch, children = pcall(function() return ctr:GetChildren() end)
        if okch then
            for _, c in ipairs(children) do
                if c:IsA("ScreenGui") and c.Name:sub(1, 4) == "Null" then
                    pcall(function() c:Destroy() end)
                end
            end
        end
    end
end

local LOGO = "rbxassetid://75197940922874"
local DLOGO = "rbxassetid://4559100966"
local DISC = "https://discord.gg/CYq7fDt7Gj"
local T = {
    bg = Color3.fromRGB(8,8,9), sur = Color3.fromRGB(18,18,20),
    card = Color3.fromRGB(24,24,27), cardHi = Color3.fromRGB(34,34,38),
    bd = Color3.fromRGB(44,44,48), bdHi = Color3.fromRGB(70,70,76),
    tx = Color3.fromRGB(240,240,244), dim = Color3.fromRGB(140,140,148),
    faint = Color3.fromRGB(72,72,78), wh = Color3.fromRGB(255,255,255),
    grn = Color3.fromRGB(120,220,140), red = Color3.fromRGB(230,90,90),
    gold = Color3.fromRGB(240,200,100), dsc = Color3.fromRGB(88,101,242)
}

local function mkFont(path, w, s, fb)
    local ok, f = pcall(function() return Font.new(path, w, s) end)
    if ok and f then return f end
    return fb
end
local FT = mkFont("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, Enum.Font.FredokaOne)
local FH = mkFont("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal, Enum.Font.BuilderSansExtraBold)
local FB = mkFont("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal, Enum.Font.GothamMedium)
local FR = mkFont("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, Enum.Font.Gotham)
local FC = mkFont("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal, Enum.Font.Code)

local function mk(c, p, par)
    local i = Instance.new(c)
    if type(p) == "table" then for k, v in pairs(p) do i[k] = v end end
    if par then i.Parent = par end
    return i
end
local function cn(p, r)
    local c = Instance.new("UICorner")
    if typeof(r) == "UDim" then c.CornerRadius = r else c.CornerRadius = UDim.new(0, r or 8) end
    c.Parent = p
    return c
end
local function sk(p, col, th, tr)
    local s = Instance.new("UIStroke")
    s.Color = col or T.bd s.Thickness = th or 1 s.Transparency = tr or 0
    s.Parent = p
    return s
end
local function ci(p, img, z)
    local i = Instance.new("ImageLabel")
    i.Size = UDim2.fromScale(1,1) i.BackgroundTransparency = 1 i.Image = img
    i.ScaleType = Enum.ScaleType.Crop i.ZIndex = z or 2 i.Parent = p
    local c = Instance.new("UICorner") c.CornerRadius = UDim.new(1,0) c.Parent = i
    return i
end
local function af(l, f) pcall(function() l.FontFace = f end) end

local function nGui(n, o)
    local g = Instance.new("ScreenGui")
    g.Name = n
    g.ResetOnSpawn = false
    g.DisplayOrder = o or 999999
    g.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    g.Enabled = true
    if syn and syn.protect_gui then
        pcall(syn.protect_gui, g)
    elseif protect_gui then
        pcall(protect_gui, g)
    end
    if GUIPARENT then g.Parent = GUIPARENT end
    return g
end
local function rc(f, d)
    local o = {}
    for k, v in pairs(d) do o[k] = v end
    if not isfile or not isfile(f) then return o end
    local ok, c = pcall(readfile, f)
    if not ok or not c then return o end
    for L in c:gmatch("[^\n]+") do
        local k, v = L:match("^([^=]+)=(.*)$")
        if k and d[k] ~= nil then
            local dv = d[k]
            if type(dv) == "number" then o[k] = tonumber(v) or dv
            elseif type(dv) == "boolean" then o[k] = (v == "true")
            else o[k] = v end
        end
    end
    return o
end
local function wc(f, t)
    if not writefile then return end
    local L = {}
    for k, v in pairs(t) do table.insert(L, tostring(k).."="..tostring(v)) end
    pcall(writefile, f, table.concat(L, "\n"))
end
local function drag(f, h, onEnd)
    h = h or f
    local di, ds, sp, mv
    h.InputBegan:Connect(function(i)
        local t = i.UserInputType
        if t ~= Enum.UserInputType.MouseButton1 and t ~= Enum.UserInputType.Touch then return end
        di = i ds = i.Position sp = f.Position mv = false
    end)
    UIS.InputChanged:Connect(function(i)
        if not di or i ~= di then return end
        local d = i.Position - ds
        if math.abs(d.X) + math.abs(d.Y) > 4 then mv = true end
        f.Position = UDim2.new(sp.X.Scale, sp.X.Offset + d.X, sp.Y.Scale, sp.Y.Offset + d.Y)
    end)
    UIS.InputEnded:Connect(function(i)
        if di and i == di then
            di = nil
            if onEnd and mv then onEnd() end
        end
    end)
end

-- Language block
local LANG_CFG = "NullHub_Lang.txt"
local langCfg = rc(LANG_CFG, {lang="en"})
local LANGS_LIST = {
    {code="en",name="English"},{code="es",name="Espanol"},{code="pt",name="Portugues"},
    {code="fr",name="Francais"},{code="de",name="Deutsch"},{code="ru",name="Russkiy"},
    {code="zh",name="Zhongwen"},{code="ja",name="Nihongo"},{code="ko",name="Hangugeo"},
    {code="fil",name="Filipino"}
}
local STR = {}
STR.en = {
    ["Home"]="Home",["Favorites"]="Favorites",["Nametag"]="Nametag",
    ["Performance"]="Performance",["Hop"]="Hop",["Changelog"]="Changelog",
    ["Keyless"]="Keyless",["Key Required"]="Key Required",["Settings"]="Settings",
    ["WELCOME"]="WELCOME",["COMMUNITY"]="COMMUNITY",["NAMETAG"]="NAMETAG",
    ["TEXT"]="TEXT",["EFFECTS"]="EFFECTS",["VISIBILITY"]="VISIBILITY",
    ["BOOST FPS"]="BOOST FPS",["JOIN RANDOM"]="JOIN RANDOM",
    ["KEYLESS HUBS"]="KEYLESS HUBS",["KEY REQUIRED"]="KEY REQUIRED",
    ["KEYBIND"]="KEYBIND",["OPENER"]="OPENER",["LANGUAGE"]="LANGUAGE",
    ["Select Language"]="Select Language",["Enable Custom Nametag"]="Enable Custom Nametag",
    ["Text"]="Text",["Text Size"]="Text Size",["Rainbow"]="Rainbow",
    ["Shine Sweep"]="Shine Sweep",["Boost FPS (toggle)"]="Boost FPS",
    ["FPS and Ping HUD"]="FPS and Ping HUD",["Return Opener Button"]="Return Opener Button",
    ["Toggle Key"]="Toggle Key",["Join Random"]="Join Random",["Copy"]="Copy",
    ["Copied"]="Copied",["Execute"]="Execute",["cancel"]="cancel",["close"]="close",
    ["scanning..."]="scanning...",["no open servers"]="no open servers",
    ["no friends"]="no friends",["offline"]="offline",["online"]="online",
    ["in game"]="in game",["studio"]="studio",["no favorites yet"]="no favorites yet",
    ["discord"]="discord",["copy invite"]="copy invite",["Warning"]="Warning",
    ["I understand"]="I understand",["Don't show again"]="Don't show again",
    ["Close Null Hub?"]="Close Null Hub?",["Search scripts"]="Search scripts",
    ["Lowest Servers"]="Lowest Servers",["Friends"]="Friends",
    ["SUPPORTED GAMES"]="SUPPORTED GAMES",["You are playing"]="You are playing",
    ["This game is not supported yet"]="This game is not supported yet",
    ["steal an egg"]="steal an egg",["drag to resize"]="drag to resize",
    ["UPDATE LOG"]="UPDATE LOG",["Chat"]="Chat",["GLOBAL CHAT"]="GLOBAL CHAT",
    ["Send"]="Send",["Type a message..."]="Type a message..."
}
-- Fallback: any language not defined falls through to English
for _, lang in ipairs(LANGS_LIST) do
    if not STR[lang.code] then STR[lang.code] = {} end
    for k, v in pairs(STR.en) do
        if STR[lang.code][k] == nil then STR[lang.code][k] = v end
    end
end

_G.__nhLabels = {}
local function L(s)
    local tbl = STR[langCfg.lang or "en"]
    if tbl and tbl[s] then return tbl[s] end
    return s
end
local function reg(key, obj, prop)
    if not key or not obj then return obj end
    table.insert(_G.__nhLabels, {key=key, obj=obj, prop=prop or "Text"})
    return obj
end
_G.__nhL = L
_G.__nhLangName = function(code)
    for _, l in ipairs(LANGS_LIST) do
        if l.code == code then return l.name end
    end
    return "English"
end

-- Blob / announcement
local BLOB_ID = "01a10bc3-a91e-70e1-abe7-31444ee80ac0"
local BLOB_URL = "https://jsonblob.com/api/jsonBlob/" .. BLOB_ID
local OWNER_IDS = {11675805689, 5658949125}
local ANN_CFG = "NullHub_Announcement.txt"
local ANN_POLL = 4
local CHAT_MAX = 40
local annSeen = ""
if isfile and isfile(ANN_CFG) then
    local ok, c = pcall(readfile, ANN_CFG)
    if ok and type(c) == "string" then annSeen = c:gsub("%s+", "") end
end
local function saveAnnSeen(id) if writefile then pcall(writefile, ANN_CFG, id) end end
local isOwner = false
for _, uid in ipairs(OWNER_IDS) do
    if uid ~= 0 and LP.UserId == uid then isOwner = true break end
end

local function fetch(url)
    if _HTTP then
        local ok, b = pcall(function() return _HTTP(url) end)
        if ok and type(b) == "string" and #b > 0 then return b end
    end
    local ok2, b2 = pcall(function() return HttpService:GetAsync(url, true) end)
    if ok2 and type(b2) == "string" and #b2 > 0 then return b2 end
    local fns = {}
    if request then table.insert(fns, request) end
    if http_request then table.insert(fns, http_request) end
    if syn and syn.request then table.insert(fns, syn.request) end
    for _, fn in ipairs(fns) do
        local ok, r = pcall(fn, {Url=url, Method="GET"})
        if ok and type(r) == "table" and r.Body and #r.Body > 0 then return r.Body end
    end
end
local function writeBlob(tbl)
    if BLOB_ID == "PASTE_ID_HERE" then return false end
    local body = HttpService:JSONEncode(tbl)
    local fns = {}
    if request then table.insert(fns, request) end
    if http_request then table.insert(fns, http_request) end
    if syn and syn.request then table.insert(fns, syn.request) end
    if http and http.request then table.insert(fns, http.request) end
    for _, fn in ipairs(fns) do
        local ok, r = pcall(fn, {Url=BLOB_URL, Method="PUT", Headers={["Content-Type"]="application/json"}, Body=body})
        if ok and r then
            local sc = r.StatusCode or r.status or 200
            if sc >= 200 and sc < 300 then return true end
        end
    end
    return false
end
local function readBlob()
    if BLOB_ID == "PASTE_ID_HERE" then return nil end
    local raw = fetch(BLOB_URL)
    if not raw or #raw < 2 then return nil end
    local trimmed = raw:gsub("^%s+", ""):gsub("%s+$", "")
    if trimmed == "null" or trimmed == "" then return nil end
    local ok, d = pcall(function() return HttpService:JSONDecode(trimmed) end)
    if not ok or type(d) ~= "table" then return nil end
    return d
end
local function hashColor(str)
    local h = 0
    for i = 1, #str do h = (h * 31 + string.byte(str, i)) % 360 end
    return Color3.fromHSV(h / 360, 0.65, 1)
end

local annModal = nil
local function showAnnouncement(p)
    if annModal then pcall(function() annModal:Destroy() end) end
    local g = nGui("NullAnnounce", 2147483644)
    g.IgnoreGuiInset = true
    annModal = g
    local row = mk("Frame", {Size=UDim2.fromOffset(600,44), Position=UDim2.new(0.5,-300,-60,0), BackgroundTransparency=1, BorderSizePixel=0, ZIndex=3, Parent=g})
    local avBox = mk("Frame", {Size=UDim2.fromOffset(40,40), Position=UDim2.fromOffset(0,2), BackgroundColor3=T.cardHi, BorderSizePixel=0, ClipsDescendants=true, ZIndex=5, Parent=row})
    cn(avBox, UDim.new(1,0)) sk(avBox, Color3.new(1,1,1), 2, 0)
    local av = mk("ImageLabel", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, Image="rbxthumb://type=AvatarHeadShot&id="..LP.UserId.."&w=48&h=48", ScaleType=Enum.ScaleType.Crop, ZIndex=6, Parent=avBox})
    cn(av, UDim.new(1,0))
    local nameColor = hashColor(p.sender or "Owner")
    local nameLbl = mk("TextLabel", {Size=UDim2.new(0,150,1,0), Position=UDim2.fromOffset(52,0), BackgroundTransparency=1, Text=(p.sender or "Owner")..":", TextColor3=nameColor, TextSize=18, Font=Enum.Font.GothamBold, TextXAlignment=Enum.TextXAlignment.Left, TextTruncate=Enum.TextTruncate.AtEnd, ZIndex=5, Parent=row})
    nameLbl.TextStrokeTransparency = 0 nameLbl.TextStrokeColor3 = Color3.fromRGB(0,0,0)
    local msgLbl = mk("TextLabel", {Size=UDim2.new(1,-212,1,0), Position=UDim2.fromOffset(208,0), BackgroundTransparency=1, Text=" "..(p.msg or ""), TextColor3=T.wh, TextSize=18, Font=Enum.Font.GothamBold, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Center, TextWrapped=true, ZIndex=5, Parent=row})
    msgLbl.TextStrokeTransparency = 0 msgLbl.TextStrokeColor3 = Color3.fromRGB(0,0,0)
    local startPos = UDim2.new(0.5,-300,-60,0)
    local endPos = UDim2.new(0.5,-300,20,0)
    row.Position = startPos
    TweenService:Create(row, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position=endPos}):Play()
    local closing = false
    local function close()
        if closing then return end
        closing = true
        local tw = TweenService:Create(row, TweenInfo.new(0.28, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Position=startPos})
        tw:Play()
        tw.Completed:Connect(function()
            pcall(function() g:Destroy() end)
            if annModal == g then annModal = nil end
        end)
    end
    task.delay(10, close)
end

local OP_CFG,RT_CFG,FA_CFG,WN_CFG,HD_CFG,KB_CFG,PF_CFG,NT_CFG =
    "NullHub_Opener.txt","NullHub_ReturnBtn.txt","NullHub_Favorites.txt",
    "NullHub_Warn.txt","NullHub_HUD.txt","NullHub_Keybind.txt",
    "NullHub_Perf.txt","NullHub_Nametag.txt"
local RT_DEFAULT_X, RT_DEFAULT_Y = 0.94, 0.05
local TK = Enum.KeyCode.RightShift
if isfile and isfile(KB_CFG) then
    local ok, c = pcall(readfile, KB_CFG)
    if ok and type(c) == "string" then
        local kc = Enum.KeyCode[c:gsub("%s+", "")]
        if kc then TK = kc end
    end
end

print("[NH 4] loader")
local lg = nGui("NullLoading", 2147483647)
lg.IgnoreGuiInset = true
local lbg = mk("Frame", {Size=UDim2.fromScale(1,1), BackgroundColor3=Color3.fromRGB(0,0,0), BackgroundTransparency=0.5, BorderSizePixel=0, ZIndex=1, Parent=lg})
local llb = mk("Frame", {Size=UDim2.fromOffset(200,200), Position=UDim2.new(0.5,-100,0.5,-190), BackgroundColor3=Color3.fromRGB(20,20,24), BorderSizePixel=0, ClipsDescendants=true, ZIndex=3, Parent=lbg})
cn(llb, UDim.new(1,0)) sk(llb, T.wh, 2, 0.6) ci(llb, LOGO, 3)
local ltt = mk("TextLabel", {Size=UDim2.new(1,0,0,30), Position=UDim2.new(0,0,0.5,60), BackgroundTransparency=1, Text="NULL HUB", TextColor3=T.wh, TextSize=26, Parent=lbg})
af(ltt, FT)
local lss = mk("TextLabel", {Size=UDim2.new(1,0,0,16), Position=UDim2.new(0,0,0.5,92), BackgroundTransparency=1, Text="loading "..VERSION.."...", TextColor3=T.dim, TextSize=11, Parent=lbg})
af(lss, FR)
local lb2 = mk("Frame", {Size=UDim2.fromOffset(220,3), Position=UDim2.new(0.5,-110,0.5,128), BackgroundColor3=Color3.fromRGB(30,30,34), BorderSizePixel=0, Parent=lbg})
cn(lb2, 2)
local lf2 = mk("Frame", {Size=UDim2.new(0,0,1,0), BackgroundColor3=T.wh, BorderSizePixel=0, Parent=lb2})
cn(lf2, 2)
TweenService:Create(lf2, TweenInfo.new(1.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Size=UDim2.new(1,0,1,0)}):Play()

_G.__nhNT = {
    enabled=false, text="Null Hub On Top",
    tcC=Color3.fromRGB(255,255,255), ocC=Color3.fromRGB(0,0,0), bcC=Color3.fromRGB(0,0,0),
    size=20, oy=0.5, rot=0, outline=true, bg=false, bgT=0.5, rad=8,
    font="GothamBold", rainbow=false, shine=false, showLocal=true, showOthers=false
}
_G.__nhNTFonts = {"GothamBold","GothamBlack","GothamMedium","FredokaOne","Bangers","LuckiestGuy","Arcade","SciFi","Fantasy","Code","Cartoon","IndieFlower","PatrickHand","Creepster","Michroma","Roboto","RobotoMono"}

pcall(function()
    local def = {enabled=false, text="Null Hub On Top", tc="255,255,255", oc="0,0,0", bc="0,0,0", size=20, oy=0.5, rot=0, outline=true, bg=false, bgT=0.5, rad=8, font="GothamBold", rainbow=false, shine=false, showLocal=true, showOthers=false}
    local s = rc(NT_CFG, def)
    local NT = _G.__nhNT
    for k, v in pairs(s) do NT[k] = v end
    local function pc(str, a, b, c)
        return Color3.fromRGB(
            tonumber(str:match("(%d+)")) or a,
            tonumber(str:match(",%s*(%d+)")) or b,
            tonumber(str:match(",%s*%d+,%s*(%d+)")) or c
        )
    end
    NT.tcC = pc(NT.tc, 255, 255, 255)
    NT.ocC = pc(NT.oc, 0, 0, 0)
    NT.bcC = pc(NT.bc, 0, 0, 0)

    local g = nGui("NullNT", 999990)
    g.IgnoreGuiInset = true
    local tags = {}
    local function save()
        wc(NT_CFG, {
            enabled=NT.enabled, text=NT.text,
            tc=math.floor(NT.tcC.R*255)..","..math.floor(NT.tcC.G*255)..","..math.floor(NT.tcC.B*255),
            oc=math.floor(NT.ocC.R*255)..","..math.floor(NT.ocC.G*255)..","..math.floor(NT.ocC.B*255),
            bc=math.floor(NT.bcC.R*255)..","..math.floor(NT.bcC.G*255)..","..math.floor(NT.bcC.B*255),
            size=NT.size, oy=NT.oy, rot=NT.rot, outline=NT.outline, bg=NT.bg, bgT=NT.bgT,
            rad=NT.rad, font=NT.font, rainbow=NT.rainbow, shine=NT.shine,
            showLocal=NT.showLocal, showOthers=NT.showOthers
        })
    end
    NT.Save = save
    local function mkt()
        local c = mk("Frame", {Size=UDim2.fromOffset(200,40), AnchorPoint=Vector2.new(0.5,1), BackgroundTransparency=1, BorderSizePixel=0, Visible=false, ZIndex=1, Parent=g})
        local cor = cn(c, 8)
        local bg = mk("Frame", {Size=UDim2.fromScale(1,1), BackgroundColor3=NT.bcC, BackgroundTransparency=NT.bgT, BorderSizePixel=0, Visible=false, ZIndex=2, Parent=c})
        local bgc = cn(bg, 8)
        local bgs = sk(bg, Color3.new(1,1,1), 1, 0.6)
        local l = mk("TextLabel", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, Text=NT.text, TextColor3=Color3.new(1,1,1), TextSize=NT.size, Font=Enum.Font.GothamBold, TextStrokeTransparency=1, ZIndex=5, Parent=c})
        af(l, FH) l.Font = Enum.Font[NT.font] or Enum.Font.GothamBold
        local gr = mk("UIGradient", {Color=ColorSequence.new(NT.tcC, NT.tcC), Parent=l})
        return {c=c, bg=bg, bgs=bgs, l=l, g=gr, cor=cor, bgc=bgc}
    end
    local function style(t)
        t.l.Text = NT.text t.l.TextSize = NT.size t.l.Font = Enum.Font[NT.font] or Enum.Font.GothamBold
        t.l.Rotation = NT.rot t.l.TextStrokeTransparency = NT.outline and 0 or 1
        t.l.TextStrokeColor3 = NT.ocC t.l.TextColor3 = Color3.new(1,1,1)
        t.bg.Visible = NT.bg t.bg.BackgroundColor3 = NT.bcC t.bg.BackgroundTransparency = NT.bgT
        t.bgs.Transparency = NT.bg and 0 or 1
        if not NT.rainbow and not NT.shine then
            t.g.Color = ColorSequence.new(NT.tcC, NT.tcC)
            t.g.Offset = Vector2.new(0,0)
        end
        local w = math.max(120, #NT.text * NT.size * 0.68)
        t.c.Size = UDim2.fromOffset(w, NT.size + 16)
        t.cor.CornerRadius = UDim.new(0, NT.rad)
        t.bgc.CornerRadius = UDim.new(0, NT.rad)
    end
    NT.Refresh = function() for _, t in pairs(tags) do style(t) end save() end
    NT.Clear = function() for _, t in pairs(tags) do pcall(function() t.c:Destroy() end) end tags = {} end
    local cam = workspace.CurrentCamera
    local hue, shine = 0, 0
    RunService.RenderStepped:Connect(function(dt)
        if not NT.enabled then
            for _, t in pairs(tags) do t.c.Visible = false end
            return
        end
        hue = (hue + dt * 0.4) % 1
        shine = (shine + dt * 1.1) % 2
        for _, p in ipairs(Players:GetPlayers()) do
            local show = (p == LP and NT.showLocal) or (p ~= LP and NT.showOthers)
            local h = p.Character and p.Character:FindFirstChild("Head")
            if not show or not h then
                if tags[p] then tags[p].c.Visible = false end
            else
                local t = tags[p]
                if not t then t = mkt() tags[p] = t style(t) end
                local sp, on = cam:WorldToViewportPoint(h.Position + Vector3.new(0, NT.oy, 0))
                if on and sp.Z > 0 then
                    t.c.Position = UDim2.fromOffset(sp.X, sp.Y)
                    t.c.Visible = true
                    if NT.rainbow then
                        t.g.Color = ColorSequence.new(Color3.new(1,1,1), Color3.new(1,1,1))
                        t.l.TextColor3 = Color3.fromHSV(hue, 1, 1)
                    elseif NT.shine then
                        t.l.TextColor3 = Color3.new(1,1,1)
                        t.g.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, NT.tcC),
                            ColorSequenceKeypoint.new(0.38, NT.tcC),
                            ColorSequenceKeypoint.new(0.5, Color3.new(1,1,1)),
                            ColorSequenceKeypoint.new(0.62, NT.tcC),
                            ColorSequenceKeypoint.new(1, NT.tcC)
                        })
                        t.g.Offset = Vector2.new(shine - 1, 0)
                    end
                else
                    t.c.Visible = false
                end
            end
        end
    end)
    Players.PlayerRemoving:Connect(function(p)
        if tags[p] then pcall(function() tags[p].c:Destroy() end) tags[p] = nil end
    end)
end)

pcall(function()
    local cfg = rc(PF_CFG, {boost=false})
    local stash = {}
    local function sp(o, pr, v)
        if not stash[o] then stash[o] = {} end
        if stash[o][pr] == nil then
            local ok, old = pcall(function() return o[pr] end)
            if ok then stash[o][pr] = old end
        end
        pcall(function() o[pr] = v end)
    end
    local function restore()
        for o, ps in pairs(stash) do
            for pr, v in pairs(ps) do pcall(function() o[pr] = v end) end
        end
        stash = {}
    end
    local function strip(d)
        if d:IsA("ParticleEmitter") or d:IsA("Trail") or d:IsA("Beam") or d:IsA("PointLight") or d:IsA("SpotLight") or d:IsA("SurfaceLight") or d:IsA("Fire") or d:IsA("Smoke") or d:IsA("Sparkles") then
            sp(d, "Enabled", false)
        elseif d:IsA("Explosion") then sp(d, "Visible", false)
        elseif d:IsA("SpecialMesh") then sp(d, "TextureId", "")
        elseif d:IsA("Decal") or d:IsA("Texture") then
            if not (d.Name == "face" and d.Parent and d.Parent.Name == "Head") then sp(d, "Transparency", 1) end
        elseif d:IsA("MeshPart") then
            sp(d, "TextureID", "") sp(d, "CastShadow", false) sp(d, "Reflectance", 0)
            sp(d, "Material", Enum.Material.SmoothPlastic) sp(d, "RenderFidelity", Enum.RenderFidelity.Performance)
        elseif d:IsA("BasePart") then
            sp(d, "CastShadow", false) sp(d, "Reflectance", 0) sp(d, "Material", Enum.Material.SmoothPlastic)
        elseif d:IsA("PostEffect") then sp(d, "Enabled", false)
        elseif d:IsA("Clouds") then sp(d, "Cover", 0) sp(d, "Density", 0)
        elseif d:IsA("Atmosphere") then sp(d, "Density", 0) sp(d, "Haze", 0) sp(d, "Glare", 0)
        end
    end
    local conns = {}
    _G.__nhSetBoost = function(v)
        cfg.boost = v == true
        if cfg.boost then
            for _, c in ipairs(conns) do pcall(function() c:Disconnect() end) end
            conns = {}
            local r = settings().Rendering
            local ter = workspace.Terrain
            sp(r, "QualityLevel", Enum.QualityLevel.Level01)
            sp(r, "MeshPartDetailLevel", Enum.MeshPartDetailLevel.Level01)
            sp(r, "EditQualityLevel", Enum.QualityLevel.Level01)
            local ok, ugs = pcall(function() return UserSettings():GetService("UserGameSettings") end)
            if ok and ugs then sp(ugs, "SavedQualityLevel", Enum.SavedQualitySetting.QualityLevel1) end
            sp(Lighting, "GlobalShadows", false) sp(Lighting, "ShadowSoftness", 0)
            sp(Lighting, "FogEnd", 9e9)
            sp(Lighting, "EnvironmentDiffuseScale", 0) sp(Lighting, "EnvironmentSpecularScale", 0)
            sp(ter, "Decoration", false) sp(ter, "WaterWaveSize", 0) sp(ter, "WaterWaveSpeed", 0)
            sp(ter, "WaterReflectance", 0) sp(ter, "WaterTransparency", 1)
            conns[1] = workspace.DescendantAdded:Connect(function(d) if cfg.boost then strip(d) end end)
            conns[2] = Lighting.DescendantAdded:Connect(function(d) if cfg.boost then strip(d) end end)
            for _, d in ipairs(workspace:GetDescendants()) do strip(d) end
            for _, d in ipairs(Lighting:GetDescendants()) do strip(d) end
        else
            restore()
            for _, c in ipairs(conns) do pcall(function() c:Disconnect() end) end
            conns = {}
        end
        wc(PF_CFG, cfg)
    end
    _G.__nhPerfCfg = cfg
end)

print("[NH 5] main gui")
local gui = nGui("NullHub", 999999)
gui.IgnoreGuiInset = true

local ISM = UIS.TouchEnabled and not UIS.KeyboardEnabled
local W, H = ISM and 420 or 860, ISM and 280 or 480
local MINW, MINH = ISM and 300 or 600, ISM and 200 or 280
local MAXW, MAXH = 1600, 1000
local OPDX, OPDY = 0.02, 0.5
local opc = rc(OP_CFG, {x=OPDX, y=OPDY, xo=0, yo=0})
local rtc = rc(RT_CFG, {x=RT_DEFAULT_X, y=RT_DEFAULT_Y, xo=0, yo=0, enabled=true})

local opW, opH = 148, 44
local op = mk("TextButton", {Size=UDim2.fromOffset(opW,opH), Position=UDim2.new(opc.x or OPDX, opc.xo or 0, opc.y or OPDY, opc.yo or 0), BackgroundColor3=Color3.fromRGB(8,8,10), BorderSizePixel=0, Text="", AutoButtonColor=false, Selectable=false, Visible=false, ZIndex=5, Parent=gui})
cn(op, 22)
mk("UIGradient", {Color=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(58,58,66)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(14,14,18)), ColorSequenceKeypoint.new(1, Color3.fromRGB(58,58,66))}), Rotation=135, Parent=op})
local opS = sk(op, T.wh, 1.5, 0.35)
local opG = mk("Frame", {Size=UDim2.fromScale(1,1), BackgroundColor3=T.wh, BackgroundTransparency=1, BorderSizePixel=0, ZIndex=4, Parent=op})
cn(opG, 22)
local opGS = mk("UIStroke", {Thickness=3, Color=T.wh, Transparency=0.94, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, Parent=opG})
local opR = mk("Frame", {Size=UDim2.fromOffset(32,32), Position=UDim2.fromOffset(6,6), BackgroundColor3=Color3.fromRGB(24,24,28), BorderSizePixel=0, ClipsDescendants=true, ZIndex=7, Parent=op})
cn(opR, UDim.new(1,0)) sk(opR, T.wh, 1.2, 0.25) ci(opR, LOGO, 8)
local opN = mk("TextLabel", {Size=UDim2.new(1,-46,0,14), Position=UDim2.fromOffset(42,7), BackgroundTransparency=1, Text="NULL HUB", TextColor3=T.wh, TextSize=12, ZIndex=7, Parent=op})
af(opN, FT) opN.TextXAlignment = Enum.TextXAlignment.Left
local opSub = mk("TextLabel", {Size=UDim2.new(1,-46,0,10), Position=UDim2.fromOffset(42,23), BackgroundTransparency=1, Text=VERSION.." tap", TextColor3=T.dim, TextSize=8, ZIndex=7, Parent=op})
af(opSub, FR) opSub.TextXAlignment = Enum.TextXAlignment.Left
local opP = mk("Frame", {Size=UDim2.fromOffset(7,7), Position=UDim2.new(1,-14,0,10), BackgroundColor3=T.grn, BorderSizePixel=0, ZIndex=7, Parent=op})
cn(opP, UDim.new(1,0))
local opSc = mk("UIScale", {Scale=1, Parent=op})
op.MouseEnter:Connect(function()
    TweenService:Create(opSc, TweenInfo.new(0.22, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Scale=1.06}):Play()
    TweenService:Create(opS, TweenInfo.new(0.2), {Transparency=0}):Play()
    TweenService:Create(opGS, TweenInfo.new(0.3), {Transparency=0.7}):Play()
end)
op.MouseLeave:Connect(function()
    TweenService:Create(opSc, TweenInfo.new(0.22, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Scale=1}):Play()
    TweenService:Create(opS, TweenInfo.new(0.2), {Transparency=0.35}):Play()
    TweenService:Create(opGS, TweenInfo.new(0.3), {Transparency=0.94}):Play()
end)

local rt = mk("TextButton", {Size=UDim2.fromOffset(56,56), Position=UDim2.new(rtc.x or RT_DEFAULT_X, rtc.xo or 0, rtc.y or RT_DEFAULT_Y, rtc.yo or 0), BackgroundColor3=Color3.fromRGB(20,20,26), BorderSizePixel=0, Text="", AutoButtonColor=false, Selectable=false, Visible=false, ZIndex=6, Parent=gui})
cn(rt, UDim.new(1,0))
mk("UIGradient", {Color=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(70,70,90)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(24,24,34)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70,70,90))}), Rotation=135, Parent=rt})
local rtS = sk(rt, T.wh, 1.8, 0.35)
local rtGF = mk("Frame", {Size=UDim2.fromScale(1,1), BackgroundColor3=T.wh, BackgroundTransparency=1, BorderSizePixel=0, ZIndex=5, Parent=rt})
cn(rtGF, UDim.new(1,0))
local rtGS = mk("UIStroke", {Thickness=5, Color=T.wh, Transparency=0.85, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, Parent=rtGF})
local rtI = mk("TextLabel", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, Text=U(0x1F3E0), TextSize=26, ZIndex=7, Parent=rt})
af(rtI, FH)
local rtSc = mk("UIScale", {Scale=1, Parent=rt})
rt.MouseEnter:Connect(function()
    TweenService:Create(rtSc, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Scale=1.1}):Play()
    TweenService:Create(rtS, TweenInfo.new(0.2), {Transparency=0}):Play()
    TweenService:Create(rtGS, TweenInfo.new(0.25), {Transparency=0.4, Thickness=7}):Play()
end)
rt.MouseLeave:Connect(function()
    TweenService:Create(rtSc, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Scale=1}):Play()
    TweenService:Create(rtS, TweenInfo.new(0.2), {Transparency=0.35}):Play()
    TweenService:Create(rtGS, TweenInfo.new(0.25), {Transparency=0.85, Thickness=5}):Play()
end)
local function syncRT() rt.Visible = (rtc.enabled == true) and op.Visible end
local function resetRTPos()
    rtc.x, rtc.y, rtc.xo, rtc.yo = RT_DEFAULT_X, RT_DEFAULT_Y, 0, 0
    local tgt = UDim2.new(RT_DEFAULT_X, 0, RT_DEFAULT_Y, 0)
    TweenService:Create(rt, TweenInfo.new(0.35, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Position=tgt}):Play()
    wc(RT_CFG, rtc)
end

do
    local di, ds, sp, mv, pt
    rt.InputBegan:Connect(function(i)
        local t = i.UserInputType
        if t ~= Enum.UserInputType.MouseButton1 and t ~= Enum.UserInputType.Touch then return end
        di = i ds = i.Position sp = rt.Position mv = false pt = tick()
    end)
    UIS.InputChanged:Connect(function(i)
        if not di or i ~= di then return end
        local d = i.Position - ds
        if math.abs(d.X) + math.abs(d.Y) > 8 then mv = true end
        rt.Position = UDim2.new(sp.X.Scale, sp.X.Offset + d.X, sp.Y.Scale, sp.Y.Offset + d.Y)
    end)
    UIS.InputEnded:Connect(function(i)
        if not di or i ~= di then return end
        local tap = (not mv) and tick() - pt < 0.6
        di = nil
        rtc.x = rt.Position.X.Scale rtc.xo = rt.Position.X.Offset
        rtc.y = rt.Position.Y.Scale rtc.yo = rt.Position.Y.Offset
        wc(RT_CFG, rtc)
        if tap then
            opc.x = OPDX opc.xo = 0 opc.y = OPDY opc.yo = 0
            wc(OP_CFG, opc)
            local tg = UDim2.new(OPDX, 0, OPDY, 0)
            op.Visible = true op.Position = tg
            TweenService:Create(op, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Position=tg}):Play()
            TweenService:Create(rtSc, TweenInfo.new(0.1), {Scale=0.85}):Play()
            task.delay(0.12, function()
                TweenService:Create(rtSc, TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Scale=1}):Play()
            end)
        end
    end)
end

local root = mk("Frame", {Size=UDim2.fromOffset(W,H), Position=UDim2.new(0.5,-W/2,0.5,-H/2), BackgroundColor3=T.bg, BorderSizePixel=0, Active=true, Visible=false, ClipsDescendants=true, ZIndex=10, Parent=gui})
cn(root, 12)
sk(root, T.bdHi, 1, 0.3)
local ui = mk("Frame", {Size=UDim2.fromOffset(W,H), BackgroundTransparency=1, ZIndex=11, Parent=root})
local TBH, SPAD, SGAP, SWC, SWE = 38, 6, 8, 46, 148
local SW = 46
local animLock = false

do
    local di, ds, sp, mv, pt
    op.InputBegan:Connect(function(i)
        local t = i.UserInputType
        if t ~= Enum.UserInputType.MouseButton1 and t ~= Enum.UserInputType.Touch then return end
        if animLock then return end
        di = i ds = i.Position sp = op.Position mv = false pt = tick()
    end)
    UIS.InputChanged:Connect(function(i)
        if not di or i ~= di then return end
        local d = i.Position - ds
        if math.abs(d.X) + math.abs(d.Y) > 8 then mv = true end
        op.Position = UDim2.new(sp.X.Scale, sp.X.Offset + d.X, sp.Y.Scale, sp.Y.Offset + d.Y)
    end)
    UIS.InputEnded:Connect(function(i)
        if not di or i ~= di then return end
        local tap = (not mv) and tick() - pt < 0.6
        di = nil
        opc.x = op.Position.X.Scale opc.xo = op.Position.X.Offset
        opc.y = op.Position.Y.Scale opc.yo = op.Position.Y.Offset
        wc(OP_CFG, opc)
        if tap and not animLock and _G.__nhShow then pcall(_G.__nhShow) end
    end)
end

local grip = mk("TextButton", {Size=UDim2.fromOffset(20,20), Position=UDim2.new(1,-22,1,-22), BackgroundTransparency=1, Text=U(0x25E2), TextColor3=T.dim, TextSize=11, AutoButtonColor=false, Selectable=false, Parent=root, ZIndex=30})
af(grip, FH)
do
    local rs, rp, sw, sh, di
    grip.InputBegan:Connect(function(i)
        local t = i.UserInputType
        if t ~= Enum.UserInputType.MouseButton1 and t ~= Enum.UserInputType.Touch then return end
        rs, sw, sh, rp, di = true, root.AbsoluteSize.X, root.AbsoluteSize.Y, i.Position, i
    end)
    UIS.InputChanged:Connect(function(i)
        if not rs or i ~= di then return end
        local d = i.Position - rp
        W = math.clamp(sw + d.X, MINW, MAXW)
        H = math.clamp(sh + d.Y, MINH, MAXH)
        root.Size = UDim2.fromOffset(W, H)
        root.Position = UDim2.new(0.5, -W/2, 0.5, -H/2)
        ui.Size = UDim2.fromOffset(W, H)
    end)
    UIS.InputEnded:Connect(function(i)
        if rs and i == di then rs = false di = nil end
    end)
end

local tbar = mk("Frame", {Size=UDim2.new(1,0,0,TBH), BackgroundColor3=T.sur, BorderSizePixel=0, Active=true, ZIndex=12, Parent=ui})
cn(tbar, 12)
local tbl = mk("Frame", {Size=UDim2.fromOffset(24,24), Position=UDim2.fromOffset(8,7), BackgroundColor3=T.card, BorderSizePixel=0, ClipsDescendants=true, ZIndex=13, Parent=tbar})
cn(tbl, UDim.new(1,0)) sk(tbl, T.bd, 1, 0) ci(tbl, LOGO, 14)
local tbt = mk("TextLabel", {Size=UDim2.new(1,-140,0,14), Position=UDim2.fromOffset(40,6), BackgroundTransparency=1, Text="NULL HUB", TextColor3=T.wh, TextSize=12, ZIndex=13, Parent=tbar})
af(tbt, FT) tbt.TextXAlignment = Enum.TextXAlignment.Left
local tbs = mk("TextLabel", {Size=UDim2.new(1,-140,0,10), Position=UDim2.fromOffset(40,21), BackgroundTransparency=1, Text=VERSION.." "..(currentGame and currentGame.name or "unsupported"), TextColor3=T.dim, TextSize=8, ZIndex=13, Parent=tbar})
af(tbs, FC) tbs.TextXAlignment = Enum.TextXAlignment.Left
local mb = mk("TextButton", {Size=UDim2.fromOffset(24,24), Position=UDim2.new(1,-62,0.5,-12), BackgroundTransparency=1, Text="-", TextColor3=T.dim, TextSize=18, AutoButtonColor=false, Selectable=false, ZIndex=14, Parent=tbar})
af(mb, FH)
mb.MouseEnter:Connect(function() mb.TextColor3 = T.wh end)
mb.MouseLeave:Connect(function() mb.TextColor3 = T.dim end)
local db = mk("TextButton", {Size=UDim2.fromOffset(24,24), Position=UDim2.new(1,-32,0.5,-12), BackgroundTransparency=1, Text="X", TextColor3=T.dim, TextSize=13, AutoButtonColor=false, Selectable=false, ZIndex=14, Parent=tbar})
af(db, FH)
db.MouseEnter:Connect(function() db.TextColor3 = T.wh end)
db.MouseLeave:Connect(function() db.TextColor3 = T.dim end)
drag(root, tbar)

local sidebar = mk("ScrollingFrame", {Size=UDim2.new(0,SW,1,-TBH-12), Position=UDim2.fromOffset(SPAD,TBH+6), BackgroundColor3=T.sur, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=T.bdHi, ScrollingEnabled=true, AutomaticCanvasSize=Enum.AutomaticSize.Y, CanvasSize=UDim2.new(0,0,0,0), ZIndex=12, Parent=ui})
cn(sidebar, 10)
mk("UIListLayout", {Padding=UDim.new(0,2), SortOrder=Enum.SortOrder.LayoutOrder, HorizontalAlignment=Enum.HorizontalAlignment.Center, VerticalAlignment=Enum.VerticalAlignment.Top}, sidebar)
mk("UIPadding", {PaddingTop=UDim.new(0,6), PaddingBottom=UDim.new(0,6), PaddingLeft=UDim.new(0,5), PaddingRight=UDim.new(0,5)}, sidebar)
local pArea = mk("Frame", {Size=UDim2.new(1,-SW-SGAP-SPAD*2,1,-TBH-12), Position=UDim2.fromOffset(SW+SGAP,TBH+6), BackgroundTransparency=1, ZIndex=12, Parent=ui})
local pages, tabBtns = {}, {}
local TAB = 32
local expBtn = mk("TextButton", {Size=UDim2.fromOffset(TAB,TAB), BackgroundTransparency=1, Text=U(0x2190), TextColor3=T.dim, TextSize=18, AutoButtonColor=false, Selectable=false, LayoutOrder=0, ZIndex=13, Parent=sidebar})
af(expBtn, FH)

local welcomeFrame = mk("Frame", {Size=UDim2.fromOffset(SWC-2,SWC-2), BackgroundColor3=T.card, BorderSizePixel=0, LayoutOrder=1, ZIndex=13, Parent=sidebar})
cn(welcomeFrame, 8)
local welcomeAvatar = mk("Frame", {Size=UDim2.fromOffset(28,28), Position=UDim2.fromOffset(6,6), BackgroundColor3=T.cardHi, BorderSizePixel=0, ClipsDescendants=true, ZIndex=14, Parent=welcomeFrame})
cn(welcomeAvatar, UDim.new(1,0)) sk(welcomeAvatar, T.bd, 1, 0)
mk("ImageLabel", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, Image="rbxthumb://type=AvatarHeadShot&id="..LP.UserId.."&w=48&h=48", ScaleType=Enum.ScaleType.Crop, ZIndex=15, Parent=welcomeAvatar})
local welcomeInfo = mk("Frame", {Size=UDim2.new(1,-40,0,42), Position=UDim2.fromOffset(38,4), BackgroundTransparency=1, Visible=false, ZIndex=14, Parent=welcomeFrame})
local welcomeName = mk("TextLabel", {Size=UDim2.new(1,0,0,14), BackgroundTransparency=1, Text="Welcome, "..(LP.DisplayName or LP.Name).."!", TextColor3=T.wh, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=15, Parent=welcomeInfo})
af(welcomeName, FH)
local welcomeUser = mk("TextLabel", {Size=UDim2.new(1,0,0,12), BackgroundTransparency=1, Text="@"..LP.Name, TextColor3=T.dim, TextSize=9, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=15, Parent=welcomeInfo})
af(welcomeUser, FR)
local welcomeClock = mk("TextLabel", {Size=UDim2.new(1,0,0,12), BackgroundTransparency=1, Text="--:--", TextColor3=T.dim, TextSize=8, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=15, Parent=welcomeInfo})
af(welcomeClock, FC)
local welcomeExpanded = false
welcomeFrame.InputBegan:Connect(function(i)
    local t = i.UserInputType
    if t == Enum.UserInputType.MouseButton1 or t == Enum.UserInputType.Touch then
        welcomeExpanded = not welcomeExpanded
        local tw = TweenInfo.new(0.28, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out)
        if welcomeExpanded then
            TweenService:Create(welcomeFrame, tw, {Size=UDim2.fromOffset(SWE-10,56)}):Play()
            welcomeInfo.Visible = true
        else
            TweenService:Create(welcomeFrame, tw, {Size=UDim2.fromOffset(SWC-2,SWC-2)}):Play()
            welcomeInfo.Visible = false
        end
    end
end)
task.spawn(function()
    while _G.__nh do
        local t = os.date("*t")
        local h = t.hour
        local ampm = h >= 12 and "PM" or "AM"
        local h12 = h % 12
        if h12 == 0 then h12 = 12 end
        welcomeClock.Text = string.format("%02d:%02d %s %s", h12, t.min, ampm, os.date("%A"))
        task.wait(10)
    end
end)

local sideExp = false
local function setSide(exp)
    sideExp = exp
    local tw = exp and SWE or SWC
    SW = tw
    local ti = TweenInfo.new(0.26, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out)
    TweenService:Create(sidebar, ti, {Size=UDim2.new(0,tw,1,-TBH-12)}):Play()
    TweenService:Create(pArea, ti, {Size=UDim2.new(1,-tw-SGAP-SPAD*2,1,-TBH-12), Position=UDim2.fromOffset(tw+SGAP,TBH+6)}):Play()
    expBtn.Text = exp and U(0x2192) or U(0x2190)
    for _, t in pairs(tabBtns) do
        TweenService:Create(t.btn, ti, {Size=UDim2.fromOffset(exp and (tw-10) or TAB, TAB)}):Play()
        if exp then
            t.icon.Position = UDim2.fromOffset(3,0)
            t.icon.TextXAlignment = Enum.TextXAlignment.Left
            t.lbl.Visible = true
            TweenService:Create(t.lbl, ti, {TextTransparency=0}):Play()
        else
            t.icon.Position = UDim2.fromOffset(0,0)
            t.icon.TextXAlignment = Enum.TextXAlignment.Center
            TweenService:Create(t.lbl, ti, {TextTransparency=1}):Play()
            task.delay(0.28, function() if not sideExp then t.lbl.Visible = false end end)
        end
    end
    if welcomeFrame then
        if exp then
            TweenService:Create(welcomeFrame, ti, {Size=UDim2.fromOffset(SWE-10,56)}):Play()
            if welcomeExpanded then welcomeInfo.Visible = true end
        else
            TweenService:Create(welcomeFrame, ti, {Size=UDim2.fromOffset(SWC-2,SWC-2)}):Play()
            welcomeInfo.Visible = false
        end
    end
end
expBtn.MouseButton1Click:Connect(function() setSide(not sideExp) end)

local favs = {}
local warnC = rc(WN_CFG, {lang="en", keyless=false, key=false})
local starRefs = {}
local ALL = {}
local filtRefs = {}
local warnOverlay = nil
local switchTab

if isfile and isfile(FA_CFG) then
    local ok, c = pcall(readfile, FA_CFG)
    if ok and type(c) == "string" then
        for L2 in c:gmatch("[^\n]+") do
            if #L2 > 0 then favs[L2] = true end
        end
    end
end
local function saveFavs()
    if not writefile then return end
    local L2 = {}
    for k in pairs(favs) do table.insert(L2, k) end
    pcall(writefile, FA_CFG, table.concat(L2, "\n"))
end
local function saveWarn() wc(WN_CFG, warnC) end
local function regStar(n, b)
    if not starRefs[n] then starRefs[n] = {} end
    table.insert(starRefs[n], b)
end
local function paintStar(b, on)
    b.Text = U(0x2B50)
    if on then b.TextColor3 = T.gold else b.TextColor3 = T.faint end
end
local function updStars(n)
    local list = starRefs[n]
    if not list then return end
    local i = 1
    while i <= #list do
        local b = list[i]
        if not b or not b.Parent then table.remove(list, i)
        else paintStar(b, favs[n] == true) i = i + 1 end
    end
end
local function toggleFav(n)
    if favs[n] then favs[n] = nil else favs[n] = true end
    saveFavs()
    updStars(n)
    if _G.__nhFav then pcall(_G.__nhFav) end
end
local function applyFilter(tn, q)
    local refs = filtRefs[tn]
    if not refs then return end
    q = string.lower(q or "")
    for _, e in ipairs(refs) do
        if e.frame and e.frame.Parent then
            e.frame.Visible = (q == "" or string.find(e.name, q, 1, true))
        end
    end
end
_G.__nhFilter = applyFilter

switchTab = function(name)
    for n, p in pairs(pages) do
        p.Visible = false
        local t = tabBtns[n]
        if t then t.icon.TextColor3 = T.dim t.icon.TextSize = 16 t.lbl.TextColor3 = T.dim end
    end
    if pages[name] then
        pages[name].Visible = true
        local t = tabBtns[name]
        if t then t.icon.TextColor3 = T.wh t.icon.TextSize = 18 t.lbl.TextColor3 = T.wh end
    end
    if warnOverlay then
        if (name == "keyless" or name == "key") and not warnC[name] then
            if _G.__nhWarn then pcall(_G.__nhWarn, name) end
        else
            warnOverlay.Visible = false
        end
    end
    if name == "hop" then
        if _G.__nhPopServers then pcall(_G.__nhPopServers) end
        if _G.__nhPopFriends then pcall(_G.__nhPopFriends) end
    end
    if name == "chat" then
        if _G.__nhChat and _G.__nhChat.Focus then pcall(_G.__nhChat.Focus) end
    end
end

local function createTab(name, emoji, label, order)
    local btn = mk("TextButton", {Size=UDim2.fromOffset(TAB,TAB), BackgroundTransparency=1, BorderSizePixel=0, Text="", AutoButtonColor=false, Selectable=false, LayoutOrder=order, ZIndex=13, Parent=sidebar})
    local icon = mk("TextLabel", {Size=UDim2.fromOffset(TAB,TAB), BackgroundTransparency=1, Text=emoji, TextColor3=T.dim, TextSize=16, Font=Enum.Font.Gotham, TextXAlignment=Enum.TextXAlignment.Center, ZIndex=14, Parent=btn})
    local lbl = mk("TextLabel", {Size=UDim2.new(1,-TAB-4,1,0), Position=UDim2.fromOffset(TAB+2,0), BackgroundTransparency=1, Text=L(label), TextColor3=T.dim, TextSize=10, Visible=false, ZIndex=14, Parent=btn})
    af(lbl, FB) lbl.TextXAlignment = Enum.TextXAlignment.Left
    reg(label, lbl)
    btn.MouseButton1Click:Connect(function() switchTab(name) end)
    local pg = mk("ScrollingFrame", {Size=UDim2.new(1,0,1,0), BackgroundTransparency=1, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=T.bdHi, Visible=false, AutomaticCanvasSize=Enum.AutomaticSize.Y, CanvasSize=UDim2.new(0,0,0,0), ZIndex=13, Parent=pArea})
    mk("UIListLayout", {Padding=UDim.new(0,5), SortOrder=Enum.SortOrder.LayoutOrder}, pg)
    mk("UIPadding", {PaddingTop=UDim.new(0,2), PaddingBottom=UDim.new(0,8), PaddingRight=UDim.new(0,8)}, pg)
    pages[name] = pg
    tabBtns[name] = {btn=btn, icon=icon, label=label, lbl=lbl}
    return pg
end

local RH, BFS = ISM and 30 or 34, ISM and 10 or 11
local SFS = ISM and 10 or 11

local function header(p, text, order)
    local h = mk("Frame", {Size=UDim2.new(1,0,0,20), BackgroundTransparency=1, LayoutOrder=order, ZIndex=14}, p)
    mk("Frame", {Size=UDim2.fromOffset(3,10), Position=UDim2.new(0,0,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=T.wh, BorderSizePixel=0, ZIndex=15, Parent=h})
    local l = mk("TextLabel", {Size=UDim2.new(1,-10,1,0), Position=UDim2.fromOffset(10,0), BackgroundTransparency=1, Text=L(text), TextColor3=T.dim, TextSize=10, ZIndex=15, Parent=h})
    af(l, FH) l.TextXAlignment = Enum.TextXAlignment.Left
    reg(text, l)
end
local function searchBar(p, tn, order)
    local row = mk("Frame", {Size=UDim2.new(1,0,0,32), BackgroundColor3=T.card, BorderSizePixel=0, LayoutOrder=order, ZIndex=14, Selectable=false, Active=false}, p)
    cn(row, 7)
    local ic = mk("TextLabel", {Size=UDim2.fromOffset(22,32), Position=UDim2.fromOffset(8,0), BackgroundTransparency=1, Text=U(0x1F50D), TextColor3=T.dim, TextSize=12, ZIndex=15, Parent=row})
    af(ic, FH)
    local box = mk("TextBox", {Size=UDim2.new(1,-40,1,0), Position=UDim2.fromOffset(30,0), BackgroundTransparency=1, Text="", PlaceholderText=L("Search scripts"), PlaceholderColor3=T.faint, TextColor3=T.tx, TextSize=SFS, ClearTextOnFocus=false, ZIndex=15, Parent=row})
    af(box, FB) box.TextXAlignment = Enum.TextXAlignment.Left
    reg("Search scripts", box, "PlaceholderText")
    box:GetPropertyChangedSignal("Text"):Connect(function() applyFilter(tn, box.Text) end)
    return box
end
local function card(p, order, h)
    local f = mk("Frame", {Size=UDim2.new(1,0,0,h or RH), BackgroundColor3=T.card, BorderSizePixel=0, LayoutOrder=order, ZIndex=14, Selectable=false, Active=false}, p)
    cn(f, 7)
    return f
end
local function toggle(p, text, order, cb, init, dispKey)
    local row = card(p, order, RH)
    local l = mk("TextLabel", {Size=UDim2.new(1,-60,1,0), Position=UDim2.new(0,11,0,0), BackgroundTransparency=1, Text=L(dispKey or text), TextColor3=T.tx, TextSize=BFS, ZIndex=15, Parent=row})
    af(l, FR) l.TextXAlignment = Enum.TextXAlignment.Left
    reg(dispKey or text, l)
    local sw = mk("TextButton", {Size=UDim2.fromOffset(34,18), Position=UDim2.new(1,-44,0.5,-9), BackgroundColor3=T.bd, Text="", BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=15, Parent=row})
    cn(sw, 9)
    local kn = mk("Frame", {Size=UDim2.fromOffset(14,14), Position=UDim2.new(0,2,0.5,-7), BackgroundColor3=T.faint, BorderSizePixel=0, ZIndex=16, Parent=sw})
    cn(kn, UDim.new(1,0))
    local s = init or false
    local function vis(v)
        s = v
        if v then
            sw.BackgroundColor3 = T.wh
            kn:TweenPosition(UDim2.new(1,-16,0.5,-7), "Out", "Cubic", 0.16, true)
            kn.BackgroundColor3 = T.bg
        else
            sw.BackgroundColor3 = T.bd
            kn:TweenPosition(UDim2.new(0,2,0.5,-7), "Out", "Cubic", 0.16, true)
            kn.BackgroundColor3 = T.faint
        end
    end
    if s then vis(true) end
    local api = {Set=function(v) vis(v) end, Get=function() return s end}
    sw.MouseButton1Click:Connect(function() vis(not s) cb(s) end)
    return api
end
local function tinp(p, label, order, def, cb)
    local row = card(p, order, RH+4)
    local l = mk("TextLabel", {Size=UDim2.new(0.36,0,1,0), Position=UDim2.fromOffset(11,0), BackgroundTransparency=1, Text=L(label), TextColor3=T.tx, TextSize=BFS, ZIndex=15, Parent=row})
    af(l, FR) l.TextXAlignment = Enum.TextXAlignment.Left
    reg(label, l)
    local box = mk("TextBox", {Size=UDim2.new(0.6,0,0.7,0), Position=UDim2.new(0.38,0,0.15,0), BackgroundColor3=T.cardHi, Text=def, TextColor3=T.wh, TextSize=BFS, BorderSizePixel=0, ClearTextOnFocus=false, Selectable=false, ZIndex=15, Parent=row})
    af(box, FC) cn(box, 5)
    mk("UIPadding", {PaddingLeft=UDim.new(0,6)}, box)
    box.FocusLost:Connect(function() cb(box.Text) end)
    return {Set=function(v) box.Text = v end}
end
local function slider(p, label, order, def, mn, mx, cb)
    local row = card(p, order, 52)
    local l = mk("TextLabel", {Size=UDim2.new(0.6,0,0,11), Position=UDim2.new(0,11,0,6), BackgroundTransparency=1, Text=L(label), TextColor3=T.tx, TextSize=BFS, ZIndex=15, Parent=row})
    af(l, FR) l.TextXAlignment = Enum.TextXAlignment.Left
    reg(label, l)
    local ib = mk("TextBox", {Size=UDim2.new(0.3,0,0,20), Position=UDim2.new(0.66,0,0,4), BackgroundColor3=T.bg, Text=tostring(def), TextColor3=T.wh, TextSize=BFS, BorderSizePixel=0, ClearTextOnFocus=false, Selectable=false, ZIndex=15, Parent=row})
    af(ib, FC) cn(ib, 5)
    local bg = mk("Frame", {Size=UDim2.new(1,-26,0,7), Position=UDim2.new(0,11,0,34), BackgroundColor3=T.bg, BorderSizePixel=0, ZIndex=15, Parent=row})
    cn(bg, 4)
    local fill = mk("Frame", {Size=UDim2.new(0,0,1,0), BackgroundColor3=T.wh, BorderSizePixel=0, ZIndex=16, Parent=bg})
    cn(fill, 4)
    local kn = mk("Frame", {Size=UDim2.fromOffset(12,12), AnchorPoint=Vector2.new(0.5,0.5), Position=UDim2.new(0,0,0.5,0), BackgroundColor3=T.wh, BorderSizePixel=0, ZIndex=17, Parent=bg})
    cn(kn, 6)
    local cur = def
    local function upd(v, fi)
        cur = math.clamp(tonumber(v) or cur, mn, mx)
        local a = (cur - mn) / (mx - mn)
        fill.Size = UDim2.new(a, 0, 1, 0)
        kn.Position = UDim2.new(a, 0, 0.5, 0)
        if not fi then ib.Text = tostring(math.floor(cur * 100) / 100) end
        cb(cur)
    end
    upd(def)
    local dr, di
    bg.InputBegan:Connect(function(i)
        local t = i.UserInputType
        if t ~= Enum.UserInputType.MouseButton1 and t ~= Enum.UserInputType.Touch then return end
        dr = true di = i
        local r = math.clamp((i.Position.X - bg.AbsolutePosition.X) / bg.AbsoluteSize.X, 0, 1)
        upd(mn + r * (mx - mn))
    end)
    UIS.InputChanged:Connect(function(i)
        if not dr or not di or i ~= di then return end
        local r = math.clamp((i.Position.X - bg.AbsolutePosition.X) / bg.AbsoluteSize.X, 0, 1)
        upd(mn + r * (mx - mn))
    end)
    UIS.InputEnded:Connect(function(i) if di and i == di then dr = false di = nil end end)
    ib.FocusLost:Connect(function()
        local n = tonumber(ib.Text)
        if n then upd(n, true) else ib.Text = tostring(math.floor(cur * 100) / 100) end
    end)
    return {Set=function(v) upd(v) end}
end
local CPRES = {
    Color3.fromRGB(255,255,255), Color3.fromRGB(240,200,100), Color3.fromRGB(230,90,90),
    Color3.fromRGB(120,220,140), Color3.fromRGB(88,160,255), Color3.fromRGB(190,120,255),
    Color3.fromRGB(255,140,200), Color3.fromRGB(120,240,240), Color3.fromRGB(200,200,200),
    Color3.fromRGB(100,100,100), Color3.fromRGB(40,40,40), Color3.fromRGB(0,0,0)
}
local function colorPicker(p, label, order, initial, cb)
    local row = card(p, order, 54)
    local safeColor = initial
    if type(safeColor) ~= "Color3" then safeColor = Color3.fromRGB(255,255,255) end
    local l = mk("TextLabel", {Size=UDim2.new(1,-40,0,14), Position=UDim2.fromOffset(11,6), BackgroundTransparency=1, Text=L(label), TextColor3=T.tx, TextSize=BFS, ZIndex=15, Parent=row})
    af(l, FR) l.TextXAlignment = Enum.TextXAlignment.Left
    reg(label, l)
    local sw = mk("Frame", {Size=UDim2.fromOffset(20,20), Position=UDim2.new(1,-31,0,4), BackgroundColor3=safeColor, BorderSizePixel=0, ZIndex=15, Parent=row})
    cn(sw, 5) sk(sw, T.bdHi, 1, 0)
    local grid = mk("Frame", {Size=UDim2.new(1,-20,0,26), Position=UDim2.fromOffset(10,24), BackgroundTransparency=1, ZIndex=15, Parent=row})
    mk("UIListLayout", {FillDirection=Enum.FillDirection.Horizontal, Padding=UDim.new(0,4), SortOrder=Enum.SortOrder.LayoutOrder}, grid)
    for i, c in ipairs(CPRES) do
        local b = mk("TextButton", {Size=UDim2.fromOffset(24,24), BackgroundColor3=c, Text="", BorderSizePixel=0, AutoButtonColor=false, Selectable=false, LayoutOrder=i, ZIndex=16, Parent=grid})
        cn(b, 5) sk(b, T.bd, 1, 0)
        b.MouseButton1Click:Connect(function() sw.BackgroundColor3 = c cb(c) end)
    end
    return row
end

local nGui2 = nGui("NullNotif", 999998)
local nCont = mk("Frame", {Size=UDim2.new(0,260,1,-20), Position=UDim2.new(1,-280,0,20), BackgroundTransparency=1}, nGui2)
local nLive = {}
local function notify(t, m, d)
    local lines = math.max(1, math.ceil(#m / 38))
    local ch = 30 + lines * 12
    local c = mk("Frame", {Size=UDim2.new(1,0,0,ch), BackgroundColor3=T.sur, BorderSizePixel=0, Position=UDim2.new(1,30,0,0), ClipsDescendants=true, Parent=nCont})
    cn(c, 8) sk(c, T.bdHi, 1, 0)
    mk("Frame", {Size=UDim2.new(0,3,1,-14), Position=UDim2.new(0,7,0,7), BackgroundColor3=T.wh, BorderSizePixel=0, Parent=c})
    local tt = mk("TextLabel", {Size=UDim2.new(1,-28,0,13), Position=UDim2.new(0,18,0,8), BackgroundTransparency=1, Text=tostring(t), TextColor3=T.wh, TextSize=11, TextXAlignment=Enum.TextXAlignment.Left, Parent=c})
    af(tt, FH)
    local bb = mk("TextLabel", {Size=UDim2.new(1,-28,0,lines*12), Position=UDim2.new(0,18,0,22), BackgroundTransparency=1, Text=tostring(m), TextColor3=T.dim, TextSize=9, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Top, TextWrapped=true, Parent=c})
    af(bb, FR)
    table.insert(nLive, {card=c, h=ch})
    local y = 0
    for _, it in ipairs(nLive) do
        if it.card.Parent then TweenService:Create(it.card, TweenInfo.new(0.25), {Position=UDim2.new(0,0,0,y)}):Play() end
        y = y + it.h + 5
    end
    task.delay(d or 4, function()
        local tw = TweenService:Create(c, TweenInfo.new(0.25), {Position=UDim2.new(1,30,0,c.Position.Y.Offset)})
        tw:Play()
        tw.Completed:Connect(function()
            c:Destroy()
            for i, it in ipairs(nLive) do
                if it.card == c then table.remove(nLive, i) break end
            end
            local y2 = 0
            for _, it in ipairs(nLive) do
                if it.card.Parent then TweenService:Create(it.card, TweenInfo.new(0.25), {Position=UDim2.new(0,0,0,y2)}):Play() end
                y2 = y2 + it.h + 5
            end
        end)
    end)
end

_G.__nhCO = false
local function confirmClose(onYes)
    if _G.__nhCO then return end
    _G.__nhCO = true
    local mG = nGui("NullConfirm", 2147483645)
    mG.IgnoreGuiInset = true
    local scrim = mk("Frame", {Size=UDim2.fromScale(1,1), BackgroundColor3=Color3.fromRGB(0,0,0), BackgroundTransparency=1, BorderSizePixel=0, ZIndex=1, Parent=mG})
    local cd = mk("Frame", {Size=UDim2.fromOffset(340,178), Position=UDim2.new(0.5,-170,0.5,-89), BackgroundColor3=T.sur, BorderSizePixel=0, ZIndex=3, Parent=mG})
    cn(cd, 12) sk(cd, T.bdHi, 1, 0.15)
    local sc = mk("UIScale", {Scale=0.82, Parent=cd})
    mk("Frame", {Size=UDim2.new(1,-40,0,2), Position=UDim2.fromOffset(20,46), BackgroundColor3=T.wh, BackgroundTransparency=0.55, BorderSizePixel=0, ZIndex=5, Parent=cd})
    local ti = mk("TextLabel", {Size=UDim2.new(1,-40,0,22), Position=UDim2.fromOffset(20,15), BackgroundTransparency=1, Text="CONFIRM CLOSE", TextColor3=T.wh, TextSize=16, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=5, Parent=cd})
    af(ti, FT)
    local bo = mk("TextLabel", {Size=UDim2.new(1,-40,0,46), Position=UDim2.fromOffset(20,58), BackgroundTransparency=1, Text=L("Close Null Hub?"), TextColor3=T.dim, TextSize=11, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Top, TextWrapped=true, ZIndex=5, Parent=cd})
    af(bo, FR)
    reg("Close Null Hub?", bo)
    local cb = mk("TextButton", {Size=UDim2.fromOffset(140,34), Position=UDim2.new(0,20,1,-50), BackgroundColor3=T.card, Text=L("cancel"), TextColor3=T.tx, TextSize=11, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=5, Parent=cd})
    af(cb, FB) cn(cb, 7)
    reg("cancel", cb)
    local cf = mk("TextButton", {Size=UDim2.fromOffset(140,34), Position=UDim2.new(1,-160,1,-50), BackgroundColor3=T.wh, Text=L("close"), TextColor3=T.bg, TextSize=11, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=5, Parent=cd})
    af(cf, FH) cn(cf, 7)
    reg("close", cf)
    TweenService:Create(scrim, TweenInfo.new(0.22), {BackgroundTransparency=0.4}):Play()
    TweenService:Create(sc, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale=1}):Play()
    local closing = false
    local function close(cb2)
        if closing then return end
        closing = true
        TweenService:Create(scrim, TweenInfo.new(0.18), {BackgroundTransparency=1}):Play()
        local t2 = TweenService:Create(sc, TweenInfo.new(0.18, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Scale=0.85})
        t2:Play()
        t2.Completed:Connect(function()
            pcall(function() mG:Destroy() end)
            _G.__nhCO = false
            if cb2 then cb2() end
        end)
    end
    cb.MouseButton1Click:Connect(function() close(nil) end)
    cf.MouseButton1Click:Connect(function() close(onYes) end)
end

print("[NH 6] tabs")
local homeTab = createTab("home", U(0x1F3E0), "Home", 2)
header(homeTab, "WELCOME", 1)
local hi = card(homeTab, 2, RH+42)
local hiT = mk("TextLabel", {Size=UDim2.new(1,-20,0,20), Position=UDim2.fromOffset(12,10), BackgroundTransparency=1, Text="null hub "..VERSION, TextColor3=T.wh, TextSize=15, ZIndex=15, Parent=hi})
af(hiT, FT) hiT.TextXAlignment = Enum.TextXAlignment.Left
local hiB = mk("TextLabel", {Size=UDim2.new(1,-20,0,42), Position=UDim2.fromOffset(12,32), BackgroundTransparency=1, Text="multi-game script hub\n"..L("drag to resize"), TextColor3=T.dim, TextSize=10, TextWrapped=true, ZIndex=15, Parent=hi})
af(hiB, FR) hiB.TextXAlignment = Enum.TextXAlignment.Left hiB.TextYAlignment = Enum.TextYAlignment.Top
header(homeTab, "SUPPORTED GAMES", 3)
local sgList = mk("Frame", {Size=UDim2.new(1,0,0,150), BackgroundTransparency=1, LayoutOrder=4, ZIndex=14, Parent=homeTab})
local sgScr = mk("ScrollingFrame", {Size=UDim2.new(1,0,1,0), BackgroundColor3=T.card, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=T.bdHi, CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y, ZIndex=15, Parent=sgList})
cn(sgScr, 7)
mk("UIListLayout", {Padding=UDim.new(0,3), SortOrder=Enum.SortOrder.LayoutOrder}, sgScr)
mk("UIPadding", {PaddingTop=UDim.new(0,6), PaddingLeft=UDim.new(0,8), PaddingRight=UDim.new(0,8), PaddingBottom=UDim.new(0,6)}, sgScr)
for i, g in ipairs(GAME_DB) do
    local isCur = (currentGame == g)
    local r = mk("Frame", {Size=UDim2.new(1,-8,0,26), BackgroundColor3=isCur and T.bg or T.cardHi, BorderSizePixel=0, LayoutOrder=i, ZIndex=16, Parent=sgScr})
    cn(r, 5)
    if isCur then sk(r, T.grn, 1, 0) end
    local dot = mk("Frame", {Size=UDim2.fromOffset(6,6), Position=UDim2.fromOffset(8,10), BackgroundColor3=isCur and T.grn or T.faint, BorderSizePixel=0, ZIndex=17, Parent=r})
    cn(dot, UDim.new(1,0))
    local nl = mk("TextLabel", {Size=UDim2.new(1,-24,1,0), Position=UDim2.fromOffset(20,0), BackgroundTransparency=1, Text=g.name, TextColor3=isCur and T.wh or T.dim, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=17, Parent=r})
    af(nl, FB)
    if isCur then
        local tag = mk("TextLabel", {Size=UDim2.fromOffset(60,20), Position=UDim2.new(1,-66,0.5,-10), BackgroundColor3=T.grn, BorderSizePixel=0, Text="LIVE", TextColor3=T.bg, TextSize=8, ZIndex=17, Parent=r})
        cn(tag, 4) af(tag, FH) tag.TextXAlignment = Enum.TextXAlignment.Center
    end
end
header(homeTab, "COMMUNITY", 5)
local dc = mk("TextButton", {Size=UDim2.new(1,0,0,46), BackgroundColor3=T.card, BorderSizePixel=0, Text="", AutoButtonColor=false, Selectable=false, LayoutOrder=6, ZIndex=14, Parent=homeTab})
cn(dc, 7) sk(dc, T.bd, 1, 0)
local dcl = mk("Frame", {Size=UDim2.fromOffset(30,30), Position=UDim2.fromOffset(9,8), BackgroundColor3=Color3.fromRGB(30,34,58), BorderSizePixel=0, ClipsDescendants=true, ZIndex=15, Parent=dc})
cn(dcl, UDim.new(1,0)) sk(dcl, T.dsc, 1, 0.5) ci(dcl, DLOGO, 16)
local dcT = mk("TextLabel", {Size=UDim2.new(1,-58,0,13), Position=UDim2.fromOffset(46,9), BackgroundTransparency=1, Text=L("discord"), TextColor3=T.wh, TextSize=11, ZIndex=15, Parent=dc})
af(dcT, FH) dcT.TextXAlignment = Enum.TextXAlignment.Left
reg("discord", dcT)
local dcB = mk("TextLabel", {Size=UDim2.new(1,-58,0,16), Position=UDim2.fromOffset(46,24), BackgroundTransparency=1, Text=L("copy invite"), TextColor3=T.dim, TextSize=9, ZIndex=15, Parent=dc})
af(dcB, FR) dcB.TextXAlignment = Enum.TextXAlignment.Left dcB.TextYAlignment = Enum.TextYAlignment.Top
reg("copy invite", dcB)
dc.MouseButton1Click:Connect(function()
    if setclipboard then setclipboard(DISC) notify("Discord", "Invite copied", 3)
    else notify("Discord", DISC, 6) end
end)

local clTab = createTab("changelog", U(0x1F4CB), "Changelog", 3)
header(clTab, "UPDATE LOG", 1)
local clCard = mk("Frame", {Size=UDim2.new(1,0,0,560), BackgroundColor3=T.card, BorderSizePixel=0, LayoutOrder=2, ZIndex=14, Parent=clTab})
cn(clCard, 7)
local clBody = mk("TextLabel", {Size=UDim2.new(1,-20,1,-20), Position=UDim2.fromOffset(10,10), BackgroundTransparency=1, TextWrapped=true, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Top, TextColor3=T.tx, TextSize=10, RichText=true, ZIndex=15, Parent=clCard})
af(clBody, FR)
clBody.Text = [[<b>v3 - Multi-Game Release</b>

<b>NEW GAMES SUPPORTED:</b>
- Steal an Egg
- Break and Steal an Egg
- Karinderya
- Ride a Pet
- Blox Fruits

<b>NEW FEATURES:</b>
- Auto game detection
- Changelog tab
- Welcome panel
- Owner announcement system
- GLOBAL CHAT
- Chat tab with live sync

<b>BUG FIXES:</b>
- Server filter shows open servers
- Friends list native API
- Return opener resets
- Language applies live]]

local chatTab = createTab("chat", U(0x1F4AC), "Chat", 4)
header(chatTab, "GLOBAL CHAT", 1)
local chatWrap = mk("Frame", {Size=UDim2.new(1,0,0,360), BackgroundColor3=T.card, BorderSizePixel=0, LayoutOrder=2, ZIndex=14, Parent=chatTab})
cn(chatWrap, 7)
local chatLog = mk("ScrollingFrame", {Size=UDim2.new(1,-12,1,-52), Position=UDim2.fromOffset(6,6), BackgroundTransparency=1, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=T.bdHi, CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y, ZIndex=15, Parent=chatWrap})
mk("UIListLayout", {Padding=UDim.new(0,4), SortOrder=Enum.SortOrder.LayoutOrder}, chatLog)
local chatInputRow = mk("Frame", {Size=UDim2.new(1,-12,0,38), Position=UDim2.new(0,6,1,-44), BackgroundColor3=T.cardHi, BorderSizePixel=0, ZIndex=15, Parent=chatWrap})
cn(chatInputRow, 7)
local chatInput = mk("TextBox", {Size=UDim2.new(1,-70,1,0), Position=UDim2.fromOffset(8,0), BackgroundTransparency=1, Text="", PlaceholderText=L("Type a message..."), PlaceholderColor3=T.faint, TextColor3=T.wh, TextSize=11, Font=Enum.Font.GothamMedium, ClearTextOnFocus=false, ZIndex=16, Parent=chatInputRow})
af(chatInput, FB) chatInput.TextXAlignment = Enum.TextXAlignment.Left
reg("Type a message...", chatInput, "PlaceholderText")
local chatSend = mk("TextButton", {Size=UDim2.fromOffset(56,30), Position=UDim2.new(1,-62,0.5,-15), BackgroundColor3=T.wh, Text=L("Send"), TextColor3=T.bg, TextSize=11, Font=Enum.Font.GothamBold, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=16, Parent=chatInputRow})
cn(chatSend, 6)
reg("Send", chatSend)
local chatStatus = mk("TextLabel", {Size=UDim2.new(1,0,0,14), BackgroundTransparency=1, Text="", TextColor3=T.dim, TextSize=9, LayoutOrder=3, ZIndex=14, Parent=chatTab})
af(chatStatus, FC)
local chatSeen = {}
local chatOrder = 0
local function chatAppend(entry, isAnn)
    if chatSeen[entry.id] then return end
    chatSeen[entry.id] = true
    chatOrder = chatOrder + 1
    local row = mk("Frame", {Size=UDim2.new(1,0,0,isAnn and 42 or 34), BackgroundColor3=isAnn and T.bg or T.cardHi, BorderSizePixel=0, LayoutOrder=chatOrder, ZIndex=16, Parent=chatLog})
    cn(row, 5)
    if isAnn then sk(row, T.gold, 1, 0.4) end
    local nm = mk("TextLabel", {Size=UDim2.new(1,-16,0,13), Position=UDim2.fromOffset(8,3), BackgroundTransparency=1, Text=(isAnn and U(0x1F4E2).." " or "")..(entry.name or "?")..((entry.game and not isAnn) and ("  "..entry.game) or ""), TextColor3=isAnn and T.gold or hashColor(entry.name or "?"), TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, TextTruncate=Enum.TextTruncate.AtEnd, ZIndex=17, Parent=row})
    af(nm, FH)
    local mg = mk("TextLabel", {Size=UDim2.new(1,-16,0,isAnn and 24 or 17), Position=UDim2.fromOffset(8,isAnn and 16 or 15), BackgroundTransparency=1, Text=entry.msg or "", TextColor3=T.tx, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Top, TextWrapped=true, ZIndex=17, Parent=row})
    af(mg, FR)
    task.defer(function()
        pcall(function() chatLog.CanvasPosition = Vector2.new(0, chatLog.AbsoluteCanvasSize.Y) end)
    end)
end
local function chatSendMsg()
    local txt = chatInput.Text or ""
    txt = txt:gsub("^%s+", ""):gsub("%s+$", "")
    if #txt < 1 then return end
    if #txt > 200 then
        chatStatus.Text = "too long (200 max)"
        chatStatus.TextColor3 = T.red
        task.delay(2, function() chatStatus.Text = "" end)
        return
    end
    chatInput.Text = ""
    local entry = {
        id = tostring(os.time()).."_"..LP.UserId.."_"..tostring(math.random(1000,9999)),
        uid = LP.UserId, name = LP.DisplayName or LP.Name, msg = txt,
        ts = os.time(), game = currentGame and currentGame.name or "Unknown"
    }
    chatAppend(entry, false)
    chatStatus.Text = "sending..."
    chatStatus.TextColor3 = T.dim
    task.spawn(function()
        local d = readBlob() or {}
        local arr = type(d.chat) == "table" and d.chat or {}
        table.insert(arr, entry)
        while #arr > CHAT_MAX do table.remove(arr, 1) end
        d.chat = arr
        if writeBlob(d) then
            chatStatus.Text = "sent"
            chatStatus.TextColor3 = T.grn
        else
            chatStatus.Text = "send failed"
            chatStatus.TextColor3 = T.red
        end
        task.delay(2, function() chatStatus.Text = "" end)
    end)
end
chatSend.MouseButton1Click:Connect(chatSendMsg)
chatInput.FocusLost:Connect(function(enter) if enter then chatSendMsg() end end)
_G.__nhChat = {Focus=function() pcall(function() chatInput:CaptureFocus() end) end, Append=chatAppend}

local favTab = createTab("favorites", U(0x2B50), "Favorites", 5)
header(favTab, "FAVORITES", 1)
local favSearch = searchBar(favTab, "favorites", 2)
local favEmpty = mk("TextLabel", {Size=UDim2.new(1,0,0,40), BackgroundTransparency=1, Text=L("no favorites yet"), TextColor3=T.dim, TextSize=10, TextWrapped=true, LayoutOrder=3, ZIndex=14, Parent=favTab})
af(favEmpty, FR)
filtRefs.favorites = {}
reg("no favorites yet", favEmpty)

local ntTab = createTab("nametag", U(0x1F3F7), "Nametag", 6)
header(ntTab, "NAMETAG", 1)
toggle(ntTab, "Enable Custom Nametag", 2, function(s) _G.__nhNT.enabled = s _G.__nhNT.Save() end, _G.__nhNT.enabled == true)
header(ntTab, "TEXT", 3)
tinp(ntTab, "Text", 4, _G.__nhNT.text, function(v) _G.__nhNT.text = v _G.__nhNT.Refresh() end)
slider(ntTab, "Text Size", 5, _G.__nhNT.size, 8, 60, function(v) _G.__nhNT.size = math.floor(v) _G.__nhNT.Refresh() end)
slider(ntTab, "Offset Y", 6, _G.__nhNT.oy, -5, 10, function(v) _G.__nhNT.oy = v _G.__nhNT.Save() end)
slider(ntTab, "Rotation", 7, _G.__nhNT.rot, -30, 30, function(v) _G.__nhNT.rot = v _G.__nhNT.Refresh() end)
header(ntTab, "FONT", 8)
local fScr = mk("ScrollingFrame", {Size=UDim2.new(1,0,0,120), BackgroundColor3=T.card, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=T.bdHi, CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y, LayoutOrder=9, ZIndex=14, Parent=ntTab})
cn(fScr, 7)
mk("UIListLayout", {Padding=UDim.new(0,3), SortOrder=Enum.SortOrder.LayoutOrder}, fScr)
mk("UIPadding", {PaddingTop=UDim.new(0,6), PaddingLeft=UDim.new(0,6), PaddingRight=UDim.new(0,6), PaddingBottom=UDim.new(0,6)}, fScr)
local fRefs = {}
for i, fname in ipairs(_G.__nhNTFonts) do
    local fb = mk("TextButton", {Size=UDim2.new(1,-12,0,22), BackgroundColor3=T.cardHi, Text=fname, TextColor3=T.tx, TextSize=10, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, LayoutOrder=i, ZIndex=16, Parent=fScr})
    fb.Font = Enum.Font[fname] or Enum.Font.GothamBold
    cn(fb, 5)
    if fname == _G.__nhNT.font then fb.BackgroundColor3 = T.wh fb.TextColor3 = T.bg end
    fb.MouseButton1Click:Connect(function()
        _G.__nhNT.font = fname
        for _, o in ipairs(fRefs) do o.BackgroundColor3 = T.cardHi o.TextColor3 = T.tx end
        fb.BackgroundColor3 = T.wh fb.TextColor3 = T.bg
        _G.__nhNT.Refresh()
    end)
    table.insert(fRefs, fb)
end
header(ntTab, "TEXT COLOR", 10)
colorPicker(ntTab, "Text Color", 11, _G.__nhNT.tcC or Color3.fromRGB(255,255,255), function(c) _G.__nhNT.tcC = c _G.__nhNT.Refresh() end)
header(ntTab, "EFFECTS", 12)
toggle(ntTab, "Rainbow", 13, function(s) _G.__nhNT.rainbow = s _G.__nhNT.Save() end, _G.__nhNT.rainbow == true)
toggle(ntTab, "Shine Sweep", 14, function(s) _G.__nhNT.shine = s _G.__nhNT.Save() end, _G.__nhNT.shine == true)
header(ntTab, "OUTLINE", 15)
toggle(ntTab, "Show Outline", 16, function(s) _G.__nhNT.outline = s _G.__nhNT.Refresh() end, _G.__nhNT.outline == true)
colorPicker(ntTab, "Outline Color", 17, _G.__nhNT.ocC or Color3.fromRGB(0,0,0), function(c) _G.__nhNT.ocC = c _G.__nhNT.Refresh() end)
header(ntTab, "BACKGROUND", 18)
toggle(ntTab, "Show Background", 19, function(s) _G.__nhNT.bg = s _G.__nhNT.Refresh() end, _G.__nhNT.bg == true)
slider(ntTab, "BG Transparency", 20, _G.__nhNT.bgT, 0, 1, function(v) _G.__nhNT.bgT = v _G.__nhNT.Refresh() end)
colorPicker(ntTab, "BG Color", 21, _G.__nhNT.bcC or Color3.fromRGB(0,0,0), function(c) _G.__nhNT.bcC = c _G.__nhNT.Refresh() end)
slider(ntTab, "Corner Radius", 22, _G.__nhNT.rad, 0, 30, function(v) _G.__nhNT.rad = math.floor(v) _G.__nhNT.Refresh() end)
header(ntTab, "VISIBILITY", 23)
toggle(ntTab, "Show On Yourself", 24, function(s) _G.__nhNT.showLocal = s _G.__nhNT.Save() end, _G.__nhNT.showLocal == true)
toggle(ntTab, "Show On Others", 25, function(s) _G.__nhNT.showOthers = s _G.__nhNT.Save() end, _G.__nhNT.showOthers == true)

local perfTab = createTab("performance", U(0x26A1), "Performance", 7)
header(perfTab, "BOOST FPS", 1)
local pfC = _G.__nhPerfCfg or {boost=false}
toggle(perfTab, "Boost FPS (toggle)", 2, function(s) if _G.__nhSetBoost then _G.__nhSetBoost(s) end end, pfC.boost == true)
header(perfTab, "FPS HUD", 3)
local hcS = rc(HD_CFG, {x=0.02, y=0.02, visible=false})
toggle(perfTab, "FPS and Ping HUD", 4, function(s) if _G.__nhHUD then _G.__nhHUD.SetVisible(s) end end, hcS.visible == true)

local hopTab = createTab("hop", U(0x1F310), "Hop", 8)
header(hopTab, "JOIN RANDOM", 1)
local jrBtn = mk("TextButton", {Size=UDim2.new(1,0,0,40), BackgroundColor3=T.wh, Text=U(0x1F3B2).."  "..L("Join Random"), TextColor3=T.bg, TextSize=12, BorderSizePixel=0, LayoutOrder=2, AutoButtonColor=false, Selectable=false, ZIndex=14, Parent=hopTab})
af(jrBtn, FH) cn(jrBtn, 8)
_G.__nhJRB = jrBtn
jrBtn.MouseEnter:Connect(function() jrBtn.BackgroundColor3 = T.gold end)
jrBtn.MouseLeave:Connect(function() jrBtn.BackgroundColor3 = T.wh end)
local srvCache = {}
jrBtn.MouseButton1Click:Connect(function()
    if #srvCache == 0 then notify("Hop", "no servers cached yet", 4) return end
    local pick = srvCache[math.random(1, #srvCache)]
    notify("Hop", U(0x2192).." "..string.sub(pick.Id, 1, 8), 4)
    task.wait(0.5)
    pcall(function() TeleportService:TeleportToPlaceInstance(game.PlaceId, pick.Id, LP) end)
end)
local colsFrame = mk("Frame", {Size=UDim2.new(1,0,0,380), BackgroundTransparency=1, LayoutOrder=3, ZIndex=14, Parent=hopTab})
local leftCol = mk("Frame", {Size=UDim2.new(0.49,0,1,0), BackgroundColor3=T.card, BorderSizePixel=0, ZIndex=14, Parent=colsFrame})
cn(leftCol, 7) sk(leftCol, T.bd, 1, 0)
local leftHead = mk("TextLabel", {Size=UDim2.new(1,-10,0,18), Position=UDim2.fromOffset(10,6), BackgroundTransparency=1, Text=L("Lowest Servers"), TextColor3=T.tx, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=15, Parent=leftCol})
af(leftHead, FH) reg("Lowest Servers", leftHead)
local srvStatus = mk("TextLabel", {Size=UDim2.new(1,-10,0,12), Position=UDim2.fromOffset(10,24), BackgroundTransparency=1, Text=L("scanning..."), TextColor3=T.dim, TextSize=8, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=15, Parent=leftCol})
af(srvStatus, FR)
local srvScr = mk("ScrollingFrame", {Size=UDim2.new(1,-8,1,-44), Position=UDim2.fromOffset(4,40), BackgroundTransparency=1, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=T.bdHi, CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y, ZIndex=15, Parent=leftCol})
mk("UIListLayout", {Padding=UDim.new(0,3), SortOrder=Enum.SortOrder.LayoutOrder}, srvScr)
local rightCol = mk("Frame", {Size=UDim2.new(0.49,0,1,0), Position=UDim2.new(0.51,0,0,0), BackgroundColor3=T.card, BorderSizePixel=0, ZIndex=14, Parent=colsFrame})
cn(rightCol, 7) sk(rightCol, T.bd, 1, 0)
local rightHead = mk("TextLabel", {Size=UDim2.new(1,-10,0,18), Position=UDim2.fromOffset(10,6), BackgroundTransparency=1, Text=L("Friends"), TextColor3=T.tx, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=15, Parent=rightCol})
af(rightHead, FH) reg("Friends", rightHead)
local frStatus = mk("TextLabel", {Size=UDim2.new(1,-10,0,12), Position=UDim2.fromOffset(10,24), BackgroundTransparency=1, Text=L("scanning..."), TextColor3=T.dim, TextSize=8, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=15, Parent=rightCol})
af(frStatus, FR)
local frScr = mk("ScrollingFrame", {Size=UDim2.new(1,-8,1,-44), Position=UDim2.fromOffset(4,40), BackgroundTransparency=1, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=T.bdHi, CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y, ZIndex=15, Parent=rightCol})
mk("UIListLayout", {Padding=UDim.new(0,3), SortOrder=Enum.SortOrder.LayoutOrder}, frScr)

_G.__nhPopServers = function()
    srvStatus.Text = L("scanning...")
    srvStatus.TextColor3 = T.gold
    for _, c in ipairs(srvScr:GetChildren()) do
        if c:IsA("Frame") then c:Destroy() end
    end
    srvCache = {}
    task.spawn(function()
        local list = {}
        local raw = nil
        local fns = {}
        if request then table.insert(fns, request) end
        if http_request then table.insert(fns, http_request) end
        if syn and syn.request then table.insert(fns, syn.request) end
        if http and http.request then table.insert(fns, http.request) end
        local url = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?limit=100&sortOrder=Asc"
        for _, fn in ipairs(fns) do
            local ok, r = pcall(fn, {Url=url, Method="GET", Headers={["Accept"]="application/json"}})
            if ok and r then
                local b = r.Body or r.body
                if b and #b > 0 then raw = b break end
            end
        end
        if not raw and _HTTP then
            local ok, b = pcall(function() return _HTTP(url) end)
            if ok and b then raw = b end
        end
        if not raw then
            local ok, b = pcall(function() return HttpService:GetAsync(url, true) end)
            if ok and b then raw = b end
        end
        if raw then
            local okJ, d = pcall(function() return HttpService:JSONDecode(raw) end)
            if okJ and type(d) == "table" and type(d.data) == "table" then
                for _, s in ipairs(d.data) do
                    if s.playing and s.maxPlayers and s.id then
                        local slots = s.maxPlayers - s.playing
                        if s.playing < s.maxPlayers and slots >= 2 and s.playing <= 15 then
                            table.insert(list, {Id=s.id, Playing=s.playing, MaxPlayers=s.maxPlayers, Slots=slots})
                        end
                    end
                end
            end
        end
        if #list == 0 then
            local ok, pages = pcall(function() return TeleportService:GetSortedAsync(Enum.SortDirection.Ascending, 100, 1, 15) end)
            if ok and pages then
                local ok2, pg = pcall(function() return pages:GetCurrentPage() end)
                if ok2 and type(pg) == "table" then
                    for _, s in ipairs(pg) do
                        local slots = s.MaxPlayers - s.Playing
                        if s.Playing < s.MaxPlayers and slots >= 2 and s.Playing <= 15 then
                            table.insert(list, {Id=s.Id, Playing=s.Playing, MaxPlayers=s.MaxPlayers, Slots=slots})
                        end
                    end
                end
            end
        end
        if #list == 0 then
            srvStatus.Text = L("no open servers")
            srvStatus.TextColor3 = T.red
            return
        end
        table.sort(list, function(a, b)
            if a.Playing == b.Playing then return a.Slots > b.Slots end
            return a.Playing < b.Playing
        end)
        srvCache = list
        srvStatus.Text = #list.." open"
        srvStatus.TextColor3 = T.grn
        for i, s in ipairs(list) do
            local row = mk("Frame", {Size=UDim2.new(1,0,0,28), BackgroundColor3=T.cardHi, BorderSizePixel=0, LayoutOrder=i, ZIndex=15, Parent=srvScr})
            cn(row, 5)
            local dot = mk("Frame", {Size=UDim2.fromOffset(6,6), Position=UDim2.fromOffset(8,11), BackgroundColor3=s.Slots >= 3 and T.grn or T.gold, BorderSizePixel=0, ZIndex=16, Parent=row})
            cn(dot, UDim.new(1,0))
            local idL = mk("TextLabel", {Size=UDim2.new(0.55,0,1,0), Position=UDim2.fromOffset(20,0), BackgroundTransparency=1, Text=string.sub(s.Id, 1, 10), TextColor3=T.tx, TextSize=9, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=16, Parent=row})
            af(idL, FC)
            local pl = mk("TextLabel", {Size=UDim2.new(0.4,0,1,0), Position=UDim2.new(0.6,0,0,0), BackgroundTransparency=1, Text=s.Playing.."/"..s.MaxPlayers, TextColor3=T.grn, TextSize=9, TextXAlignment=Enum.TextXAlignment.Right, ZIndex=16, Parent=row})
            af(pl, FC)
            local ck = mk("TextButton", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, Text="", AutoButtonColor=false, Selectable=false, ZIndex=20, Parent=row})
            local sid = s.Id
            ck.MouseButton1Click:Connect(function()
                notify("Hop", U(0x2192).." "..string.sub(sid, 1, 8), 3)
                task.wait(0.3)
                pcall(function() TeleportService:TeleportToPlaceInstance(game.PlaceId, sid, LP) end)
            end)
        end
    end)
end

_G.__nhPopFriends = function()
    frStatus.Text = L("scanning...")
    frStatus.TextColor3 = T.gold
    for _, c in ipairs(frScr:GetChildren()) do
        if c:IsA("Frame") then c:Destroy() end
    end
    task.spawn(function()
        local friends = {}
        local ok, pages = pcall(function() return Players:GetFriendsAsync(LP.UserId) end)
        if ok and pages then
            while true do
                local ok2, pg = pcall(function() return pages:GetCurrentPage() end)
                if not ok2 or not pg then break end
                for _, f in ipairs(pg) do
                    table.insert(friends, {Id=f.Id, Username=f.Username or f.Name or "?", DisplayName=f.DisplayName or f.Username or f.Name or "?"})
                end
                if pages.IsFinished then break end
                local ok3 = pcall(function() pages:AdvanceToNextPageAsync() end)
                if not ok3 then break end
            end
        end
        if #friends == 0 then
            frStatus.Text = L("no friends")
            frStatus.TextColor3 = T.red
            return
        end
        frStatus.Text = #friends.." "..L("Friends")
        frStatus.TextColor3 = T.grn
        local pmap = {}
        local ids = {}
        for _, f in ipairs(friends) do table.insert(ids, tonumber(f.Id)) end
        if #ids > 0 then
            local body = HttpService:JSONEncode({userIds=ids})
            local hdr = {["Content-Type"]="application/json", ["Accept"]="application/json"}
            local raw = nil
            local fns = {}
            if request then table.insert(fns, request) end
            if http_request then table.insert(fns, http_request) end
            if syn and syn.request then table.insert(fns, syn.request) end
            if http and http.request then table.insert(fns, http.request) end
            for _, fn in ipairs(fns) do
                local ok2, r = pcall(fn, {Url="https://presence.roblox.com/v1/presence/users", Method="POST", Headers=hdr, Body=body})
                if ok2 and r then
                    local b = r.Body or r.body
                    if b and #b > 0 then raw = b break end
                end
            end
            if raw then
                local okJ, d = pcall(function() return HttpService:JSONDecode(raw) end)
                if okJ and type(d) == "table" and type(d.userPresences) == "table" then
                    for _, p in ipairs(d.userPresences) do pmap[tonumber(p.userId)] = p end
                end
            end
        end
        table.sort(friends, function(a, b)
            local pa = pmap[tonumber(a.Id)] local pb = pmap[tonumber(b.Id)]
            local oa = pa and pa.userPresenceType or 0
            local ob = pb and pb.userPresenceType or 0
            if oa == ob then return (a.Username or ""):lower() < (b.Username or ""):lower() end
            return oa > ob
        end)
        for i, f in ipairs(friends) do
            local p = pmap[tonumber(f.Id)]
            local row = mk("Frame", {Size=UDim2.new(1,0,0,32), BackgroundColor3=T.cardHi, BorderSizePixel=0, LayoutOrder=i, ZIndex=15, Parent=frScr})
            cn(row, 5)
            local av = mk("Frame", {Size=UDim2.fromOffset(24,24), Position=UDim2.fromOffset(4,4), BackgroundColor3=T.card, BorderSizePixel=0, ClipsDescendants=true, ZIndex=16, Parent=row})
            cn(av, UDim.new(1,0))
            mk("ImageLabel", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, Image="rbxthumb://type=AvatarHeadShot&id="..f.Id.."&w=48&h=48", ScaleType=Enum.ScaleType.Crop, ZIndex=17, Parent=av})
            local dotColor = T.faint local statusText = L("offline")
            local canJoin = false local tp, tj
            if p then
                if p.userPresenceType == 2 then
                    dotColor = T.grn statusText = L("in game")
                    if tonumber(p.rootPlaceId) == game.PlaceId and p.gameId then
                        canJoin = true tp = tonumber(p.rootPlaceId) tj = p.gameId
                    end
                elseif p.userPresenceType == 1 then
                    dotColor = T.grn statusText = L("online")
                elseif p.userPresenceType == 3 then
                    dotColor = T.gold statusText = L("studio")
                end
            end
            local dot = mk("Frame", {Size=UDim2.fromOffset(6,6), Position=UDim2.new(1,-14,0,5), BackgroundColor3=dotColor, BorderSizePixel=0, ZIndex=18, Parent=av})
            cn(dot, UDim.new(1,0)) sk(dot, T.bg, 1, 0)
            local nl = mk("TextLabel", {Size=UDim2.new(1,-72,0,13), Position=UDim2.fromOffset(32,3), BackgroundTransparency=1, Text=f.Username, TextColor3=T.tx, TextSize=9, TextXAlignment=Enum.TextXAlignment.Left, TextTruncate=Enum.TextTruncate.AtEnd, ZIndex=16, Parent=row})
            af(nl, FH)
            local sl = mk("TextLabel", {Size=UDim2.new(1,-72,0,11), Position=UDim2.fromOffset(32,17), BackgroundTransparency=1, Text=statusText, TextColor3=dotColor, TextSize=8, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=16, Parent=row})
            af(sl, FR)
            if canJoin then
                local jb = mk("TextButton", {Size=UDim2.fromOffset(28,22), Position=UDim2.new(1,-32,0.5,-11), BackgroundColor3=T.wh, Text=U(0x2192), TextColor3=T.bg, TextSize=13, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=16, Parent=row})
                af(jb, FH) cn(jb, 5)
                jb.MouseButton1Click:Connect(function()
                    notify("Friends", U(0x2192).." "..(f.Username or "?"), 3)
                    task.wait(0.3)
                    pcall(function() TeleportService:TeleportToPlaceInstance(tp, tj, LP) end)
                end)
            end
        end
    end)
end

local klTab = createTab("keyless", U(0x1F3AE), "Keyless", 9)
header(klTab, "KEYLESS HUBS", 1)
searchBar(klTab, "keyless", 2)
filtRefs.keyless = {}
local KEYLESS = (currentGame and currentGame.keyless) or {}
if #KEYLESS == 0 then
    local nc = mk("TextLabel", {Size=UDim2.new(1,0,0,40), BackgroundTransparency=1, Text=L("This game is not supported yet"), TextColor3=T.red, TextSize=10, TextWrapped=true, LayoutOrder=3, ZIndex=14, Parent=klTab})
    af(nc, FR)
end
local kTab = createTab("key", U(0x1F511), "Key Required", 10)
header(kTab, "KEY REQUIRED", 1)
searchBar(kTab, "key", 2)
filtRefs.key = {}
local KEYED = (currentGame and currentGame.keyed) or {}
if #KEYED == 0 then
    local nc = mk("TextLabel", {Size=UDim2.new(1,0,0,40), BackgroundTransparency=1, Text=L("This game is not supported yet"), TextColor3=T.red, TextSize=10, TextWrapped=true, LayoutOrder=3, ZIndex=14, Parent=kTab})
    af(nc, FR)
end
for _, e in ipairs(KEYLESS) do ALL[e.name] = e end
for _, e in ipairs(KEYED) do ALL[e.name] = e end

warnOverlay = mk("Frame", {Size=UDim2.new(1,0,1,0), BackgroundColor3=T.bg, BackgroundTransparency=0.05, BorderSizePixel=0, Visible=false, ZIndex=200, Parent=pArea})
cn(warnOverlay, 10)
local wH = mk("Frame", {Size=UDim2.new(1,-24,0,40), Position=UDim2.fromOffset(12,14), BackgroundColor3=T.card, BorderSizePixel=0, ZIndex=201, Parent=warnOverlay})
cn(wH, 8)
local wI = mk("Frame", {Size=UDim2.fromOffset(30,30), Position=UDim2.fromOffset(8,5), BackgroundColor3=T.cardHi, BorderSizePixel=0, ClipsDescendants=true, ZIndex=202, Parent=wH})
cn(wI, UDim.new(1,0))
mk("TextLabel", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, Text=U(0x1F310), TextSize=16, TextColor3=T.wh, ZIndex=203, Parent=wI})
local wT = mk("TextLabel", {Size=UDim2.new(0.5,0,1,0), Position=UDim2.fromOffset(46,0), BackgroundTransparency=1, Text=L("Warning"), TextColor3=T.wh, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=202, Parent=wH})
af(wT, FH) reg("Warning", wT)
local wB = mk("TextLabel", {Size=UDim2.new(1,-24,0,60), Position=UDim2.fromOffset(12,64), BackgroundTransparency=1, Text="Some scripts are not verified to be keyless or key required.", TextColor3=T.dim, TextSize=11, TextWrapped=true, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Top, ZIndex=201, Parent=warnOverlay})
af(wB, FR)
local dnr = mk("Frame", {Size=UDim2.new(1,-24,0,26), Position=UDim2.new(0,12,1,-88), BackgroundTransparency=1, ZIndex=201, Parent=warnOverlay})
local cbB = mk("TextButton", {Size=UDim2.fromOffset(20,20), Position=UDim2.fromOffset(0,3), BackgroundColor3=T.wh, BorderSizePixel=0, Text="", AutoButtonColor=false, Selectable=false, ZIndex=202, Parent=dnr})
cn(cbB, 5) sk(cbB, T.bdHi, 1, 0)
local cbM = mk("TextLabel", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, Text=U(0x2713), TextColor3=T.bg, TextSize=14, ZIndex=203, Parent=cbB})
af(cbM, FH)
local dnChk = true
local function paintCb()
    if dnChk then cbB.BackgroundColor3 = T.wh cbM.TextColor3 = T.bg
    else cbB.BackgroundColor3 = T.card cbM.TextColor3 = T.card end
end
paintCb()
cbB.MouseButton1Click:Connect(function() dnChk = not dnChk paintCb() end)
local dnL = mk("TextLabel", {Size=UDim2.new(1,-30,1,0), Position=UDim2.fromOffset(28,0), BackgroundTransparency=1, Text=L("Don't show again"), TextColor3=T.tx, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=202, Parent=dnr})
af(dnL, FR) reg("Don't show again", dnL)
local ack = mk("TextButton", {Size=UDim2.new(1,-24,0,38), Position=UDim2.new(0,12,1,-54), BackgroundColor3=T.card, Text=L("I understand").." (5)", TextColor3=T.dim, TextSize=12, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, Active=false, ZIndex=201, Parent=warnOverlay})
af(ack, FH) cn(ack, 8)
local wTok = 0 local curWarnTab = nil
_G.__nhWarn = function(tabKey)
    curWarnTab = tabKey
    warnOverlay.Visible = true
    dnChk = true paintCb()
    ack.Active = false ack.BackgroundColor3 = T.card ack.TextColor3 = T.dim
    local rem = 5
    ack:SetAttribute("cd", rem)
    ack.Text = L("I understand").." ("..rem..")"
    wTok = wTok + 1
    local my = wTok
    task.spawn(function()
        while rem > 0 do
            task.wait(1)
            if my ~= wTok then return end
            rem = rem - 1
            ack:SetAttribute("cd", rem)
            if rem > 0 then ack.Text = L("I understand").." ("..rem..")"
            else
                ack.Active = true
                ack.BackgroundColor3 = T.wh
                ack.TextColor3 = T.bg
                ack.Text = L("I understand")
            end
        end
    end)
end
ack.MouseButton1Click:Connect(function()
    if not ack.Active then return end
    if curWarnTab and dnChk then warnC[curWarnTab] = true saveWarn() end
    warnOverlay.Visible = false
    curWarnTab = nil
end)

local function scriptCard(parent, data, order, tabName)
    local col, exp = ISM and 34 or 40, ISM and 60 or 70
    local th = ISM and 22 or 26
    local c = card(parent, order, col) c.ClipsDescendants = true
    local tf = mk("Frame", {Size=UDim2.fromOffset(th,th), Position=UDim2.fromOffset(10,(col-th)/2), BackgroundColor3=T.cardHi, BorderSizePixel=0, ClipsDescendants=true, ZIndex=15, Parent=c})
    cn(tf, UDim.new(1,0)) ci(tf, LOGO, 16)
    local nl = mk("TextLabel", {Size=UDim2.new(1,-60,0,col), Position=UDim2.fromOffset(th+18,0), BackgroundTransparency=1, Text=(data.name or "?"):sub(1,45), TextColor3=T.tx, TextSize=SFS, TextXAlignment=Enum.TextXAlignment.Left, TextTruncate=Enum.TextTruncate.AtEnd, ZIndex=15, Parent=c})
    af(nl, FB)
    local cv = mk("TextLabel", {Size=UDim2.fromOffset(18,18), AnchorPoint=Vector2.new(0.5,0.5), Position=UDim2.new(1,-18,0,col/2), BackgroundTransparency=1, Text=U(0x2193), TextColor3=T.dim, TextSize=12, ZIndex=15, Parent=c})
    af(cv, FH)
    local br = mk("Frame", {Size=UDim2.new(1,-20,0,RH-6), Position=UDim2.fromOffset(10,col+2), BackgroundTransparency=1, Visible=false, ZIndex=15, Parent=c})
    local cb = mk("TextButton", {Size=UDim2.new(0,54,1,0), BackgroundColor3=T.cardHi, Text=L("Copy"), TextColor3=T.tx, TextSize=9, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=16, Parent=br})
    af(cb, FB) cn(cb, 5) reg("Copy", cb)
    local st = mk("TextButton", {Size=UDim2.new(0,36,1,0), Position=UDim2.new(0,58,0,0), BackgroundColor3=T.cardHi, Text=U(0x2B50), TextColor3=favs[data.name] and T.gold or T.faint, TextSize=16, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=16, Parent=br})
    af(st, FH) cn(st, 5)
    st.MouseEnter:Connect(function() if not favs[data.name] then st.BackgroundColor3 = T.bdHi end end)
    st.MouseLeave:Connect(function() st.BackgroundColor3 = T.cardHi end)
    st.MouseButton1Click:Connect(function() toggleFav(data.name) end)
    regStar(data.name, st)
    local eb = mk("TextButton", {Size=UDim2.new(0,66,1,0), Position=UDim2.new(1,-66,0,0), BackgroundColor3=T.wh, Text=L("Execute"), TextColor3=T.bg, TextSize=9, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=16, Parent=br})
    af(eb, FH) cn(eb, 5) reg("Execute", eb)
    local isEx = false
    local ck = mk("TextButton", {Size=UDim2.new(1,-72,0,col), BackgroundTransparency=1, Text="", AutoButtonColor=false, Selectable=false, ZIndex=20, Parent=c})
    ck.MouseButton1Click:Connect(function()
        isEx = not isEx
        local tt = isEx and exp or col
        TweenService:Create(c, TweenInfo.new(0.22, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Size=UDim2.new(1,0,0,tt)}):Play()
        TweenService:Create(cv, TweenInfo.new(0.24, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Rotation=isEx and 180 or 0}):Play()
        br.Visible = isEx
    end)
    cb.MouseButton1Click:Connect(function()
        local txt = data.url and ('loadstring(game:HttpGet("%s", true))()'):format(data.url) or ""
        if txt ~= "" and setclipboard then
            setclipboard(txt)
            cb.Text = L("Copied")
            cb.BackgroundColor3 = T.grn
            cb.TextColor3 = T.wh
            task.delay(1.2, function()
                cb.Text = L("Copy")
                cb.BackgroundColor3 = T.cardHi
                cb.TextColor3 = T.tx
            end)
        end
    end)
    eb.MouseButton1Click:Connect(function()
        eb.Text = "..."
        eb.BackgroundColor3 = T.dim
        task.spawn(function()
            local body = data.url and fetch(data.url)
            if body and _LOAD then
                local chunk, err = _LOAD(body)
                if type(chunk) == "function" then
                    local ok, er = pcall(chunk)
                    if ok then notify("Executed", data.name or "?", 3)
                    else notify("Error", tostring(er):sub(1,60), 5) end
                else
                    notify("Compile", tostring(err):sub(1,60), 5)
                end
            else
                notify("Fetch failed", data.name or "?", 5)
            end
            eb.Text = L("Execute")
            eb.BackgroundColor3 = T.wh
        end)
    end)
    if tabName and filtRefs[tabName] then
        table.insert(filtRefs[tabName], {frame=c, name=string.lower(data.name or "")})
    end
    return c
end
local function rebuildFavs()
    for _, c in ipairs(favTab:GetChildren()) do
        if c:IsA("Frame") and c:GetAttribute("fc") == true then c:Destroy() end
    end
    filtRefs.favorites = {}
    local order = 4 count = 0
    local names = {}
    for k in pairs(favs) do table.insert(names, k) end
    table.sort(names)
    for _, name in ipairs(names) do
        local data = ALL[name]
        if data then
            local c = scriptCard(favTab, data, order, "favorites")
            c:SetAttribute("fc", true)
            order = order + 1 count = count + 1
        end
    end
    favEmpty.Visible = count == 0
    favEmpty.LayoutOrder = 3
    applyFilter("favorites", favSearch.Text or "")
end
_G.__nhFav = rebuildFavs
for i, e in ipairs(KEYLESS) do scriptCard(klTab, e, i+2, "keyless") end
for i, e in ipairs(KEYED) do scriptCard(kTab, e, i+2, "key") end
rebuildFavs()

local setTab = createTab("settings", U(0x2699), "Settings", 11)
header(setTab, "LANGUAGE", 1)
local lRow = card(setTab, 2, RH+4)
local lRowL = mk("TextLabel", {Size=UDim2.new(0.55,0,1,0), Position=UDim2.fromOffset(10,0), BackgroundTransparency=1, Text=L("Select Language"), TextColor3=T.tx, TextSize=BFS, ZIndex=15, Parent=lRow})
af(lRowL, FR) lRowL.TextXAlignment = Enum.TextXAlignment.Left
reg("Select Language", lRowL)
local lRowBtn = mk("TextButton", {Size=UDim2.new(0.4,0,0.7,0), Position=UDim2.new(0.58,0,0.15,0), BackgroundColor3=T.cardHi, Text=_G.__nhLangName(langCfg.lang or "en"), TextColor3=T.wh, TextSize=BFS-1, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=15, Parent=lRow})
af(lRowBtn, FB) cn(lRowBtn, 5)
lRowBtn.MouseEnter:Connect(function() lRowBtn.BackgroundColor3 = T.bdHi end)
lRowBtn.MouseLeave:Connect(function() lRowBtn.BackgroundColor3 = T.cardHi end)
_G.__nhApplyLang = function()
    for _, entry in ipairs(_G.__nhLabels) do
        if entry.obj and entry.obj.Parent then
            pcall(function() entry.obj[entry.prop] = L(entry.key) end)
        end
    end
    if _G.__nhJRB then _G.__nhJRB.Text = U(0x1F3B2).."  "..L("Join Random") end
    if ack then
        if ack.Active then ack.Text = L("I understand")
        else ack.Text = L("I understand").." ("..tostring(ack:GetAttribute("cd") or 5)..")" end
    end
    if lRowBtn then lRowBtn.Text = _G.__nhLangName(langCfg.lang or "en") end
end
local function openLangModal()
    local mGui = nGui("NullLangPick", 2147483646)
    mGui.IgnoreGuiInset = true
    local scrim = mk("Frame", {Size=UDim2.fromScale(1,1), BackgroundColor3=Color3.fromRGB(0,0,0), BackgroundTransparency=1, BorderSizePixel=0, ZIndex=1, Parent=mGui})
    local panel = mk("Frame", {Size=UDim2.fromOffset(300,380), Position=UDim2.new(0.5,-150,0.5,-190), BackgroundColor3=T.sur, BorderSizePixel=0, ZIndex=2, Parent=mGui})
    cn(panel, 12) sk(panel, T.bdHi, 1, 0.15)
    local pSc = mk("UIScale", {Scale=0.85, Parent=panel})
    TweenService:Create(pSc, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale=1}):Play()
    local ti = mk("TextLabel", {Size=UDim2.new(1,-28,0,24), Position=UDim2.fromOffset(14,14), BackgroundTransparency=1, Text=L("Select Language"), TextColor3=T.wh, TextSize=14, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=3, Parent=panel})
    af(ti, FT)
    local list = mk("ScrollingFrame", {Size=UDim2.new(1,-24,1,-58), Position=UDim2.fromOffset(12,50), BackgroundTransparency=1, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=T.bdHi, CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y, ZIndex=3, Parent=panel})
    mk("UIListLayout", {Padding=UDim.new(0,3), SortOrder=Enum.SortOrder.LayoutOrder}, list)
    for i, lg2 in ipairs(LANGS_LIST) do
        local r = mk("TextButton", {Size=UDim2.new(1,0,0,30), BackgroundColor3=T.card, Text=lg2.name, TextColor3=T.tx, TextSize=11, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, LayoutOrder=i, ZIndex=4, Parent=list})
        af(r, FB) cn(r, 5)
        if lg2.code == (langCfg.lang or "en") then r.BackgroundColor3 = T.wh r.TextColor3 = T.bg end
        r.MouseButton1Click:Connect(function()
            langCfg.lang = lg2.code
            wc(LANG_CFG, langCfg)
            _G.__nhApplyLang()
            pcall(function() mGui:Destroy() end)
        end)
    end
    TweenService:Create(scrim, TweenInfo.new(0.2), {BackgroundTransparency=0.5}):Play()
    scrim.InputBegan:Connect(function(i)
        local t = i.UserInputType
        if t == Enum.UserInputType.MouseButton1 or t == Enum.UserInputType.Touch then
            TweenService:Create(scrim, TweenInfo.new(0.18), {BackgroundTransparency=1}):Play()
            local t2 = TweenService:Create(pSc, TweenInfo.new(0.18, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Scale=0.85})
            t2:Play()
            t2.Completed:Connect(function() pcall(function() mGui:Destroy() end) end)
        end
    end)
end
lRowBtn.MouseButton1Click:Connect(openLangModal)
header(setTab, "KEYBIND", 3)
local kr = card(setTab, 4, RH+4)
local krL = mk("TextLabel", {Size=UDim2.new(0.55,0,1,0), Position=UDim2.fromOffset(10,0), BackgroundTransparency=1, Text=L("Toggle Key"), TextColor3=T.tx, TextSize=BFS, ZIndex=15, Parent=kr})
af(krL, FR) krL.TextXAlignment = Enum.TextXAlignment.Left
reg("Toggle Key", krL)
local kd = mk("TextButton", {Size=UDim2.new(0.36,0,0.7,0), Position=UDim2.new(0.6,0,0.15,0), BackgroundColor3=T.cardHi, Text=TK.Name, TextColor3=T.wh, TextSize=BFS-1, BorderSizePixel=0, AutoButtonColor=false, Selectable=false, ZIndex=15, Parent=kr})
af(kd, FC) cn(kd, 5)
local listening = false
kd.MouseButton1Click:Connect(function() listening = true kd.Text = "press..." kd.TextColor3 = T.gold end)
UIS.InputBegan:Connect(function(input)
    if not listening then return end
    if input.UserInputType == Enum.UserInputType.Keyboard then
        listening = false
        TK = input.KeyCode
        kd.Text = input.KeyCode.Name
        kd.TextColor3 = T.wh
        if writefile then pcall(writefile, KB_CFG, TK.Name) end
    end
end)
header(setTab, "OPENER", 5)
toggle(setTab, "Return Opener Button", 6, function(s) rtc.enabled = s resetRTPos() syncRT() end, rtc.enabled == true)

if isOwner then
    local annTab = createTab("announce", U(0x1F4E3), "Announce", 12)
    header(annTab, "SEND ANNOUNCEMENT", 1)
    local infoC = card(annTab, 2, RH+26)
    local infoL = mk("TextLabel", {Size=UDim2.new(1,-20,1,-12), Position=UDim2.fromOffset(12,8), BackgroundTransparency=1, Text="Live for every Null Hub user, in every game. Also drops into Chat.", TextColor3=T.dim, TextSize=9, TextWrapped=true, ZIndex=15, Parent=infoC})
    af(infoL, FR) infoL.TextXAlignment = Enum.TextXAlignment.Left infoL.TextYAlignment = Enum.TextYAlignment.Top
    local msgC = card(annTab, 3, 110)
    local msgBox = mk("TextBox", {Size=UDim2.new(1,-20,90), Position=UDim2.fromOffset(10,10), BackgroundColor3=T.bg, Text="", PlaceholderText="Type your announcement...", PlaceholderColor3=T.faint, TextColor3=T.wh, TextSize=12, Font=Enum.Font.GothamBold, BorderSizePixel=0, ClearTextOnFocus=false, MultiLine=true, TextWrapped=true, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Top, ZIndex=15, Parent=msgC})
    cn(msgBox, 6)
    mk("UIPadding", {PaddingLeft=UDim.new(0,10), PaddingTop=UDim.new(0,8), PaddingRight=UDim.new(0,10)}, msgBox)
    local nameC = card(annTab, 4, RH+4)
    local nameL = mk("TextLabel", {Size=UDim2.new(0.36,0,1,0), Position=UDim2.fromOffset(11,0), BackgroundTransparency=1, Text="From", TextColor3=T.tx, TextSize=BFS, ZIndex=15, Parent=nameC})
    af(nameL, FR) nameL.TextXAlignment = Enum.TextXAlignment.Left
    local nameBox = mk("TextBox", {Size=UDim2.new(0.6,0,0.7,0), Position=UDim2.new(0.38,0,0.15,0), BackgroundColor3=T.cardHi, Text=LP.DisplayName or LP.Name, TextColor3=T.wh, TextSize=BFS, Font=Enum.Font.GothamBold, BorderSizePixel=0, ClearTextOnFocus=false, ZIndex=15, Parent=nameC})
    cn(nameBox, 5)
    local sendBtn = mk("TextButton", {Size=UDim2.new(1,0,0,50), BackgroundColor3=T.wh, Text=U(0x1F4E3).."  SEND", TextColor3=T.bg, TextSize=14, Font=Enum.Font.GothamBold, BorderSizePixel=0, LayoutOrder=5, AutoButtonColor=false, Selectable=false, ZIndex=14, Parent=annTab})
    cn(sendBtn, 9)
    sendBtn.MouseEnter:Connect(function() sendBtn.BackgroundColor3 = T.gold end)
    sendBtn.MouseLeave:Connect(function() sendBtn.BackgroundColor3 = T.wh end)
    local clearBtn = mk("TextButton", {Size=UDim2.new(1,0,0,32), BackgroundColor3=T.card, Text="Clear Announcement", TextColor3=T.tx, TextSize=10, Font=Enum.Font.GothamBold, BorderSizePixel=0, LayoutOrder=6, AutoButtonColor=false, Selectable=false, ZIndex=14, Parent=annTab})
    cn(clearBtn, 7)
    local statL = mk("TextLabel", {Size=UDim2.new(1,0,0,20), BackgroundTransparency=1, Text="", TextColor3=T.dim, TextSize=9, Font=Enum.Font.GothamBold, TextXAlignment=Enum.TextXAlignment.Center, LayoutOrder=7, ZIndex=14, Parent=annTab})
    sendBtn.MouseButton1Click:Connect(function()
        local msg = msgBox.Text or ""
        if #msg < 1 then statL.Text = "type a message" statL.TextColor3 = T.red task.delay(2, function() statL.Text = "" end) return end
        if #msg > 400 then statL.Text = "too long" statL.TextColor3 = T.red return end
        local name = (nameBox.Text ~= "" and nameBox.Text) or LP.DisplayName or LP.Name
        sendBtn.Text = "sending..." sendBtn.BackgroundColor3 = T.dim statL.Text = ""
        task.spawn(function()
            local ok, err = pcall(function()
                local d = readBlob() or {}
                local annId = tostring(os.time()).."_"..tostring(math.random(1000,9999))
                d.announcement = {id=annId, msg=msg, place=game.PlaceId, sender=name, ts=os.time()}
                local arr = type(d.chat) == "table" and d.chat or {}
                table.insert(arr, {id=annId, uid=0, name=name, msg=msg, ts=os.time(), game="ANNOUNCEMENT", ann=true})
                while #arr > CHAT_MAX do table.remove(arr, 1) end
                d.chat = arr
                if writeBlob(d) then
                    statL.Text = "live everywhere" statL.TextColor3 = T.grn
                    msgBox.Text = ""
                    chatAppend({id=annId, name=name, msg=msg, ts=os.time(), game="ANNOUNCEMENT"}, true)
                else
                    statL.Text = "send failed" statL.TextColor3 = T.red
                end
            end)
            if not ok then statL.Text = "error "..tostring(err):sub(1,40) statL.TextColor3 = T.red end
            task.delay(4, function() statL.Text = "" end)
            sendBtn.Text = U(0x1F4E3).."  SEND" sendBtn.BackgroundColor3 = T.wh
        end)
    end)
    clearBtn.MouseButton1Click:Connect(function()
        task.spawn(function()
            local ok = pcall(function()
                local d = readBlob() or {}
                d.announcement = {id="", msg="", place=0, sender="", ts=0}
                writeBlob(d)
            end)
            if ok then statL.Text = "cleared" statL.TextColor3 = T.dim end
            task.delay(2, function() statL.Text = "" end)
        end)
    end)
end

pcall(function()
    local cfg = hcS
    local function save() wc(HD_CFG, cfg) end
    local hG = nGui("NullStatsHUD", 999996)
    local c0 = mk("Frame", {AnchorPoint=Vector2.new(0,0), Position=UDim2.new(cfg.x,0,cfg.y,0), Size=UDim2.fromOffset(150,40), BackgroundColor3=T.sur, BackgroundTransparency=0.1, BorderSizePixel=0, Active=true, Visible=cfg.visible, ZIndex=1, Parent=hG})
    cn(c0, 9) sk(c0, T.bdHi, 1, 0)
    local l2 = mk("Frame", {Size=UDim2.fromOffset(26,26), Position=UDim2.fromOffset(7,7), BackgroundColor3=T.card, BorderSizePixel=0, ClipsDescendants=true, Parent=c0})
    cn(l2, UDim.new(1,0)) sk(l2, T.bd, 1, 0) ci(l2, LOGO, 2)
    local fp = mk("TextLabel", {Size=UDim2.new(1,-42,0,12), Position=UDim2.fromOffset(38,6), BackgroundTransparency=1, Text="FPS: --", TextColor3=T.wh, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, Parent=c0})
    af(fp, FR)
    local ms = mk("TextLabel", {Size=UDim2.new(1,-42,0,12), Position=UDim2.fromOffset(38,20), BackgroundTransparency=1, Text="MS: --", TextColor3=T.dim, TextSize=9, TextXAlignment=Enum.TextXAlignment.Left, Parent=c0})
    af(ms, FR)
    local ff, ft = 0, 0
    RunService.RenderStepped:Connect(function(dt)
        if not c0.Visible then return end
        ff = ff + 1
        ft = ft + dt
        if ft >= 0.5 then
            local f = math.floor(ff / ft + 0.5)
            ff = 0 ft = 0
            fp.Text = "FPS: "..f
            fp.TextColor3 = f < 30 and T.red or (f < 55 and T.gold or T.grn)
        end
    end)
    local ping
    pcall(function() ping = Stats.Network.ServerStatsItem["Data Ping"] end)
    task.spawn(function()
        while hG.Parent do
            if c0.Visible and ping then
                local ok, v = pcall(function() return ping:GetValue() end)
                if ok and type(v) == "number" then
                    local mm = math.floor(v + 0.5)
                    ms.Text = "MS: "..mm
                    ms.TextColor3 = mm > 200 and T.red or (mm > 100 and T.gold or T.dim)
                end
            end
            task.wait(0.5)
        end
    end)
    _G.__nhHUD = {SetVisible=function(v) cfg.visible = v c0.Visible = v save() end}
end)

print("[NH 7] post-tabs")
syncRT()
local function animShow()
    if animLock then return end
    animLock = true
    local sp = UDim2.new(opc.x or OPDX, opc.xo or 0, opc.y or OPDY, opc.yo or 0)
    op.Visible = false
    root.Visible = true
    syncRT()
    root.Size = UDim2.fromOffset(opW, opH)
    root.Position = sp
    ui.Visible = false
    task.wait(0.02)
    local t = TweenService:Create(root, TweenInfo.new(0.42, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Size=UDim2.fromOffset(W,H), Position=UDim2.new(0.5,-W/2,0.5,-H/2)})
    t:Play()
    task.delay(0.46, function()
        pcall(function()
            root.Size = UDim2.fromOffset(W,H)
            root.Position = UDim2.new(0.5,-W/2,0.5,-H/2)
        end)
        ui.Visible = true
        animLock = false
    end)
end
_G.__nhShow = animShow
local function animHide()
    if animLock then return end
    animLock = true
    ui.Visible = false
    local ep = UDim2.new(opc.x or OPDX, opc.xo or 0, opc.y or OPDY, opc.yo or 0)
    op.Position = ep
    local t = TweenService:Create(root, TweenInfo.new(0.38, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Size=UDim2.fromOffset(opW,opH), Position=ep})
    t:Play()
    task.delay(0.42, function()
        root.Visible = false
        op.Visible = true
        syncRT()
        animLock = false
    end)
end
_G.__nhK = function()
    _G.__nh = false
    pcall(function() if _G.__nhNT and _G.__nhNT.Clear then _G.__nhNT.Clear() end end)
    pcall(function() if _G.__nhSetBoost then _G.__nhSetBoost(false) end end)
    _G.__nhHUD = nil _G.__nhFav = nil _G.__nhWarn = nil
    _G.__nhFilter = nil _G.__nhPopServers = nil _G.__nhPopFriends = nil
    _G.__nhLabels = nil _G.__nhChat = nil
    pcall(function() gui:Destroy() end)
    pcall(function() nGui2:Destroy() end)
    pcall(function() lg:Destroy() end)
    _G.__nhK = nil _G.__nhShow = nil
end
mb.MouseButton1Click:Connect(animHide)
db.MouseButton1Click:Connect(function() confirmClose(function() pcall(_G.__nhK) end) end)
UIS.InputBegan:Connect(function(input, gp)
    if gp or animLock then return end
    if input.KeyCode == TK then
        if root.Visible then animHide()
        elseif op.Visible then animShow() end
    end
end)
switchTab("home")
print("[NH 8] switched")

task.spawn(function()
    task.wait(3)
    while _G.__nh do
        local d = readBlob()
        if d then
            if type(d.announcement) == "table" then
                local a = d.announcement
                if a.id and a.id ~= "" then
                    local id = tostring(a.id)
                    if id ~= annSeen then
                        annSeen = id
                        saveAnnSeen(id)
                        pcall(showAnnouncement, a)
                    end
                end
            end
            if type(d.chat) == "table" then
                for _, msg in ipairs(d.chat) do
                    if type(msg) == "table" and msg.id and msg.msg then
                        local isAnn = msg.ann == true or msg.uid == 0
                        pcall(chatAppend, msg, isAnn)
                    end
                end
            end
        end
        task.wait(ANN_POLL)
    end
end)
print("[NH 9] poller up")

task.spawn(function()
    task.wait(1.6)
    print("[NH 10] fading loader")
    TweenService:Create(lbg, TweenInfo.new(0.5), {BackgroundTransparency=1}):Play()
    for _, d in ipairs(lbg:GetDescendants()) do
        if d:IsA("TextLabel") then TweenService:Create(d, TweenInfo.new(0.5), {TextTransparency=1}):Play() end
        if d:IsA("ImageLabel") then TweenService:Create(d, TweenInfo.new(0.5), {ImageTransparency=1}):Play() end
        if d:IsA("Frame") and d ~= lbg then TweenService:Create(d, TweenInfo.new(0.5), {BackgroundTransparency=1}):Play() end
        if d:IsA("UIStroke") then TweenService:Create(d, TweenInfo.new(0.5), {Transparency=1}):Play() end
    end
    task.wait(0.6)
    pcall(function() lg:Destroy() end)
    print("[NH 11] showing opener")
    op.Visible = true
    op.BackgroundTransparency = 0
    syncRT()
end)

task.delay(8, function()
    if not op.Visible and not root.Visible then
        print("[NH FORCE] forcing op visible")
        op.Visible = true
        op.BackgroundTransparency = 0
        syncRT()
    end
end)

task.delay(6, function()
    pcall(function()
        for _, g in ipairs(game:GetService("CoreGui"):GetChildren()) do
            if g.Name == "NullLoading" then g:Destroy() end
        end
        for _, g in ipairs(LP.PlayerGui:GetChildren()) do
            if g.Name == "NullLoading" then g:Destroy() end
        end
    end)
end)

print("[NullHub] v3 ready")

end)

-- FATAL BOOT ERROR FALLBACK
if not _ok then
    warn("[NullHub] FATAL BOOT ERROR:", tostring(_err))
    pcall(function()
        local player = game:GetService("Players").LocalPlayer
        local pg = player:FindFirstChildOfClass("PlayerGui") or player:WaitForChild("PlayerGui", 5)
        if not pg then return end
        local gui = Instance.new("ScreenGui")
        gui.Name = "NullHub_BootError"
        gui.ResetOnSpawn = false
        gui.Parent = pg
        local f = Instance.new("Frame")
        f.Size = UDim2.new(0, 460, 0, 90)
        f.Position = UDim2.new(0.5, -230, 0, 20)
        f.BackgroundColor3 = Color3.fromRGB(160, 40, 40)
        f.BorderSizePixel = 0
        f.Parent = gui
        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(0, 10)
        c.Parent = f
        local t = Instance.new("TextLabel")
        t.Size = UDim2.new(1, -20, 1, -20)
        t.Position = UDim2.new(0, 10, 0, 10)
        t.BackgroundTransparency = 1
        t.Text = "Null Hub boot error:\n" .. tostring(_err):sub(1, 220)
        t.TextColor3 = Color3.new(1, 1, 1)
        t.TextSize = 12
        t.TextWrapped = true
        t.TextXAlignment = Enum.TextXAlignment.Left
        t.TextYAlignment = Enum.TextYAlignment.Top
        t.Font = Enum.Font.Code
        t.Parent = f
    end)
end
