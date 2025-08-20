local functions = require("functions.init")

-- Define itens auto add DSP-name-matrix
data:extend(
    -- Electromagnetic_Matrix
    functions.createItemWithRecipeMatrix(
        "electromagnetic",
        3,
        1,
        {
            {type = "item", name = "DSP-magnetic-coil", amount = 1},
            {type = "item", name = "DSP-circuit-board", amount = 1},
        }
    )
)
-- Define itens
data:extend(
    -- Energy_Matrix
    functions.createItemWithRecipeMatrix(
        "energy",
        6,
        1,
        {
            {type = "item", name = "DSP-energetic-graphite", amount = 2},
            {type = "fluid", name = "DSP-hydrogen", amount = 2},
        }
    )
)
-- Define itens
data:extend(
    -- Structure_Matrix
    functions.createItemWithRecipeMatrix(
        "structure",
        8,
        1,
        {
            {type = "item", name = "DSP-diamond", amount = 1},
            {type = "item", name = "DSP-titanium-crystal", amount = 1},
        }
    )
)
-- Define itens
data:extend(
    -- Information_Matrix
    functions.createItemWithRecipeMatrix(
        "information",
        10,
        1,
        {
            {type = "item", name = "DSP-processor", amount = 2},
            {type = "item", name = "DSP-particle-broadband", amount = 1},
        }
    )
)

data:extend(
    -- Gravity_Matrix
    functions.createItemWithRecipeMatrix(
        "gravity",
        24,
        2,
        {
            {type = "item", name = "DSP-graviton-lens", amount = 1},
            {type = "item", name = "DSP-quantum-chip", amount = 1},
        }
    )
)


data:extend(
    -- Universe_Matrix
    functions.createItemWithRecipeMatrix(
        "universe",
        15,
        1,
        {
            {type = "item", name = "DSP-electromagnetic-matrix", amount = 1},
            {type = "item", name = "DSP-energy-matrix", amount = 1},
            {type = "item", name = "DSP-structure-matrix", amount = 1},
            {type = "item", name = "DSP-information-matrix", amount = 1},
            {type = "item", name = "DSP-gravity-matrix", amount = 1},
            {type = "item", name = "DSP-antimatter", amount = 1}
        }
    )
)