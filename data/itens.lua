local functions = require("functions.init")

-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge
-- category = "chemistry" feito na Chemical plant
-- category = "oil-processing" feito na Oil refinery
-- category = "DSP-particle-collider" feito em Miniature Particle Collider

-- Define itens
-- circuit-board
data:extend(
    functions.createAssemblerItemWithRecipe(
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
    functions.createAssemblerItemWithRecipe(
        "magnetic-coil",
        1,
        2,
        {
            {type = "item", name = "copper-plate", amount = 1},
            {type = "item", name = "DSP-magnet", amount = 2}
        }
    )
)

-- hydrogen X-ray-craking
-- data:extend(
--     functions.createFluidWithRecipe(
--         "hydrogen",
--         "9MJ",
--         "oil-processing",
--         4,
--         -- ingredients
--         {
--             {type = "fluid", name = "crude-oil", amount = 2}
--         },
--         -- results
--         {
--             {type = "fluid", name = "heavy-oil", amount = 2},
--             {type = "fluid", name = "hydrogen", amount = 2}
--         }
--     )
-- )

-- Graphene
-- Made In		Chemical Facility fix in future
data:extend(
    functions.createAssemblerItemWithRecipe(
        "graphene",
        3,
        2,
        {
            {type = "item", name = "DSP-energetic-graphite", amount = 3},
            {type = "fluid", name = "sulfuric-acid", amount = 1}
        },
        100
    )
)

-- plastic
data:extend(
    functions.createItemWithRecipe(
        "plastic",
        "intermediate-products",
        100,
        "chemistry",
        3,
        -- ingredients
        {
            {type = "fluid", name = "crude-oil", amount = 2},
            {type = "item", name = "DSP-energetic-graphite", amount = 2}
        },
        -- results
        {
            {type = "item", name = "DSP-plastic", amount = 1}
        }
    )
)

-- carbon-nanotube
-- Made In		Chemical Facility fix in future
data:extend(
    functions.createAssemblerItemWithRecipe(
        "carbon-nanotube",
        4,
        2,
        {
            {type = "item", name = "DSP-titanium-ingot", amount = 1},
            {type = "item", name = "DSP-graphene", amount = 1}
        },
        100
    )
)

-- carbon-nanotube (FIRE ICE)
-- Made In		Chemical Facility fix in future
-- data:extend(
--     functions.createItemWithRecipe(
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
    functions.createAssemblerItemWithRecipe(
        "titanium-crystal",
        4,
        1,
        {
            {type = "item", name = "DSP-organic-crystal-ore", amount = 1},
            {type = "item", name = "DSP-titanium-ingot", amount = 3}
        },
        100
    )
)

-- particle-broadband
data:extend(
    functions.createAssemblerItemWithRecipe(
        "particle-broadband",
        8,
        1,
        {
            {type = "item", name = "DSP-carbon-nanotube", amount = 1},
            {type = "item", name = "DSP-crystal-silicon", amount = 2},
            {type = "item", name = "DSP-plastic", amount = 2}
        },
        200
    )
)

-- microcrystalline-component
data:extend(
    functions.createAssemblerItemWithRecipe(
        "microcrystalline-component",
        2,
        1,
        {
            {type = "item", name = "copper-plate", amount = 1},
            {type = "item", name = "DSP-high-purity-silicon", amount = 2}
        },
        200
    )
)

-- Processor
data:extend(
    functions.createAssemblerItemWithRecipe(
        "processor",
        3,
        1,
        {
            {type = "item", name = "DSP-circuit-board", amount = 2},
            {type = "item", name = "DSP-microcrystalline-component", amount = 2}
        },
        200
    )
)

-- gear
data:extend(
    functions.createAssemblerItemWithRecipe(
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
    functions.createAssemblerItemWithRecipe(
        "electric-motor",
        2,
        1,
        {
            {type = "item", name = "iron-plate", amount = 2},
            {type = "item", name = "DSP-gear", amount = 1},
            {type = "item", name = "DSP-magnetic-coil", amount = 1}
        },
        100
    )
)

-- electromagnetic-turbine
data:extend(
    functions.createAssemblerItemWithRecipe(
        "electromagnetic-turbine",
        2,
        1,
        {
            {type = "item", name = "DSP-electric-motor", amount = 2},
            {type = "item", name = "DSP-magnetic-coil", amount = 2}
        },
        100
    )
)

-- particle-container
data:extend(
    functions.createAssemblerItemWithRecipe(
        "particle-container",
        4,
        1,
        {
            {type = "item", name = "DSP-electromagnetic-turbine", amount = 2},
            {type = "item", name = "copper-plate", amount = 2},
            {type = "item", name = "DSP-graphene", amount = 2}
        },
        100
    )
)

-- strange-matter
data:extend(
    functions.createParticleColiderItemWithRecipe(
        "strange-matter",
        8,
        1,
        100,
        {
            {type = "item", name = "DSP-particle-container", amount = 2},
            {type = "item", name = "iron-plate", amount = 2},
            {type = "fluid", name = "DSP-deuterium", amount = 10}
        }
    )
)

-- graviton-lens
data:extend(
    functions.createAssemblerItemWithRecipe(
        "graviton-lens",
        6,
        1,
        {
            {type = "item", name = "DSP-diamond", amount = 4},
            {type = "item", name = "DSP-strange-matter", amount = 1}
        },
        100
    )
)

-- titanium-glass
data:extend(
    functions.createAssemblerItemWithRecipe(
        "titanium-glass",
        5,
        2,
        {
            {type = "item", name = "DSP-glass", amount = 2},
            {type = "item", name = "DSP-titanium-ingot", amount = 2},
            {type = "fluid", name = "water", amount = 2}
        },
        100
    )
)

-- casimir-crystal
data:extend(
    functions.createAssemblerItemWithRecipe(
        "casimir-crystal",
        4,
        1,
        {
            {type = "item", name = "DSP-titanium-crystal", amount = 1},
            {type = "item", name = "DSP-graphene", amount = 2},
            {type = "fluid", name = "DSP-hydrogen", amount = 12}
        },
        100
    )
)

-- plane-filter
data:extend(
    functions.createAssemblerItemWithRecipe(
        "plane-filter",
        12,
        1,
        {
            {type = "item", name = "DSP-casimir-crystal", amount = 1},
            {type = "item", name = "DSP-titanium-glass", amount = 2}
        },
        200
    )
)

-- quantum-chip
data:extend(
    functions.createAssemblerItemWithRecipe(
        "quantum-chip",
        6,
        1,
        {
            {type = "item", name = "DSP-processor", amount = 2},
            {type = "item", name = "DSP-plane-filter", amount = 2}
        },
        200
    )
)

-- Critical Photon Receita básica (sem lens)
data:extend(
    functions.createItemWithRecipe(
        "critical-photon",
        "intermediate-products",
        100,
        "ray-receiver",
        10,
        {},
        {
            {type = "item", name = "DSP-critical-photon", amount = 6}
        }
    )
)

-- Critical Photon Receita com lens
data:extend({
    functions.createRecipe(
        "itens",
        "critical-photon-lens",
        "ray-receiver",
        10,
        {
            {type = "item", name = "DSP-graviton-lens", amount = 1}
        },
        {
            {type = "item", name = "DSP-critical-photon", amount = 12},
            {type = "item", name = "DSP-graviton-lens", amount = 1, catalyst_amount = 1}
        }
    )
})

-- antimatter
data:extend(
    functions.createParticleColiderItemWithRecipe(
        "antimatter",
        2,
        nil,
        20,
        {
            {type = "item", name = "DSP-critical-photon", amount = 2}
        },
        {
            {type = "item", name = "DSP-antimatter", amount = 2},
            {type = "fluid", name = "DSP-hydrogen", amount = 2}
        }
    )
)
