local tech = require("functions.create-technology")
local techTrigger = require("functions.create-technology-trigger")
-- default create name
-- tech-dyson-nameofTech
-- default result name
-- "DSP-nameofRecipe"

-- TIER 1
-- tech-dyson-sphere-program
data:extend(
    {
        tech.createTechnology(
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
        techTrigger.createTechnologyTrigger(
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