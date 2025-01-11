local path_main = "__Quantum-Teleporter__/"

data:extend(
  {
    -------------------------------------------------------------------------- quantum-teleporter-category
    {
      type = "item-group",
      -- nome da categoria
      name = "quantum-teleporter-category",
      order = "e",
      icon = path_main .. "graficos/technology/quantum-teleporter.png",
      icon_size = 512,
      icon_mipmaps = 2
    },
    {
      type = "item-subgroup",
      -- nome usado para definir o grupo dos itens
      name = "itens",
      -- indexando o grupo a categoria
      group = "quantum-teleporter-category",
      -- ordem de A a Z e de cima para baixo para organização dos grupos "modname-name"
      order = "quantum-teleporter-itens"
    },
    {
      type = "item-subgroup",
      name = "component",
      group = "quantum-teleporter-category",
      order = "quantum-teleporter-component"
    }
  }
)
-------------------------------------------------------------------------- quantum-teleporter-category

-- categorias de receitas
data:extend({
  {
      type = "recipe-category",
      name = "portal-parts"
  }
})
