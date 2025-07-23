local path_main = "__Dyson-Sphere-Program-Lib__/"

data:extend(
    {
        type = "electric-energy-interface",
        name = "ray-receiver-power",
        icon = path_main .. "graficos/blocos/ray-receiver.png",
        -- icon_size = 128,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "ray-receiver-power"},
        max_health = 300,
        energy_source = {
            type = "electric",
            usage_priority = "primary-output",
            buffer_capacity = "15MJ",
            output_flow_limit = "15MW",
            render_no_power_icon = false
        },
        energy_production = "15MW",
        energy_usage = "0W"
    }
)
