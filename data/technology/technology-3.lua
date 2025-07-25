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
            {"fast-splitter", "fast-transport-belt","fast-underground-belt"},
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
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-automatic-metallurgy"
            },
            {
                "steel"
            },
            120
        )
    }
)

-- Combustible Unit
data:extend(
    {
        tech.createTechnology(
            "combustible-unit",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            {
                "combustible-unit"
            },
            120
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
            {
                "silicon-ore","energetic-graphite","high-purity-silicon"
            },
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
            {
                "thermal-power-plant"
            },
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
            {
                "pumpjack","oil-refinery"
            },
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
