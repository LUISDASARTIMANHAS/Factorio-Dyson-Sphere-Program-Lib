local path_main = "__Dyson-Sphere-Program-Lib__/"
local techUtil = require("functions.generic-functions.tech-util")
local Module = {}

-- @param name string O nome da tecnologia (ex: "sphere-program", "electromagnetism").
-- @param ingredients tabela de pacotes cientificos necessarios para a pesquisa (ex: "energy-matrix").
-- @param unlocks tabela de receitasa a desbloquear tecnologia (ex: "processor").
-- @param prerequisites tabela de pre requisitos necessarios para pesquisar essa pesquisa (ex: "tech-dyston-sphere-program").
function Module.createTechnology(name, ingredients, prerequisites, unlocks, pack_count)
    -- Copiar os pré-requisitos existentes primeiro
    local final_prerequisites = techUtil.copyPrerequisites(prerequisites)

    -- Adicionar pré-requisitos automáticos usando a sub-função
    techUtil.addAutomaticPrerequisites(name, final_prerequisites)

    -- Garantir que não haja duplicatas nos pré-requisitos usando a sub-função
    local unique_final_prerequisites = techUtil.removeDuplicates(final_prerequisites)

    -- Processar os desbloqueios (unlocks) usando a sub-função
    local final_unlocks = techUtil.processUnlocks(unlocks)

    -- Processar os desbloqueios (unlocks) usando a sub-função
    local final_ingredients = techUtil.processIngredients(ingredients)

    return {
        type = "technology",
        name = "tech-dyson-" .. name,
        icon = path_main .. "graficos/technology/tech-dyson-" .. name .. ".png",
        icon_size = 128,
        icon_mipmaps = 4,
        prerequisites = unique_final_prerequisites, -- Usar os pré-requisitos ajustados e únicos
        effects = final_unlocks,
        unit = {
            count = pack_count or 100,
            time = 30,
            ingredients = final_ingredients
        },
        order = "Dyson-Sphere-Program-Lib"
    }
end

return Module
