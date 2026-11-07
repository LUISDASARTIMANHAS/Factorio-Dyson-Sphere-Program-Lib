-- Inicializa a LDA-LIB e define o caminho base do mod (deve ser a primeira coisa)
local LDA = require("__LDA-LIB__/init")
LDA.setBasePath("Dyson-Sphere-Program-Lib")

require("data.grupos")

-- presets Basicos do mods
require("graphics.style")
require("data.recursos")
require("data.itens")
require("data.matrix")
require("data.technology.technology-1")
require("data.technology.technology-2")
require("data.technology.technology-3")
require("data.technology.technology-4")
require("data.technology.technology-5")
require("data.technology.technology-placeholders")

-- require("data/soundMaker")

-- blocos e qeuipamentos
require("data.blocos.matrix-lab")
require("data.blocos.advanced-solar-painel")
require("data.blocos.arc-smelter")
