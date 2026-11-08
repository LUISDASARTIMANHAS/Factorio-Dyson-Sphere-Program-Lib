local utils = require("data.utils")
-- default create name
-- nameofTech

-- TIER 2
-- | 2 | Basic Logistics System | 1601 | Electromagnetism (Tech) | Circuit Board: 10; Gear: 10 | Conveyor Belt Mk.I; Sorter Mk.I; Storage Mk.I |  |
-- | 2 | Automatic Metallurgy | 1401 | Electromagnetism (Tech) | Magnetic Coil: 10; Circuit Board: 10 | Arc Smelter; Glass |  |
-- | 2 | Electromagnetic Matrix | 1002 | Electromagnetism (Tech) | Magnetic Coil: 10; Circuit Board: 10 | Electromagnetic Matrix; Matrix Lab |  |
-- | 2 | Basic Assembling Processes | 1201 | Electromagnetism (Tech) | Circuit Board: 10; Gear: 10 | Assembling Machine Mk.I |  |
-- | 2 | Fluid Storage Encapsulation | 1120 | Electromagnetism (Tech) | Electromagnetic Matrix: 50 | Storage Tank; Water Pump |  |
-- | 2 | High-Efficiency Plasma Control | 1101 | Electromagnetism (Tech) | Electromagnetic Matrix: 50 | Prism; Plasma Exciter; Wireless Power Tower |  |
-- | 2 | Electromagnetic Drive | 1701 | Electromagnetism (Tech) | Electromagnetic Matrix: 50 | Electric Motor |  |
-- | 2 | Engine [ 1 ] | 1805 | Electromagnetism (Tech) | Electromagnetic Matrix: 20 | Engine |  |
-- | 2 | Weapon System [ 1 ] | 1801 | Electromagnetism (Tech) Automatic Metallurgy (Tech) | Electromagnetic Matrix: 20 | Gauss Turret; Magnum Ammo Box | Requires Automatic Metallurgy |

-- Basic Logistics System
data:extend(
    {
        utils.createDSPTechnologyCraftEntityTrigger(
            "basic-logistics-system",
            {
                "transport-belt",
                "underground-belt",
                "splitter"
            },
            {"tech-dyson-electromagnetism"},
            "circuit-board"
        )
    }
)

-- Automatic Metallurgy
data:extend(
    {
        utils.createDSPTechnologyCraftEntityTrigger(
            "automatic-metallurgy",
            {
                "arc-smelter",
                "glass"
            },
            {"tech-dyson-electromagnetism"},
            "magnetic-coil"
        )
    }
)

-- Electromagnetic Matrix
data:extend(
    {
        utils.createDSPTechnologyCraftEntityTrigger(
            "electromagnetic-matrix",
            -- recipe auto add recipe-name
            {
                "electromagnetic-matrix",
                "matrix-lab"
            },
            {"tech-dyson-electromagnetism"},
            "circuit-board"
        )
    }
)

-- Basic Assembling Processes
data:extend(
    {
        utils.createDSPTechnologyCraftEntityTrigger(
            "basic-assembling-processes",
            {
                "assembling-machine-1"
            },
            {"tech-dyson-electromagnetism"},
            "gear"
        )
    }
)

-- Fluid Storage Encapsulation
data:extend(
    {
        utils.createDSPTechnology(
            "fluid-storage-encapsulation",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            {
                "storage-tank",
                "offshore-pump"
            },
            50
        )
    }
)

-- High-Efficiency Plasma Control
data:extend(
    {
        utils.createDSPTechnology(
            "high-efficiency-plasma-control",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-fluid-storage-encapsulation"
            },
            {
                "prism",
                "plasma-exciter",
                "wireless-power-tower"
            },
            50
        )
    }
)

-- Electromagnetic Drive
data:extend(
    {
        utils.createDSPTechnology(
            "electromagnetic-drive",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            {
                "electric-motor"
            },
            50
        )
    }
)

-- Engine
data:extend(
    {
        utils.createDSPTechnology(
            "engine",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            {
                "engine"
            },
            20
        )
    }
)

-- Weapon System
data:extend(
    {
        utils.createDSPTechnology(
            "weapon-system",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            {
                "firearm-magazine"
            },
            20
        )
    }
)
