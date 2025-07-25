local createBlock = require("functions.generic-functions.create-block-item")
local createRecipe = require("functions.generic-functions.create-recipe")

local Module = {}

-- @param name string O nome do item e receita (ex: "solar-painel").
-- @param subgroup grupo onde ele deve ser organizado na gui do jogador (ex: "intermediate-products").
-- @param stack_size quantidade do item por stack nos inventarios (ex: 50).
-- @param crafted_in categoria onde o item pode ser construido (ex: "advanced-crafting").
-- @param time tempo que demora para ser construido em segundos (ex: 10) 10s.
-- @param ingredients tabela de ingredientes que são necessarios para construir o item.
-- @param results tabela de saidas depois de construido o item .
function Module.createBlockItemWithRecipe(name, subgroup, stack_size, crafted_in, time, ingredients, results)
    local item = createBlock.createBlockItem(name,subgroup, stack_size)
    local recipe = createRecipe.createRecipe("blocos",name, crafted_in, time, ingredients, results)

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
--             name = "quantum-teleporter-equipment",
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