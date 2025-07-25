local path_main = "__Dyson-Sphere-Program-Lib__/"
local techUtil = require("functions.generic-functions.tech-util")

local Module = {}

-- @param name string O nome da tecnologia (ex: "sphere-program", "electromagnetism").
-- @param unlocks tabela de receitasa a desbloquear tecnologia (ex: "processor").
-- @param prerequisites tabela de pre requisitos necessarios para pesquisar essa pesquisa (ex: "tech-dyston-sphere-program").
function Module.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
    -- Copiar os pré-requisitos existentes primeiro
    local final_prerequisites = techUtil.copyPrerequisites(prerequisites)

    -- Adicionar pré-requisitos automáticos usando a sub-função
    techUtil.addAutomaticPrerequisites(name, final_prerequisites)

    -- Garantir que não haja duplicatas nos pré-requisitos usando a sub-função
    local unique_final_prerequisites = techUtil.removeDuplicates(final_prerequisites)

    -- Processar os desbloqueios (unlocks) usando a sub-função
    local final_unlocks = techUtil.processUnlocks(unlocks)

    return {
        type = "technology",
        name = "tech-dyson-" .. name,
        icon = path_main .. "graficos/technology/tech-dyson-" .. name .. ".png",
        icon_size = 128,
        icon_mipmaps = 4,
        prerequisites = unique_final_prerequisites,
        effects = final_unlocks,
        -- so e permitido 1 trigger
        research_trigger = research_trigger,
        order = "Dyson-Sphere-Program-Lib"
    }
end

-- example
-- {
--     type = "technology",
--     name = "steam-power",
--     icon = "__base__/graphics/technology/steam-power.png",
--     icon_size = 256,
--     effects =
--     {
--       {
--         type = "unlock-recipe",
--         recipe = "pipe"
--       },
--       {
--         type = "unlock-recipe",
--         recipe = "pipe-to-ground"
--       },
--       {
--         type = "unlock-recipe",
--         recipe = "offshore-pump"
--       },
--       {
--         type = "unlock-recipe",
--         recipe = "boiler"
--       },
--       {
--         type = "unlock-recipe",
--         recipe = "steam-engine"
--       }
--     },
--     research_trigger =
--     {
--       type = "craft-item",
--       item = "iron-plate",
--       count = 50
--     }
--   },

return Module
