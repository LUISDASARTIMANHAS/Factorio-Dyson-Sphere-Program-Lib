local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 10 | Vertical Launching Silo | 1522 | High-Strength Lightweight Structure (Tech) | Electromagnetic Matrix: 1600; Energy Matrix: 1600; Structure Matrix: 1600; Information Matrix: 1600 | Vertical Launching Silo; Small Carrier Rocket | Requires Quantum Chip |
| 10 | Digital Analog Computation [ 1 ] | 1901 | Information Matrix (Tech) | Dark Fog Matrix: 800 | Self-evolution Lab | Hidden technology. |
| 10 | Quantum Chip | 1303 | Information Matrix (Tech) Wave Function Interference (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Information Matrix: 800 | Quantum Chip |  |
| 10 | Plane-Filter Smelting [ 4 ] | 1417 | Wave Function Interference (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 1000; Structure Matrix: 1000; Information Matrix: 1000 | Plane Smelter | Requires Crystal Smelting |
| 10 | Gravitational Wave Refraction | 1704 | Strange Matter (Tech) Magnetic Particle Trap (Tech) | Electromagnetic Matrix: 1200; Energy Matrix: 1200; Structure Matrix: 1200 | Graviton Lens; Space Warper |  |
]]

-- TIER 10

-- TIER 10
-- Vertical Launching Silo
data:extend(
	{
		utils.createDSPTechnology(
			"vertical-launching-silo",
			{
				{"electromagnetic-matrix", 1600},
				{"energy-matrix", 1600},
				{"structure-matrix", 1600},
				{"information-matrix", 1600}
			},
			{
				"tech-dyson-high-strength-lightweight-structure",
				"tech-dyson-quantum-chip"
			},
			-- unlocks
			{
				"vertical-launching-silo",
				"small-carrier-rocket"
			},
			30,
			1
		)
	}
)

-- Digital Analog Computation
local digitalAnalogComputation = utils.createDSPTechnology(
	"digital-analog-computation",
	{
		{"dark-fog-matrix", 800}
	},
	{
		"tech-dyson-information-matrix"
	},
	-- unlocks
	{
		"self-evolution-lab"
	},
	30,
	1
)
digitalAnalogComputation.hidden = true
data:extend({digitalAnalogComputation})

-- Quantum Chip
data:extend(
	{
		utils.createDSPTechnology(
			"quantum-chip",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800},
				{"information-matrix", 800}
			},
			{
				"tech-dyson-information-matrix",
				"tech-dyson-wave-function-interference"
			},
			-- unlocks
			{
				"quantum-chip"
			},
			30,
			1
		)
	}
)

-- Plane-Filter Smelting
data:extend(
	{
		utils.createDSPTechnology(
			"plane-filter-smelting",
			{
				{"electromagnetic-matrix", 1000},
				{"energy-matrix", 1000},
				{"structure-matrix", 1000},
				{"information-matrix", 1000}
			},
			{
				"tech-dyson-wave-function-interference",
				"tech-dyson-crystal-smelting"
			},
			-- unlocks
			{
				"plane-smelter"
			},
			30,
			1
		)
	}
)

-- Gravitational Wave Refraction
data:extend(
	{
		utils.createDSPTechnology(
			"gravitational-wave-refraction",
			{
				{"electromagnetic-matrix", 1200},
				{"energy-matrix", 1200},
				{"structure-matrix", 1200}
			},
			{
				"tech-dyson-strange-matter",
				"tech-dyson-magnetic-particle-trap"
			},
			-- unlocks
			{
				"graviton-lens",
				"space-warper"
			},
			30,
			1
		)
	}
)
