local Module = {}
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

function Module.createItem(name, subgroup, stack_size)
    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/itens/" .. name .. ".png"
    return {
        type = "item",
        name = "DSP-"..name,
        icon = icon_path,
        icon_size = 128,
        color_hint = {text = "1"},
        subgroup = subgroup or "intermediate-products",
        order = "b["..subgroup.."]-a[" .. name .. "item" .. "]",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        stack_size = stack_size or 100,
        weight = stack_size/2,
        ingredient_to_weight_coefficient = 0.28,
        random_tint_color = item_tints.iron_rust
    }
end

-- example
-- {
--     type = "item",
--     name = "electronic-circuit",
--     icon = "__base__/graphics/icons/electronic-circuit.png",
--     subgroup = "intermediate-product",
--     color_hint = { text = "1" },
--     order = "b[circuits]-a[electronic-circuit]",
--     inventory_move_sound = item_sounds.electric_small_inventory_move,
--     pick_sound = item_sounds.electric_small_inventory_pickup,
--     drop_sound = item_sounds.electric_small_inventory_move,
--     stack_size = 200,
--     ingredient_to_weight_coefficient = 0.28
--   },

return Module
