local Module = {}
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

function Module.createBlockItem(name, subgroup, stack_size)
    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/blocos/" .. name .. ".png"
    return {
        type = "item",
        name = name,
        icon = icon_path,
        icon_size = 128,
        color_hint = {text = "1"},
        subgroup = subgroup or "production",
        order = "a[" .. name .. "]",
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        place_result = name,
        stack_size = stack_size or 1,
        -- ex: 50/2 = 25
        weight = stack_size / 2,
        random_tint_color = item_tints.iron_rust
    }
end

-- example
-- data:extend(
--     {
--         {
--             type = "solar-panel",
--             name = "advanced-solar-panel",
--             icon = icon_path,
--             icon_size = 128,
--             flags = {"placeable-neutral", "player-creation"},
--             minable = {mining_time = 3, result = "advanced-solar-panel"},
--             fast_replaceable_group = "solar-panel",
--             max_health = 200,
--             corpse = "solar-panel-remnants",
--             dying_explosion = "solar-panel-explosion",
--             collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
--             selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
--             damaged_trigger_effect = hit_effects.entity(),
--             energy_source = {
--                 type = "electric",
--                 usage_priority = "solar"
--             },
--             picture = {
--                 layers = {
--                     {
--                         filename = icon_path,
--                         priority = "high",
--                         -- width = 230,
--                         -- height = 224,
--                         size = 128,
--                         shift = util.by_pixel(-3, 3.5),
--                         scale = 2
--                     },
--                     {
--                         filename = icon_path,
--                         priority = "high",
--                         -- width = 220,
--                         -- height = 180,
--                         size = 128,
--                         shift = util.by_pixel(9.5, 6),
--                         draw_as_shadow = true,
--                         scale = 2
--                     }
--                 }
--             },
--             impact_category = "glass",
--             production = "360kW"
--         },
--         {
--             type = "electric-energy-interface",
--             name = "hidden-electric-energy-interface",
--             icon = icon_path,
--             localised_name = {"item-name.advanced-solar-panel"},
--             hidden = true,
--             max_health = 150,
--             collision_box = {{0, 0}, {0, 0}},
--             selection_box = {{-0, -0}, {0, 0}},
--             selectable_in_game = false,
--             energy_source = {
--                 type = "electric",
--                 buffer_capacity = "10GJ",
--                 usage_priority = "tertiary",
--                 input_flow_limit = "0kW",
--                 output_flow_limit = "500GW"
--             },
--             energy_production = "500GW",
--             energy_usage = "0kW",
--             picture = {
--                 filename = "__core__/graphics/empty.png",
--                 priority = "extra-high",
--                 width = 1,
--                 height = 1
--             },
--             order = "h-e-e-i"
--         }
--     }
-- )

return Module
