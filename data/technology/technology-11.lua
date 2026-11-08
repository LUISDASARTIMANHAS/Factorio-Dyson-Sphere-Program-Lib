local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 11 | Dyson Sphere Stress System | 1523 | Vertical Launching Silo (Tech) | Electromagnetic Matrix: 2000; Energy Matrix: 2000; Structure Matrix: 2000; Information Matrix: 2000; Gravity Matrix: 2000 |  | Dyson sphere node latitude limit +15°. This is the only Technology that has multiple levels to it - 6 in total, and the cost goes up each level. Details on the technology's page. |
| 11 | Planetary Ionosphere Utilization | 1505 | Ray Receiver (Tech) | Electromagnetic Matrix: 2000; Energy Matrix: 2000; Structure Matrix: 2000; Gravity Matrix: 2000 |  | Allow ray receiver to consume graviton lens to increase the max output power. Less obvious from the game's description, this allows your Ray Receiver to receive energy from your Dyson Swarm or Sphere without having a direct line of sight, as long as the planet has an atmosphere. This feature consumes Graviton Lens . Requires Gravitational Wave Refraction |
| 11 | Quantum Printing | 1203 | High-Speed Assembling Processes (Tech) Quantum Chip (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 800; Information Matrix: 800 | Assembling Machine Mk.III |  |
| 11 | Photon Spotlight Mining | 1304 | Quantum Chip (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 1000; Structure Matrix: 1000; Information Matrix: 1000; Gravity Matrix: 600 | Advanced Mining Machine |  |
| 11 | Negentropy Recursion [ 1 ] | 1903 | Plane-Filter Smelting (Tech) | Dark Fog Matrix: 1200 | Negentropy Smelter | Hidden technology. |
| 11 | Mesoscopic Quantum Entanglement [ 2 ] | 1305 | Quantum Chip (Tech) Strange Matter (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 1000; Structure Matrix: 1000; Information Matrix: 1000 | Quantum Chemical Plant |  |
| 11 | Gravity Matrix | 1705 | Quantum Chip (Tech) Gravitational Wave Refraction (Tech) | Electromagnetic Matrix: 1600; Energy Matrix: 1600; Structure Matrix: 1600 | Gravity Matrix; Space Warper Advanced |  |
| 11 | Gravity Missile Set [ 1 ] | 1817 | Crystal Shell Set (Tech) Strange Matter (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 1000; Structure Matrix: 1000; Information Matrix: 1000; Gravity Matrix: 1000 | Gravity Missile Set | Requires Strange Matter |
| 11 | Destroyer [ 1 ] | 1823 | Corvette (Tech) Attack Drone (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800; Structure Matrix: 800; Information Matrix: 800; Gravity Matrix: 800 | Destroyer |  |
]]

-- TIER 11

-- TIER 11
-- Planetary Ionosphere Utilization
data:extend(
	{
		utils.createDSPTechnology(
			"planetary-ionosphere-utilization",
			{
				{"electromagnetic-matrix", 2000},
				{"energy-matrix", 2000},
				{"structure-matrix", 2000},
				{"gravity-matrix", 2000}
			},
			{
				"tech-dyson-ray-receiver",
				"tech-dyson-gravitational-wave-refraction"
			},
			-- unlocks
			{},
			30,
			1
		)
	}
)

-- Quantum Printing
data:extend(
	{
		utils.createDSPTechnology(
			"quantum-printing",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800},
				{"structure-matrix", 800},
				{"information-matrix", 800}
			},
			{
				"tech-dyson-high-speed-assembling-processes",
				"tech-dyson-quantum-chip"
			},
			-- unlocks
			{
				"assembling-machine-3"
			},
			30,
			1
		)
	}
)

-- Photon Spotlight Mining
data:extend(
	{
		utils.createDSPTechnology(
			"photon-spotlight-mining",
			{
				{"electromagnetic-matrix", 1000},
				{"energy-matrix", 1000},
				{"structure-matrix", 1000},
				{"information-matrix", 1000},
				{"gravity-matrix", 600}
			},
			{
				"tech-dyson-quantum-chip"
			},
			-- unlocks
			{
				"advanced-mining-machine"
			},
			30,
			1
		)
	}
)

-- Negentropy Recursion
local negentropyRecursion = utils.createDSPTechnology(
	"negentropy-recursion",
	{
		{"dark-fog-matrix", 1200}
	},
	{
		"tech-dyson-plane-filter-smelting"
	},
	-- unlocks
	{
		"negentropy-smelter"
	},
	30,
	1
)
negentropyRecursion.hidden = true
data:extend({negentropyRecursion})

-- Mesoscopic Quantum Entanglement
data:extend(
	{
		utils.createDSPTechnology(
			"mesoscopic-quantum-entanglement",
			{
				{"electromagnetic-matrix", 1000},
				{"energy-matrix", 1000},
				{"structure-matrix", 1000},
				{"information-matrix", 1000}
			},
			{
				"tech-dyson-quantum-chip",
				"tech-dyson-strange-matter"
			},
			-- unlocks
			{
				"quantum-chemical-plant"
			},
			30,
			1
		)
	}
)

-- Gravity Matrix
data:extend(
	{
		utils.createDSPTechnology(
			"gravity-matrix",
			{
				{"electromagnetic-matrix", 1600},
				{"energy-matrix", 1600},
				{"structure-matrix", 1600}
			},
			{
				"tech-dyson-quantum-chip",
				"tech-dyson-gravitational-wave-refraction"
			},
			-- unlocks
			{
				"gravity-matrix",
				"space-warper-advanced"
			},
			30,
			1
		)
	}
)

-- Gravity Missile Set
data:extend(
	{
		utils.createDSPTechnology(
			"gravity-missile-set",
			{
				{"electromagnetic-matrix", 1000},
				{"energy-matrix", 1000},
				{"structure-matrix", 1000},
				{"information-matrix", 1000},
				{"gravity-matrix", 1000}
			},
			{
				"tech-dyson-crystal-shell-set",
				"tech-dyson-strange-matter"
			},
			-- unlocks
			{
				"gravity-missile-set"
			},
			30,
			1
		)
	}
)

-- Destroyer
data:extend(
	{
		utils.createDSPTechnology(
			"destroyer",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800},
				{"structure-matrix", 800},
				{"information-matrix", 800},
				{"gravity-matrix", 800}
			},
			{
				"tech-dyson-corvette",
				"tech-dyson-attack-drone"
			},
			-- unlocks
			{
				"destroyer"
			},
			30,
			1
		)
	}
)

-- Dyson Sphere Stress System
local stressSystem = utils.createDSPTechnology(
	"dyson-sphere-stress-system",
	{
		{"electromagnetic-matrix", 1},
		{"energy-matrix", 1},
		{"structure-matrix", 1},
		{"information-matrix", 1},
		{"gravity-matrix", 1}
	},
	{
		"tech-dyson-vertical-launching-silo"
	},
	-- unlocks
	{},
	30,
	1
)
stressSystem.max_level = 6
stressSystem.unit.count = nil
stressSystem.unit.count_formula = "2000 * L"
data:extend({stressSystem})
