local LDAFunctions = require("__LDA-LIB__/init")
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
        LDAFunctions.createTechnologyTrigger(
            "electromagnetism",
            nil,
            nil,
            {
                type = "craft-item",
                item = "DSP-magnetic-coil",
                count = 10
            }
        )
    }
)