local Module = {}

function Module.createRecipe(name, crafted_in, time,icon_path, ingredients, results)
    for _, v in ipairs(ingredients) do
        if v.type ~= "item" and v.type ~= "fluid" then
            error("Tipo de ingrediente inválido: '" .. tostring(v.type) .. "' em " .. name)
        end
    end
    for _, v in ipairs(results) do
        if v.type ~= "item" and v.type ~= "fluid" then
            error("Tipo de resultado inválido: '" .. tostring(v.type) .. "' em " .. name)
        end
    end

    return {
        type = "recipe",
        name = name,
        category = crafted_in,
        enabled = true,
        energy_required = time,
        icon = icon_path,
        ingredients = ingredients,
        results = results,
        maximum_productivity = 2,
        allow_quality = true,
        allowed_module_categories = {"productivity", "speed"},
        alternative_unlock_methods = {"tech-dyson-sphere-program"}
    }
end

-- example
--      {
--             type = "recipe",
--             name = "iron-ore",
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
