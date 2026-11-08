-- | 4 | Environment Modification | 1415 | Steel Smelting (Tech) | Electromagnetic Matrix: 400 | Foundation |  |
-- | 4 | Crystal Smelting | 1403 | Smelting Purification (Tech) | Electromagnetic Matrix: 500; Energy Matrix: 500 | Diamond; Diamond Advanced; Crystal Silicon |  |
-- | 4 | Solar Collection | 1501 | Smelting Purification (Tech) Electromagnetic Matrix (Tech) Basic Assembling Processes (Tech) | Electromagnetic Matrix: 200 | Solar Panel |  |
-- | 4 | Semiconductor Material | 1311 | Basic Assembling Processes (Tech) | Electromagnetic Matrix: 200 | Microcrystalline Component |  |
-- | 4 | Proliferator Mk.I | 1151 | Semiconductor Material (Tech) High-Efficiency Plasma Control (Tech) | Electromagnetic Matrix: 200 | Proliferator Mk.I; Spray Coater |  |
-- | 4 | Deuterium Fractionation | 1134 | Thermal Power (Tech) Plasma Extract Refining (Tech) | Electromagnetic Matrix: 200; Energy Matrix: 300 | Fractionator; Deuterium Fractionation |  |
-- | 4 | Basic Chemical Engineering | 1121 | Fluid Storage Encapsulation (Tech) Plasma Extract Refining (Tech) | Electromagnetic Matrix: 200 | Chemical Plant; Plastic; Sulfuric Acid |  |
-- | 4 | Energy Matrix | 1111 | Plasma Extract Refining (Tech) | Electromagnetic Matrix: 200 | Energy Matrix |  |
-- | 4 | Magnetic Levitation | 1702 | Electromagnetic Drive (Tech) | Electromagnetic Matrix: 400; Energy Matrix: 100 | Electromagnetic Turbine |  |
-- | 4 | Missile Turret [ 1 ] | 1806 | Engine (Tech) Weapon System (Tech) Combustible Unit (Tech) | Electromagnetic Matrix: 150 | Missile Turret; Missile Set | Requires Combustible Unit |
-- | 4 | Prototype [ 1 ] | 1819 | Battlefield Analysis Base (Tech) High-Efficiency Plasma Control (Tech) | Electromagnetic Matrix: 200 | Prototype | Requires High-Efficiency Plasma Control Number of Ground Squadrons +1 Ground Squadron Slots +4 |

local utils = require("data.utils")
-- default create name
-- nameofTech

-- TIER 4
-- Environment Modification
data:extend(
    {
        utils.createDSPTechnology(
            "environment-modification",
            {
                {"electromagnetic-matrix", 400}
            },
            {
                "tech-dyson-steel-smelting"
            },
            -- unlocks
            {
                "foundation"
            },
            30,
            1
        )
    }
)

-- Crystal Smelting
data:extend(
    {
        utils.createDSPTechnology(
            "crystal-smelting",
            {
                {"electromagnetic-matrix", 500},
                {"energy-matrix", 500}
            },
            {
                "tech-dyson-smelting-purification"
            },
            -- unlocks
            {
                "diamond",
                "diamond-kimberlite",
                "crystal-silicon"
            },
            30,
            1
        )
    }
)

-- Solar Collection
data:extend(
    {
        utils.createDSPTechnology(
            "advanced-solar-collection",
            {
                {"electromagnetic-matrix", 200}
            },
            {
                "tech-dyson-smelting-purification",
                "tech-dyson-electromagnetic-matrix",
                "tech-dyson-basic-assembling-processes"
            },
            -- unlocks
            {
                "advanced-solar-panel"
            },
            30,
            1
        )
    }
)

-- Semiconductor Material
data:extend(
    {
        utils.createDSPTechnology(
            "semiconductor-material",
            {
                {"electromagnetic-matrix", 200}
            },
            {
                "tech-dyson-basic-assembling-processes"
            },
            -- unlocks
            {
                "microcrystalline-component"
            },
            30,
            1
        )
    }
)

-- Proliferator Mk.I
data:extend(
    {
        utils.createDSPTechnology(
            "proliferator-mki",
            {
                {"electromagnetic-matrix", 200}
            },
            {
                "tech-dyson-semiconductor-material",
                "tech-dyson-high-efficiency-plasma-control"
            },
            -- unlocks
            {
                "proliferator-mki",
                "spray-coater"
            },
            30,
            1
        )
    }
)

-- Deuterium Fractionation
data:extend(
    {
        utils.createDSPTechnology(
            "deuterium-fractionation",
            {
                {"electromagnetic-matrix", 200},
                {"energy-matrix", 300}
            },
            {
                "tech-dyson-thermal-power",
                "tech-dyson-plasma-extract-refining"
            },
            -- unlocks
            {
                "fractionator",
                "deuterium"
            },
            30,
            1
        )
    }
)

-- Basic Chemical Engineering
data:extend(
    {
        utils.createDSPTechnology(
            "basic-chemical-engineering",
            {
                {"electromagnetic-matrix", 200}
            },
            {
                "tech-dyson-fluid-storage-encapsulation",
                "tech-dyson-plasma-extract-refining"
            },
            -- unlocks
            {
                "chemical-plant",
                "plastic",
                "sulfuric-acid"
            },
            30,
            1
        )
    }
)

-- Energy Matrix
data:extend(
    {
        utils.createDSPTechnology(
            "energy-matrix",
            {
                {"electromagnetic-matrix", 200}
            },
            {
                "tech-dyson-plasma-extract-refining"
            },
            -- unlocks
            {
                "energy-matrix"
            },
            30,
            1
        )
    }
)

-- Magnetic Levitation
data:extend(
    {
        utils.createDSPTechnology(
            "magnetic-levitation",
            {
                {"electromagnetic-matrix", 400},
                {"energy-matrix", 100}
            },
            {
                "tech-dyson-electromagnetic-drive"
            },
            -- unlocks
            {
                "electromagnetic-turbine"
            },
            30,
            1
        )
    }
)

-- Missile Turret
data:extend(
    {
        utils.createDSPTechnology(
            "missile-turret",
            {
                {"electromagnetic-matrix", 150}
            },
            {
                "tech-dyson-engine",
                "tech-dyson-weapon-system",
                "tech-dyson-combustible-unit"
            },
            -- unlocks
            {
                "missile-turret",
                "missile-set"
            },
            30,
            1
        )
    }
)

-- Prototype
data:extend(
    {
        utils.createDSPTechnology(
            "prototype",
            {
                {"electromagnetic-matrix", 200}
            },
            {
                "tech-dyson-battlefield-analysis-base",
                "tech-dyson-high-efficiency-plasma-control"
            },
            -- unlocks
            {
                "prototype"
            },
            30,
            1
        )
    }
)
