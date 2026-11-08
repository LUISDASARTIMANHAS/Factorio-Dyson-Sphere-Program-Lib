local utils = require("data.utils")

-- default create name
-- tech-dyson-nameofTech
-- default result name
-- "tech-dyson-nameofRecipe"

-- | Tier | Technology | ID | Prerequisites | Resource Consumption | Unlocks | Notes |
-- | --- | --- | --- | --- | --- | --- | --- |
-- | 0 | Dyson Sphere Program | 1 |  |  |  | Already Completed on Game Start |
-- | 1 | Electromagnetism | 1001 | Dyson Sphere Program (Tech) | Magnetic Coil: 10 | Wind Turbine; Tesla Tower; Mining Machine |  |

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
                "wind-turbine",
                "electric-mining-drill",
                "tesla-tower"
            },
            {"tech-dyson-sphere-program"},
            "magnetic-coil"
        )
    }
)