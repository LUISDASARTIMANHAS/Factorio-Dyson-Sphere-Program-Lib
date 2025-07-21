local functions = require("functions.init")




-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge
-- category = "chemistry" feito na Chemical plant
-- category = "oil-processing" feito na Oil refinery

-- Define itens
-- Magnet
data:extend(
    functions.createSmeltingItemWithRecipe(
        "magnet",
        1.5,
        1,
        {
            {type = "item", name = "iron-ore", amount = 1}
        }
    )
)

-- Magnet
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

-- energetic-graphite
data:extend(
    functions.createSmeltingItemWithRecipe(
        "energetic-graphite",
        2,
        1,
        {
            {type = "item", name = "coal", amount = 2}
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
            {type = "fuid", name = "crude-oil", amount = 2}
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
--             {type = "fuid", name = "crude-oil", amount = 2}
--         },
--         -- results
--         {
--             {type = "fluid", name = "heavy-oil", amount = 2},
--             {type = "fluid", name = "hydrogen", amount = 2}
--         }
--     )
-- )
