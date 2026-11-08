-- data-final-fixes.lua
-- Este arquivo é executado após o carregamento de todos os mods,
-- permitindo a verificação e criação de protótipos dinamicamente.

-- Requer o módulo que criará as receitas e itens genéricos
local LDA = require("__LDA-LIB__/init")
-- setBasePath é necessário aqui pois data-final-fixes.lua é um estágio de carregamento separado
LDA.setBasePath("Dyson-Sphere-Program-Lib")

-- Itera sobre todas as tecnologias no jogo
for name, technology in pairs(data.raw.technology) do
    local unlocks = technology.effects
    local isDSPTechnology = string.sub(name, 1, 11) == "tech-dyson-"
    -- Verifica se a tecnologia tem uma tabela de efeitos para desbloquear
    if unlocks then
        for i, effect in ipairs(technology.effects) do
            local effectType = effect.type
            local recipe = effect.recipe
            local recipeInGame = data.raw.recipe[recipe]
            if effectType == "unlock-recipe" and not recipeInGame and isDSPTechnology then
                log("AVISO: A receita '" .. recipe .. "' referenciada pela tecnologia '" .. name .. "' não foi encontrada. Criando uma receita genérica para ela.")

                for _, prototype in ipairs(LDA.createGenericRecipe(recipe)) do
                    local itemExists = data.raw.item[prototype.name] or data.raw.tool[prototype.name]
                    if prototype.type ~= "item" or not itemExists then
                        data:extend({prototype})
                    end
                end
            end
        end
    end
end
