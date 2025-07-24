local Module = {}

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
return Module