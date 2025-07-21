local createFluid = require("functions.createFluid")
local createRecipe = require("functions.createRecipe")

local Module = {}

function Module.createFluidWithRecipe(name, heatEnergy, category, time, ingredients, results)

    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/itens" .. "/" .. name .. ".png"

    local item = createFluid.createFluid(name, heatEnergy, icon_path)
    local recipe = createRecipe.createRecipe(name, category, time, ingredients, results)

    return {item, recipe}
end


-- example 
-- {
--     type = "recipe",
--     name = "advanced-oil-processing",
--     category = "oil-processing",
--     enabled = false,
--     energy_required = 5,
--     ingredients =
--     {
--       {type = "fluid", name = "water", amount = 50},
--       {type = "fluid", name = "crude-oil", amount = 100}
--     },
--     results =
--     {
--       {type = "fluid", name = "heavy-oil", amount = 25},
--       {type = "fluid", name = "light-oil", amount = 45},
--       {type = "fluid", name = "petroleum-gas", amount = 55}
--     },
--     allow_productivity = true,
--     icon = "__base__/graphics/icons/fluid/advanced-oil-processing.png",
--     subgroup = "fluid-recipes",
--     order = "a[oil-processing]-b[advanced-oil-processing]"
--   }
return Module
