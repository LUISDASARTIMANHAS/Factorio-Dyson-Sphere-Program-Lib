require("util")
local functions = require("functions.init")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local path_main = "__Dyson-Sphere-Program-Lib__/"
local icon_path = path_main .. "graficos/blocos/advanced-solar-panel.png"
-- definindo receita e item
data:extend(
        functions.createBlockItemWithRecipe(
            "advanced-solar-panel",
            "power-generation",
            50,
            "advanced-crafting",
            6,
            {
                {type = "item", name = "copper-plate", amount = 10},
                {type = "item", name = "high-purity-silicon", amount = 10},
                {type = "item", name = "circuit-board", amount = 5}
            },
            {
                {type = "item", name = "advanced-solar-panel", amount = 1}
            }
        )
)

data:extend(
    {
        {
            type = "solar-panel",
            name = "advanced-solar-panel",
            icon = icon_path,
            icon_size = 128,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 3, result = "advanced-solar-panel"},
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
        -- {
        --     type = "electric-energy-interface",
        --     name = "hidden-electric-energy-interface",
        --     icon = icon_path,
        --     localised_name = {"item-name.advanced-solar-panel"},
        --     hidden = true,
        --     max_health = 150,
        --     collision_box = {{0, 0}, {0, 0}},
        --     selection_box = {{-0, -0}, {0, 0}},
        --     selectable_in_game = false,
        --     energy_source = {
        --         type = "electric",
        --         buffer_capacity = "10GJ",
        --         usage_priority = "tertiary",
        --         input_flow_limit = "0kW",
        --         output_flow_limit = "500GW"
        --     },
        --     energy_production = "500GW",
        --     energy_usage = "0kW",
        --     picture = {
        --         filename = "__core__/graphics/empty.png",
        --         priority = "extra-high",
        --         width = 1,
        --         height = 1
        --     },
        --     order = "h-e-e-i"
        -- }
    }
)
