local LDA = require("__LDA-LIB__/init")

local placeholderIcon = "__Dyson-Sphere-Program-Lib__/graphics/technology/dyson-256x256.png"

local itemGroups = {
    {
        subgroup = "other-consumables",
        items = {
            {"annihilation-constraint-sphere", "Annihilation Constraint Sphere"},
            {"antimatter-fuel-rod", "Antimatter Fuel Rod"},
            {"artificial-star", "Artificial Star"},
            {"assembling-machine-mki", "Assembling Machine Mk.I"},
            {"assembling-machine-mkii", "Assembling Machine Mk.II"},
            {"assembling-machine-mkiii", "Assembling Machine Mk.III"},
            {"conveyor-belt-mki", "Conveyor Belt Mk.I"},
            {"conveyor-belt-mkii", "Conveyor Belt Mk.II"},
            {"conveyor-belt-mkiii", "Conveyor Belt Mk.III"},
            {"copper-ingot", "Copper Ingot"},
            {"deuteron-fuel-rod", "Deuteron Fuel Rod"},
            {"dyson-sphere-component", "Dyson Sphere Component"},
            {"em-rail-ejector", "EM-Rail Ejector"},
            {"energy-exchanger", "Energy Exchanger"},
            {"fire-ice", "Fire Ice"},
            {"fractal-silicon", "Fractal Silicon"},
            {"frame-material", "Frame Material"},
            {"accumulator-full", "Accumulator (Full)"},
            {"iron-ingot", "Iron Ingot"},
            {"interstellar-logistics-station", "Interstellar Logistics Station"},
            {"logistics-drone", "Logistics Drone"},
            {"planetary-logistics-station", "Planetary Logistics Station"},
            {"interstellar-logistics-vessel", "Interstellar Logistics Vessel"},
            {"mini-fusion-power-plant", "Mini Fusion Power Plant"},
            {"miniature-particle-collider", "Miniature Particle Collider"},
            {"mining-machine", "Mining Machine"},
            {"oil-extractor", "Oil Extractor"},
            {"orbital-collector", "Orbital Collector"},
            {"organic-crystal", "Organic Crystal"},
            {"photon-combiner", "Photon Combiner"},
            {"plane-smelter", "Plane Smelter"},
            {"ray-receiver", "Ray Receiver"},
            {"satellite-substation", "Satellite Substation"},
            {"small-carrier-rocket", "Small Carrier Rocket"},
            {"solar-sail", "Solar Sail"},
            {"traffic-monitor", "Traffic Monitor"},
            {"sorter-mki", "Sorter Mk.I"},
            {"sorter-mkii", "Sorter Mk.II"},
            {"sorter-mkiii", "Sorter Mk.III"},
            {"space-warper", "Space Warper"},
            {"stalagmite-crystal", "Stalagmite Crystal"},
            {"storage-mki", "Storage Mk.I"},
            {"storage-mkii", "Storage Mk.II"},
            {"super-magnetic-ring", "Super-magnetic Ring"},
            {"unipolar-magnet", "Unipolar Magnet"},
            {"vertical-launching-silo", "Vertical Launching Silo"},
            {"water-pump", "Water Pump"},
            {"wind-turbine", "Wind Turbine"},
            {"log", "Log"},
            {"plant-fuel", "Plant Fuel"},
            {"grating-crystal", "Grating Crystal"},
            {"soil-pile", "Soil Pile"}
        }
    },
    {
        subgroup = "dark-fog-components",
        items = {
            {"proliferator-mkii", "Proliferator Mk.II"},
            {"proliferator-mkiii", "Proliferator Mk.III"},
            {"advanced-mining-machine", "Advanced Mining Machine"},
            {"geothermal-power-station", "Geothermal Power Station"},
            {"automatic-piler", "Automatic Piler"},
            {"logistics-distributor", "Logistics Distributor"},
            {"logistics-bot", "Logistics Bot"},
            {"quantum-chemical-plant", "Quantum Chemical Plant"},
            {"gauss-turret", "Gauss Turret"},
            {"corvette", "Corvette"},
            {"energy-shard", "Energy Shard"},
            {"explosive-unit", "Explosive Unit"},
            {"dark-fog-matrix", "Dark Fog Matrix"},
            {"self-evolution-lab", "Self-evolution Lab"},
            {"negentropy-smelter", "Negentropy Smelter"},
            {"re-composing-assembler", "Re-composing Assembler"},
            {"strange-annihilation-fuel-rod", "Strange Annihilation Fuel Rod"},
            {"matter-recombinator", "Matter Recombinator"},
            {"silicon-based-neuron", "Silicon-based Neuron"},
            {"negentropy-singularity", "Negentropy Singularity"},
            {"core-element", "Core Element"},
            {"magnum-ammo-box", "Magnum Ammo Box"},
            {"missile-turret", "Missile Turret"},
            {"missile-set", "Missile Set"},
            {"prototype", "Prototype"},
            {"signal-tower", "Signal Tower"},
            {"implosion-cannon", "Implosion Cannon"},
            {"shell-set", "Shell Set"},
            {"precision-drone", "Precision Drone"},
            {"attack-drone", "Attack Drone"},
            {"superalloy-ammo-box", "Superalloy Ammo Box"},
            {"titanium-ammo-box", "Titanium Ammo Box"},
            {"supersonic-missile-set", "Supersonic Missile Set"},
            {"gravity-missile-set", "Gravity Missile Set"},
            {"high-explosive-shell-set", "High-Explosive Shell Set"},
            {"crystal-shell-set", "Crystal Shell Set"},
            {"plasma-capsule", "Plasma Capsule"},
            {"antimatter-capsule", "Antimatter Capsule"},
            {"destroyer", "Destroyer"},
            {"crystal-explosive-unit", "Crystal Explosive Unit"},
            {"planetary-shield-generator", "Planetary Shield Generator"},
            {"plasma-turret", "Plasma Turret"},
            {"planetary-base", "Planetary Base"},
            {"depot-mki", "Depot Mk.I"},
            {"depot-mkii", "Depot Mk.II"},
            {"sr-plasma-turret", "SR Plasma Turret"},
            {"jammer-tower", "Jammer Tower"},
            {"jamming-capsule", "Jamming Capsule"},
            {"suppressing-capsule", "Suppressing Capsule"},
            {"pile-sorter", "Pile Sorter"},
            {"holo-beacon", "Holo Beacon"},
            {"dark-fog-lens", "Dark Fog Lens"}
        }
    }
}

for _, group in ipairs(itemGroups) do
    for _, entry in ipairs(group.items) do
        local name = entry[1]
        if not data.raw.item[name] then
            local item = LDA.createItem(name, group.subgroup, 100)
            item.icon = placeholderIcon
            item.icon_size = 256
            item.localised_name = "[TODO] " .. entry[2]
            item.localised_description = {"item-description.dsp-item-placeholder"}
            data:extend({item})
        end
    end
end

if not data.raw.fluid["refined-oil"] then
    local refinedOil = LDA.createFluid("refined-oil", "1kJ")
    refinedOil.icon = placeholderIcon
    refinedOil.icon_size = 256
    refinedOil.localised_name = "[TODO] Refined Oil"
    data:extend({refinedOil})
end