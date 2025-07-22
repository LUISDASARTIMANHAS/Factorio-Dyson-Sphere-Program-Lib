local createItemWithRecipe = require("functions.generic-functions.create-item-with-recipe")
-- category = "science-matrices" feito em Matrix Lab
-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge
-- category = "particle-collider" feito em Miniature Particle Collider

local Module = {}

function Module.createParticleColiderItemWithRecipe(name, time, qtde, ingredients, stack_size)
    local results = {
        {type = "item", name = name, amount = qtde}
    }
    local category = "particle-collider"
    local size = stack_size or 200

    local itemAndRecipe =
        createItemWithRecipe.createItemWithRecipe(name, "itens", size, category, time, ingredients, results)

    return itemAndRecipe
end

-- example
--    {
--         {
--             type = "item",
--             name = "iron-ore",
--             icon = path_main .. "graficos/itens/iron-ore.png",
--             icon_size = 128,
--             subgroup = "itens",
--             -- diz pro jogo que o equipamento deve ser colocado com o item especificado
--             place_as_equipment_result = "quantum-teleporter-equipment",
--             order = "a[quantum-teleporter-item]",
--             stack_size = 1
--         },
--         {
--             type = "recipe",
--             name = "iron-ore",
--             category = "particle-collider",
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
