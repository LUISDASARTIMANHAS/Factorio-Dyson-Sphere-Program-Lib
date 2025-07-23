local Module = {}

function Module.createFluid(name, energy)
    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/fluids-128/" .. name .. ".png"
    return {
        type = "fluid",
        name = name,
        subgroup = "fluid",
        default_temperature = 15,
        max_temperature = 100,
        -- 2kJ,
        heat_capacity = energy,
        base_color = {0, 0.34, 0.6},
        flow_color = {0.7, 0.7, 0.7},
        icon = icon_path,
        order = "a[fluid]-a[" .. name .. "]-a[" .. name .. "]"
    }
end

-- example
-- {
--     type = "fluid",
--     name = "water",
--     subgroup = "fluid",
--     default_temperature = 15,
--     max_temperature = 100,
--     heat_capacity = "2kJ",
--     base_color = {0, 0.34, 0.6},
--     flow_color = {0.7, 0.7, 0.7},
--     icon = "__base__/graphics/icons/fluid/water.png",
--     order = "a[fluid]-a[water]-a[water]"
--   },

return Module
