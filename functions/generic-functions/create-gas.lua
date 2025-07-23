local Module = {}

function Module.createGas(name, energy)
    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/itens/" .. name .. ".png"
    return {
        type = "fluid",
        name = name,
        subgroup = "fluid",
        default_temperature = 15,
        max_temperature = 5000,
        --"0.2kJ",
        heat_capacity = energy,
        icon = icon_path,
        icon_size = 128,
        base_color = {0.5, 0.5, 0.5},
        flow_color = {1.0, 1.0, 1.0},
        order = "a[fluid]-a[" .. name .. "]-a[" .. name .. "]",
        gas_temperature = 15,
        auto_barrel = false
    }
end

-- example
-- {
--     type = "fluid",
--     name = "steam",
--     subgroup = "fluid",
--     default_temperature = 15,
--     max_temperature = 5000,
--     heat_capacity = "0.2kJ",
--     icon = "__base__/graphics/icons/fluid/steam.png",
--     base_color = {0.5, 0.5, 0.5},
--     flow_color = {1.0, 1.0, 1.0},
--     order = "a[fluid]-a[water]-b[steam]",
--     gas_temperature = 15,
--     auto_barrel = false
--   },

return Module
