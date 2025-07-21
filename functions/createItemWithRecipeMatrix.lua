local createItem = require("functions.createItem")
local createRecipe = require("functions.createRecipe")
-- category = "science-matrices" feito em Matrix Lab

local Module = {}

function Module.createItemWithRecipeMatrix(type, energy,qtde, ingredients)
    local nameMatrix = type .. "-matrix"
    local results = {
        {type = "item", name = nameMatrix, amount = qtde}
    };

    local item = createItem.createItem(nameMatrix, 200)
    local recipe = createRecipe.createRecipe(nameMatrix, "science-matrices", energy, ingredients, results)

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
