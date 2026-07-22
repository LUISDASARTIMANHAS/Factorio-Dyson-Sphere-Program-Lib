local utils = require("data.utils")

-- default create name
-- tech-dyson-nameofTech
-- default result name
-- "tech-dyson-nameofRecipe"

-- TIER 1
-- tech-dyson-sphere-program
data:extend(
    {
        utils.createDSPTechnology(
            "sphere-program",
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
        utils.createDSPTechnologyCraftEntityTrigger(
            "electromagnetism",
            {
                "electric-mining-drill"
            },
            {"tech-dyson-sphere-program"},
            "magnetic-coil"
        )
    }
)