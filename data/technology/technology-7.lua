local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 7 | Integrated Logistics System | 1607 | High-Efficiency Logistics System (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 500; Structure Matrix: 50 | Automatic Piler; Pile Sorter | Requires Super Magnetic Field Generator |
| 7 | High-Strength Titanium Alloy | 1414 | Titanium Smelting (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 80 | Titanium Alloy |  |
| 7 | High-Strength Lightweight Structure | 1521 | Solar Sail Orbit System (Tech) | Electromagnetic Matrix: 1200; Structure Matrix: 200 | Frame Material; Dyson Sphere Component | Requires High-Strength Material |
| 7 | Ray Receiver | 1504 | Solar Sail Orbit System (Tech) | Electromagnetic Matrix: 600; Energy Matrix: 600 | Ray Receiver |  |
| 7 | Mini Fusion Power Generation | 1416 | Deuterium Fractionation (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 500; Structure Matrix: 250 | Mini Fusion Power Station; Deuteron Fuel Rod | Requires High-Strength Titanium Alloy |
| 7 | High-Strength Material | 1132 | Applied Superconductor (Tech) | Energy Matrix: 600; Structure Matrix: 150 | Carbon Nanotube; Carbon Nanotube Advanced |  |
| 7 | Structure Matrix | 1124 | High-Strength Crystal (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800 | Structure Matrix |  |
| 7 | Explosive Unit [ 1 ] | 1803 | High-Strength Crystal (Tech) | Electromagnetic Matrix: 400; Energy Matrix: 200 | Explosive Unit |  |
| 7 | Reinforced Thruster | 1114 | Thruster (Tech) | Energy Matrix: 1600 | Reinforced Thruster |  |
| 7 | High-Explosive Shell Set [ 1 ] | 1814 | Implosion Cannon (Tech) Titanium Smelting (Tech) | Electromagnetic Matrix: 400; Energy Matrix: 400 | High-Explosive Shell Set | Requires Titanium Smelting |
| 7 | Planetary Defense System [ 1 ] | 1809 | Implosion Cannon (Tech) Magnetic Particle Trap (Tech) | Electromagnetic Matrix: 600; Energy Matrix: 600 | Laser Turret; Planetary Shield Generator | Requires Magnetic Particle Trap |
| 7 | Superalloy Ammo Box [ 1 ] | 1813 | Titanium Ammo Box (Tech) High-Strength Titanium Alloy (Tech) | Electromagnetic Matrix: 600; Energy Matrix: 600; Structure Matrix: 300 | Superalloy Ammo Box | Requires High-Strength Titanium Alloy |
| 7 | Attack Drone [ 1 ] | 1821 | Precision Drone (Tech) Magnetic Particle Trap (Tech) | Electromagnetic Matrix: 500; Energy Matrix: 500; Structure Matrix: 500 | Attack Drone | Requires Magnetic Particle Trap |
]]

-- TIER 7

-- Integrated Logistics System
data:extend(
	{
		utils.createDSPTechnology(
			"integrated-logistics-system",
			{
				{"electromagnetic-matrix", 1000},
				{"energy-matrix", 500},
				{"structure-matrix", 50}
			},
			{
				"tech-dyson-high-efficiency-logistics-system",
				"tech-dyson-super-magnetic-field-generator"
			},
			-- unlocks
			{
				"automatic-piler",
				"pile-sorter"
			},
			30,
			1
		)
	}
)

-- High-Strength Titanium Alloy
data:extend(
	{
		utils.createDSPTechnology(
			"high-strength-titanium-alloy",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800},
				{"structure-matrix", 80}
			},
			{
				"tech-dyson-titanium-smelting"
			},
			-- unlocks
			{
				"titanium-alloy"
			},
			30,
			1
		)
	}
)

-- High-Strength Lightweight Structure
data:extend(
	{
		utils.createDSPTechnology(
			"high-strength-lightweight-structure",
			{
				{"electromagnetic-matrix", 1200},
				{"structure-matrix", 200}
			},
			{
				"tech-dyson-solar-sail-orbit-system",
				"tech-dyson-high-strength-material"
			},
			-- unlocks
			{
				"frame-material",
				"dyson-sphere-component"
			},
			30,
			1
		)
	}
)

-- Ray Receiver
data:extend(
	{
		utils.createDSPTechnology(
			"ray-receiver",
			{
				{"electromagnetic-matrix", 600},
				{"energy-matrix", 600}
			},
			{
				"tech-dyson-solar-sail-orbit-system"
			},
			-- unlocks
			{
				"ray-receiver"
			},
			30,
			1
		)
	}
)

-- Mini Fusion Power Generation
data:extend(
	{
		utils.createDSPTechnology(
			"mini-fusion-power-generation",
			{
				{"electromagnetic-matrix", 1000},
				{"energy-matrix", 500},
				{"structure-matrix", 250}
			},
			{
				"tech-dyson-deuterium-fractionation",
				"tech-dyson-high-strength-titanium-alloy"
			},
			-- unlocks
			{
				"mini-fusion-power-plant",
				"deuteron-fuel-rod"
			},
			30,
			1
		)
	}
)

-- High-Strength Material
data:extend(
	{
		utils.createDSPTechnology(
			"high-strength-material",
			{
				{"energy-matrix", 600},
				{"structure-matrix", 150}
			},
			{
				"tech-dyson-applied-superconductor"
			},
			-- unlocks
			{
				"carbon-nanotube",
				"carbon-nanotube-advanced"
			},
			30,
			1
		)
	}
)

-- Structure Matrix
data:extend(
	{
		utils.createDSPTechnology(
			"structure-matrix",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800}
			},
			{
				"tech-dyson-high-strength-crystal"
			},
			-- unlocks
			{
				"structure-matrix"
			},
			30,
			1
		)
	}
)

-- Explosive Unit
data:extend(
	{
		utils.createDSPTechnology(
			"explosive-unit",
			{
				{"electromagnetic-matrix", 400},
				{"energy-matrix", 200}
			},
			{
				"tech-dyson-high-strength-crystal"
			},
			-- unlocks
			{
				"explosive-unit"
			},
			30,
			1
		)
	}
)

-- Reinforced Thruster
data:extend(
	{
		utils.createDSPTechnology(
			"reinforced-thruster",
			{
				{"energy-matrix", 1600}
			},
			{
				"tech-dyson-thruster"
			},
			-- unlocks
			{
				"reinforced-thruster"
			},
			30,
			1
		)
	}
)

-- High-Explosive Shell Set
data:extend(
	{
		utils.createDSPTechnology(
			"high-explosive-shell-set",
			{
				{"electromagnetic-matrix", 400},
				{"energy-matrix", 400}
			},
			{
				"tech-dyson-implosion-cannon",
				"tech-dyson-titanium-smelting"
			},
			-- unlocks
			{
				"high-explosive-shell-set"
			},
			30,
			1
		)
	}
)

-- Planetary Defense System
data:extend(
	{
		utils.createDSPTechnology(
			"planetary-defense-system",
			{
				{"electromagnetic-matrix", 600},
				{"energy-matrix", 600}
			},
			{
				"tech-dyson-implosion-cannon",
				"tech-dyson-magnetic-particle-trap"
			},
			-- unlocks
			{
				"laser-turret",
				"planetary-shield-generator"
			},
			30,
			1
		)
	}
)

-- Superalloy Ammo Box
data:extend(
	{
		utils.createDSPTechnology(
			"superalloy-ammo-box",
			{
				{"electromagnetic-matrix", 600},
				{"energy-matrix", 600},
				{"structure-matrix", 300}
			},
			{
				"tech-dyson-titanium-ammo-box",
				"tech-dyson-high-strength-titanium-alloy"
			},
			-- unlocks
			{
				"superalloy-ammo-box"
			},
			30,
			1
		)
	}
)

-- Attack Drone
data:extend(
	{
		utils.createDSPTechnology(
			"attack-drone",
			{
				{"electromagnetic-matrix", 500},
				{"energy-matrix", 500},
				{"structure-matrix", 500}
			},
			{
				"tech-dyson-precision-drone",
				"tech-dyson-magnetic-particle-trap"
			},
			-- unlocks
			{
				"attack-drone"
			},
			30,
			1
		)
	}
)
