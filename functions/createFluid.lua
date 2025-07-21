local Module = {}

function Module.createFluid(name, energy, icon)
    return {
        type = "fluid",
        name = name .. "-fluid",
        subgroup = "fluid",
        default_temperature = 15,
        max_temperature = 100,
        -- 2kJ,
        heat_capacity = energy,
        icon = icon,
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
