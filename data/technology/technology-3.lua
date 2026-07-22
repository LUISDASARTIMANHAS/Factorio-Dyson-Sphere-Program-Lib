local utils = require("data.utils")
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createDSPTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

-- default create name
-- nameofTech

-- TIER 3
-- Improved Logistics System
data:extend(
    {
        utils.createDSPTechnology(
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
        utils.createDSPTechnology(
            "steel-smelting",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-automatic-metallurgy"
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
        utils.createDSPTechnology(
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
        utils.createDSPTechnology(
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
        utils.createDSPTechnology(
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
        utils.createDSPTechnology(
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
        utils.createDSPTechnology(
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
