-- | 2 | Basic Logistics System | 1601 | Electromagnetism (Tech) | Circuit Board: 10; Gear: 10 | Conveyor Belt Mk.I; Sorter Mk.I; Storage Mk.I |  |
-- | 2 | Automatic Metallurgy | 1401 | Electromagnetism (Tech) | Magnetic Coil: 10; Circuit Board: 10 | Arc Smelter; Glass |  |
-- | 2 | Electromagnetic Matrix | 1002 | Electromagnetism (Tech) | Magnetic Coil: 10; Circuit Board: 10 | Electromagnetic Matrix; Matrix Lab |  |
-- | 2 | Basic Assembling Processes | 1201 | Electromagnetism (Tech) | Circuit Board: 10; Gear: 10 | Assembling Machine Mk.I |  |
-- | 2 | Fluid Storage Encapsulation | 1120 | Electromagnetism (Tech) | Electromagnetic Matrix: 50 | Storage Tank; Water Pump |  |
-- | 2 | High-Efficiency Plasma Control | 1101 | Electromagnetism (Tech) | Electromagnetic Matrix: 50 | Prism; Plasma Exciter; Wireless Power Tower |  |
-- | 2 | Electromagnetic Drive | 1701 | Electromagnetism (Tech) | Electromagnetic Matrix: 50 | Electric Motor |  |
-- | 2 | Engine [ 1 ] | 1805 | Electromagnetism (Tech) | Electromagnetic Matrix: 20 | Engine |  |
-- | 2 | Weapon System [ 1 ] | 1801 | Electromagnetism (Tech) Automatic Metallurgy (Tech) | Electromagnetic Matrix: 20 | Gauss Turret; Magnum Ammo Box | Requires Automatic Metallurgy |

local utils = require("data.utils")
-- default create name
-- nameofTech

data:extend({
    utils.createDSPTechnologyCraftEntityTrigger(
        "basic-logistics-system",
        {"transport-belt", "inserter", "iron-chest"},
        {"tech-dyson-electromagnetism"},
        "circuit-board"
    ),
    utils.createDSPTechnologyCraftEntityTrigger(
        "automatic-metallurgy",
        {"arc-smelter", "glass"},
        {"tech-dyson-electromagnetism"},
        "magnetic-coil"
    ),
    utils.createDSPTechnologyCraftEntityTrigger(
        "electromagnetic-matrix",
        {"electromagnetic-matrix", "matrix-lab"},
        {"tech-dyson-electromagnetism"},
        "circuit-board"
    ),
    utils.createDSPTechnologyCraftEntityTrigger(
        "basic-assembling-processes",
        {"assembling-machine-1"},
        {"tech-dyson-electromagnetism"},
        "gear"
    )
})

-- TIER 2
-- Fluid Storage Encapsulation
data:extend(
    {
        utils.createDSPTechnology(
            "fluid-storage-encapsulation",
            {
                {"electromagnetic-matrix", 50}
            },
            {
                "tech-dyson-electromagnetism"
            },
            -- unlocks
            {
                "storage-tank",
                "offshore-pump"
            },
            30,
            1
        )
    }
)

-- High-Efficiency Plasma Control
data:extend(
    {
        utils.createDSPTechnology(
            "high-efficiency-plasma-control",
            {
                {"electromagnetic-matrix", 50}
            },
            {
                "tech-dyson-electromagnetism"
            },
            -- unlocks
            {
                "prism",
                "plasma-exciter",
                "wireless-power-tower"
            },
            30,
            1
        )
    }
)

-- Electromagnetic Drive
data:extend(
    {
        utils.createDSPTechnology(
            "electromagnetic-drive",
            {
                {"electromagnetic-matrix", 50}
            },
            {
                "tech-dyson-electromagnetism"
            },
            -- unlocks
            {
                "electric-motor"
            },
            30,
            1
        )
    }
)

-- Engine
data:extend(
    {
        utils.createDSPTechnology(
            "engine",
            {
                {"electromagnetic-matrix", 20}
            },
            {
                "tech-dyson-electromagnetism"
            },
            -- unlocks
            {
                "engine"
            },
            30,
            1
        )
    }
)

-- Weapon System
data:extend(
    {
        utils.createDSPTechnology(
            "weapon-system",
            {
                {"electromagnetic-matrix", 20}
            },
            {
                "tech-dyson-electromagnetism",
                "tech-dyson-automatic-metallurgy"
            },
            -- unlocks
            {
                "gauss-turret",
                "magnum-ammo-box"
            },
            30,
            1
        )
    }
)
