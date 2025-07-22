local Module = {}
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

function Module.createBlock(name, stack_size)
    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/blocos/" .. name .. ".png"
    return {
        type = "item",
        name = name,
        icon = icon_path,
        color_hint = {text = "1"},
        subgroup = "blocks",
        order = "a[" .. name .. "]",
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        place_result = name,
        stack_size = stack_size or 1,
        random_tint_color = item_tints.iron_rust
    }
end

-- example
-- {
--     type = "item",
--     name = "assembling-machine-1",
--     icon = "__base__/graphics/icons/assembling-machine-1.png",
--     subgroup = "production-machine",
--     color_hint = { text = "1" },
--     order = "a[assembling-machine-1]",
--     inventory_move_sound = item_sounds.mechanical_inventory_move,
--     pick_sound = item_sounds.mechanical_inventory_pickup,
--     drop_sound = item_sounds.mechanical_inventory_move,
--     place_result = "assembling-machine-1",
--     stack_size = 50,
--     random_tint_color = item_tints.iron_rust
--   },
return Module
