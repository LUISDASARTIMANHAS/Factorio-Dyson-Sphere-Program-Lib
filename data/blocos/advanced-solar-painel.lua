require("util")
local LDA = require("__LDA-LIB__/init")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local utils = LDA.utils
local animation_utils = LDA.utilsAnimations
local path_main = LDA.getBasePath()
local icon_path = path_main .. "graphics/entities/advanced-solar-panel.png"
local picture_layers = {
    animation_utils.createLayer(icon_path, 128, 128, nil, nil, util.by_pixel(-3, 3.5), 2),
    animation_utils.createLayer(icon_path, 128, 128, nil, nil, util.by_pixel(9.5, 6), 2, true)
}
-- definindo receita e item
data:extend(
        LDA.createBlockItemWithRecipe(
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
            collision_box = utils.createBoundingBox(3.4),
            selection_box = utils.createBoundingBox(3.5),
            damaged_trigger_effect = hit_effects.entity(),
            energy_source = {
                type = "electric",
                usage_priority = "solar"
            },
            picture = {layers = picture_layers},
            impact_category = "glass",
            production = "360kW"
        }
    }
)
