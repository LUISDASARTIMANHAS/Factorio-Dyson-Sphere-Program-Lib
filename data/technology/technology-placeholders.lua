local utils = require("data.utils")

local placeholderIcon = "__Dyson-Sphere-Program-Lib__/graphics/technology/dyson-256x256.png"

local pendingTiers = {
    {
        tier = 4,
        ingredients = { {"electromagnetic-matrix", 1} },
        prerequisites = {"tech-dyson-high-efficiency-plasma-control"},
        technologies = {
            {"prototype", "Prototype"}
        }
    },
    {
        tier = 5,
        ingredients = {
            {"electromagnetic-matrix", 1},
            {"energy-matrix", 1}
        },
        prerequisites = {
            "tech-dyson-energy-matrix",
            "tech-dyson-improved-logistics-system"
        },
        technologies = {
            {"high-efficiency-logistics-system", "High-Efficiency Logistics System"},
            {"energy-storage", "Energy Storage"},
            {"photon-frequency-conversion", "Photon Frequency Conversion"},
            {"geothermal-extraction", "Geothermal Extraction"},
            {"applied-superconductor", "Applied Superconductor"},
            {"polymer-chemical-engineering", "Polymer Chemical Engineering"},
            {"x-ray-cracking", "X-Ray Cracking"},
            {"hydrogen-fuel-rod", "Hydrogen Fuel Rod"},
            {"super-magnetic-field-generator", "Super Magnetic Field Generator"},
            {"signal-tower", "Signal Tower"},
            {"implosion-cannon", "Implosion Cannon"},
            {"precision-drone", "Precision Drone"}
        }
    },
    {
        tier = 6,
        ingredients = {
            {"electromagnetic-matrix", 1},
            {"energy-matrix", 1}
        },
        prerequisites = {
            "tech-dyson-planetary-logistics-system",
            "tech-dyson-high-strength-crystal",
            "tech-dyson-thruster"
        },
        technologies = {
            {"integrated-logistics-system", "Integrated Logistics System"},
            {"distribution-logistics-system", "Distribution Logistics System"},
            {"solar-sail-orbit-system", "Solar Sail Orbit System"},
            {"high-speed-assembling-processes", "High-Speed Assembling Processes"},
            {"reformed-refinement", "Reformed Refinement"},
            {"proliferator-mkii", "Proliferator Mk.II"},
            {"magnetic-particle-trap", "Magnetic Particle Trap"},
            {"titanium-ammo-box", "Titanium Ammo Box"}
        }
    },
    {
        tier = 7,
        ingredients = {
            {"electromagnetic-matrix", 1},
            {"energy-matrix", 1},
            {"structure-matrix", 1}
        },
        prerequisites = {
            "tech-dyson-high-strength-titanium-alloy",
            "tech-dyson-structure-matrix",
            "tech-dyson-reinforced-thruster"
        },
        technologies = {
            {"high-strength-lightweight-structure", "High-Strength Lightweight Structure"},
            {"ray-receiver", "Ray Receiver"},
            {"mini-fusion-power-generation", "Mini Fusion Power Generation"},
            {"high-strength-material", "High-Strength Material"},
            {"explosive-unit", "Explosive Unit"},
            {"high-explosive-shell-set", "High-Explosive Shell Set"},
            {"planetary-defense-system", "Planetary Defense System"},
            {"superalloy-ammo-box", "Superalloy Ammo Box"},
            {"attack-drone", "Attack Drone"}
        }
    },
    {
        tier = 8,
        ingredients = {
            {"electromagnetic-matrix", 1},
            {"energy-matrix", 1},
            {"structure-matrix", 1},
            {"information-matrix", 1}
        },
        prerequisites = {
            "tech-dyson-interstellar-logistics-system",
            "tech-dyson-interstellar-power-transmission",
            "tech-dyson-particle-control",
            "tech-dyson-casimir-crystal"
        },
        technologies = {
            {"high-strength-glass", "High-Strength Glass"},
            {"miniature-particle-collider", "Miniature Particle Collider"},
            {"proliferator-mkiii", "Proliferator Mk.III"},
            {"satellite-power-distribution-system", "Satellite Power Distribution System"},
            {"supersonic-missile-set", "Supersonic Missile Set"}
        }
    },
    {
        tier = 9,
        ingredients = {
            {"electromagnetic-matrix", 1},
            {"energy-matrix", 1},
            {"structure-matrix", 1},
            {"information-matrix", 1}
        },
        prerequisites = {
            "tech-dyson-gas-giants-exploitation",
            "tech-dyson-information-matrix",
            "tech-dyson-strange-matter"
        },
        technologies = {
            {"wave-function-interference", "Wave Function Interference"},
            {"crystal-explosive-unit", "Crystal Explosive Unit"},
            {"crystal-shell-set", "Crystal Shell Set"},
            {"plasma-turret", "Plasma Turret"},
            {"corvette", "Corvette"},
            {"vertical-launching-silo", "Vertical Launching Silo"},
            {"quantum-chip", "Quantum Chip"},
            {"plane-filter-smelting", "Plane-Filter Smelting"},
            {"gravitational-wave-refraction", "Gravitational Wave Refraction"},
            {"digital-analog-computation", "Digital Analog Computation"}
        }
    },
    {
        tier = 11,
        ingredients = {
            {"electromagnetic-matrix", 1},
            {"energy-matrix", 1},
            {"structure-matrix", 1},
            {"information-matrix", 1},
            {"gravity-matrix", 1}
        },
        prerequisites = {
            "tech-dyson-gravity-matrix",
            "tech-dyson-gas-giants-exploitation"
        },
        technologies = {
            {"dyson-sphere-stress-system", "Dyson Sphere Stress System"},
            {"planetary-ionosphere-utilization", "Planetary Ionosphere Utilization"},
            {"quantum-printing", "Quantum Printing"},
            {"photon-spotlight-mining", "Photon Spotlight Mining"},
            {"gravity-missile-set", "Gravity Missile Set"},
            {"destroyer", "Destroyer"},
            {"negentropy-recursion", "Negentropy Recursion"}
        }
    },
    {
        tier = 12,
        ingredients = {
            {"electromagnetic-matrix", 1},
            {"energy-matrix", 1},
            {"structure-matrix", 1},
            {"information-matrix", 1},
            {"gravity-matrix", 1}
        },
        prerequisites = {
            "tech-dyson-gravity-matrix",
            "tech-dyson-information-matrix"
        },
        technologies = {
            {"dirac-inversion-mechanism", "Dirac Inversion Mechanism"},
            {"matter-recombination", "Matter Recombination"}
        }
    },
    {
        tier = 14,
        ingredients = {
            {"electromagnetic-matrix", 1},
            {"energy-matrix", 1},
            {"structure-matrix", 1},
            {"information-matrix", 1},
            {"gravity-matrix", 1}
        },
        prerequisites = {
            "tech-dyson-controlled-annihilation-reaction",
            "tech-dyson-gas-giants-exploitation"
        },
        technologies = {
            {"artificial-star", "Artificial Star"},
            {"antimatter-capsule", "Antimatter Capsule"},
            {"high-density-controlling-annihilation", "High-Density Controlling Annihilation"}
        }
    },
    {
        tier = 16,
        ingredients = {
            {"electromagnetic-matrix", 1},
            {"energy-matrix", 1},
            {"structure-matrix", 1},
            {"information-matrix", 1},
            {"gravity-matrix", 1}
        },
        prerequisites = {"tech-dyson-universe-matrix"},
        technologies = {
            {"mission-completed", "Mission Completed!"}
        }
    }
}

local prototypes = {}

for _, tier in ipairs(pendingTiers) do
    for _, research in ipairs(tier.technologies) do
        local technology = utils.createDSPTechnology(
            research[1],
            tier.ingredients,
            tier.prerequisites,
            {},
            30,
            1
        )

        technology.icon = placeholderIcon
        technology.localised_name = {"technology-name.tech-dyson-" .. research[1]}
        technology.localised_description = {"technology-description.tech-dyson-placeholder"}
        prototypes[#prototypes + 1] = technology
    end
end

data:extend(prototypes)