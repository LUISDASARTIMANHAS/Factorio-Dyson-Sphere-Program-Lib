local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 15 | Universe Matrix | 1507 | Dirac Inversion Mechanism (Tech) | Electromagnetic Matrix: 2000; Energy Matrix: 2000; Structure Matrix: 2000; Information Matrix: 2000; Gravity Matrix: 2000 | Universe Matrix |  |
]]

-- TIER 15
-- Universe Matrix
data:extend(
	{
		utils.createDSPTechnology(
			"universe-matrix",
			{
				{"electromagnetic-matrix", 2000},
				{"energy-matrix", 2000},
				{"structure-matrix", 2000},
				{"information-matrix", 2000},
				{"gravity-matrix", 2000}
			},
			{
				"tech-dyson-dirac-inversion-mechanism"
			},
			-- unlocks
			{
				"universe-matrix"
			},
			30,
			1
		)
	}
)
