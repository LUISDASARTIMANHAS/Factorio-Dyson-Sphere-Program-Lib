local path_main = "__Dyson-Sphere-Program-Lib__/"
local icon_path = path_main .. "graficos/blocos/fractionator.png"
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
require ("__base__.prototypes.entity.pipecovers")
require ("__base__.prototypes.entity.assemblerpipes")
require ("__base__.prototypes.entity.entity-util")
local LDAFunctions = require("__LDA-LIB__/init")

-- *** Definição do ITEM 'arc-smelter' ***
-- definindo receita e item
data:extend(
    LDAFunctions.createBlockItemWithRecipe(
        "DSP-fractionator",
        "intermediate-products",
        30,
        "advanced-crafting",
        3,
        {
            {type = "item", name = "steel-plate", amount = 8},
            {type = "item", name = "DSP-stone-brick", amount = 4},
            {type = "item", name = "DSP-glass", amount = 4},
            {type = "item", name = "DSP-processor", amount = 1}
        },
        {
            {type = "item", name = "DSP-fractionator", amount = 1}
        }
    )
)

-- *** Definição da fronalha (ENTIDADE) 'DSP-fractionator' ***
data:extend(
    {
        {
            type = "assembling-machine",
            name = "DSP-fractionator",
            icon = icon_path,
            icon_size = 128,
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            minable = {hardness = 0.5, mining_time = 1, result = "DSP-fractionator"},
            fast_replaceable_group = "chemical-plant",
            max_health = 300,
            corpse = "chemical-plant-remnants",
            dying_explosion = "chemical-plant-explosion",
            impact_category = "metal-large",
            open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
            close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
            allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
            icon_draw_specification = {scale = 0.66, shift = {0, -0.1}},
            damaged_trigger_effect = hit_effects.entity(),
            selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
            collision_box = {{-2.0, -2.0}, {2.0, 2.0}},
            -- Quão rápido essa máquina de artesanato pode criar. 1 significa que, por exemplo, uma receita de 1 segundo de duração leva 1 segundo para ser criada. 0,5 significa que leva 2 segundos, e 2 significa que leva 0,5 segundos.
            -- 2x mais rapida
            crafting_speed = 4,
            -- Categoria de fabricação (não diretamente relevante para labs, mas é um campo)
            crafting_categories = {"chemistry", "DSP-fractionation-facility"},
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
            },
            fluid_boxes = {
                {
                    production_type = "input",
                    pipe_covers = pipecoverspictures(),
                    volume = 1000,
                    pipe_connections = {
                        {
                            flow_direction = "input",
                            direction = defines.direction.north,
                            position = {-1, -1}
                        }
                    }
                },
                {
                    production_type = "input",
                    pipe_covers = pipecoverspictures(),
                    volume = 1000,
                    pipe_connections = {
                        {
                            flow_direction = "input",
                            direction = defines.direction.north,
                            position = {1, -1}
                        }
                    }
                },
                {
                    production_type = "output",
                    pipe_covers = pipecoverspictures(),
                    volume = 100,
                    pipe_connections = {
                        {
                            flow_direction = "output",
                            direction = defines.direction.south,
                            position = {-1, 1}
                        }
                    }
                },
                {
                    production_type = "output",
                    pipe_covers = pipecoverspictures(),
                    volume = 100,
                    pipe_connections = {
                        {
                            flow_direction = "output",
                            direction = defines.direction.south,
                            position = {1, 1}
                        }
                    }
                }
            },
            water_reflection = {
                pictures = {
                    filename = "__base__/graphics/entity/chemical-plant/chemical-plant-reflection.png",
                    priority = "extra-high",
                    width = 28,
                    height = 36,
                    shift = util.by_pixel(5, 60),
                    variation_count = 4,
                    scale = 5
                },
                rotate = false,
                orientation_to_variation = true
            }
        }
    }
)

-- {
--     type = "assembling-machine",
--     name = "chemical-plant",
--     icon = "__base__/graphics/icons/chemical-plant.png",
--     flags = {"placeable-neutral","placeable-player", "player-creation"},
--     minable = {mining_time = 0.1, result = "chemical-plant"},
--     fast_replaceable_group = "chemical-plant",
--     max_health = 300,
--     corpse = "chemical-plant-remnants",
--     dying_explosion = "chemical-plant-explosion",
--     icon_draw_specification = {shift = {0, -0.3}},
--     circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
--     circuit_connector = circuit_connector_definitions["chemical-plant"],
--     collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
--     selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
--     damaged_trigger_effect = hit_effects.entity(),
--     drawing_box_vertical_extension = 0.4,
--     module_slots = 3,
--     allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},

--     graphics_set =
--     {
--       animation = make_4way_animation_from_spritesheet({ layers =
--       {
--         {
--           filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
--           width = 220,
--           height = 292,
--           frame_count = 24,
--           line_length = 12,
--           shift = util.by_pixel(0.5, -9),
--           scale = 0.5
--         },
--         {
--           filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
--           width = 312,
--           height = 222,
--           repeat_count = 24,
--           shift = util.by_pixel(27, 6),
--           draw_as_shadow = true,
--           scale = 0.5
--         }
--       }}),
--       working_visualisations =
--       {
--         {
--           apply_recipe_tint = "primary",
--           north_animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-north.png",
--             frame_count = 24,
--             line_length = 6,
--             width = 66,
--             height = 44,
--             shift = util.by_pixel(23, 15),
--             scale = 0.5
--           },
--           east_animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-east.png",
--             frame_count = 24,
--             line_length = 6,
--             width = 70,
--             height = 36,
--             shift = util.by_pixel(0, 22),
--             scale = 0.5
--           },
--           south_animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-south.png",
--             frame_count = 24,
--             line_length = 6,
--             width = 66,
--             height = 42,
--             shift = util.by_pixel(0, 17),
--             scale = 0.5
--           },
--           west_animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-west.png",
--             frame_count = 24,
--             line_length = 6,
--             width = 74,
--             height = 36,
--             shift = util.by_pixel(-10, 13),
--             scale = 0.5
--           }
--         },
--         {
--           apply_recipe_tint = "secondary",
--           north_animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-north.png",
--             frame_count = 24,
--             line_length = 6,
--             width = 62,
--             height = 42,
--             shift = util.by_pixel(24, 15),
--             scale = 0.5
--           },
--           east_animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-east.png",
--             frame_count = 24,
--             line_length = 6,
--             width = 68,
--             height = 36,
--             shift = util.by_pixel(0, 22),
--             scale = 0.5
--           },
--           south_animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-south.png",
--             frame_count = 24,
--             line_length = 6,
--             width = 60,
--             height = 40,
--             shift = util.by_pixel(1, 17),
--             scale = 0.5
--           },
--           west_animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-west.png",
--             frame_count = 24,
--             line_length = 6,
--             width = 68,
--             height = 28,
--             shift = util.by_pixel(-9, 15),
--             scale = 0.5
--           }
--         },
--         {
--           apply_recipe_tint = "tertiary",
--           fadeout = true,
--           constant_speed = true,
--           north_position = util.by_pixel_hr(-30, -161),
--           east_position = util.by_pixel_hr(29, -150),
--           south_position = util.by_pixel_hr(12, -134),
--           west_position = util.by_pixel_hr(-32, -130),
--           render_layer = "wires",
--           animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-outer.png",
--             frame_count = 47,
--             line_length = 16,
--             width = 90,
--             height = 188,
--             animation_speed = 0.5,
--             shift = util.by_pixel(-2, -40),
--             scale = 0.5
--           }
--         },
--         {
--           apply_recipe_tint = "quaternary",
--           fadeout = true,
--           constant_speed = true,
--           north_position = util.by_pixel_hr(-30, -161),
--           east_position = util.by_pixel_hr(29, -150),
--           south_position = util.by_pixel_hr(12, -134),
--           west_position = util.by_pixel_hr(-32, -130),
--           render_layer = "wires",
--           animation =
--           {
--             filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-inner.png",
--             frame_count = 47,
--             line_length = 16,
--             width = 40,
--             height = 84,
--             animation_speed = 0.5,
--             shift = util.by_pixel(0, -14),
--             scale = 0.5
--           }
--         }
--       }
--     },
--     impact_category = "metal-large",
--     open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
--     close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
--     working_sound =
--     {
--       sound = sound_variations("__base__/sound/chemical-plant", 3, 0.5),
--       fade_in_ticks = 4,
--       fade_out_ticks = 20
--     },
--     crafting_speed = 1,
--     energy_source =
--     {
--       type = "electric",
--       usage_priority = "secondary-input",
--       emissions_per_minute = { pollution = 4 }
--     },
--     energy_usage = "210kW",
--     crafting_categories = {"chemistry"},
--     fluid_boxes =
--     {
--       {
--         production_type = "input",
--         pipe_covers = pipecoverspictures(),
--         volume = 1000,
--         pipe_connections =
--         {
--           {
--             flow_direction="input",
--             direction = defines.direction.north,
--             position = {-1, -1}
--           }
--         }
--       },
--       {
--         production_type = "input",
--         pipe_covers = pipecoverspictures(),
--         volume = 1000,
--         pipe_connections =
--         {
--           {
--             flow_direction="input",
--             direction = defines.direction.north,
--             position = {1, -1}
--           }
--         }
--       },
--       {
--         production_type = "output",
--         pipe_covers = pipecoverspictures(),
--         volume = 100,
--         pipe_connections =
--         {
--           {
--             flow_direction = "output",
--             direction = defines.direction.south,
--             position = {-1, 1}
--           }
--         }
--       },
--       {
--         production_type = "output",
--         pipe_covers = pipecoverspictures(),
--         volume = 100,
--         pipe_connections =
--         {
--           {
--             flow_direction = "output",
--             direction = defines.direction.south,
--             position = {1, 1}
--           }
--         }
--       }
--     },
--     water_reflection =
--     {
--       pictures =
--       {
--         filename = "__base__/graphics/entity/chemical-plant/chemical-plant-reflection.png",
--         priority = "extra-high",
--         width = 28,
--         height = 36,
--         shift = util.by_pixel(5, 60),
--         variation_count = 4,
--         scale = 5
--       },
--       rotate = false,
--       orientation_to_variation = true
--     }
--   },
