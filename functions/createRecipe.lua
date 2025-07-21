local Module = {}

function Module.createRecipe(name, category, energy, ingredients, results)
    return {
        type = "recipe",
        name = name .. "-recipe",
        category = category,
        enabled = false,
        energy_required = energy,
        ingredients = ingredients, 
        results = results,
        maximum_productivity = 2,
        allow_quality = true,
        allowed_module_categories = {"productivity", "speed"},
        alternative_unlock_methods = {"Dyson-Sphere-Program-Lib"}
    }
end


-- example 
--      {
--             type = "recipe",
--             name = "iron-ore-recipe",
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
return Module
