local LDA = require("__LDA-LIB__/init")
local path_main = LDA.getBasePath()

data:extend(
    {
        type = "furnace",
        name = "ray-receiver-photon",
        icon = path_main .. "graphics/entities/ray-receiver.png",
        -- icon_size = 128,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = 0,
            drain = "0W"
        },
        energy_usage = "120MW",
        crafting_speed = 1,
        crafting_categories = {"ray-receiver"},
        module_specification = LDA.utils.createModuleSpec(1),
        allowed_effects = {"consumption", "speed"},
        result_inventory_size = 1,
        source_inventory_size = 1
    }
)
