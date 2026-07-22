local utils = require("data.utils")
-- default create name
-- nameofTech

-- TIER 2
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
            {"engine"},
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
            {"gun-turret"},
            20
        )
    }
)
