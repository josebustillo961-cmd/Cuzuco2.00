-- LocalScript dentro del TextButton

local TeleportService = game:GetService("TeleportService")
local player = game.Players.LocalPlayer

-- Código de tu servidor (del link que me diste)
local serverCode = "fd03113be6a54b41a126a9a9337141d8"

-- ID de tu juego (Steal a Brainrot)
local placeId = 109983668079237 -- reemplaza si tu ID cambia

-- Función para teletransportar
local function teleportPlayer()
    local success, errorMessage = pcall(function()
        -- Intenta enviar al jugador al servidor específico
        TeleportService:TeleportToPlaceInstance(placeId, serverCode, player)
    end)

    if not success then
        warn("No se pudo entrar al servidor específico: " .. errorMessage)
        -- Fallback: envía al jugador a cualquier servidor disponible de tu juego
        TeleportService:Teleport(placeId, player)
    end
end

-- Conecta la función al botón
script.Parent.MouseButton1Click:Connect(teleportPlayer)
