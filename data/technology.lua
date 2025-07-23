local tech = require("functions.create-technology")
local techTrigger = require("functions.create-technology-trigger")
-- default create name
-- tech-dyson-nameofTech

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
            nil,
            500,
            20
        )
    }
)

-- Electromagnetism For Trigger
data:extend(
    {
        techTrigger.createTechnologyTrigger(
            "electromagnetism",
            nil,
            {
                "tech-dyson-sphere-program"
            },
            {
                type = "craft-item",
                item = "magnetic-coil",
                count = 10
            }
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
                "turbo-transport-belt",
                "tech-dyson-sphere-program"
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
                "steel-processing",
                "tech-dyson-sphere-program"
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
                "tech-dyson-titanium-smelting",
                "tech-dyson-sphere-program"
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
                "tech-dyson-reinforced-thruster",
                "tech-dyson-sphere-program"
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
                "tech-dyson-interstellar-power-transmission",
                "tech-dyson-sphere-program"
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
                "tech-dyson-electromagnetism",
                "fluid-handling",
                "tech-dyson-sphere-program"
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
                "steel-processing",
                "tech-dyson-sphere-program"
            },
            -- unlocks
            {
                {
                    type = "unlock-recipe",
                    recipe = "diamond"
                },
                {
                    type = "unlock-recipe",
                    recipe = "crystal-silicon"
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
                    recipe = "titanium-crystal"
                }
            },
            100,
            20
        )
    }
)

-- Processor
data:extend(
    {
        tech.createTechnology(
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
            100,
            20
        )
    }
)
