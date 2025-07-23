local path_main = "__Dyson-Sphere-Program-Lib__/"

data:extend(
  {
    -- ======= dyson-category ==========
    {
      type = "item-group",
      -- nome da categoria
      name = "dyson-category",
      order = "e",
      icon = path_main .. "graficos/technology/dyson.png",
      icon_size = 128,
      icon_mipmaps = 2
    },
    {
      type = "item-subgroup",
      -- nome usado para definir o grupo dos itens
      name = "itens",
      -- indexando o grupo a categoria
      group = "dyson-category",
      -- ordem de A a Z e de cima para baixo para organização dos grupos "modname-name"
      order = "dyson-itens"
    },
    {
      type = "item-subgroup",
      name = "component",
      group = "dyson-category",
      order = "dyson-component"
    }
  }
)
-- ======= dyson-category ==========

-- categorias de receitas
data:extend(
  {
    {
      type = "recipe-category",
      name = "science-matrices"
    },
    {
      type = "recipe-category",
      name = "particle-collider"
    },
    {
      type = "recipe-category",
      name = "ray-receiver"
    }
  }
)