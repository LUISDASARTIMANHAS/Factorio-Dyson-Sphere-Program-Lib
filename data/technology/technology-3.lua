local LDAFunctions = require("__LDA-LIB__/init")
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

-- default create name
-- tech-dyson-nameofTech

-- TIER 3
-- Improved Logistics System
data:extend(
    {
        LDAFunctions.createTechnology(
            "improved-logistics-system",
            {
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
            },
            nil,
            {"battlefield-analysis-base"},
            100
        )
    }
)
