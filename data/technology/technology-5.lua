local LDAFunctions = require("__LDA-LIB__/init")
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

-- default create name
-- nameofTech

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
                "sphere-program"
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
                {"electromagnetic-matrix", 2},
                {"energy-matrix", 2}
            },
            {
                "steel-processing",
                "sphere-program"
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
                {"electromagnetic-matrix", 80},
                {"energy-matrix", 80},
                {"structure-matrix", 8}
            },
            {
                "titanium-smelting",
                "sphere-program"
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
                "sphere-program"
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
                {"electromagnetic-matrix", 120},
                {"energy-matrix", 120},
                {"structure-matrix", 12}
            },
            {
                "high-strength-titanium-alloy",
                "reinforced-thruster",
                "sphere-program"
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
        LDAFunctions.createTechnology(
            "gas-giants-exploitation",
            {
                {"electromagnetic-matrix", 12},
                {"energy-matrix", 12},
                {"structure-matrix", 12}
            },
            {
                "interstellar-logistics-system",
                "interstellar-power-transmission",
                "sphere-program"
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
                {"electromagnetic-matrix", 6},
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
                {"electromagnetic-matrix", 8}
            },
            -- prerequisites
            {
                "sphere-program"
            },
            -- unlocks
            {
                "processor"
            },
            100
        )
    }
)
