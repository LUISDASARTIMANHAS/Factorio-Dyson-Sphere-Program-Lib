local tech = require("functions.create-technology")
local techTrigger = require("functions.create-technology-trigger")
-- default create name
-- tech-dyson-nameofTech

-- TIER 2
-- Basic Logistics System
data:extend(
    {
        techTrigger.createTechnologyTrigger(
            "basic-logistics-system",
            {
                "transport-belt","underground-belt","splitter"
            },
            nil,
            {
                type = "craft-item",
                item = "DSP-circuit-board",
                count = 10
            }
        )
    }
)

-- Automatic Metallurgy
data:extend(
    {
        techTrigger.createTechnologyTrigger(
            "automatic-metallurgy",
            {
                "arc-smelter",
                "glass"
            },
            nil,
            {
                type = "craft-item",
                item = "DSP-magnetic-coil",
                count = 10
            }
        )
    }
)

-- Electromagnetic Matrix
data:extend(
    {
        techTrigger.createTechnologyTrigger(
            "electromagnetic-matrix",
            {
                "electromagnetic-matrix",
                "matrix-lab"
            },
            nil,
            {
                type = "craft-item",
                item = "DSP-circuit-board",
                count = 10
            }
        )
    }
)

-- Basic Assembling Processes
data:extend(
    {
        techTrigger.createTechnologyTrigger(
            "basic-assembling-processes",
            {
                "assembling-machine-1"
            },
            nil,
            {
                type = "craft-item",
                item = "DSP-gear",
                count = 10
            }
        )
    }
)

-- Fluid Storage Encapsulation
data:extend(
    {
        tech.createTechnology(
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
        tech.createTechnology(
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
        tech.createTechnology(
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
        tech.createTechnology(
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
        tech.createTechnology(
            "weapon-system",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            nil,
            20
        )
    }
)
