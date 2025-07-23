local path_main = "__Dyson-Sphere-Program-Lib__/"

data:extend(
  {
    -- ======= dyson-category ==========
    {
      type = "item-group",
      -- nome da categoria
      name = "dyson-category",
      order = "d",
      icon = path_main .. "graficos/technology/dyson.png",
      icon_size = 128,
      icon_mipmaps = 2
    },
    {
      type = "item-subgroup",
      -- nome usado para definir o grupo dos itens
      name = "intermediate-products",
      -- indexando o grupo a categoria
      group = "dyson-category",
      -- ordem de A a Z e de cima para baixo para organização dos grupos "modname-name"
      order = "dyson-intermediate-products"
    },
    {
      type = "item-subgroup",
      name = "natural-resources",
      group = "dyson-category",
      order = "dyson-natural-resources"
    },
    {
      type = "item-subgroup",
      name = "dark-fog-components",
      group = "dyson-category",
      order = "dyson-dark-fog-components"
    },
    {
      type = "item-subgroup",
      name = "energy-sources",
      group = "dyson-category",
      order = "dyson-energy-sources"
    },
    {
      type = "item-subgroup",
      name = "other-consumables",
      group = "dyson-category",
      order = "dyson-other-consumables"
    },
    {
      type = "item-subgroup",
      name = "science",
      group = "dyson-category",
      order = "dyson-science"
    },
    {
      type = "item-subgroup",
      name = "logistic-ships",
      group = "dyson-category",
      order = "dyson-logistic-ships"
    },
    {
      type = "item-subgroup",
      name = "dyson-sphere",
      group = "dyson-category",
      order = "dyson-dyson-sphere"
    },
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