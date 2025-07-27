local Module = {}

--- Processa a entrada 'ingredients' para o formato de ingredients alterados para o mod e esperado pelo Factorio.
-- Pode aceitar uma lista de nomes de ingredients (strings) ou o formato de efeitos completo.
-- @param unlocks table (opcional) Uma lista de nomes de receitas (strings) OU uma tabela de efeitos no formato Factorio.
-- @return table A tabela de ingredients no formato Factorio.
-- function Module.processIngredients(ingredients)
--     local processed_ingredients = {}
--     if ingredients then
--         -- Verificar se 'ingredients' é uma lista simples de nomes de receitas (strings)
--         if type(ingredients) == "table" and #ingredients > 0 and type(ingredients[1]) == "string" then
--             for _, ingredient in ipairs(ingredients) do
--                 table.insert(
--                     processed_ingredients,
--                     {
--                         type = ingredient.type,
--                         name = "DSP-" .. ingredient.name,
--                         amount = ingredient.amount
--                     }
--                 )
--             end
--         else
--             -- Se não for uma lista de strings, assumir que já está no formato correto de efeitos
--             processed_ingredients = ingredients
--         end
--     else
--         -- ingredients padrão se 'ingredients' for nil
--         processed_ingredients = {
--             {type = "item", name = "iron-plate", amount = 2000}
--         }
--     end
--     return processed_ingredients
-- end

function Module.createRecipe(typeIcon, name, crafted_in, time, ingredients, results)
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

    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/" .. typeIcon .. "/" .. name .. ".png"

    return {
        type = "recipe",
        name = "DSP-" .. name,
        category = crafted_in,
        enabled = false,
        energy_required = time,
        icon = icon_path,
        icon_size = 128,
        ingredients = ingredients,
        -- ingredients = Module.processIngredients(ingredients),
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
