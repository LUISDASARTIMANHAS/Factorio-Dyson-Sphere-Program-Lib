local path_main = "__Quantum-Teleporter__/"

-- category = "advanced-crafting" maquinas de montagem tier 2 e 3
-- category = "basic-crafting" maquinas de montagem tier 1
-- category = "crafting" feito a mão
-- category = "smelting" feito em fornalhas
-- category = "centrifuging" feito na centrifuge
-- category = "portal-parts" feito em portais em construção

-- Define itens
data:extend(
    {
        {
            type = "item",
            name = "quantum-teleporter-equipment",
            icon = path_main .. "graficos/itens/quantum-teleporter-equipment-128.png",
            icon_size = 128,
            subgroup = "itens",
            -- diz pro jogo que o equipamento deve ser colocado com o item especificado
            place_as_equipment_result = "quantum-teleporter-equipment",
            order = "a[quantum-teleporter-item]",
            stack_size = 1
        },
        {
            type = "recipe",
            name = "quantum-teleporter-equipment-recipe",
            category = "advanced-crafting",
            enabled = false,
            energy_required = 120,
            ingredients = {
                {type = "item", name = "supercapacitor", amount = 4096},
                {type = "item", name = "tungsten-plate", amount = 256},
                {type = "item", name = "carbon-fiber", amount = 64},
                {type = "item", name = "quantum-processor", amount = 256}
            },
            results = {
                {type = "item", name = "quantum-teleporter-equipment", amount = 1}
            },
            alternative_unlock_methods = {"Quantum-Teleporter"}
        }
    }
)

data:extend(
    {
        -- Item do portal
        {
            type = "item",
            name = "quantum-teleporter-portal-T1",
            icon = path_main .. "graficos/blocos/T1-portal.png",
            icon_size = 500,
            subgroup = "itens",
            order = "Quantum-Teleporter-itens[quantum-teleporter-portal-T1]",
            place_result = "quantum-teleporter-portal-T1-entidade",
            stack_size = 1
        },
        -- Receita do portal
        {
            type = "recipe",
            name = "quantum-teleporter-portal-T1-recipe",
            category = "advanced-crafting",
            enabled = true,
            energy_required = 120,
            ingredients = {
                {type = "item", name = "quantum-processor", amount = 128},
                {type = "item", name = "tungsten-plate", amount = 2.560},
                {type = "item", name = "superconductor", amount = 512},
                {type = "item", name = "carbon-fiber", amount = 1024}
            },
            results = {
                {type = "item", name = "quantum-teleporter-portal-T1", amount = 1}
            },
            maximum_productivity = 1.5,
            allow_quality = true,
            allowed_module_categories = {"productivity", "speed"},
        }
    }
)

data:extend(
    {
        -- Item do portal T2
        {
            type = "item",
            name = "quantum-teleporter-portal-T2",
            icon = path_main .. "graficos/blocos/T2-portal.png",
            icon_size = 500,
            subgroup = "itens",
            order = "Quantum-Teleporter-itens[quantum-teleporter-portal-T2]",
            place_result = "quantum-teleporter-portal-T2-entidade",
            stack_size = 1
        },
        -- Receita do portal T2
        {
            type = "recipe",
            name = "quantum-teleporter-portal-T2-recipe",
            category = "advanced-crafting",
            enabled = false,
            energy_required = 120,
            ingredients = {
                {type = "item", name = "part-portal-T1", amount = 2500},
                {type = "item", name = "quantum-teleporter-portal-T1", amount = 1},
                {type = "item", name = "quantum-processor", amount = 256},
                {type = "item", name = "tungsten-plate", amount = 5120},
                {type = "item", name = "superconductor", amount = 1024},
                {type = "item", name = "carbon-fiber", amount = 2048}
            },
            results = {
                {type = "item", name = "quantum-teleporter-portal-T2", amount = 1}
            },
            maximum_productivity = 1.5,
            allow_quality = true,
            allowed_module_categories = {"productivity", "speed"},
            alternative_unlock_methods = {"Quantum-Teleporter"}
        }
    }
)

data:extend(
    {
        --  definindo o item Portal
        {
            type = "item",
            name = "quantum-teleporter-portal",
            icon = path_main .. "graficos/blocos/quantum-teleporter-portal.png",
            icon_size = 500,
            subgroup = "itens",
            order = "Quantum-Teleporter-itens[quantum-teleporter-portal]",
            place_result = "quantum-teleporter-portal-entidade",
            stack_size = 1
        },
        -- Receita do portal
        {
            type = "recipe",
            name = "quantum-teleporter-portal-recipe",
            category = "advanced-crafting",
            enabled = false,
            energy_required = 120,
            ingredients = {
                {type = "item", name = "part-portal-T2", amount = 5000},
                {type = "item", name = "quantum-teleporter-portal-T2", amount = 1},
                {type = "item", name = "quantum-processor", amount = 512},
                {type = "item", name = "tungsten-plate", amount = 10240},
                {type = "item", name = "superconductor", amount = 2048},
                {type = "item", name = "carbon-fiber", amount = 4096}
            },
            results = {
                {type = "item", name = "quantum-teleporter-portal", amount = 1}
            },
            maximum_productivity = 1.5,
            allow_quality = true,
            allowed_module_categories = {"productivity", "speed"},
            alternative_unlock_methods = {"Quantum-Teleporter"}
        }
    }
)

data:extend(
    {
        -- Item do parte de constução do portal
        {
            type = "item",
            name = "part-portal-T1",
            icon = path_main .. "graficos/itens/part-portal-T1.png",
            icon_size = 128,
            subgroup = "itens",
            order = "Quantum-Teleporter-itens[part-portal-T1]",
            stack_size = 10
        },
        -- Receita do parte de constução do portal
        {
            type = "recipe",
            name = "part-portal-T1-recipe",
            category = "portal-parts",
            enabled = true,
            energy_required = 120,
            ingredients = {
                {type = "item", name = "quantum-processor", amount = 512},
                {type = "item", name = "tungsten-plate", amount = 10240},
                {type = "item", name = "superconductor", amount = 2048},
                {type = "item", name = "carbon-fiber", amount = 4096}
            },
            results = {
                {type = "item", name = "part-portal-T1", amount = 1}
            },
            maximum_productivity = 2,
            allow_quality = true,
            allowed_module_categories = {"productivity", "speed"}
        }
    }
)

data:extend(
    {
        -- Item de parte de constução do portal
        {
            type = "item",
            name = "part-portal-T2",
            icon = path_main .. "graficos/itens/part-portal-T2.png",
            icon_size = 128,
            subgroup = "itens",
            order = "Quantum-Teleporter-itens[part-portal-T2]",
            stack_size = 10
        },
        -- Receita do parte de constução do portal
        {
            type = "recipe",
            name = "part-portal-T2-recipe",
            category = "portal-parts",
            enabled = false,
            energy_required = 120,
            ingredients = {
                {type = "item", name = "quantum-processor", amount = 512},
                {type = "item", name = "tungsten-plate", amount = 10240},
                {type = "item", name = "superconductor", amount = 2048},
                {type = "item", name = "carbon-fiber", amount = 4096}
            },
            results = {
                {type = "item", name = "part-portal-T2", amount = 1}
            },
            maximum_productivity = 2,
            allow_quality = true,
            allowed_module_categories = {"productivity", "speed"},
            alternative_unlock_methods = {"Quantum-Teleporter"}
        }
    }
)
