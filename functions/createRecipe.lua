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

return Module
