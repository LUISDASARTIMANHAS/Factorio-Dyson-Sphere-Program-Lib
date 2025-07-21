local functions = require("functions.init")

-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge

-- automaticamente adicona -ore
-- Define itens
data:extend(functions.createOre("organic-crystal", 100, 1, "chemical", "1.80MJ"))
data:extend(functions.createOre("titanium", 100, 1, "chemical", "1.80MJ"))
