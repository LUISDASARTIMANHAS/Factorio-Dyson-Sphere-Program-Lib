local createItem = require("functions.createItem")
local createRecipe = require("functions.createRecipe")

local Module = {}

function Module.createItemWithRecipe(name, type, stack_size, category, energy, ingredients, results)
    local allowed_types = {itens=true, blocos=true}
    if not allowed_types[type] then
        error("Tipo inválido para ícone: " .. tostring(type) .. " (esperado 'itens' ou 'blocos')")
    end

    local path_main = "__Dyson-Sphere-Program-Lib__/"
    local icon_path = path_main .. "graficos/" .. type .. "/" .. name .. ".png"

    local item = createItem.createItem(name, icon_path, stack_size)
    local recipe = createRecipe.createRecipe(name, category, energy, ingredients, results)

    return {item, recipe}
end

return Module
