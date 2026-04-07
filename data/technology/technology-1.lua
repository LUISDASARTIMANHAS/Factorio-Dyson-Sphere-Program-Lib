local LDAFunctions = require("__LDA-LIB__/init")
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

-- default create name
-- tech-dyson-nameofTech
-- default result name
-- "DSP-nameofRecipe"

-- TIER 1
-- tech-dyson-sphere-program
data:extend(
    {
        LDAFunctions.createTechnology(
            "tech-dyson-sphere-program",
            {
                {"automation-science-pack", 3},
                {"logistic-science-pack", 3}
            },
            {
                "automation"
            },
            -- unlocks
            {
                "magnet","magnetic-coil","circuit-board","gear","stone-brick"
            },
            500
        )
    }
)

-- Electromagnetism For Trigger
data:extend(
    {
        LDAFunctions.createTechnologyCraftEntityTrigger(
            "electromagnetism",
            {
                "electric-mining-drill"
            },
            {"tech-dyson-sphere-program"},
            "DSP-magnetic-coil",
            10
        )
    }
)