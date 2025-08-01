local functions = require("functions.init")

-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge

-- automaticamente adicona -ore
-- Define itens
data:extend(functions.createOre("organic-crystal", 100, "chemical", "1.80MJ"))
data:extend(functions.createOre("titanium", 100, "chemical", "1.80MJ"))
data:extend(functions.createOre("silicon", 100, nil, nil))
data:extend(functions.createOre("kimberlite", 50, nil, nil))

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
            {type = "fluid", name = "DSP-hydrogen", amount = 2}
        }
    )
)

-- deuterium
-- make in Fractionator fix in future
data:extend(
    functions.createFluidWithRecipe(
        "deuterium",
        "9MJ",
        "oil-processing",
        2.5,
        -- ingredients
        {
            {type = "fluid", name = "DSP-hydrogen", amount = 1}
        },
        -- results
        {
            {
                type = "fluid",
                name = "DSP-deuterium",
                amount_min = 1,
                amount_max = 1,
                probability = 0.01,
                show_amount_in_title = true
            }
        }
    )
)


-- Stone Brick
data:extend(
    functions.createSmeltingItemWithRecipe(
        "stone-brick",
        1,
        1,
        {
            {type = "item", name = "stone", amount = 1}
        }
    )
)

-- silicon-ore (STONE)
data:extend(
    functions.createAssemblerItemWithRecipe(
        "DSP-silicon-ore",
        10,
        1,
        {
            {type = "item", name = "stone", amount = 10}
        }
    )
)

-- SMELTING RESOURCES
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

-- glass
data:extend(
    functions.createSmeltingItemWithRecipe(
        "glass",
        2,
        1,
        {
            {type = "item", name = "stone", amount = 2}
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

-- diamond
data:extend(
    functions.createSmeltingItemWithRecipe(
        "diamond",
        2,
        1,
        {
            {type = "item", name = "DSP-energetic-graphite", amount = 2}
        }
    )
)

-- diamond kimberlite ore
data:extend(
    {functions.createRecipe(
        "itens",
        "diamond-kimberlite",
        "smelting",
        1.5,
        {
            {type = "item", name = "DSP-kimberlite-ore", amount = 1}
        },
        {
            {type = "item", name = "DSP-diamond", amount = 2}
        }
    )}
)

-- Titanium Ingot
data:extend(
    functions.createSmeltingItemWithRecipe(
        "titanium-ingot",
        2,
        1,
        {
            {type = "item", name = "DSP-titanium-ore", amount = 2}
        }
    )
)

-- high-purity-silicon
data:extend(
    functions.createSmeltingItemWithRecipe(
        "high-purity-silicon",
        2,
        1,
        {
            {type = "item", name = "DSP-silicon-ore", amount = 2}
        }
    )
)

-- crystal-silicon
data:extend(
    functions.createSmeltingItemWithRecipe(
        "crystal-silicon",
        2,
        1,
        {
            {type = "item", name = "DSP-high-purity-silicon", amount = 1}
        }
    )
)
