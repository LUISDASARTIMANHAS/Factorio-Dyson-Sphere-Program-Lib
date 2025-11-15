local LDAFunctions = require("__LDA-LIB__/init")
-- default create name
-- tech-dyson-nameofTech

-- TIER 3
-- Improved Logistics System
data:extend(
    {
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
