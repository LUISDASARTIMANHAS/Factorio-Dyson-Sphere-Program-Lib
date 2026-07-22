local utils = require("data.utils")

-- default create name
-- nameofTech

-- TIER 4
-- Environment Modification
data:extend(
    {
        utils.createDSPTechnology(
            "environment-modification",
            {
                {"electromagnetic-matrix", 1}
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
        utils.createDSPTechnology(
            "crystal-smelting",
            -- ingredients
            {
                {"electromagnetic-matrix", 1},
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
        utils.createDSPTechnology(
            "advanced-solar-collection",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-electromagnetism",
                "tech-dyson-basic-assembling-processes",
                "tech-dyson-smelting-purification",
                "tech-dyson-electromagnetic-matrix"
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
        utils.createDSPTechnology(
            "semiconductor-material",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-electromagnetic-matrix"
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
        utils.createDSPTechnology(
            "deuterium-fractionation",
            {
                {"electromagnetic-matrix", 2},
                {"energy-matrix", 3}
            },
            {
                "tech-dyson-electromagnetic-matrix"
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
        utils.createDSPTechnology(
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
        utils.createDSPTechnology(
            "basic-chemical-engineering",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-deuterium-fractionation",
                "tech-dyson-fluid-storage-encapsulation"
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
        utils.createDSPTechnology(
            "energy-matrix",
            {
                {"electromagnetic-matrix", 1}
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
        utils.createDSPTechnology(
            "energy-matrix",
            {
                {"electromagnetic-matrix", 4},
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
        utils.createDSPTechnology(
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
