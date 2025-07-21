-- presets Basicos do mods
require("graficos/style.lua")
-- require("data.recursos")
-- require("data.itens")
-- require("data.matrix")
-- require("data.technology")

-- require("data/soundMaker")
-- require("data.grupos")

-- blocos e qeuipamentos
-- require("data/blocos/Dyson-Sphere-Program-Lib-equipment")

data:extend(
    {
        {
            type = "item",
            name = "teste-debug-item",
            icon = "__core__/graphics/empty.png",
            icon_size = 1,
            subgroup = "intermediate-product",
            order = "z",
            stack_size = 1
        }
    }
)
