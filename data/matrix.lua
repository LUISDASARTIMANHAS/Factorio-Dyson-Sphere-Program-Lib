local functions = require("functions.init")

-- Define itens
data:extend(
    -- Electromagnetic_Matrix
    functions.createItemWithRecipeMatrix(
        "electromagnetic",
        3,
        {
            {type = "item", name = "magnetic-coil", amount = 1},
            {type = "item", name = "circuit-board", amount = 1},
        }
    )
)
-- Define itens
data:extend(
    -- Energy_Matrix
    functions.createItemWithRecipeMatrix(
        "energy",
        6,
        {
            {type = "item", name = "energetic-graphite", amount = 2},
            {type = "item", name = "hydrogen", amount = 2},
        }
    )
)
-- Define itens
data:extend(
    -- Structure_Matrix
    functions.createItemWithRecipeMatrix(
        "structure",
        8,
        {
            {type = "item", name = "diamond", amount = 1},
            {type = "item", name = "titanium-crystal", amount = 1},
        }
    )
)
-- Define itens
data:extend(
    -- Information_Matrix
    functions.createItemWithRecipeMatrix(
        "information",
        10,
        {
            {type = "item", name = "processor", amount = 2},
            {type = "item", name = "particle-broadband", amount = 1},
        }
    )
)
