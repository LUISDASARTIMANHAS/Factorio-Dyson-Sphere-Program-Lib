local Module = {}
local item_sounds = require("__base__.prototypes.item_sounds")

function Module.createOre(name, stack_size, fuel_category, fuel_value)
    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/itens/" .. name .. "-ore" .. ".png"
    return {
        {
            type = "item",
            name = "DSP-".. name.."-ore",
            icon = icon_path,
            icon_size = 128,
            pictures = {
                {size = 64, filename = "__base__/graphics/icons/iron-ore.png", scale = 0.5, mipmap_count = 4},
                {size = 64, filename = "__base__/graphics/icons/iron-ore-1.png", scale = 0.5, mipmap_count = 4},
                {size = 64, filename = "__base__/graphics/icons/iron-ore-2.png", scale = 0.5, mipmap_count = 4},
                {size = 64, filename = "__base__/graphics/icons/iron-ore-3.png", scale = 0.5, mipmap_count = 4}
            },
            fuel_category = fuel_category or nil,
            -- "4MJ"
            fuel_value = fuel_value or nil,
            subgroup = "raw-resource",
            color_hint = {text = "I"},
            order = "e[" .. name .. "-ore" .. "]",
            inventory_move_sound = item_sounds.resource_inventory_move,
            pick_sound = item_sounds.resource_inventory_pickup,
            drop_sound = item_sounds.resource_inventory_move,
            stack_size = stack_size or 100,
            weight = stack_size/2,
        },
        {
            type = "autoplace-control",
            name ="DSP-".. name .. "-ore",
            localised_name = {"", "[entity="..name .. "-ore".."] ", {"entity-name."..name .. "-ore"}},
            richness = true,
            order = "a-d",
            category = "resource"
        }
    }
end

-- example
-- {
--     type = "item",
--     name = "coal",
--     icon = "__base__/graphics/icons/coal.png",
--     dark_background_icon = "__base__/graphics/icons/coal-dark-background.png",
--     pictures =
--     {
--       {size = 64, filename = "__base__/graphics/icons/coal.png", scale = 0.5, mipmap_count = 4},
--       {size = 64, filename = "__base__/graphics/icons/coal-1.png", scale = 0.5, mipmap_count = 4},
--       {size = 64, filename = "__base__/graphics/icons/coal-2.png", scale = 0.5, mipmap_count = 4},
--       {size = 64, filename = "__base__/graphics/icons/coal-3.png", scale = 0.5, mipmap_count = 4}
--     },
--     fuel_category = "chemical",
--     fuel_value = "4MJ",
--     subgroup = "raw-resource",
--     order = "b[coal]",
--     inventory_move_sound = item_sounds.resource_inventory_move,
--     pick_sound = item_sounds.resource_inventory_pickup,
--     drop_sound = item_sounds.resource_inventory_move,
--     stack_size = 50,
--     weight = 2 * kg,
--     random_tint_color = item_tints.yellowing_coal
--   },

-- auto place
--  {
--     type = "autoplace-control",
--     name = "coal",
--     localised_name = {"", "[entity=coal] ", {"entity-name.coal"}},
--     richness = true,
--     order = "a-d",
--     category = "resource"
--   },
return Module
