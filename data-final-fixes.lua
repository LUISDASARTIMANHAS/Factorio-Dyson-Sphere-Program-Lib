-- data-final-fixes.lua
-- Este arquivo é executado após o carregamento de todos os mods,
-- permitindo a verificação e criação de protótipos dinamicamente.

-- Requer o módulo que criará as receitas e itens genéricos
local LDAFunctions = require("__LDA-LIB__/init")
local PATH = LDAFunctions.setBasePath('Dyson-Sphere-Program-Lib')

-- Itera sobre todas as tecnologias no jogo
for name, technology in pairs(data.raw.technology) do
    local unlocks = technology.effects
    -- Verifica se a tecnologia tem uma tabela de efeitos para desbloquear
    if unlocks then
        for i, effect in ipairs(technology.effects) do
            local effectType = effect.type
            local recipe = effect.recipe
            local recipeInGame = data.raw.recipe[recipe]
            -- Verifica se o efeito é um 'unlock-recipe' e se a receita não existe
            if effectType == "unlock-recipe" and not recipeInGame then
                local filteredRecipe = string.sub(recipe, 1, 4)
                -- Adiciona o filtro: só processa se o nome da receita começar com "DSP-"
                if filteredRecipe == "DSP-" then
                    log("AVISO: A receita '" .. recipe .. "' referenciada pela tecnologia '" .. name .. "' não foi encontrada. Criando uma receita genérica para ela.")
                    
                    -- Remove o prefixo "DSP-" se ele já existir na string
                    local recipe_name_without_prefix = string.gsub(recipe, "^DSP%-", "", 1)
                    
                    -- Chama a função para criar uma receita e um item genéricos
                    local placeholders = LDAFunctions.createGenericRecipe(recipe_name_without_prefix)
                    
                    -- Adiciona os novos protótipos ao jogo
                    data:extend(placeholders)
                end
            end
        end
    end
end
