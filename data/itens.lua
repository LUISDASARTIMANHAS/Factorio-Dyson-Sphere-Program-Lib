local functions = require("functions.init")

-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge
-- category = "chemistry" feito na Chemical plant
-- category = "oil-processing" feito na Oil refinery
-- category = "particle-collider" feito em Miniature Particle Collider

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
            {type = "item", name = "magnet", amount = 2}
        }
    )
)

-- hydrogen
data:extend(
    functions.createFluidWithRecipe(
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
            {type = "item", name = "energetic-graphite", amount = 3},
            {type = "item", name = "sulfuric-acid", amount = 1}
        },
        100
    )
)

-- carbon-nanotube
-- Made In		Chemical Facility fix in future
data:extend(
    functions.createItemWithRecipe(
        "carbon-nanotube",
        "itens",
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
--     functions.createItemWithRecipe(
--         "carbon-nanotube",
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
            {type = "item", name = "organic-crystal-ore", amount = 1},
            {type = "item", name = "titanium-ingot", amount = 3}
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
            {type = "item", name = "carbon-nanotube", amount = 1},
            {type = "item", name = "crystal-silicon", amount = 2},
            {type = "item", name = "plastic", amount = 2}
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
            {type = "item", name = "high-purity-silicon", amount = 2}
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
            {type = "item", name = "circuit-board", amount = 2},
            {type = "item", name = "microcrystalline-component", amount = 2}
        },
        200
    )
)

-- strange-matter
data:extend(
    functions.createParticleColiderItemWithRecipe(
        "strange-matter",
        8,
        1,
        {
            {type = "item", name = "particle-container", amount = 2},
            {type = "item", name = "iron-plate", amount = 2},
            {type = "fluid", name = "deuterium", amount = 10}
        },
        100
    )
)

-- graviton-lens
data:extend(
    functions.createAssemblerItemWithRecipe(
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
