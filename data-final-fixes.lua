-- data-final-fixes.lua
-- Este arquivo é executado após o carregamento de todos os mods,
-- permitindo a verificação e criação de protótipos dinamicamente.

-- Requer o módulo que criará as receitas e itens genéricos
local LDAFunctions = require("__LDA-LIB__/init")

-- Itera sobre todas as tecnologias no jogo
for name, technology in pairs(data.raw.technology) do
    -- Verifica se a tecnologia tem uma tabela de efeitos para desbloquear
    if technology.effects then
        for i, effect in ipairs(technology.effects) do
            -- Verifica se o efeito é um 'unlock-recipe' e se a receita não existe
            if effect.type == "unlock-recipe" and not data.raw.recipe[effect.recipe] then
                -- Adiciona o filtro: só processa se o nome da receita começar com "DSP-"
                if string.sub(effect.recipe, 1, 4) == "DSP-" then
                    log("AVISO: A receita '" .. effect.recipe .. "' referenciada pela tecnologia '" .. name .. "' não foi encontrada. Criando uma receita genérica para ela.")
                    
                    -- Remove o prefixo "DSP-" se ele já existir na string
                    local recipe_name_without_prefix = string.gsub(effect.recipe, "^DSP%-", "", 1)
                    
                    -- Chama a função para criar uma receita e um item genéricos
                    local placeholders = LDAFunctions.createGenericRecipe(recipe_name_without_prefix)
                    
                    -- Adiciona os novos protótipos ao jogo
                    data:extend(placeholders)
                end
            end
        end
    end
end
