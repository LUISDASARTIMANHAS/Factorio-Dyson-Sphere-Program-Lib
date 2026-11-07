local LDA = require("__LDA-LIB__/init")

-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge
-- createOre(name, stack_size, fuel_category, fuel_value)
-- createResource(name, order, particleName, resource_parameters, autoplace_parameters)

-- automaticamente adicona -ore
-- Define itens
data:extend(LDA.createOre("organic-crystal", 100, "chemical", "1.80MJ"))
data:extend(LDA.createOre("titanium", 100, "chemical", "1.80MJ"))
data:extend(LDA.createOre("silicon", 100, nil, nil))
data:extend(LDA.createOre("kimberlite", 50, nil, nil))

-- hydrogen
data:extend(
    LDA.createFluidWithRecipe(
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

-- deuterium
-- deuterium-fractionator
-- make in Fractionator fix in future
data:extend(
    LDA.createFluidWithRecipe(
        "deuterium",
        "9MJ",
        "oil-processing",
        2.5,
        -- ingredients
        {
            {type = "fluid", name = "hydrogen", amount = 1}
        },
        -- results
        {
            {
                type = "fluid",
                name = "deuterium",
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
    LDA.createSmeltingItemWithRecipe(
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
    LDA.createAssemblerItemWithRecipe(
        "silicon-ore",
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
    LDA.createSmeltingItemWithRecipe(
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
    LDA.createSmeltingItemWithRecipe(
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
    LDA.createSmeltingItemWithRecipe(
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
    LDA.createSmeltingItemWithRecipe(
        "diamond",
        2,
        1,
        {
            {type = "item", name = "energetic-graphite", amount = 2}
        }
    )
)

-- diamond kimberlite ore
data:extend(
    {LDA.createRecipe(
        "icons",
        "diamond-kimberlite",
        "smelting",
        1.5,
        {
            {type = "item", name = "kimberlite-ore", amount = 1}
        },
        {
            {type = "item", name = "diamond", amount = 2}
        }
    )}
)

-- Titanium Ingot
data:extend(
    LDA.createSmeltingItemWithRecipe(
        "titanium-ingot",
        2,
        1,
        {
            {type = "item", name = "titanium-ore", amount = 2}
        }
    )
)

-- high-purity-silicon
data:extend(
    LDA.createSmeltingItemWithRecipe(
        "high-purity-silicon",
        2,
        1,
        {
            {type = "item", name = "silicon-ore", amount = 2}
        }
    )
)

-- crystal-silicon
data:extend(
    LDA.createSmeltingItemWithRecipe(
        "crystal-silicon",
        2,
        1,
        {
            {type = "item", name = "high-purity-silicon", amount = 1}
        }
    )
)
