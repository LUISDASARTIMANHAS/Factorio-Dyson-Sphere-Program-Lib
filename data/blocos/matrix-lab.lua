local LDA = require("__LDA-LIB__/init")
local path_main = LDA.getBasePath()
local icon_path = path_main .. "graphics/entities/matrix-lab.png"
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local utils = LDA.utils
local energy_utils = LDA.utilsEnergySource
local animation_utils = LDA.utilsAnimations

local energy_source = energy_utils.createElectricEnergySource(
    "secondary-input",
    "1MW",
    "1MW",
    nil,
    nil,
    nil,
    nil,
    {drain = "12kW"}
)
energy_source.output_flow_limit = nil

local animation_layer = animation_utils.createLayer(
    icon_path,
    128,
    128,
    32,
    8,
    {0, 0},
    1,
    false,
    "high",
    {animation_speed = 0.5}
)
local picture_layers = {
    animation_utils.createLayer(icon_path, 128, 128, nil, nil, util.by_pixel(-3, 3.5), 2),
    animation_utils.createLayer(icon_path, 128, 128, nil, nil, util.by_pixel(9.5, 6), 2, true)
}
local light_animation = animation_utils.createLayer(
    "__base__/graphics/entity/lab/lab-light-animation.png",
    16,
    16,
    1,
    1,
    {0, 0},
    1,
    false,
    "high",
    {animation_speed = 1}
)

-- *** Definição do ITEM 'matrix-lab' ***
-- definindo receita e item
data:extend(
        LDA.createBlockItemWithRecipe(
            "matrix-lab",
            "science",
            50,
            "advanced-crafting",
            3,
            {
                {type = "item", name = "iron-plate", amount = 8},
                {type = "item", name = "glass", amount = 4},
                {type = "item", name = "circuit-board", amount = 4},
                {type = "item", name = "magnetic-coil", amount = 4}
            },
            {
                {type = "item", name = "matrix-lab", amount = 1}
            }
        )
)

-- *** Definição do LABORATÓRIO (ENTIDADE) 'matrix-lab' ***
data:extend(
    {
        {
            type = "lab",
            -- Nome único para o seu laboratório (deve ser o mesmo do item)
            name = "matrix-lab",
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
            selection_box = utils.createBoundingBox(1.2),
            -- Caixa de colisão
            collision_box = utils.createBoundingBox(1.0),
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
            energy_source = energy_source,
            energy_usage = "480kW", -- *** Consumo de energia em trabalho de 480 kW ***
            researching_speed = 2, -- *** Velocidade de pesquisa (2 = 200% da velocidade base) ***
            module_specification = utils.createModuleSpec(2),
            animation = animation_utils.createAnimation(animation_layer),
            picture = {layers = picture_layers},
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
                    animation = light_animation
                }
            }
        }
    }
)
