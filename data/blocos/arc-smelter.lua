local path_main = "__Dyson-Sphere-Program-Lib__/"
local icon_path = path_main .. "graficos/blocos/arc-smelter.png"
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

-- *** Definição do ITEM 'arc-smelter' ***
-- Este é o item que o jogador terá no inventário e usará para construir o laboratório.
data:extend(
    {
        {
            type = "item",
            -- Nome do item, deve ser o mesmo do laboratório
            name = "DSP-arc-smelter",
            -- Ícone do item (o mesmo do laboratório)
            icon = icon_path,
            icon_size = 128,
            -- Subgrupo onde o item aparecerá (ex: "production-machine", "science-building")
            subgroup = "science",
            -- Ordem de exibição no subgrupo
            order = "a[arc-smelter]",
            -- *** Stack Size de 50, conforme especificado ***
            stack_size = 50,
            place_result = "DSP-arc-smelter"
        }
    }
)

-- *** Definição da fronalha (ENTIDADE) 'arc-smelter' ***
data:extend(
    {
        {
            type = "furnace",
            name = "DSP-arc-smelter",
            icon = icon_path,
            icon_size = 128,
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            minable = {hardness = 0.5, mining_time = 1, result = "DSP-arc-smelter"},
            fast_replaceable_group = "furnace",
            max_health = 300,
            corpse = "big-remnants",
            dying_explosion = "big-explosion",
            impact_category = "metal",
            open_sound = sounds.machine_open,
            close_sound = sounds.machine_close,
            allowed_effects = {"speed", "consumption", "pollution"},
            effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
            icon_draw_specification = {scale = 0.66, shift = {0, -0.1}},
            damaged_trigger_effect = hit_effects.entity(),
            result_inventory_size = 1,
            source_inventory_size = 1,
            selection_box = {{-1.2, -1.2}, {1.2, 1.2}},
            collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
            -- Quão rápido essa máquina de artesanato pode criar. 1 significa que, por exemplo, uma receita de 1 segundo de duração leva 1 segundo para ser criada. 0,5 significa que leva 2 segundos, e 2 significa que leva 0,5 segundos.
            -- 2x mais rapida
            crafting_speed = 4,
            -- Categoria de fabricação (não diretamente relevante para labs, mas é um campo)
            crafting_categories = {"crafting", "DSP-smelting-facility"},
            -- *** PACOTES DE CIÊNCIA QUE ELE ACEITA ***
            -- inputs = {
            --     "electromagnetic-matrix",
            --     "energy-matrix",
            --     "structure-matrix",
            --     "information-matrix",
            --     "gravity-matrix",
            --     "universe-matrix"
            --     -- Adicione aqui TODOS os nomes das matrizes de ciência que este laboratório deve consumir.
            --     -- Se você ainda usa science-pack-1, science-pack-2, etc. em tecnologias mais básicas,
            --     -- você pode adicioná-los aqui também para que este lab possa pesquisar essas tecnologias.
            -- },
            energy_usage = "360kW",
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                input_flow_limit = "1MW", -- Limite de energia que ele pode receber
                buffer_capacity = "1MW", -- Capacidade do buffer de energia
                drain = "12kW" -- *** Consumo de energia ocioso de 12 kW ***
            },
            module_specification = {
                module_slots = 2 -- Quantidade de slots para módulos (produtividade, velocidade)
            },
            animation = {
                layers = {
                    {
                        -- Caminho para a animação
                        filename = icon_path,
                        size = 128,
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
                    filename = "__base__/sound/electric-furnace.ogg", -- Som de trabalho da fornalha
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

-- {
--     type = "furnace",
--     name = "steel-furnace",
--     icon = "__base__/graphics/icons/steel-furnace.png",
--     flags = {"placeable-neutral", "placeable-player", "player-creation"},
--     minable = {mining_time = 0.2, result = "steel-furnace"},
--     fast_replaceable_group = "furnace",
--     circuit_wire_max_distance = furnace_circuit_wire_max_distance,
--     circuit_connector = circuit_connector_definitions["steel-furnace"],
--     max_health = 300,
--     corpse = "steel-furnace-remnants",
--     dying_explosion = "steel-furnace-explosion",
--     impact_category = "metal",
--     open_sound = sounds.machine_open,
--     close_sound = sounds.machine_close,
--     allowed_effects = {"speed", "consumption", "pollution"},
--     effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
--     icon_draw_specification = {scale = 0.66, shift = {0, -0.1}},
--     working_sound =
--     {
--       sound =
--       {
--         filename = "__base__/sound/steel-furnace.ogg",
--         volume = 0.32,
--         advanced_volume_control = {attenuation = "exponential"},
--         audible_distance_modifier = 0.5,
--       },
--       max_sounds_per_prototype = 4,
--       fade_in_ticks = 4,
--       fade_out_ticks = 20
--     },
--     resistances =
--     {
--       {
--         type = "fire",
--         percent = 100
--       }
--     },
--     collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
--     selection_box = {{-0.8, -1}, {0.8, 1}},
--     damaged_trigger_effect = hit_effects.entity(),
--     crafting_categories = {"smelting"},
--     result_inventory_size = 1,
--     energy_usage = "90kW",
--     crafting_speed = 2,
--     source_inventory_size = 1,
--     energy_source =
--     {
--       type = "burner",
--       fuel_categories = {"chemical"},
--       effectivity = 1,
--       emissions_per_minute = { pollution = 4 },
--       fuel_inventory_size = 1,
--       light_flicker =
--       {
--         color = {0,0,0},
--         minimum_intensity = 0.6,
--         maximum_intensity = 0.95
--       },
--       smoke =
--       {
--         {
--           name = "smoke",
--           frequency = 10,
--           position = {0.7, -1.2},
--           starting_vertical_speed = 0.08,
--           starting_frame_deviation = 60
--         }
--       }
--     },
--     graphics_set =
--     {
--       animation =
--       {
--         layers =
--         {
--           {
--             filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
--             priority = "high",
--             width = 171,
--             height = 174,
--             shift = util.by_pixel(-1.25, 2),
--             scale = 0.5
--           },
--           {
--             filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
--             priority = "high",
--             width = 277,
--             height = 85,
--             draw_as_shadow = true,
--             shift = util.by_pixel(39.25, 11.25),
--             scale = 0.5
--           }
--         }
--       },
--       working_visualisations =
--       {
--         {
--           fadeout = true,
--           effect = "flicker",
--           animation =
--           {
--             filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
--             priority = "high",
--             line_length = 8,
--             width = 57,
--             height = 81,
--             frame_count = 48,
--             draw_as_glow = true,
--             shift = util.by_pixel(-0.75, 5.75),
--             scale = 0.5
--           },
--         },
--         {
--           fadeout = true,
--           effect = "flicker",
--           animation =
--           {
--             filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
--             priority = "high",
--             width = 60,
--             height = 43,
--             draw_as_glow = true,
--             shift = {0.03125, 0.640625},
--             blend_mode = "additive"
--           }
--         },
--         {
--           fadeout = true,
--           effect = "flicker",
--           animation =
--           {
--             filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
--             priority = "high",
--             line_length = 1,
--             width = 128,
--             height = 150,
--             draw_as_glow = true,
--             shift = util.by_pixel(0, -5),
--             blend_mode = "additive",
--             scale = 0.5,
--           }
--         },
--         {
--           fadeout = true,
--           effect = "flicker",
--           animation =
--           {
--             filename = "__base__/graphics/entity/steel-furnace/steel-furnace-ground-light.png",
--             priority = "high",
--             line_length = 1,
--             width = 152,
--             height = 126,
--             draw_as_light = true,
--             shift = util.by_pixel(1, 48),
--             blend_mode = "additive",
--             scale = 0.5,
--           },
--         },
--       },
--       water_reflection =
--       {
--         pictures =
--         {
--           filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
--           priority = "extra-high",
--           width = 20,
--           height = 24,
--           shift = util.by_pixel(0, 45),
--           variation_count = 1,
--           scale = 5
--         },
--         rotate = false,
--         orientation_to_variation = false
--       }
--     }
--   },
