local LDAFunctions = require("__LDA-LIB__/init")
local createParticleColiderItemWithRecipe = require("data.create-particle-collider-item-with-recipe")
-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge
-- category = "chemistry" feito na Chemical plant
-- category = "oil-processing" feito na Oil refinery
-- category = "particle-collider" feito em Miniature Particle Collider

-- LDA.createRecipe(typeIcon, name, crafted_in, time, ingredients, results, alt_unlocks, enabled)
-- LDA.createItemWithRecipe(name, subgroup, stack_size, crafted_in, time, ingredients, results, alt_unlocks, isEnabled, pictures)
-- LDA.createThrowInWaterItemWithRecipe(name, time, qtde, ingredients, stack_size, requiredWaterValue, alt_unlocks, isEnabled)
-- LDA.createFluidWithRecipe(name, heatEnergy, crafted_in, time, ingredients, results, alt_unlocks)
-- LDA.createBlockItemWithRecipe(name, subgroup, stack_size, crafted_in, time, ingredients, results, alt_unlocks, isEnabled, icon_size, pick_sound, drop_sound)
-- LDA.createEquipmentItemWithRecipe(name, subgroup, weight, crafted_in, time, ingredients, results, alt_unlocks, isEnabled)
-- LDA.createSmeltingItemWithRecipe(name, time, qtde, ingredients, crafted_in, alt_unlocks, isEnabled)
-- LDA.createAssemblerItemWithRecipe(name, time, qtde, ingredients, stack_size, alt_unlocks, isEnabled)
-- LDA.createGenericRecipe(name)

-- Define itens
-- circuit-board
data:extend(
    -- createAssemblerItemWithRecipe(name, time, qtde, ingredients, stack_size, alt_unlocks, isEnabled)
    LDAFunctions.createAssemblerItemWithRecipe(
        "circuit-board",
        1,
        2,
        {
            {type = "item", name = "iron-plate", amount = 2},
            {type = "item", name = "copper-plate", amount = 1}
        }
    )
)

-- Magnetic Coil
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "magnetic-coil",
        1,
        2,
        {
            {type = "item", name = "copper-plate", amount = 1},
            {type = "item", name = "magnet", amount = 2}
        }
    )
)

-- Engine
data:extend(
    -- createAssemblerItemWithRecipe(name, time, qtde, ingredients, stack_size, alt_unlocks, isEnabled)
    LDAFunctions.createAssemblerItemWithRecipe(
        "engine",
        3,
        1,
        {
            {type = "item", name = "magnetic-coil", amount = 1},
            {type = "item", name = "copper-plate", amount = 2}
        },
        200
    )
)

-- hydrogen X-ray-craking
data:extend(
    LDAFunctions.createFluidWithRecipe(
        "hydrogen",
        "9MJ",
        "oil-processing",
        4,
        -- ingredients
        {
            {type = "fluid", name = "crude-oil", amount = 2}
        },
        -- results
        {
            {type = "fluid", name = "heavy-oil", amount = 2},
            {type = "fluid", name = "hydrogen", amount = 2}
        }
    )
)

-- Graphene
-- Made In		Chemical Facility fix in future
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "graphene",
        3,
        2,
        {
            {type = "item", name = "energetic-graphite", amount = 3},
            {type = "fluid", name = "sulfuric-acid", amount = 1}
        },
        100
    )
)

-- plastic
data:extend(
    LDAFunctions.createItemWithRecipe(
        "plastic",
        "intermediate-products",
        100,
        "chemistry",
        3,
        -- ingredients
        {
            {type = "fluid", name = "crude-oil", amount = 2},
            {type = "item", name = "energetic-graphite", amount = 2}
        },
        -- results
        {
            {type = "item", name = "plastic", amount = 1}
        }
    )
)

-- carbon-nanotube
-- Made In		Chemical Facility fix in future
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "carbon-nanotube",
        4,
        2,
        {
            {type = "item", name = "titanium-ingot", amount = 1},
            {type = "item", name = "graphene", amount = 1}
        },
        100
    )
)

-- carbon-nanotube (FIRE ICE)
-- Made In		Chemical Facility fix in future
-- data:extend(
--     LDAFunctions.createItemWithRecipe(
--         "carbon-nanotube",
--         "intermediate-products"
--         "itens",
--         100,
--         4,
--         2,
--         {
--             {type = "item", name = "fire-ice", amount = 2}
--         }
--     )
-- )

-- Titanium Crystal
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "titanium-crystal",
        4,
        1,
        {
            {type = "item", name = "organic-crystal-ore", amount = 1},
            {type = "item", name = "titanium-ingot", amount = 3}
        },
        100
    )
)

-- particle-broadband
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "particle-broadband",
        8,
        1,
        {
            {type = "item", name = "carbon-nanotube", amount = 1},
            {type = "item", name = "crystal-silicon", amount = 2},
            {type = "item", name = "plastic", amount = 2}
        },
        200
    )
)

-- microcrystalline-component
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "microcrystalline-component",
        2,
        1,
        {
            {type = "item", name = "copper-plate", amount = 1},
            {type = "item", name = "high-purity-silicon", amount = 2}
        },
        200
    )
)

-- Processor
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "processor",
        3,
        1,
        {
            {type = "item", name = "circuit-board", amount = 2},
            {type = "item", name = "microcrystalline-component", amount = 2}
        },
        200
    )
)

-- gear
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "gear",
        1,
        1,
        {
            {type = "item", name = "iron-plate", amount = 1}
        },
        200
    )
)

-- electric-motor
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "electric-motor",
        2,
        1,
        {
            {type = "item", name = "iron-plate", amount = 2},
            {type = "item", name = "gear", amount = 1},
            {type = "item", name = "magnetic-coil", amount = 1}
        },
        100
    )
)

-- electromagnetic-turbine
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "electromagnetic-turbine",
        2,
        1,
        {
            {type = "item", name = "electric-motor", amount = 2},
            {type = "item", name = "magnetic-coil", amount = 2}
        },
        100
    )
)

-- particle-container
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "particle-container",
        4,
        1,
        {
            {type = "item", name = "electromagnetic-turbine", amount = 2},
            {type = "item", name = "copper-plate", amount = 2},
            {type = "item", name = "graphene", amount = 2}
        },
        100
    )
)

-- strange-matter
data:extend(
    createParticleColiderItemWithRecipe(
        "strange-matter",
        8,
        1,
        100,
        {
            {type = "item", name = "particle-container", amount = 2},
            {type = "item", name = "iron-plate", amount = 2},
            {type = "fluid", name = "deuterium", amount = 10}
        }
    )
)

-- graviton-lens
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "graviton-lens",
        6,
        1,
        {
            {type = "item", name = "diamond", amount = 4},
            {type = "item", name = "strange-matter", amount = 1}
        },
        100
    )
)

-- titanium-glass
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "titanium-glass",
        5,
        2,
        {
            {type = "item", name = "glass", amount = 2},
            {type = "item", name = "titanium-ingot", amount = 2},
            {type = "fluid", name = "water", amount = 2}
        },
        100
    )
)

-- casimir-crystal
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "casimir-crystal",
        4,
        1,
        {
            {type = "item", name = "titanium-crystal", amount = 1},
            {type = "item", name = "graphene", amount = 2},
            {type = "fluid", name = "hydrogen", amount = 12}
        },
        100
    )
)

-- plane-filter
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "plane-filter",
        12,
        1,
        {
            {type = "item", name = "casimir-crystal", amount = 1},
            {type = "item", name = "titanium-glass", amount = 2}
        },
        200
    )
)

-- quantum-chip
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "quantum-chip",
        6,
        1,
        {
            {type = "item", name = "processor", amount = 2},
            {type = "item", name = "plane-filter", amount = 2}
        },
        200
    )
)

-- Critical Photon Receita básica (sem lens)
data:extend(
    LDAFunctions.createItemWithRecipe(
        "critical-photon",
        "intermediate-products",
        100,
        "ray-receiver",
        10,
        {},
        {
            {type = "item", name = "critical-photon", amount = 6}
        }
    )
)

-- Critical Photon Receita com lens
data:extend({
    LDAFunctions.createRecipe(
        "itens",
        "critical-photon-lens",
        "ray-receiver",
        10,
        {
            {type = "item", name = "graviton-lens", amount = 1}
        },
        {
            {type = "item", name = "critical-photon", amount = 12},
            {type = "item", name = "graviton-lens", amount = 1, catalyst_amount = 1}
        }
    )
})

-- antimatter
data:extend(
    createParticleColiderItemWithRecipe(
        "antimatter",
        2,
        nil,
        20,
        {
            {type = "item", name = "critical-photon", amount = 2}
        },
        {
            {type = "item", name = "antimatter", amount = 2},
            {type = "fluid", name = "hydrogen", amount = 2}
        }
    )
)

-- prism
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "prism",
        2,
        2,
        {
            {type = "item", name = "glass", amount = 3},
        },
        100
    )
)

-- plasma-exciter
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "plasma-exciter",
        2,
        1,
        {
            {type = "item", name = "magnetic-coil", amount = 4},
            {type = "item", name = "prism", amount = 2},
        },
        200
    )
)

-- Tesla_Tower
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "tesla-tower",
        1,
        1,
        {
            {type = "item", name = "iron-plate", amount = 2},
            {type = "item", name = "magnetic-coil", amount = 1},
        },
        100
    )
)

-- Wireless_Power_Tower
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "wireless-power-tower",
        3,
        1,
        {
            {type = "item", name = "plasma-exciter", amount = 3},
            {type = "item", name = "tesla-tower", amount = 1},
        },
        100
    )
)

-- Thermal_Power_Plant
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "thermal-power-plant",
        5,
        1,
        {
            {type = "item", name = "iron-plate", amount = 10},
            {type = "item", name = "stone-brick", amount = 4},
            {type = "item", name = "gear", amount = 4},
            {type = "item", name = "magnetic-coil", amount = 4},
        },
        50
    )
)

-- Battlefield_Analysis_Base
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "battlefield-analysis-base",
        6,
        1,
        {
            {type = "item", name = "iron-plate", amount = 12},
            {type = "item", name = "circuit-board", amount = 18},
            {type = "item", name = "microcrystalline-component", amount = 6},
            {type = "item", name = "engine", amount = 12},
        },
        50
    )
)

-- Fractionator
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "fractionator",
        3,
        1,
        {
            {type = "item", name = "iron-plate", amount = 8},
            {type = "item", name = "stone-brick", amount = 4},
            {type = "item", name = "glass", amount = 4},
            {type = "item", name = "quantum-chip", amount = 1},
        },
        30
    )
)

-- Spray_Coater
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "spray-coater",
        3,
        1,
        {
            {type = "item", name = "steel-plate", amount = 4},
            {type = "item", name = "plasma-exciter", amount = 2},
            {type = "item", name = "circuit-board", amount = 2},
            {type = "item", name = "microcrystalline-component", amount = 2},
        },
        50
    )
)

-- Proliferator_Mk
data:extend(
    LDAFunctions.createAssemblerItemWithRecipe(
        "proliferator-mki",
        0.5,
        1,
        {
            {type = "item", name = "coal", amount = 1},
        },
        200
    )
)