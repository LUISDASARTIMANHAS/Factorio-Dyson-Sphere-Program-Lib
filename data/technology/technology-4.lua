local LDAFunctions = require("__LDA-LIB__/init")
-- Tecnologia
-- LDA.createTechnology(name, ingredients, prerequisites, unlocks, time, count, isUpgrade)
-- LDA.createTechnologyTrigger(name, unlocks, prerequisites, research_trigger)
-- LDA.createTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
-- LDA.createTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
-- LDA.techUtils.createEffectsUnlocksRecipes(recipesList)

-- default create name
-- nameofTech

-- TIER 4
-- Environment Modification
data:extend(
    {
        LDAFunctions.createTechnology(
            "environment-modification",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "steel-smelting"
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
                {"electromagnetic-matrix", 1},
                {"energy-matrix", 1}
            },
            -- prerequisites
            {
                "improved-logistics-system"
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
                {"electromagnetic-matrix", 1}
            },
            {
                "electromagnetism",
                "basic-assembling-processes",
                "smelting-purification",
                "electromagnetic-matrix"
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
                {"electromagnetic-matrix", 1}
            },
            {
                "electromagnetic-matrix"
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
                {"electromagnetic-matrix", 2},
                {"energy-matrix", 3}
            },
            {
                "electromagnetic-matrix"
            },
            {
                "fractionator",
                "deuterium"
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
                {"electromagnetic-matrix", 1}
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
                {"electromagnetic-matrix", 1}
            },
            {
                "deuterium-fractionation",
                "fluid-storage-encapsulation"
            },
            {
                "chemical-plant",
                "plastic",
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
                {"electromagnetic-matrix", 1}
            },
            {
                "deuterium-fractionation"
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
                {"electromagnetic-matrix", 4},
                {"energy-matrix", 1}
            },
            {
                "electromagnetic-drive"
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
                {"electromagnetic-matrix", 1}
            },
            nil,
            {"rocket-turret"},
            150
        )
    }
)
