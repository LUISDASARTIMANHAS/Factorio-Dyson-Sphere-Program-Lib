local utils = require("data.utils")

-- default create name
-- nameofTech

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

-- TIER 4
-- Environment Modification
data:extend(
    {
        utils.createDSPTechnology(
            "environment-modification",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-steel-smelting"
            },
            {
                "foundation"
            },
            400
        )
    }
)

-- Crystal Smelting
data:extend(
    {
        utils.createDSPTechnology(
            "crystal-smelting",
            -- ingredients
            {
                {"electromagnetic-matrix", 1},
                {"energy-matrix", 1}
            },
            -- prerequisites
            {
                "tech-dyson-improved-logistics-system"
            },
            -- unlocks
            {
                "diamond",
                "diamond-kimberlite",
                "crystal-silicon"
            },
            500
        )
    }
)

-- Solar Collection
data:extend(
    {
        utils.createDSPTechnology(
            "advanced-solar-collection",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-electromagnetism",
                "tech-dyson-basic-assembling-processes",
                "tech-dyson-smelting-purification",
                "tech-dyson-electromagnetic-matrix"
            },
            {
                "advanced-solar-panel"
            },
            200
        )
    }
)

-- Semiconductor Material
data:extend(
    {
        utils.createDSPTechnology(
            "semiconductor-material",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-electromagnetic-matrix"
            },
            {
                "microcrystalline-component"
            },
            200
        )
    }
)

-- Deuterium Fractionation
data:extend(
    {
        utils.createDSPTechnology(
            "deuterium-fractionation",
            {
                {"electromagnetic-matrix", 2},
                {"energy-matrix", 3}
            },
            {
                "tech-dyson-energy-matrix"
            },
            {
                "fractionator",
                "deuterium"
            },
            100
        )
    }
)

-- Proliferator MkI
data:extend(
    {
        utils.createDSPTechnology(
            "proliferator-mki",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            {
                "proliferator-mki",
                "spray-coater"
            },
            200
        )
    }
)

-- Basic Chemical Engineering
data:extend(
    {
        utils.createDSPTechnology(
            "basic-chemical-engineering",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-deuterium-fractionation",
                "tech-dyson-fluid-storage-encapsulation"
            },
            {
                "chemical-plant",
                "plastic",
                "sulfuric-acid",
                "graphene"
            },
            200
        )
    }
)

-- Energy Matrix
data:extend(
    {
        utils.createDSPTechnology(
            "energy-matrix",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-electromagnetic-matrix"
            },
            {
                "energy-matrix"
            },
            200
        )
    }
)

-- Magnetic Levitation
data:extend(
    {
        utils.createDSPTechnology(
            "magnetic-levitation",
            {
                {"electromagnetic-matrix", 4},
                {"energy-matrix", 1}
            },
            {
                "tech-dyson-electromagnetic-drive",
                "tech-dyson-basic-chemical-engineering",
                "tech-dyson-energy-matrix"
            },
            {
                "electromagnetic-turbine"
            },
            100
        )
    }
)

-- Missile Turret
data:extend(
    {
        utils.createDSPTechnology(
            "missile-turret",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            {"rocket-turret"},
            150
        )
    }
)
