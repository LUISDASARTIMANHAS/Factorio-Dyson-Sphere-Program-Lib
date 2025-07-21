local functions = require("functions.init")




-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge
-- category = "portal-parts" feito em portais em construção

-- Define itens
data:extend(
    functions.createItemWithRecipe(
        "smelting",
        "itens",
        10,
        "portal-parts",
        120,
        {
            {type = "item", name = "quantum-processor", amount = 512},
            {type = "item", name = "tungsten-plate", amount = 10240},
            {type = "item", name = "superconductor", amount = 2048},
            {type = "item", name = "carbon-fiber", amount = 4096}
        },
        {
            {type = "item", name = "part-portal-T2", amount = 1}
        }
    )
)
