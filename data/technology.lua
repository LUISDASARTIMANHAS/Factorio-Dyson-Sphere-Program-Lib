local path_main = "__Dyson-Sphere-Program-Lib__/"

data:extend({ {
    type = "technology",
    name = "Dyson-Sphere-Program-Lib",
    icon = path_main.. "graficos/technology/technology-teleporter-equipment.png",
    icon_size = 126,
    icon_mipmaps = 4,
    prerequisites = {
        "quantum-processor"
    },
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "Dyson-Sphere-Program-Lib-equipment-recipe",
        },
        {
            type = "unlock-recipe",
            recipe = "Dyson-Sphere-Program-Lib-portal-T2-recipe",
        }
    },
    unit = {
        count = 500,
        time = 60,
        ingredients = {
            { "automation-science-pack", 1},
            { "logistic-science-pack", 1},
            { "chemical-science-pack", 1},
            { "production-science-pack", 1},
            { "utility-science-pack", 1},
            { "space-science-pack", 1},
            { "metallurgic-science-pack", 1},
            { "electromagnetic-science-pack", 1},
            { "agricultural-science-pack", 1},
            { "cryogenic-science-pack", 1},
        },
        order = "Dyson-Sphere-Program-Lib"
    }
}
})


data:extend({ 
    {
    type = "technology",
    name = "Dyson-Sphere-Program-Lib-Portal",
    icon = path_main.. "graficos/technology/technology-portal.png",
    icon_size = 128,
    icon_mipmaps = 4,
    prerequisites = {
        "Dyson-Sphere-Program-Lib",
    },
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "part-portal-T2-recipe"
        },
        {
            type = "unlock-recipe",
            recipe = "Dyson-Sphere-Program-Lib-portal-T2-recipe"
        },
        {
            type = "unlock-recipe",
            recipe = "Dyson-Sphere-Program-Lib-portal-recipe"
        }
    },
    unit = {
        count = 100,
        time = 30,
        ingredients = {
            { "automation-science-pack", 1},
            { "logistic-science-pack", 1},
            { "chemical-science-pack", 1},
            { "production-science-pack", 1},
            { "utility-science-pack", 1},
            { "space-science-pack", 1},
            { "metallurgic-science-pack", 1},
            { "electromagnetic-science-pack", 1},
            { "agricultural-science-pack", 1},
            { "cryogenic-science-pack", 1},
        },
        order = "Dyson-Sphere-Program-Lib"
    }
}
})