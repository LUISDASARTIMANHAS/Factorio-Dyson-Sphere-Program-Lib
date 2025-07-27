local path_main = "__Dyson-Sphere-Program-Lib__/"
local icon_path = path_main .. "graficos/blocos/matrix-lab.png"
local hit_effects = require("__base__.prototypes.entity.hit-effects")

-- *** Definição do ITEM 'matrix-lab' ***
-- Este é o item que o jogador terá no inventário e usará para construir o laboratório.
data:extend(
    {
        {
            type = "item",
            -- Nome do item, deve ser o mesmo do laboratório
            name = "DSP-matrix-lab",
            -- Ícone do item (o mesmo do laboratório)
            icon = icon_path,
            icon_size = 128,
            -- Subgrupo onde o item aparecerá (ex: "production-machine", "science-building")
            subgroup = "science",
            -- Ordem de exibição no subgrupo
            order = "a[matrix-lab]",
            -- *** Stack Size de 50, conforme especificado ***
            stack_size = 50,
            place_result = "DSP-matrix-lab"
        }
    }
)

-- *** Definição do LABORATÓRIO (ENTIDADE) 'matrix-lab' ***
data:extend(
    {
        {
            type = "lab",
            -- Nome único para o seu laboratório (deve ser o mesmo do item)
            name = "DSP-matrix-lab",
            -- Caminho para o ícone do seu laboratório
            icon = icon_path,
            icon_size = 128,
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            minable = {hardness = 0.2, mining_time = 0.5, result = "matrix-lab"}, -- Item que o laboratório dropa ao ser minerado (referencia o item acima)
            -- Vida do laboratório
            max_health = 200,
            -- Corpos que aparecem quando destruído
            corpse = "big-remnants",
            -- Explosão ao ser destruído
            dying_explosion = "big-explosion",
            -- Caixa de seleção visual
            selection_box = {{-1.2, -1.2}, {1.2, 1.2}},
            -- Caixa de colisão
            collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
            damaged_trigger_effect = hit_effects.entity(),
            -- Permite substituição rápida por outros labs
            fast_replaceable_group = "lab",
            -- Categoria de fabricação (não diretamente relevante para labs, mas é um campo)
            crafting_categories = {"crafting"},
            -- *** PACOTES DE CIÊNCIA QUE ELE ACEITA ***
            inputs = {
                "electromagnetic-matrix",
                "energy-matrix",
                "structure-matrix",
                "information-matrix",
                "gravity-matrix",
                "universe-matrix"
                -- Adicione aqui TODOS os nomes das matrizes de ciência que este laboratório deve consumir.
                -- Se você ainda usa science-pack-1, science-pack-2, etc. em tecnologias mais básicas,
                -- você pode adicioná-los aqui também para que este lab possa pesquisar essas tecnologias.
            },
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                input_flow_limit = "1MW", -- Limite de energia que ele pode receber
                buffer_capacity = "1MW", -- Capacidade do buffer de energia
                drain = "12kW" -- *** Consumo de energia ocioso de 12 kW ***
            },
            energy_usage = "480kW", -- *** Consumo de energia em trabalho de 480 kW ***
            researching_speed = 2, -- *** Velocidade de pesquisa (2 = 200% da velocidade base) ***
            module_specification = {
                module_slots = 2 -- Quantidade de slots para módulos (produtividade, velocidade)
            },
            animation = {
                layers = {
                    {
                        -- Caminho para a animação do seu laboratório
                        filename = icon_path,
                        width = 128,
                        height = 128,
                        frame_count = 32, -- Número de frames na animação
                        line_length = 8, -- Número de frames por linha na imagem
                        animation_speed = 0.5, -- Velocidade da animação
                        shift = {0, 0}
                    }
                }
            },
            picture = {
                layers = {
                    {
                        filename = icon_path,
                        priority = "high",
                        -- width = 230,
                        -- height = 224,
                        size = 128,
                        shift = util.by_pixel(-3, 3.5),
                        scale = 2
                    },
                    {
                        filename = icon_path,
                        priority = "high",
                        -- width = 220,
                        -- height = 180,
                        size = 128,
                        shift = util.by_pixel(9.5, 6),
                        draw_as_shadow = true,
                        scale = 2
                    }
                }
            },
            working_sound = {
                sound = {
                    filename = "__base__/sound/lab.ogg", -- Som de trabalho do laboratório
                    volume = 0.7
                },
                audible_distance_modifier = 0.5
            },
            working_visualisations = {
                {
                    always_draw = true,
                    light = {intensity = 0.5, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}},
                    draw_as_light = true,
                    animation = {
                        filename = "__base__/graphics/entity/lab/lab-light-animation.png",
                        width = 16,
                        height = 16,
                        frame_count = 1,
                        line_length = 1,
                        animation_speed = 1,
                        shift = {0, 0}
                    }
                }
            }
        }
    }
)
