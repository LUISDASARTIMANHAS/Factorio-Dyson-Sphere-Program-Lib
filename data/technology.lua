local tech = require("functions.createTechnology")
-- default create name 
-- tech-dyson-nameofTech

data:extend(
    {
        tech.createTechnology(
            "sphere-program",
            {
                {"automation-science-pack", 3},
                {"logistic-science-pack", 3}
            },
            {"automation"},
            500,
            20
        )
    }
)

-- Electromagnetism
data:extend(
    {
        tech.createTechnology(
            "electromagnetism",
            {
                {"magnetic-coil", 1},
            },
            {"tech-dyson-sphere-program"},
            10,
            20
        )
    }
)

-- Electromagnetism
data:extend(
    {
        tech.createTechnology(
            "electromagnetism",
            {
                {"magnetic-coil", 1},
            },
            {"tech-dyson-sphere-program"},
            10,
            20
        )
    }
)

-- Electromagnetism
data:extend(
    {
        tech.createTechnology(
            "electromagnetism",
            {
                {"magnetic-coil", 1},
            },
            {"tech-dyson-sphere-program"},
            10,
            20
        )
    }
)