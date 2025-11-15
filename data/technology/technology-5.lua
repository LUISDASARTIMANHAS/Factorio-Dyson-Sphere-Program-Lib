local LDAFunctions = require("__LDA-LIB__/init")
-- default create name
-- tech-dyson-nameofTech

-- TIER 5


-- Planetary Logistics System
data:extend(
    {
        LDAFunctions.createTechnology(
            "planetary-logistics-system",
            {
                {"electromagnetic-matrix", 4},
                {"energy-matrix", 1}
            },
            {
                "turbo-transport-belt",
                "tech-dyson-sphere-program"
            },
            nil,
            400
        )
    }
)

-- Titanium_Smelting
data:extend(
    {
        LDAFunctions.createTechnology(
            "titanium-smelting",
            {
                {"electromagnetic-matrix", 2},
                {"energy-matrix", 2}
            },
            {
                "steel-processing",
                "tech-dyson-sphere-program"
            },
            nil,
            100
        )
    }
)

-- High-Strength Titanium Alloy
data:extend(
    {
        LDAFunctions.createTechnology(
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
            nil,
            10
        )
    }
)

-- reinforced thruster
data:extend(
    {
        LDAFunctions.createTechnology(
            "reinforced-thruster",
            {
                {"energy-matrix", 16}
            },
            {
                "tech-dyson-sphere-program"
            },
            nil,
            100
        )
    }
)

-- Interstellar Logistics System
data:extend(
    {
        LDAFunctions.createTechnology(
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
            nil,
            10
        )
    }
)

-- Interstellar Power Transmission
data:extend(
    {
        LDAFunctions.createTechnology(
            "interstellar-power-transmission",
            {
                {"electromagnetic-matrix", 120},
                {"energy-matrix", 120},
                {"structure-matrix", 12}
            },
            {
                "tech-dyson-sphere-program"
            },
            nil,
            100
        )
    }
)

-- Gas Giants Exploitation
data:extend(
    {
        LDAFunctions.createTechnology(
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
            nil,
            100
        )
    }
)

-- High-Strength Crystal
data:extend(
    {
        LDAFunctions.createTechnology(
            "high-strength-crystal",
            -- ingredients
            {
                {"electromagnetic-matrix", 6},
                {"energy-matrix", 6}
            },
            -- prerequisites
            {
                "steel-processing"
            },
            -- unlocks
            {
                {
                    type = "unlock-recipe",
                    recipe = "titanium-crystal"
                }
            },
            100
        )
    }
)

-- Processor
data:extend(
    {
        LDAFunctions.createTechnology(
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
                {
                    type = "unlock-recipe",
                    recipe = "processor"
                }
            },
            100
        )
    }
)
