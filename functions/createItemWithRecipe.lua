local createItem = require("functions.createItem")
local createRecipe = require("functions.createRecipe")

local Module = {}

function Module.createItemWithRecipe(name, type, stack_size, category, energy, ingredients, results)
    local allowed_types = {itens=true, blocos=true}
    if not allowed_types[type] then
        error("Tipo inválido para ícone: " .. tostring(type) .. " (esperado 'itens' ou 'blocos')")
    end

    local item = createItem.createItem(name, stack_size)
    local recipe = createRecipe.createRecipe(name, category, energy, ingredients, results)

    return {item, recipe}
end


-- example 
-- {
--             type = "item",
--             name = "quantum-teleporter-equipment",
--             icon = path_main .. "graficos/itens/quantum-teleporter-equipment-128.png",
--             icon_size = 128,
--             subgroup = "itens",
--             -- diz pro jogo que o equipamento deve ser colocado com o item especificado
--             place_as_equipment_result = "quantum-teleporter-equipment",
--             order = "a[quantum-teleporter-item]",
--             stack_size = 1
--         },
--         {
--             type = "recipe",
--             name = "quantum-teleporter-equipment-recipe",
--             category = "advanced-crafting",
--             enabled = false,
--             energy_required = 120,
--             ingredients = {
--                 {type = "item", name = "supercapacitor", amount = 4096},
--                 {type = "item", name = "tungsten-plate", amount = 256},
--                 {type = "item", name = "carbon-fiber", amount = 64},
--                 {type = "item", name = "quantum-processor", amount = 256}
--             },
--             results = {
--                 {type = "item", name = "quantum-teleporter-equipment", amount = 1}
--             },
--             alternative_unlock_methods = {"Quantum-Teleporter"}
--         }
--     }
return Module
