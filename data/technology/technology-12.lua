local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 12 | Dirac Inversion Mechanism | 1506 | Planetary Ionosphere Utilization (Tech) | Electromagnetic Matrix: 3000; Energy Matrix: 3000; Structure Matrix: 750; Information Matrix: 750; Gravity Matrix: 1500 | Mass-Energy Storage |  |
| 12 | Matter Recombination [ 1 ] | 1902 | Quantum Printing (Tech) | Dark Fog Matrix: 600 | Re-composing Assembler | Hidden technology. |
]]

-- TIER 12

-- TIER 12
-- Dirac Inversion Mechanism
data:extend(
	{
		utils.createDSPTechnology(
			"dirac-inversion-mechanism",
			{
				{"electromagnetic-matrix", 3000},
				{"energy-matrix", 3000},
				{"structure-matrix", 750},
				{"information-matrix", 750},
				{"gravity-matrix", 1500}
			},
			{
				"tech-dyson-planetary-ionosphere-utilization"
			},
			-- unlocks
			{
				-- "mass-energy-storage"
			},
			30,
			1
		)
	}
)

-- Matter Recombination
local matterRecombination = utils.createDSPTechnology(
	"matter-recombination",
	{
		{"dark-fog-matrix", 600}
	},
	{
		"tech-dyson-quantum-printing"
	},
	-- unlocks
	{
		"re-composing-assembler"
	},
	30,
	1
)
matterRecombination.hidden = true
data:extend({matterRecombination})
