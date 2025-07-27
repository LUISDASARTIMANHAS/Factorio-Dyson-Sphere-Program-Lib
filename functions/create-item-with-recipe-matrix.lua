local createItemSearch = require("functions.generic-functions.create-item-search")
local createRecipe = require("functions.generic-functions.create-recipe")

-- category = "science-matrices" feito em Matrix Lab

local Module = {}

function Module.createItemWithRecipeMatrix(name, time, qtde, ingredients)
    local nameMatrix =name .. "-matrix"
    local crafted_in = "DSP-science-matrices"
    local results = {
        {type = "item", name = "DSP-"..nameMatrix, amount = qtde}
    }

    local item = createItemSearch.createItemSearch(nameMatrix,200)
    local recipe = createRecipe.createRecipe("itens", nameMatrix, crafted_in, time, ingredients, results)

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
