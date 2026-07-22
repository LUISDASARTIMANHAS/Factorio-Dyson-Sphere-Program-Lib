local LDAFunctions = require("__LDA-LIB__/init")
local utils = {}
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

function utils.createDSPTechnology(name, ingredients, prerequisites, unlocks, time, count)
    return LDAFunctions.createTechnology("tech-dyson-"..name, ingredients, prerequisites, unlocks, time, count, false)
end
function utils.createDSPTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item)
    return LDAFunctions.createTechnologyCraftEntityTrigger("tech-dyson-" .. name, unlocks, prerequisites, item, 10)
end

function utils.createDSPTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
    return LDAFunctions.createTechnologyMineEntityTrigger("tech-dyson-" .. name, unlocks, prerequisites, mine_entity)
end

return utils