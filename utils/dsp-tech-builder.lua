local LDA = require("__LDA-LIB__/init")
local utils = {}

--[[
  Helper temporário para DSP Techs:
  Adiciona o prefixo de projeto "tech-dyson-" nos nomes das tecnologias e ajusta
  o default de contagem/parâmetros mantendo a chamada delegada para a LDA-LIB.
]]

function utils.createDSPTechnology(name, ingredients, prerequisites, unlocks, time, count)
    return LDA.createTechnology("tech-dyson-" .. name, ingredients, prerequisites, unlocks, time, count, false)
end

function utils.createDSPTechnologyCraftEntityTrigger(name, unlocks, prerequisites, item, count)
    return LDA.createTechnologyCraftEntityTrigger("tech-dyson-" .. name, unlocks, prerequisites, item, count or 10)
end

function utils.createDSPTechnologyMineEntityTrigger(name, unlocks, prerequisites, mine_entity)
    return LDA.createTechnologyMineEntityTrigger("tech-dyson-" .. name, unlocks, prerequisites, mine_entity)
end

return utils
