local LDAFunctions = require("__LDA-LIB__/init")
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

-- default create name
-- tech-dyson-nameofTech

-- TIER 2
-- Basic Logistics System
data:extend(
    {
        LDAFunctions.createTechnologyCraftEntityTrigger(
            "basic-logistics-system",
            {
                "transport-belt",
                "underground-belt",
                "splitter"
            },
            {"electromagnetism"},
            "DSP-circuit-board",
            10
        )
    }
)

-- Automatic Metallurgy
data:extend(
    {
        LDAFunctions.createTechnologyCraftEntityTrigger(
            "automatic-metallurgy",
            {
                "arc-smelter",
                "glass"
            },
            {"electromagnetism"},
            "DSP-magnetic-coil",
            10
        )
    }
)

-- Electromagnetic Matrix
data:extend(
    {
        LDAFunctions.createTechnologyCraftEntityTrigger(
            "DSP-electromagnetic-matrix",
            -- recipe auto add DSP-recipe-name
            {
                "DSP-electromagnetic-matrix",
                "matrix-lab"
            },
            {"electromagnetism"},
            "DSP-circuit-board",
            10
        )
    }
)

-- Basic Assembling Processes
data:extend(
    {
        LDAFunctions.createTechnologyCraftEntityTrigger(
            "basic-assembling-processes",
            {
                "assembling-machine-1"
            },
            {"electromagnetism"},
            "DSP-gear",
            10
        )
    }
)

-- Fluid Storage Encapsulation
data:extend(
    {
        LDAFunctions.createTechnology(
            "fluid-storage-encapsulation",
            {
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
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
                {"DSP-electromagnetic-matrix", 1}
            },
            nil,
            {"gun-turret"},
            20
        )
    }
)
