local path_main = "__Dyson-Sphere-Program-Lib__/"
local techUtil = require("functions.generic-functions.tech-util")
local Module = {}

-- @param name string O nome da tecnologia (ex: "sphere-program", "electromagnetism").
-- @param ingredients tabela de pacotes cientificos necessarios para a pesquisa (ex: "energy-matrix").
-- @param unlocks tabela de receitasa a desbloquear tecnologia (ex: "processor").
-- @param prerequisites tabela de pre requisitos necessarios para pesquisar essa pesquisa (ex: "tech-dyston-sphere-program").
function Module.createTechnology(name, ingredients, prerequisites, unlocks, pack_count)
    local final_prerequisites = {}

    -- Copiar os pré-requisitos existentes primeiro
    if prerequisites then
        for _, prereq in ipairs(prerequisites) do
            table.insert(final_prerequisites, prereq)
        end
    end

    -- Adicionar pré-requisitos automáticos usando a nova sub-função
    techUtil.addAutomaticPrerequisites(name, final_prerequisites)

    -- Garantir que não haja duplicatas nos pré-requisitos usando a nova sub-função
    local unique_final_prerequisites = techUtil.removeDuplicates(final_prerequisites)

    return {
        type = "technology",
        name = "tech-dyson-" .. name,
        icon = path_main .. "graficos/technology/tech-dyson-" .. name .. ".png",
        icon_size = 128,
        icon_mipmaps = 4,
        prerequisites = unique_final_prerequisites, -- Usar os pré-requisitos ajustados e únicos
        effects = unlocks or
            {
                {
                    type = "unlock-recipe",
                    recipe = "transport-belt",
                }
            },
        unit = {
            count = pack_count or 100,
            time = 30,
            ingredients = ingredients or
                {
                    {"automation-science-pack", 1}
                }
        },
        order = "Dyson-Sphere-Program-Lib"
    }
end

return Module
