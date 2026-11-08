local utils = require("data.utils")

-- default create name
-- nameofTech

-- | 5 | High-Efficiency Logistics System | 1603 | Improved Logistics System (Tech) Magnetic Levitation (Tech) | Electromagnetic Matrix: 400; Energy Matrix: 100 | Conveyor Belt Mk.II; Sorter Mk.III; Storage Mk.II | Requires Magnetic Levitation |
-- | 5 | Distribution Logistics System [ 2 ] | 1608 | Improved Logistics System (Tech) Magnetic Levitation (Tech) | Electromagnetic Matrix: 600; Energy Matrix: 300 | Logistics Distributor; Logistics Bot | Requires Magnetic Levitation |
-- | 5 | Titanium Smelting | 1413 | Steel Smelting (Tech) | Electromagnetic Matrix: 200; Energy Matrix: 200 | Titanium Ingot |  |
-- | 5 | Energy Storage | 1511 | Crystal Smelting (Tech) Solar Collection (Tech) | Electromagnetic Matrix: 600; Energy Matrix: 600 | Accumulator | Requires Super Magnetic Field Generator |
-- | 5 | Photon Frequency Conversion | 1502 | Solar Collection (Tech) | Electromagnetic Matrix: 200; Energy Matrix: 200 | Photon Combiner; Photon Combiner Advanced |  |
-- | 5 | Processor | 1302 | Semiconductor Material (Tech) | Electromagnetic Matrix: 800 | Processor |  |
-- | 5 | Applied Superconductor | 1131 | Basic Chemical Engineering (Tech) | Electromagnetic Matrix: 400 | Graphene; Graphene Advanced |  |
-- | 5 | Polymer Chemical Engineering | 1122 | Basic Chemical Engineering (Tech) | Electromagnetic Matrix: 400; Energy Matrix: 400 | Organic Crystal; Organic Crystal Original |  |
-- | 5 | X-ray Cracking | 1103 | Basic Chemical Engineering (Tech) Plasma Extract Refining (Tech) | Electromagnetic Matrix: 400; Energy Matrix: 400 | X-Ray Cracking |  |
-- | 5 | Hydrogen Fuel Rod | 1112 | Energy Matrix (Tech) | Energy Matrix: 400 | Hydrogen Fuel Rod |  |
-- | 5 | Super Magnetic Field Generator | 1711 | Magnetic Levitation (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 250 | Super-Magnetic Ring |  |
-- | 5 | Signal Tower [ 1 ] | 1808 | Missile Turret (Tech) High-Efficiency Plasma Control (Tech) | Electromagnetic Matrix: 400; Energy Matrix: 400 | Signal Tower | Requires High-Efficiency Plasma Control |
-- | 5 | Implosion Cannon [ 1 ] | 1809 | Missile Turret (Tech) Magnetic Levitation (Tech) | Electromagnetic Matrix: 300; Energy Matrix: 300 | Implosion Cannon; Shell Set | Requires Magnetic Levitation |
-- | 5 | Precision Drone [ 1 ] | 1820 | Prototype (Tech) Photon Frequency Conversion (Tech) | Electromagnetic Matrix: 400; Energy Matrix: 400 | Precision Drone | Requires Photon Frequency Conversion |

-- TIER 5
local utils = require("data.utils")

-- default create name
-- nameofTech

-- TIER 5
-- High-Efficiency Logistics System
data:extend(
    {
        utils.createDSPTechnology(
            "high-efficiency-logistics-system",
            {
                {"electromagnetic-matrix", 400},
                {"energy-matrix", 100}
            },
            {
                "tech-dyson-improved-logistics-system",
                "tech-dyson-magnetic-levitation"
            },
            -- unlocks
            {
                "conveyor-belt-mkii",
                "sorter-mkiii",
                "storage-mkii"
            },
            30,
            1
        )
    }
)

-- Distribution Logistics System
data:extend(
    {
        utils.createDSPTechnology(
            "distribution-logistics-system",
            {
                {"electromagnetic-matrix", 600},
                {"energy-matrix", 300}
            },
            {
                "tech-dyson-improved-logistics-system",
                "tech-dyson-magnetic-levitation"
            },
            -- unlocks
            {
                "logistics-distributor",
                "logistics-bot"
            },
            30,
            1
        )
    }
)

-- Titanium Smelting
data:extend(
    {
        utils.createDSPTechnology(
            "titanium-smelting",
            {
                {"electromagnetic-matrix", 200},
                {"energy-matrix", 200}
            },
            {
                "tech-dyson-steel-smelting"
            },
            -- unlocks
            {
                "titanium-ingot"
            },
            30,
            1
        )
    }
)

-- Energy Storage
data:extend(
    {
        utils.createDSPTechnology(
            "energy-storage",
            {
                {"electromagnetic-matrix", 600},
                {"energy-matrix", 600}
            },
            {
                "tech-dyson-crystal-smelting",
                "tech-dyson-advanced-solar-collection",
                "tech-dyson-super-magnetic-field-generator"
            },
            -- unlocks
            {
                "accumulator"
            },
            30,
            1
        )
    }
)

-- Photon Frequency Conversion
data:extend(
    {
        utils.createDSPTechnology(
            "photon-frequency-conversion",
            {
                {"electromagnetic-matrix", 200},
                {"energy-matrix", 200}
            },
            {
                "tech-dyson-advanced-solar-collection"
            },
            -- unlocks
            {
                "photon-combiner",
                "photon-combiner-advanced"
            },
            30,
            1
        )
    }
)

-- Processor
data:extend(
    {
        utils.createDSPTechnology(
            "processor",
            {
                {"electromagnetic-matrix", 800}
            },
            {
                "tech-dyson-semiconductor-material"
            },
            -- unlocks
            {
                "processor"
            },
            30,
            1
        )
    }
)

-- Applied Superconductor
data:extend(
    {
        utils.createDSPTechnology(
            "applied-superconductor",
            {
                {"electromagnetic-matrix", 400}
            },
            {
                "tech-dyson-basic-chemical-engineering"
            },
            -- unlocks
            {
                "graphene",
                "graphene-advanced"
            },
            30,
            1
        )
    }
)

-- Polymer Chemical Engineering
data:extend(
    {
        utils.createDSPTechnology(
            "polymer-chemical-engineering",
            {
                {"electromagnetic-matrix", 400},
                {"energy-matrix", 400}
            },
            {
                "tech-dyson-basic-chemical-engineering"
            },
            -- unlocks
            {
                "organic-crystal",
                "organic-crystal-original"
            },
            30,
            1
        )
    }
)

-- X-Ray Cracking
data:extend(
    {
        utils.createDSPTechnology(
            "x-ray-cracking",
            {
                {"electromagnetic-matrix", 400},
                {"energy-matrix", 400}
            },
            {
                "tech-dyson-basic-chemical-engineering",
                "tech-dyson-plasma-extract-refining"
            },
            -- unlocks
            {
                "x-ray-cracking"
            },
            30,
            1
        )
    }
)

-- Hydrogen Fuel Rod
data:extend(
    {
        utils.createDSPTechnology(
            "hydrogen-fuel-rod",
            {
                {"energy-matrix", 400}
            },
            {
                "tech-dyson-energy-matrix"
            },
            -- unlocks
            {
                "hydrogen-fuel-rod"
            },
            30,
            1
        )
    }
)

-- Super Magnetic Field Generator
data:extend(
    {
        utils.createDSPTechnology(
            "super-magnetic-field-generator",
            {
                {"electromagnetic-matrix", 1000},
                {"energy-matrix", 250}
            },
            {
                "tech-dyson-magnetic-levitation"
            },
            -- unlocks
            {
                "super-magnetic-ring"
            },
            30,
            1
        )
    }
)

-- Signal Tower
data:extend(
    {
        utils.createDSPTechnology(
            "signal-tower",
            {
                {"electromagnetic-matrix", 400},
                {"energy-matrix", 400}
            },
            {
                "tech-dyson-missile-turret",
                "tech-dyson-high-efficiency-plasma-control"
            },
            -- unlocks
            {
                "signal-tower"
            },
            30,
            1
        )
    }
)

-- Implosion Cannon
data:extend(
    {
        utils.createDSPTechnology(
            "implosion-cannon",
            {
                {"electromagnetic-matrix", 300},
                {"energy-matrix", 300}
            },
            {
                "tech-dyson-missile-turret",
                "tech-dyson-magnetic-levitation"
            },
            -- unlocks
            {
                "implosion-cannon",
                "shell-set"
            },
            30,
            1
        )
    }
)

-- Precision Drone
data:extend(
    {
        utils.createDSPTechnology(
            "precision-drone",
            {
                {"electromagnetic-matrix", 400},
                {"energy-matrix", 400}
            },
            {
                "tech-dyson-prototype",
                "tech-dyson-photon-frequency-conversion"
            },
            -- unlocks
            {
                "precision-drone"
            },
            30,
            1
        )
    }
)
