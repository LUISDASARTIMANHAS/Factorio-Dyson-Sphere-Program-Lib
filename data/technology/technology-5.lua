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

-- Planetary Logistics System
data:extend(
    {
        utils.createDSPTechnology(
            "planetary-logistics-system",
            {
                {"electromagnetic-matrix", 4},
                {"energy-matrix", 1}
            },
            {
                "tech-dyson-improved-logistics-system",
                "tech-dyson-magnetic-levitation"
            },
            {"fast-transport-belt","fast-underground-belt","fast-splitter"},
            400
        )
    }
)

-- Titanium Smelting
data:extend(
    {
        utils.createDSPTechnology(
            "titanium-smelting",
            {
                {"electromagnetic-matrix", 2},
                {"energy-matrix", 2}
            },
            {
                "tech-dyson-steel-smelting",
                "tech-dyson-sphere-program"
            },
            {"titanium-ingot"},
            100
        )
    }
)

-- Thruster
data:extend(
    {
        utils.createDSPTechnology(
            "thruster",
            {
                {"electromagnetic-matrix", 4},
                {"energy-matrix", 2}
            },
            {
                "tech-dyson-titanium-smelting",
                "tech-dyson-basic-chemical-engineering"
            },
            {"thruster"},
            100
        )
    }
)

-- High-Strength Crystal
data:extend(
    {
        utils.createDSPTechnology(
            "high-strength-crystal",
            -- ingredients
            {
                {"electromagnetic-matrix", 6},
                {"energy-matrix", 6}
            },
            -- prerequisites
            {
                "tech-dyson-titanium-smelting",
                "tech-dyson-crystal-smelting"
            },
            -- unlocks
            {
                "titanium-crystal"
            },
            100
        )
    }
)

-- High-Strength Titanium Alloy
data:extend(
    {
        utils.createDSPTechnology(
            "high-strength-titanium-alloy",
            {
                {"electromagnetic-matrix", 80},
                {"energy-matrix", 80},
                {"structure-matrix", 8}
            },
            {
                "tech-dyson-titanium-smelting",
                "tech-dyson-structure-matrix"
            },
            {"titanium-alloy"},
            10
        )
    }
)

-- Reinforced Thruster
data:extend(
    {
        utils.createDSPTechnology(
            "reinforced-thruster",
            {
                {"energy-matrix", 16},
                {"structure-matrix", 8}
            },
            {
                "tech-dyson-high-strength-titanium-alloy",
                "tech-dyson-magnetic-levitation"
            },
            {"reinforced-thruster"},
            100
        )
    }
)

-- Processor
data:extend(
    {
        utils.createDSPTechnology(
            "processor",
            -- ingredients
            {
                {"electromagnetic-matrix", 8}
            },
            -- prerequisites
            {
                "tech-dyson-semiconductor-material"
            },
            -- unlocks
            {
                "processor"
            },
            100
        )
    }
)

-- Casimir Crystal
data:extend(
    {
        utils.createDSPTechnology(
            "casimir-crystal",
            {
                {"electromagnetic-matrix", 10},
                {"energy-matrix", 10}
            },
            {
                "tech-dyson-high-strength-crystal",
                "tech-dyson-basic-chemical-engineering"
            },
            {
                "casimir-crystal",
                "titanium-glass",
                "plane-filter"
            },
            200
        )
    }
)

-- Particle Control
data:extend(
    {
        utils.createDSPTechnology(
            "particle-control",
            {
                {"electromagnetic-matrix", 20},
                {"energy-matrix", 20},
                {"structure-matrix", 4}
            },
            {
                "tech-dyson-casimir-crystal",
                "tech-dyson-magnetic-levitation"
            },
            {
                "particle-container",
                "particle-broadband",
                "carbon-nanotube"
            },
            200
        )
    }
)

-- Structure Matrix
data:extend(
    {
        utils.createDSPTechnology(
            "structure-matrix",
            {
                {"electromagnetic-matrix", 20},
                {"energy-matrix", 20}
            },
            {
                "tech-dyson-high-strength-crystal"
            },
            {
                "structure-matrix"
            },
            200
        )
    }
)

-- Information Matrix
data:extend(
    {
        utils.createDSPTechnology(
            "information-matrix",
            {
                {"electromagnetic-matrix", 30},
                {"energy-matrix", 30},
                {"structure-matrix", 6}
            },
            {
                "tech-dyson-processor",
                "tech-dyson-particle-control"
            },
            {
                "information-matrix"
            },
            200
        )
    }
)

-- Interstellar Logistics System
data:extend(
    {
        utils.createDSPTechnology(
            "interstellar-logistics-system",
            {
                {"electromagnetic-matrix", 120},
                {"energy-matrix", 120},
                {"structure-matrix", 12}
            },
            {
                "tech-dyson-high-strength-titanium-alloy",
                "tech-dyson-reinforced-thruster",
                "tech-dyson-planetary-logistics-system"
            },
            {"roboport", "logistic-robot"},
            10
        )
    }
)

-- Interstellar Power Transmission
data:extend(
    {
        -- unlock energy-exchanger
        utils.createDSPTechnology(
            "interstellar-power-transmission",
            {
                {"electromagnetic-matrix", 120},
                {"energy-matrix", 120},
                {"structure-matrix", 12}
            },
            {
                "tech-dyson-interstellar-logistics-system"
            },
            {"substation", "critical-photon", "critical-photon-lens"},
            100
        )
    }
)

-- Gas Giants Exploitation
data:extend(
    {
        -- TODO: Unlock Orbital Collector when its recipe is implemented.
        utils.createDSPTechnology(
            "gas-giants-exploitation",
            {
                {"electromagnetic-matrix", 12},
                {"energy-matrix", 12},
                {"structure-matrix", 12}
            },
            {
                "tech-dyson-interstellar-logistics-system",
                "tech-dyson-interstellar-power-transmission"
            },
            {},
            100
        )
    }
)

-- Strange Matter
data:extend(
    {
        utils.createDSPTechnology(
            "strange-matter",
            {
                {"electromagnetic-matrix", 60},
                {"energy-matrix", 60},
                {"structure-matrix", 10}
            },
            {
                "tech-dyson-particle-control",
                "tech-dyson-deuterium-fractionation"
            },
            {
                "strange-matter",
                "graviton-lens"
            },
            200
        )
    }
)

-- Gravity Matrix
data:extend(
    {
        utils.createDSPTechnology(
            "gravity-matrix",
            {
                {"electromagnetic-matrix", 80},
                {"energy-matrix", 80},
                {"structure-matrix", 20},
                {"information-matrix", 10}
            },
            {
                "tech-dyson-strange-matter",
                "tech-dyson-information-matrix"
            },
            {
                "gravity-matrix",
                "quantum-chip"
            },
            200
        )
    }
)

-- Controlled Annihilation Reaction
data:extend(
    {
        utils.createDSPTechnology(
            "controlled-annihilation-reaction",
            {
                {"electromagnetic-matrix", 100},
                {"energy-matrix", 100},
                {"structure-matrix", 60},
                {"information-matrix", 60},
                {"gravity-matrix", 60}
            },
            {
                "tech-dyson-gravity-matrix",
                "tech-dyson-gas-giants-exploitation"
            },
            {
                "antimatter"
            },
            200
        )
    }
)

-- Universe Matrix
data:extend(
    {
        utils.createDSPTechnology(
            "universe-matrix",
            {
                {"electromagnetic-matrix", 1},
                {"energy-matrix", 1},
                {"structure-matrix", 1},
                {"information-matrix", 1},
                {"gravity-matrix", 1}
            },
            {
                "tech-dyson-controlled-annihilation-reaction"
            },
            {
                "universe-matrix"
            },
            200
        )
    }
)
