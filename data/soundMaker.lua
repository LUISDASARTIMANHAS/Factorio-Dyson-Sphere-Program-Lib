local path_main = "__Quantum-Teleporter__/"

data:extend(
    {
        {
            type = "sound",
            name = "teleport-sound",
            filename = path_main .. "audio/teleport.ogg",
            volume = 1.0
        },
        {
            type = "sound",
            name = "teleported-sound",
            filename = path_main .. "audio/teleported.ogg",
            volume = 1.0
        }
    }
)
