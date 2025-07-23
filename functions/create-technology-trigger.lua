local path_main = "__Dyson-Sphere-Program-Lib__/"

local Module = {}

function Module.createTechnologyTrigger(name, unlocks,prerequisites, research_trigger)
    return {
        type = "technology",
        name = "tech-dyson-" .. name,
        icon = path_main .. "graficos/technology/tech-dyson-" .. name .. ".png",
        icon_size = 128,
        icon_mipmaps = 4,
        prerequisites = prerequisites or
            {
                "automation"
            },
        effects = unlocks or
            {
                {
                    type = "unlock-recipe",
                    recipe = "transport-belt"
                }
            },
        research_trigger = research_trigger,
        order = "Dyson-Sphere-Program-Lib"
    }
end

-- example
-- {
--     type = "technology",
--     name = "steam-power",
--     icon = "__base__/graphics/technology/steam-power.png",
--     icon_size = 256,
--     effects =
--     {
--       {
--         type = "unlock-recipe",
--         recipe = "pipe"
--       },
--       {
--         type = "unlock-recipe",
--         recipe = "pipe-to-ground"
--       },
--       {
--         type = "unlock-recipe",
--         recipe = "offshore-pump"
--       },
--       {
--         type = "unlock-recipe",
--         recipe = "boiler"
--       },
--       {
--         type = "unlock-recipe",
--         recipe = "steam-engine"
--       }
--     },
--     research_trigger =
--     {
--       type = "craft-item",
--       item = "iron-plate",
--       count = 50
--     }
--   },

return Module
