local LDAFunctions = require("__LDA-LIB__/init")
-- default create name
-- tech-dyson-nameofTech

-- TIER 2
-- Basic Logistics System
data:extend(
    {
        LDAFunctions.createTechnologyTrigger(
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
        LDAFunctions.createTechnologyTrigger(
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
        LDAFunctions.createTechnologyTrigger(
            "electromagnetic-matrix",
            -- recipe auto add DSP-recipe-name
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
        LDAFunctions.createTechnologyTrigger(
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
        LDAFunctions.createTechnology(
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
