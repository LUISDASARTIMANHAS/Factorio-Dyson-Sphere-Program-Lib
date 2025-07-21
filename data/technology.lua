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
            {
                "automation"
            },
            nil,
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
                {"magnetic-coil", 1}
            },
            {
                "tech-dyson-sphere-program"
            },
            nil,
            10,
            20
        )
    }
)

-- Planetary Logistics System
data:extend(
    {
        tech.createTechnology(
            "planetary-logistics-system",
            {
                {"electromagnetic-matrix", 8},
                {"energy-matrix", 4}
            },
            {
                "turbo-transport-belt"
            },
            nil,
            100,
            20
        )
    }
)

-- Titanium_Smelting
data:extend(
    {
        tech.createTechnology(
            "titanium-smelting",
            {
                {"electromagnetic-matrix", 2},
                {"energy-matrix", 2}
            },
            {
                "steel-processing"
            },
            nil,
            100,
            20
        )
    }
)

-- High-Strength Titanium Alloy
data:extend(
    {
        tech.createTechnology(
            "high-strength-titanium-alloy",
            {
                {"electromagnetic-matrix", 80},
                {"energy-matrix", 80},
                {"structure-matrix", 8}
            },
            {
                "tech-dyson-titanium-smelting"
            },
            nil,
            10,
            20
        )
    }
)

-- reinforced thruster
data:extend(
    {
        tech.createTechnology(
            "reinforced-thruster",
            {
                {"energy-matrix", 16}
            },
            {
                "tech-dyson-sphere-program"
            },
            nil,
            100,
            20
        )
    }
)

-- Interstellar Logistics System
data:extend(
    {
        tech.createTechnology(
            "interstellar-logistics-system",
            {
                {"electromagnetic-matrix", 120},
                {"energy-matrix", 120},
                {"structure-matrix", 12}
            },
            {
                "tech-dyson-high-strength-titanium-alloy",
                "tech-dyson-reinforced-thruster"
            },
            nil,
            10,
            20
        )
    }
)

-- Interstellar Power Transmission
data:extend(
    {
        tech.createTechnology(
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
            100,
            20
        )
    }
)

-- Gas Giants Exploitation
data:extend(
    {
        tech.createTechnology(
            "gas-giants-exploitation",
            {
                {"electromagnetic-matrix", 12},
                {"energy-matrix", 12},
                {"structure-matrix", 12}
            },
            {
                "tech-dyson-interstellar-logistics-system",
                "tech-dyson-interstellar-power-transmission"
            },
            nil,
            100,
            20
        )
    }
)

-- High-Efficiency Plasma Control
data:extend(
    {
        tech.createTechnology(
            "high-efficiency-plasma-control",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-elelectromagnetism",
                "fluid-handling"
            },
            nil,
            50,
            20
        )
    }
)

-- Crystal Smelting
data:extend(
    {
        tech.createTechnology(
            "crystal-smelting",
            -- ingredients
            {
                {"electromagnetic-matrix", 5},
                {"energy-matrix", 5}
            },
            -- prerequisites
            {
                "steel-processing"
            },
            -- unlocks 
            {
                {
                    type = "unlock-recipe",
                    recipe = "diamond-recipe"
                }
            },
            100,
            20
        )
    }
)


-- High-Strength Crystal
data:extend(
    {
        tech.createTechnology(
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
                    recipe = "titanium-crystal-recipe"
                }
            },
            100,
            20
        )
    }
)
