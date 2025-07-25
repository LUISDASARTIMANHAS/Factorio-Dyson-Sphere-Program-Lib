local Module = {}


--- Copia os pré-requisitos fornecidos para uma nova tabela.
-- @param prerequisites table (opcional) A tabela de pré-requisitos a ser copiada.
-- @return table Uma nova tabela contendo os pré-requisitos copiados.
function Module.copyPrerequisites(prerequisites)
    local copied_prereqs = {}
    if prerequisites then
        for _, prereq in ipairs(prerequisites) do
            table.insert(copied_prereqs, prereq)
        end
    end
    return copied_prereqs
end

--- Adiciona pré-requisitos automáticos com base no nome da tecnologia.
-- @param tech_name string O nome da tecnologia (ex: "sphere-program", "electromagnetism").
-- @param current_prerequisites table A tabela de pré-requisitos atual para adicionar.
function Module.addAutomaticPrerequisites(tech_name, current_prerequisites)
    -- Adicionar 'tech-dyson-sphere-program' condicionalmente
    -- Não adiciona a si mesma
    if tech_name ~= "sphere-program" then
        table.insert(current_prerequisites, "tech-dyson-sphere-program")
    end

    -- Adicionar 'tech-dyson-electromagnetism' condicionalmente
    -- Não adiciona a si mesma nem a 'tech-dyson-sphere-program'
    if tech_name ~= "electromagnetism" and tech_name ~= "sphere-program" then
        table.insert(current_prerequisites, "tech-dyson-electromagnetism")
    end
end

--- Remove duplicatas de uma lista de pré-requisitos.
-- @param prerequisites_list table A tabela de pré-requisitos com possíveis duplicatas.
-- @return table Uma nova tabela com pré-requisitos únicos.
function Module.removeDuplicates(prerequisites_list)
    local unique_prerequisites = {}
    local seen = {}
    for _, prereq in ipairs(prerequisites_list) do
        if not seen[prereq] then
            table.insert(unique_prerequisites, prereq)
            seen[prereq] = true
        end
    end
    return unique_prerequisites
end

--- Processa a entrada 'unlocks' para o formato de efeitos esperado pelo Factorio.
-- Pode aceitar uma lista de nomes de receitas (strings) ou o formato de efeitos completo.
-- @param unlocks table (opcional) Uma lista de nomes de receitas (strings) OU uma tabela de efeitos no formato Factorio.
-- @return table A tabela de efeitos no formato Factorio.
function Module.processUnlocks(unlocks)
    local processed_unlocks = {}
    if unlocks then
        -- Verificar se 'unlocks' é uma lista simples de nomes de receitas (strings)
        if type(unlocks) == "table" and #unlocks > 0 and type(unlocks[1]) == "string" then
            for _, recipe_name in ipairs(unlocks) do
                table.insert(processed_unlocks, {
                    type = "unlock-recipe",
                    recipe = recipe_name
                })
            end
        else
            -- Se não for uma lista de strings, assumir que já está no formato correto de efeitos
            processed_unlocks = unlocks
        end
    else
        -- Desbloqueio padrão se 'unlocks' for nil
        processed_unlocks = {
            {
                type = "unlock-recipe",
                recipe = "transport-belt",
            }
        }
    end
    return processed_unlocks
end


return Module