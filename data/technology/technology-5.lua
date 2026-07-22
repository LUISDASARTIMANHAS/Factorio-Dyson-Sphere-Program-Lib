local utils = require("data.utils")

-- default create name
-- nameofTech

-- TIER 5


-- Planetary Logistics System
data:extend(
    {
        utils.createDSPTechnology(
            "planetary-logistics-system",
            {
                {"electromagnetic-matrix", 4},
                {"energy-matrix", 1}
            },
            {
                "tech-dyson-turbo-transport-belt",
                "tech-dyson-sphere-program"
            },
            {"fast-transport-belt","fast-underground-belt","fast-splitter"},
            400
        )
    }
)

-- Titanium_Smelting
data:extend(
    {
        utils.createDSPTechnology(
            "titanium-smelting",
            {
                {"electromagnetic-matrix", 2},
                {"energy-matrix", 2}
            },
            {
                "tech-dyson-steel-processing",
                "tech-dyson-sphere-program"
            },
            {"titanium-ingot"},
            100
        )
    }
)

-- High-Strength Titanium Alloy
data:extend(
    {
        utils.createDSPTechnology(
            "high-strength-titanium-alloy",
            {
                {"electromagnetic-matrix", 80},
                {"energy-matrix", 80},
                {"structure-matrix", 8}
            },
            {
                "tech-dyson-titanium-smelting",
                "tech-dyson-sphere-program"
            },
            {"titanium-alloy"},
            10
        )
    }
)

-- reinforced thruster
data:extend(
    {
        utils.createDSPTechnology(
            "reinforced-thruster",
            {
                {"energy-matrix", 16}
            },
            {
                "tech-dyson-sphere-program"
            },
            {"reinforced-thruster"},
            100
        )
    }
)

-- Interstellar Logistics System
data:extend(
    {
        utils.createDSPTechnology(
            "interstellar-logistics-system",
            {
                {"electromagnetic-matrix", 120},
                {"energy-matrix", 120},
                {"structure-matrix", 12}
            },
            {
                "tech-dyson-high-strength-titanium-alloy",
                "tech-dyson-reinforced-thruster",
                "tech-dyson-sphere-program"
            },
            {"roboport","logistic-robot"},
            10
        )
    }
)

-- Interstellar Power Transmission
data:extend(
    {
        -- unlock energy-exchanger
        utils.createDSPTechnology(
            "interstellar-power-transmission",
            {
                {"electromagnetic-matrix", 120},
                {"energy-matrix", 120},
                {"structure-matrix", 12}
            },
            {
                "sphere-program"
            },
            {"substation"},
            100
        )
    }
)

-- Gas Giants Exploitation
data:extend(
    {
        -- unlock Orbital Collector
        utils.createDSPTechnology(
            "gas-giants-exploitation",
            {
                {"electromagnetic-matrix", 12},
                {"energy-matrix", 12},
                {"structure-matrix", 12}
            },
            {
                "tech-dyson-interstellar-logistics-system",
                "tech-dyson-interstellar-power-transmission",
                "tech-dyson-sphere-program"
            },
            {"fluorine","fluoroketone-hot"},
            100
        )
    }
)

-- High-Strength Crystal
data:extend(
    {
        utils.createDSPTechnology(
            "high-strength-crystal",
            -- ingredients
            {
                {"electromagnetic-matrix", 6},
                {"energy-matrix", 6}
            },
            -- prerequisites
            {
                "tech-dyson-steel-processing"
            },
            -- unlocks
            {
                "titanium-crystal"
            },
            100
        )
    }
)

-- Processor
data:extend(
    {
        utils.createDSPTechnology(
            "processor",
            -- ingredients
            {
                {"electromagnetic-matrix", 8}
            },
            -- prerequisites
            {
                "tech-dyson-sphere-program"
            },
            -- unlocks
            {
                "processor"
            },
            100
        )
    }
)
