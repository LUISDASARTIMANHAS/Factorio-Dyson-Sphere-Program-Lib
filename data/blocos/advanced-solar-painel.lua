require("util")
local LDAFunctions = require("__LDA-LIB__/init")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local path_main = "__Dyson-Sphere-Program-Lib__/"
local icon_path = path_main .. "graficos/blocos/advanced-solar-panel.png"
-- definindo receita e item
data:extend(
        LDAFunctions.createBlockItemWithRecipe(
            "DSP-advanced-solar-panel",
            "power-generation",
            50,
            "advanced-crafting",
            6,
            {
                {type = "item", name = "copper-plate", amount = 10},
                {type = "item", name = "DSP-high-purity-silicon", amount = 10},
                {type = "item", name = "DSP-circuit-board", amount = 5}
            },
            {
                {type = "item", name = "DSP-advanced-solar-panel", amount = 1}
            }
        )
)

data:extend(
    {
        {
            type = "solar-panel",
            name = "DSP-advanced-solar-panel",
            icon = icon_path,
            icon_size = 128,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 3, result = "DSP-advanced-solar-panel"},
            fast_replaceable_group = "solar-panel",
            max_health = 200,
            corpse = "solar-panel-remnants",
            dying_explosion = "solar-panel-explosion",
            collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
            selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
            damaged_trigger_effect = hit_effects.entity(),
            energy_source = {
                type = "electric",
                usage_priority = "solar"
            },
            picture = {
                layers = {
                    {
                        filename = icon_path,
                        priority = "high",
                        -- width = 230,
                        -- height = 224,
                        size = 128,
                        shift = util.by_pixel(-3, 3.5),
                        scale = 2
                    },
                    {
                        filename = icon_path,
                        priority = "high",
                        -- width = 220,
                        -- height = 180,
                        size = 128,
                        shift = util.by_pixel(9.5, 6),
                        draw_as_shadow = true,
                        scale = 2
                    }
                }
            },
            impact_category = "glass",
            production = "360kW"
        }
    }
)
