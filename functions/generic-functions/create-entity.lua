local Module = {}
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

function Module.createBlockItem(typeEntity, name, subgroup, stack_size)
    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/blocos/" .. name .. ".png"
    return {
        type = typeEntity,
        name = "DSP-".. name,
        icon = icon_path,
        icon_size = 128,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 1, result = "advanced-solar-panel"},
        fast_replaceable_group = "solar-panel",
        max_health = 200,
        --- Corpos que aparecem quando destruído
        corpse = "big-remnants",
        -- Explosão ao ser destruído
        dying_explosion = "big-explosion",
        -- Caixa de seleção visual
        selection_box = {{-1.2, -1.2}, {1.2, 1.2}},
        -- Caixa de colisão
        collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
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
end

-- example
-- data:extend(
--     {
--         type = "solar-panel",
--         name = "advanced-solar-panel",
--         icon = icon_path,
--         icon_size = 128,
--         flags = {"placeable-neutral", "player-creation"},
--         minable = {mining_time = 3, result = "advanced-solar-panel"},
--         fast_replaceable_group = "solar-panel",
--         max_health = 200,
--         corpse = "solar-panel-remnants",
--         dying_explosion = "solar-panel-explosion",
--         collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
--         selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
--         damaged_trigger_effect = hit_effects.entity(),
--         energy_source = {
--             type = "electric",
--             usage_priority = "solar"
--         },
--         picture = {
--             layers = {
--                 {
--                     filename = icon_path,
--                     priority = "high",
--                     -- width = 230,
--                     -- height = 224,
--                     size = 128,
--                     shift = util.by_pixel(-3, 3.5),
--                     scale = 2
--                 },
--                 {
--                     filename = icon_path,
--                     priority = "high",
--                     -- width = 220,
--                     -- height = 180,
--                     size = 128,
--                     shift = util.by_pixel(9.5, 6),
--                     draw_as_shadow = true,
--                     scale = 2
--                 }
--             }
--         },
--         impact_category = "glass",
--         production = "360kW"
--     }
-- )

return Module
