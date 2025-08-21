-- create-generic-recipe.lua
-- Esta função cria um protótipo genérico de item e receita.

local Module = {}

local createItem = require("functions.generic-functions.create-item")
local createRecipe = require("functions.generic-functions.create-recipe")


-- @param name string O nome do item e receita (ex: "solar-painel").
function Module.createGenericRecipe(name)
    local results = {
        {type = "item", name = "DSP-"..name, amount = 1}
    }
    local ingredients = {
        {type = "item", name = "iron-plate", amount = 1}
    }
    local item = createItem.createItem(name,"other-consumables", 50)
    local recipe = createRecipe.createRecipe("itens",name, "advanced-crafting", 10, ingredients, results)

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
