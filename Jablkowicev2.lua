--pozdrawiam spoconych dev partowic

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/BbxzJKTw"))()
local Window = Library.new(true, "Freemodelowice v2 Fucker, Podworko pozdrawia", UDim2.new(0, 600, 0, 350))

local function Killall()
    for i, v in next, game:GetService("Players"):GetPlayers() do
        if v.Name ~= game:GetService("Players").LocalPlayer.Name then
            local Settings = {v.Character:FindFirstChildOfClass("Humanoid"), 100, 0, 0}
    
            game:GetService("ReplicatedStorage")["ACS_Engine"].Eventos.Damage:FireServer(unpack(Settings))
        end
    end

    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
end

local function Explodeall()
    local Settings = {
        ["ExplosiveHit"] = true,
        ["ExPressure"] = math.huge,
        ["ExpRadius"] = math.huge,
        ["DestroyJointRadiusPercent"] = math.huge,
        ["ExplosionDamage"] = math.huge,
    }

    for i, v in next, game:GetService("Players"):GetPlayers() do
        game:GetService("ReplicatedStorage").ACS_Engine.Eventos.Hit:FireServer(v.Character.Head.Position, v.Character.Head, v.Character.Head.Position, Enum.Material.Plastic, Settings)
    end
    
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
end

local Destruction = Window:Category("Destruction")
local FREEMODELOWICE = Destruction:Sector("FREEMODELOWICE")

FREEMODELOWICE:Cheat("Button", "Potenszny deweloper montana :o", function()
    Killall()
end, {text = "Kill all"})

FREEMODELOWICE:Cheat("Button", "#Montana skid", function()
    Explodeall()
end, {text = "Explode all"})
