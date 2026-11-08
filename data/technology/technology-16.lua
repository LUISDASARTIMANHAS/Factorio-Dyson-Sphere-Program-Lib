local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 16 | Mission Completed! | 1508 | Universe Matrix (Tech) | Universe Matrix: 4000 |  |  |
]]

-- TIER 16
-- Mission Completed!
data:extend(
	{
		utils.createDSPTechnology(
			"mission-completed",
			{
				{"universe-matrix", 4000}
			},
			{
				"tech-dyson-universe-matrix"
			},
			-- unlocks
			{},
			30,
			1
		)
	}
)
