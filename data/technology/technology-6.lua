local utils = require("data.utils")

-- default create name
-- nameofTech

-- | 6 | Planetary Logistics System | 1604 | High-Efficiency Logistics System (Tech) Thruster (Tech) Vertical Construction (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 400 | Conveyor Belt Mk.III; Planetary Logistics Station; Logistics Drone | Requires Thruster Requires Vertical Construction 1 |
-- | 6 | Geothermal Extraction | 1513 | Photon Frequency Conversion (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 800 | Geothermal Power Station | Requires Super Magnetic Field Generator |
-- | 6 | Solar Sail Orbit System | 1503 | Photon Frequency Conversion (Tech) | Electromagnetic Matrix: 300; Energy Matrix: 300 | Solar Sail; EM-Rail Ejector | Requires Super Magnetic Field Generator |
-- | 6 | High-Speed Assembling Processes | 1202 | Basic Assembling Processes (Tech) Processor (Tech) | Electromagnetic Matrix: 600; Energy Matrix: 300 | Assembling Machine Mk.II |  |
-- | 6 | High-Strength Crystal | 1123 | Polymer Chemical Engineering (Tech) | Electromagnetic Matrix: 600; Energy Matrix: 600 | Titanium Crystal |  |
-- | 6 | Reformed Refinement [ 3 ] | 1104 | X-Ray Cracking (Tech) | Electromagnetic Matrix: 500; Energy Matrix: 500 | Reformed Refinement |  |
-- | 6 | Thruster | 1113 | Hydrogen Fuel Rod (Tech) | Electromagnetic Matrix: 1000 | Thruster |  |
-- | 6 | Proliferator Mk.II | 1152 | Processor (Tech) Proliferator Mk.I (Tech) | Electromagnetic Matrix: 800; Energy Matrix: 600 | Proliferator Mk.II |  |
-- | 6 | Magnetic Particle Trap | 1703 | Magnetic Levitation (Tech) | Electromagnetic Matrix: 1000; Energy Matrix: 800 | Particle Container; Particle Container Advanced |  |
-- | 6 | Titanium Ammo Box [ 1 ] | 1812 | Weapon System (Tech) Titanium Smelting (Tech) | Electromagnetic Matrix: 600; Energy Matrix: 600 | Titanium Ammo Box | Requires Titanium Smelting |

-- TIER 6

-- Planetary Logistics System
data:extend(
	{
		utils.createDSPTechnology(
			"planetary-logistics-system",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 400}
			},
			{
				"tech-dyson-high-efficiency-logistics-system",
				"tech-dyson-thruster"
			},
			-- unlocks
			{
				"turbo-transport-belt",
				"planetary-logistics-station",
				"logistics-drone"
			},
			30,
			1
		)
	}
)

-- Geothermal Extraction
data:extend(
	{
		utils.createDSPTechnology(
			"geothermal-extraction",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 800}
			},
			{
				"tech-dyson-photon-frequency-conversion",
				"tech-dyson-super-magnetic-field-generator"
			},
			-- unlocks
			{
				"geothermal-power-station"
			},
			30,
			1
		)
	}
)

-- Solar Sail Orbit System
data:extend(
	{
		utils.createDSPTechnology(
			"solar-sail-orbit-system",
			{
				{"electromagnetic-matrix", 300},
				{"energy-matrix", 300}
			},
			{
				"tech-dyson-photon-frequency-conversion",
				"tech-dyson-super-magnetic-field-generator"
			},
			-- unlocks
			{
				"solar-sail",
				"em-rail-ejector"
			},
			30,
			1
		)
	}
)

-- High-Speed Assembling Processes
data:extend(
	{
		utils.createDSPTechnology(
			"high-speed-assembling-processes",
			{
				{"electromagnetic-matrix", 600},
				{"energy-matrix", 300}
			},
			{
				"tech-dyson-basic-assembling-processes",
				"tech-dyson-processor"
			},
			-- unlocks
			{
				"assembling-machine-2"
			},
			30,
			1
		)
	}
)

-- High-Strength Crystal
data:extend(
	{
		utils.createDSPTechnology(
			"high-strength-crystal",
			{
				{"electromagnetic-matrix", 600},
				{"energy-matrix", 600}
			},
			{
				"tech-dyson-polymer-chemical-engineering"
			},
			-- unlocks
			{
				"titanium-crystal"
			},
			30,
			1
		)
	}
)

-- Reformed Refinement
data:extend(
	{
		utils.createDSPTechnology(
			"reformed-refinement",
			{
				{"electromagnetic-matrix", 500},
				{"energy-matrix", 500}
			},
			{
				"tech-dyson-x-ray-cracking"
			},
			-- unlocks
			{
				"advanced-oil-processing"
			},
			30,
			1
		)
	}
)

-- Thruster
data:extend(
	{
		utils.createDSPTechnology(
			"thruster",
			{
				{"electromagnetic-matrix", 1000}
			},
			{
				"tech-dyson-hydrogen-fuel-rod"
			},
			-- unlocks
			{
				"thruster"
			},
			30,
			1
		)
	}
)

-- Proliferator Mk.II
data:extend(
	{
		utils.createDSPTechnology(
			"proliferator-mkii",
			{
				{"electromagnetic-matrix", 800},
				{"energy-matrix", 600}
			},
			{
				"tech-dyson-processor",
				"tech-dyson-proliferator-mki"
			},
			-- unlocks
			{
				"proliferator-mkii"
			},
			30,
			1
		)
	}
)

-- Magnetic Particle Trap
data:extend(
	{
		utils.createDSPTechnology(
			"magnetic-particle-trap",
			{
				{"electromagnetic-matrix", 1000},
				{"energy-matrix", 800}
			},
			{
				"tech-dyson-magnetic-levitation"
			},
			-- unlocks
			{
				"particle-container",
				"particle-container-advanced"
			},
			30,
			1
		)
	}
)

-- Titanium Ammo Box
data:extend(
	{
		utils.createDSPTechnology(
			"titanium-ammo-box",
			{
				{"electromagnetic-matrix", 600},
				{"energy-matrix", 600}
			},
			{
				"tech-dyson-weapon-system",
				"tech-dyson-titanium-smelting"
			},
			-- unlocks
			{
				"titanium-ammo-box"
			},
			30,
			1
		)
	}
)
