local LDAFunctions = require("__LDA-LIB__/init")
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

-- default create name
-- tech-dyson-nameofTech

-- TIER 5


-- Planetary Logistics System
data:extend(
    {
        LDAFunctions.createTechnology(
            "planetary-logistics-system",
            {
                {"DSP-electromagnetic-matrix", 4},
                {"energy-matrix", 1}
            },
            {
                "turbo-transport-belt",
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
        LDAFunctions.createTechnology(
            "titanium-smelting",
            {
                {"DSP-electromagnetic-matrix", 2},
                {"energy-matrix", 2}
            },
            {
                "steel-processing",
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
        LDAFunctions.createTechnology(
            "high-strength-titanium-alloy",
            {
                {"DSP-electromagnetic-matrix", 80},
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
            "interstellar-logistics-system",
            {
                {"DSP-electromagnetic-matrix", 120},
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
        LDAFunctions.createTechnology(
            "interstellar-power-transmission",
            {
                {"DSP-electromagnetic-matrix", 120},
                {"energy-matrix", 120},
                {"structure-matrix", 12}
            },
            {
                "tech-dyson-sphere-program"
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
        LDAFunctions.createTechnology(
            "gas-giants-exploitation",
            {
                {"DSP-electromagnetic-matrix", 12},
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
        LDAFunctions.createTechnology(
            "high-strength-crystal",
            -- ingredients
            {
                {"DSP-electromagnetic-matrix", 6},
                {"energy-matrix", 6}
            },
            -- prerequisites
            {
                "steel-processing"
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
        LDAFunctions.createTechnology(
            "processor",
            -- ingredients
            {
                {"DSP-electromagnetic-matrix", 8}
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
