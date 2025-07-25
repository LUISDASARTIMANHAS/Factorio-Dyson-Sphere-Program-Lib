local tech = require("functions.create-technology")
-- default create name
-- tech-dyson-nameofTech

-- TIER 4
-- Environment Modification
data:extend(
    {
        tech.createTechnology(
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
        tech.createTechnology(
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
        tech.createTechnology(
            "advanced-solar-collection",
            {
                {"electromagnetic-matrix", 1}
            },
            {
                "tech-dyson-electromagnetic",
                "tech-dyson-basic-assembling-processes",
                "tech-dyson-smelting-purification",
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
        tech.createTechnology(
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
        tech.createTechnology(
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
                "deuterium-fractionator"
            },
            100
        )
    }
)

-- Proliferator MkI
data:extend(
    {
        tech.createTechnology(
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
        tech.createTechnology(
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
        tech.createTechnology(
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
        tech.createTechnology(
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
        tech.createTechnology(
            "missile-turret",
            {
                {"electromagnetic-matrix", 1}
            },
            nil,
            nil,
            150
        )
    }
)
