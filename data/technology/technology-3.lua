-- | 3 | Improved Logistics System | 1602 | Electromagnetic Drive (Tech) | Electromagnetic Matrix: 100 | Splitter; Sorter Mk.II; Traffic Monitor |  |
-- | 3 | Steel Smelting | 1411 | Automatic Metallurgy (Tech) | Electromagnetic Matrix: 120 | Steel |  |
-- | 3 | Combustible Unit [ 1 ] | 1802 | Automatic Metallurgy (Tech) | Electromagnetic Matrix: 120 | Combustible Unit |  |
-- | 3 | Smelting Purification | 1402 | Automatic Metallurgy (Tech) | Electromagnetic Matrix: 100 | Silicon Ore; Energetic Graphite; High-Purity Silicon |  |
-- | 3 | Thermal Power | 1412 | Basic Assembling Processes (Tech) | Electromagnetic Matrix: 30 | Thermal Power Station |  |
-- | 3 | Plasma Extract Refining | 1102 | Fluid Storage Encapsulation (Tech) High-Efficiency Plasma Control (Tech) | Electromagnetic Matrix: 100 | Oil Extractor; Oil Refinery; Plasma Refining |  |
-- | 3 | Battlefield Analysis Base [ 1 ] | 1826 | Engine (Tech) Weapon System (Tech) | Electromagnetic Matrix: 100 | Battlefield Analysis Base |  |

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
                {"electromagnetic-matrix", 100}
            },
            {
                "tech-dyson-electromagnetic-drive"
            },
            -- unlocks
            {
                "fast-splitter",
                "fast-transport-belt",
                "fast-underground-belt"
            },
            30,
            1
        )
    }
)

-- Steel Smelting
data:extend(
    {
        utils.createDSPTechnology(
            "steel-smelting",
            {
                {"electromagnetic-matrix", 120}
            },
            {
                "tech-dyson-automatic-metallurgy"
            },
            -- unlocks
            {
                "steel-plate"
            },
            30,
            1
        )
    }
)

-- Combustible Unit
data:extend(
    {
        utils.createDSPTechnology(
            "combustible-unit",
            {
                {"electromagnetic-matrix", 120}
            },
            {
                "tech-dyson-automatic-metallurgy"
            },
            -- unlocks
            {
                "combustible-unit"
            },
            30,
            1
        )
    }
)

-- Smelting Purification
data:extend(
    {
        utils.createDSPTechnology(
            "smelting-purification",
            {
                {"electromagnetic-matrix", 100}
            },
            {
                "tech-dyson-automatic-metallurgy"
            },
            -- unlocks
            {
                "silicon-ore",
                "energetic-graphite",
                "high-purity-silicon"
            },
            30,
            1
        )
    }
)

-- Thermal Power
data:extend(
    {
        utils.createDSPTechnology(
            "thermal-power",
            {
                {"electromagnetic-matrix", 30}
            },
            {
                "tech-dyson-basic-assembling-processes"
            },
            -- unlocks
            {
                "thermal-power-plant"
            },
            30,
            1
        )
    }
)

-- Plasma Extract Refining
data:extend(
    {
        utils.createDSPTechnology(
            "plasma-extract-refining",
            {
                {"electromagnetic-matrix", 100}
            },
            {
                "tech-dyson-fluid-storage-encapsulation",
                "tech-dyson-high-efficiency-plasma-control"
            },
            -- unlocks
            {
                "oil-extractor",
                "oil-refinery",
                "plasma-refining"
            },
            30,
            1
        )
    }
)

-- Battlefield Analysis Base
data:extend(
    {
        utils.createDSPTechnology(
            "battlefield-analysis-base",
            {
                {"electromagnetic-matrix", 100}
            },
            {
                "tech-dyson-engine",
                "tech-dyson-weapon-system"
            },
            -- unlocks
            {
                "battlefield-analysis-base"
            },
            30,
            1
        )
    }
)
