local createItem = require("functions.createItem")
local createRecipe = require("functions.createRecipe")
-- category = "science-matrices" feito em Matrix Lab

local Module = {}

function Module.createItemWithRecipeMatrix(type, energy,qtde, ingredients)
    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/itens/" .. type .. "-matrix.png"
    local nameMatrix = type .. "-matrix"
    local results = {
        {type = "item", name = nameMatrix, amount = qtde}
    };

    local item = createItem.createItem(nameMatrix, icon_path, 200)
    local recipe = createRecipe.createRecipe(nameMatrix, "science-matrices", energy, ingredients, results)

    return {item, recipe}
end

return Module
