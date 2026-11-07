local LDA = require("__LDA-LIB__/init")

local placeholderIcon = "__Dyson-Sphere-Program-Lib__/graphics/technology/dyson-256x256.png"

local buildings = {
    {"accumulator-full", "Accumulator (Full)"},
    {"advanced-mining-machine", "Advanced Mining Machine"},
    {"artificial-star", "Artificial Star"},
    {"assembling-machine-mki", "Assembling Machine Mk.I"},
    {"assembling-machine-mkii", "Assembling Machine Mk.II"},
    {"assembling-machine-mkiii", "Assembling Machine Mk.III"},
    {"automatic-piler", "Automatic Piler"},
    {"battlefield-analysis-base", "Battlefield Analysis Base"},
    {"conveyor-belt-mki", "Conveyor Belt Mk.I"},
    {"conveyor-belt-mkii", "Conveyor Belt Mk.II"},
    {"conveyor-belt-mkiii", "Conveyor Belt Mk.III"},
    {"depot-mki", "Depot Mk.I"},
    {"depot-mkii", "Depot Mk.II"},
    {"em-rail-ejector", "EM-Rail Ejector"},
    {"energy-exchanger", "Energy Exchanger"},
    {"gauss-turret", "Gauss Turret"},
    {"geothermal-power-station", "Geothermal Power Station"},
    {"holo-beacon", "Holo Beacon"},
    {"implosion-cannon", "Implosion Cannon"},
    {"interstellar-logistics-station", "Interstellar Logistics Station"},
    {"jammer-tower", "Jammer Tower"},
    {"logistics-distributor", "Logistics Distributor"},
    {"mini-fusion-power-plant", "Mini Fusion Power Plant"},
    {"miniature-particle-collider", "Miniature Particle Collider"},
    {"mining-machine", "Mining Machine"},
    {"missile-turret", "Missile Turret"},
    {"negentropy-smelter", "Negentropy Smelter"},
    {"oil-extractor", "Oil Extractor"},
    {"orbital-collector", "Orbital Collector"},
    {"pile-sorter", "Pile Sorter"},
    {"plane-smelter", "Plane Smelter"},
    {"planetary-logistics-station", "Planetary Logistics Station"},
    {"planetary-shield-generator", "Planetary Shield Generator"},
    {"plasma-turret", "Plasma Turret"},
    {"quantum-chemical-plant", "Quantum Chemical Plant"},
    {"ray-receiver", "Ray Receiver"},
    {"re-composing-assembler", "Re-composing Assembler"},
    {"satellite-substation", "Satellite Substation"},
    {"self-evolution-lab", "Self-evolution Lab"},
    {"signal-tower", "Signal Tower"},
    {"sorter-mki", "Sorter Mk.I"},
    {"sorter-mkii", "Sorter Mk.II"},
    {"sorter-mkiii", "Sorter Mk.III"},
    {"spray-coater", "Spray Coater"},
    {"sr-plasma-turret", "SR Plasma Turret"},
    {"storage-mki", "Storage Mk.I"},
    {"storage-mkii", "Storage Mk.II"},
    {"tesla-tower", "Tesla Tower"},
    {"thermal-power-plant", "Thermal Power Plant"},
    {"traffic-monitor", "Traffic Monitor"},
    {"vertical-launching-silo", "Vertical Launching Silo"},
    {"water-pump", "Water Pump"},
    {"wind-turbine", "Wind Turbine"},
    {"wireless-power-tower", "Wireless Power Tower"}
}

for _, building in ipairs(buildings) do
    local name = building[1]
    local label = building[2]
    local item = data.raw.item[name]

    if not item then
        item = LDA.createItem(name, "other-consumables", 50)
        item.icon = placeholderIcon
        item.icon_size = 256
        data:extend({item})
    end

    item.place_result = name
    item.localised_name = "[TODO] " .. label
    item.localised_description = "TODO: Replace with the official building item and entity."

    local recipe = data.raw.recipe[name]
    if not recipe then
        recipe = LDA.createRecipe(
            "icons",
            name,
            "crafting",
            1,
            {},
            {{type = "item", name = name, amount = 1}},
            nil,
            false
        )
        recipe.icon = placeholderIcon
        recipe.icon_size = 256
        recipe.localised_name = "[TODO] " .. label
        recipe.localised_description = "TODO: Replace empty ingredients with the official recipe."
        data:extend({recipe})
    end

    local hasItemResult = false
    for _, result in ipairs(recipe.results or {}) do
        if result.type == "item" and result.name == name then
            hasItemResult = true
            break
        end
    end
    if not hasItemResult then
        error("Building recipe '" .. name .. "' must return its item.")
    end

    if not (data.raw["simple-entity"] and data.raw["simple-entity"][name]) then
        data:extend(
            {
                {
                    type = "simple-entity",
                    name = name,
                    icon = placeholderIcon,
                    icon_size = 256,
                    flags = {"placeable-neutral", "player-creation"},
                    max_health = 100,
                    minable = {mining_time = 0.1, result = name},
                    placeable_by = {item = name, count = 1},
                    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
                    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
                    picture = {
                        filename = placeholderIcon,
                        width = 256,
                        height = 256,
                        scale = 0.25
                    },
                    localised_name = "[TODO] " .. label,
                    localised_description = "TODO: Replace with the official building entity."
                }
            }
        )
    end
end