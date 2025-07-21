local Module = {}

function Module.createItem(name, icon, stack_size)
    return {
        type = "item",
        name = name .. "-item",
        icon = icon,
        icon_size = 128,
        subgroup = "itens",
        order = "a[" .. name .. "]",
        stack_size = stack_size or 100
    }
end

-- example
--         {
--             type = "item",
--             name = "iron-ore",
--             icon = path_main .. "graficos/itens/iron-ore.png",
--             icon_size = 128,
--             subgroup = "itens",
--             -- diz pro jogo que o equipamento deve ser colocado com o item especificado
--             place_as_equipment_result = "quantum-teleporter-equipment",
--             order = "a[quantum-teleporter-item]",
--             stack_size = 1
--         },

return Module
