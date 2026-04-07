local LDAFunctions = require("__LDA-LIB__/init")
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

-- default create name
-- tech-dyson-nameofTech

-- TIER 4
-- Environment Modification
data:extend(
    {
        LDAFunctions.createTechnology(
            "environment-modification",
            {
                {"DSP-electromagnetic-matrix", 1}
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
        LDAFunctions.createTechnology(
            "crystal-smelting",
            -- ingredients
            {
                {"DSP-electromagnetic-matrix", 1},
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
        LDAFunctions.createTechnology(
            "advanced-solar-collection",
            {
                {"DSP-electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-electromagnetism",
                "tech-dyson-basic-assembling-processes",
                "tech-dyson-smelting-purification",
                "tech-dyson-DSP-electromagnetic-matrix"
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
        LDAFunctions.createTechnology(
            "semiconductor-material",
            {
                {"DSP-electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-DSP-electromagnetic-matrix"
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
        LDAFunctions.createTechnology(
            "deuterium-fractionation",
            {
                {"DSP-electromagnetic-matrix", 2},
                {"energy-matrix", 3}
            },
            {
                "tech-dyson-DSP-electromagnetic-matrix"
            },
            {
                "fractionator",
                "deuterium-fractionator"
            },
            100
        )
    }
)

-- Proliferator MkI
data:extend(
    {
        LDAFunctions.createTechnology(
            "proliferator-mki",
            {
                {"DSP-electromagnetic-matrix", 1}
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
        LDAFunctions.createTechnology(
            "basic-chemical-engineering",
            {
                {"DSP-electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-deuterium-fractionation",
                "tech-dyson-fluid-storage-encapsulation"
            },
            {
                "chemical-plant",
                "DSP-plastic",
                "sulfuric-acid"
            },
            200
        )
    }
)

-- Energy Matrix
data:extend(
    {
        LDAFunctions.createTechnology(
            "energy-matrix",
            {
                {"DSP-electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-deuterium-fractionation"
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
        LDAFunctions.createTechnology(
            "energy-matrix",
            {
                {"DSP-electromagnetic-matrix", 4},
                {"energy-matrix", 1}
            },
            {
                "tech-dyson-electromagnetic-drive"
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
        LDAFunctions.createTechnology(
            "missile-turret",
            {
                {"DSP-electromagnetic-matrix", 1}
            },
            nil,
            {"rocket-turret"},
            150
        )
    }
)
