local tech = require("functions.create-technology")
-- default create name
-- tech-dyson-nameofTech

-- TIER 3
-- Improved Logistics System
data:extend(
    {
        tech.createTechnology(
            "improved-logistics-system",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-basic-logistics-system"
            },
            nil,
            100
        )
    }
)

-- Steel Smelting
data:extend(
    {
        tech.createTechnology(
            "steel-smelting",
            {
                {"electromagnetic-matrix", 12}
            },
            {
                "tech-dyson-automatic-metallurgy"
            },
            nil,
            10
        )
    }
)

-- Combustible Unit
data:extend(
    {
        tech.createTechnology(
            "combustible-unit",
            {
                {"electromagnetic-matrix", 12}
            },
            nil,
            nil,
            10
        )
    }
)

-- Smelting Purification
data:extend(
    {
        tech.createTechnology(
            "smelting-purification",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-automatic-metallurgy"
            },
            nil,
            100
        )
    }
)

-- Thermal Power
data:extend(
    {
        tech.createTechnology(
            "thermal-power",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-basic-assembling-processes"
            },
            nil,
            30
        )
    }
)

-- Plasma Extract Refining
data:extend(
    {
        tech.createTechnology(
            "plasma-extract-refining",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-basic-assembling-processes"
            },
            nil,
            100
        )
    }
)

-- Battlefield Analysis Base
data:extend(
    {
        tech.createTechnology(
            "battlefield-analysis-base",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            nil,
            100
        )
    }
)