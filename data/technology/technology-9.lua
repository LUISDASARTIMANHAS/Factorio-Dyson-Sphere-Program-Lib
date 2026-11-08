local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 9 | Gas Giants Exploitation | 1606 | Interstellar Logistics System (Tech) Interstellar Power Transmission (Tech) | Electromagnetic Matrix: 1200; Energy Matrix: 1200; Structure Matrix: 1200 | Orbital Collector |  |
| 9 | Information Matrix | 1312 | Processor (Tech) Miniature Particle Collider (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800 | Information Matrix |  |
| 9 | Wave Function Interference | 1141 | High-Strength Glass (Tech) Casimir Crystal (Tech) | Electromagnetic Matrix: 1200; Energy Matrix: 1200; Information Matrix: 200 | Plane Filter |  |
| 9 | Crystal Explosive Unit [ 1 ] | 1804 | Casimir Crystal (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 800 | Crystal Explosive Unit |  |
| 9 | Strange Matter | 1143 | Miniature Particle Collider (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 1000; Structure Matrix: 1000 | Strange Matter |  |
| 9 | Crystal Shell Set [ 1 ] | 1816 | Supersonic Missile Set (Tech) High-Strength Titanium Alloy (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 800; Information Matrix: 800 | Crystal Shell Set | Requires High-Strength Titanium Alloy |
| 9 | Plasma Turret [ 1 ] | 1811 | Planetary Defense System (Tech) High-Strength Glass (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 1000; Structure Matrix: 1000; Information Matrix: 500 | Plasma Turret; SR Plasma Turret; Plasma Capsule | Requires High-Strength Glass |
| 9 | Corvette [ 1 ] | 1822 | Planetary Defense System (Tech) Precision Drone (Tech) | Electromagnetic Matrix: 600; Energy Matrix: 600; Structure Matrix: 600; Information Matrix: 600 | Corvette | Number of Space Fleets +1 Space Fleet Slots +4 |
]]
-- TIER 9
-- Gas Giants Exploitation
data:extend(
    {
        utils.createDSPTechnology(
            "gas-giants-exploitation",
            {
                {"electromagnetic-matrix", 1200},
                {"energy-matrix", 1200},
                {"structure-matrix", 1200}
            },
            {
                "tech-dyson-interstellar-logistics-system",
                "tech-dyson-interstellar-power-transmission"
            },
            -- unlocks
            {
                "orbital-collector"
            },
            30,
            1
        )
    }
)

-- Information Matrix
data:extend(
    {
        utils.createDSPTechnology(
            "information-matrix",
            {
                {"electromagnetic-matrix", 800},
                {"energy-matrix", 800}
            },
            {
                "tech-dyson-processor",
                "tech-dyson-miniature-particle-collider"
            },
            -- unlocks
            {
                "information-matrix"
            },
            30,
            1
        )
    }
)

-- Wave Function Interference
data:extend(
    {
        utils.createDSPTechnology(
            "wave-function-interference",
            {
                {"electromagnetic-matrix", 1200},
                {"energy-matrix", 1200},
                {"information-matrix", 200}
            },
            {
                "tech-dyson-high-strength-glass",
                "tech-dyson-casimir-crystal"
            },
            -- unlocks
            {
                "plane-filter"
            },
            30,
            1
        )
    }
)

-- Crystal Explosive Unit
data:extend(
    {
        utils.createDSPTechnology(
            "crystal-explosive-unit",
            {
                {"electromagnetic-matrix", 800},
                {"energy-matrix", 800},
                {"structure-matrix", 800}
            },
            {
                "tech-dyson-casimir-crystal"
            },
            -- unlocks
            {
                "crystal-explosive-unit"
            },
            30,
            1
        )
    }
)

-- Strange Matter
data:extend(
    {
        utils.createDSPTechnology(
            "strange-matter",
            {
                {"electromagnetic-matrix", 1000},
                {"energy-matrix", 1000},
                {"structure-matrix", 1000}
            },
            {
                "tech-dyson-miniature-particle-collider"
            },
            -- unlocks
            {
                "strange-matter"
            },
            30,
            1
        )
    }
)
-- Crystal Shell Set
data:extend(
    {
        utils.createDSPTechnology(
            "crystal-shell-set",
            {
                {"electromagnetic-matrix", 800},
                {"energy-matrix", 800},
                {"structure-matrix", 800},
                {"information-matrix", 800}
            },
            {
                "tech-dyson-supersonic-missile-set",
                "tech-dyson-high-strength-titanium-alloy"
            },
            -- unlocks
            {
                "crystal-shell-set"
            },
            30,
            1
        )
    }
)

-- Plasma Turret
data:extend(
    {
        utils.createDSPTechnology(
            "plasma-turret",
            {
                {"electromagnetic-matrix", 1000},
                {"energy-matrix", 1000},
                {"structure-matrix", 1000},
                {"information-matrix", 500}
            },
            {
                "tech-dyson-planetary-defense-system",
                "tech-dyson-high-strength-glass"
            },
            -- unlocks
            {
                "plasma-turret",
                "sr-plasma-turret",
                "plasma-capsule"
            },
            30,
            1
        )
    }
)

-- Corvette
data:extend(
    {
        utils.createDSPTechnology(
            "corvette",
            {
                {"electromagnetic-matrix", 600},
                {"energy-matrix", 600},
                {"structure-matrix", 600},
                {"information-matrix", 600}
            },
            {
                "tech-dyson-planetary-defense-system",
                "tech-dyson-precision-drone"
            },
            -- unlocks
            {
                "corvette"
            },
            30,
            1
        )
    }
)
