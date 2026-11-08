local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 13 | Controlled Annihilation Reaction | 1145 | Dirac Inversion Mechanism (Tech) | Energy Matrix: 4000; Gravity Matrix: 2000 | Annihilation Constraint Sphere; Antimatter Fuel Rod |  |
]]

-- TIER 13
-- Controlled Annihilation Reaction
data:extend(
	{
		utils.createDSPTechnology(
			"controlled-annihilation-reaction",
			{
				{"energy-matrix", 4000},
				{"gravity-matrix", 2000}
			},
			{
				"tech-dyson-dirac-inversion-mechanism"
			},
			-- unlocks
			{
				"annihilation-constraint-sphere",
				"antimatter-fuel-rod"
			},
			30,
			1
		)
	}
)
