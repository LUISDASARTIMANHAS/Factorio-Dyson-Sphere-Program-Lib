local LDAFunctions = require("__LDA-LIB__/init")
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

-- default create name
-- nameofTech

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
                "basic-logistics-system"
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
                "automatic-metallurgy"
            },
            {
                "steel-plate"
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
                "rocket-fuel"
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
                "automatic-metallurgy"
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
                "basic-assembling-processes"
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
                "basic-assembling-processes"
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
            {"battlefield-analysis-base"},
            100
        )
    }
)
