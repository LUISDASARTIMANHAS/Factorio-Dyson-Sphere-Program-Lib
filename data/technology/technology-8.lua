local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 8 | Interstellar Logistics System | 1605 | Planetary Logistics System (Tech) High-Strength Titanium Alloy (Tech) Reinforced Thruster (Tech) | Electromagnetic Matrix: 1200; Energy Matrix: 1200; Structure Matrix: 120 | Interstellar Logistics Station; Logistics Vessel | Requires Reinforced Thruster |
| 8 | Interstellar Power Transmission | 1512 | High-Strength Titanium Alloy (Tech) Energy Storage (Tech) | Electromagnetic Matrix: 1200; Energy Matrix: 1200; Structure Matrix: 120 | Energy Exchanger |  |
| 8 | Particle Control | 1133 | Structure Matrix (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 200 | Particle Broadband; Crystal Silicon Advanced |  |
| 8 | High-Strength Glass | 1126 | High-Strength Material (Tech) | Energy Matrix: 800; Structure Matrix: 400 | Titanium Glass |  |
| 8 | Casimir Crystal | 1125 | Structure Matrix (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 800 | Casimir Crystal; Casimir Crystal Advanced |  |
| 8 | Miniature Particle Collider | 1142 | High-Strength Material (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 800 | Miniature Particle Collider; Deuterium |  |
| 8 | Proliferator Mk.III | 1153 | Proliferator Mk.II (Tech) High-Strength Material (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 600; Structure Matrix: 400 | Proliferator Mk.III |  |
| 8 | Satellite Power Distribution System | 1712 | Super Magnetic Field Generator (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 800 | Satellite Substation |  |
| 8 | Supersonic Missile Set [ 1 ] | 1815 | High-Explosive Shell Set (Tech) Thruster (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 200 | Supersonic Missile Set | Requires Thruster |
]]

-- TIER 8

local technologies = {
	{"interstellar-logistics-system", {{"electromagnetic-matrix", 1200}, {"energy-matrix", 1200}, {"structure-matrix", 120}}, {"tech-dyson-planetary-logistics-system", "tech-dyson-high-strength-titanium-alloy", "tech-dyson-reinforced-thruster"}, {"interstellar-logistics-station", "interstellar-logistics-vessel"}},
	{"interstellar-power-transmission", {{"electromagnetic-matrix", 1200}, {"energy-matrix", 1200}, {"structure-matrix", 120}}, {"tech-dyson-high-strength-titanium-alloy", "tech-dyson-energy-storage"}, {"energy-exchanger"}},
	{"particle-control", {{"electromagnetic-matrix", 800}, {"energy-matrix", 800}, {"structure-matrix", 200}}, {"tech-dyson-structure-matrix"}, {"particle-broadband", "crystal-silicon-advanced"}},
	{"high-strength-glass", {{"energy-matrix", 800}, {"structure-matrix", 400}}, {"tech-dyson-high-strength-material"}, {"titanium-glass"}},
	{"casimir-crystal", {{"electromagnetic-matrix", 800}, {"energy-matrix", 800}, {"structure-matrix", 800}}, {"tech-dyson-structure-matrix"}, {"casimir-crystal", "casimir-crystal-advanced"}},
	{"miniature-particle-collider", {{"electromagnetic-matrix", 800}, {"energy-matrix", 800}, {"structure-matrix", 800}}, {"tech-dyson-high-strength-material"}, {"miniature-particle-collider", "deuterium"}},
	{"proliferator-mkiii", {{"electromagnetic-matrix", 800}, {"energy-matrix", 600}, {"structure-matrix", 400}}, {"tech-dyson-proliferator-mkii", "tech-dyson-high-strength-material"}, {"proliferator-mkiii"}},
	{"satellite-power-distribution-system", {{"electromagnetic-matrix", 800}, {"energy-matrix", 800}, {"structure-matrix", 800}}, {"tech-dyson-super-magnetic-field-generator"}, {"satellite-substation"}},
	{"supersonic-missile-set", {{"electromagnetic-matrix", 800}, {"energy-matrix", 800}, {"structure-matrix", 200}}, {"tech-dyson-high-explosive-shell-set", "tech-dyson-thruster"}, {"supersonic-missile-set"}}
}

-- Interstellar Logistics System
data:extend(
	{
		utils.createDSPTechnology(
			"interstellar-logistics-system",
			{
				{"electromagnetic-matrix", 1200},
				{"energy-matrix", 1200},
				{"structure-matrix", 120}
			},
			{
				"tech-dyson-planetary-logistics-system",
				"tech-dyson-high-strength-titanium-alloy",
				"tech-dyson-reinforced-thruster"
			},
			-- unlocks
			{
				"interstellar-logistics-station",
				"interstellar-logistics-vessel"
			},
			30,
			1
		)
	}
)

-- Interstellar Power Transmission
data:extend(
	{
		utils.createDSPTechnology(
			"interstellar-power-transmission",
			{
				{"electromagnetic-matrix", 1200},
				{"energy-matrix", 1200},
				{"structure-matrix", 120}
			},
			{
				"tech-dyson-high-strength-titanium-alloy",
				"tech-dyson-energy-storage"
			},
			-- unlocks
			{
				"energy-exchanger"
			},
			30,
			1
		)
	}
)

-- Particle Control
data:extend(
	{
		utils.createDSPTechnology(
			"particle-control",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800},
				{"structure-matrix", 200}
			},
			{
				"tech-dyson-structure-matrix"
			},
			-- unlocks
			{
				"particle-broadband",
				"crystal-silicon-advanced"
			},
			30,
			1
		)
	}
)

-- High-Strength Glass
data:extend(
	{
		utils.createDSPTechnology(
			"high-strength-glass",
			{
				{"energy-matrix", 800},
				{"structure-matrix", 400}
			},
			{
				"tech-dyson-high-strength-material"
			},
			-- unlocks
			{
				"titanium-glass"
			},
			30,
			1
		)
	}
)

-- Casimir Crystal
data:extend(
	{
		utils.createDSPTechnology(
			"casimir-crystal",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800},
				{"structure-matrix", 800}
			},
			{
				"tech-dyson-structure-matrix"
			},
			-- unlocks
			{
				"casimir-crystal",
				"casimir-crystal-advanced"
			},
			30,
			1
		)
	}
)

-- Miniature Particle Collider
data:extend(
	{
		utils.createDSPTechnology(
			"miniature-particle-collider",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800},
				{"structure-matrix", 800}
			},
			{
				"tech-dyson-high-strength-material"
			},
			-- unlocks
			{
				"miniature-particle-collider",
				"deuterium"
			},
			30,
			1
		)
	}
)

-- Proliferator Mk.III
data:extend(
	{
		utils.createDSPTechnology(
			"proliferator-mkiii",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 600},
				{"structure-matrix", 400}
			},
			{
				"tech-dyson-proliferator-mkii",
				"tech-dyson-high-strength-material"
			},
			-- unlocks
			{
				"proliferator-mkiii"
			},
			30,
			1
		)
	}
)

-- Satellite Power Distribution System
data:extend(
	{
		utils.createDSPTechnology(
			"satellite-power-distribution-system",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800},
				{"structure-matrix", 800}
			},
			{
				"tech-dyson-super-magnetic-field-generator"
			},
			-- unlocks
			{
				"satellite-substation"
			},
			30,
			1
		)
	}
)

-- Supersonic Missile Set
data:extend(
	{
		utils.createDSPTechnology(
			"supersonic-missile-set",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800},
				{"structure-matrix", 200}
			},
			{
				"tech-dyson-high-explosive-shell-set",
				"tech-dyson-thruster"
			},
			-- unlocks
			{
				"supersonic-missile-set"
			},
			30,
			1
		)
	}
)
