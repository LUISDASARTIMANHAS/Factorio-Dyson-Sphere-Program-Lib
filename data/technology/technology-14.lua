local utils = require("data.utils")

-- default create name
-- nameofTech
--[[
| 14 | Artificial Star | 1144 | Controlled Annihilation Reaction (Tech) | Electromagnetic Matrix: 1200; Energy Matrix: 1200; Structure Matrix: 1200; Information Matrix: 1200; Gravity Matrix: 1200 | Artificial Star |  |
| 14 | High-Density Controlling Annihilation [ 1 ] | 1904 | Controlled Annihilation Reaction (Tech) | Dark Fog Matrix: 2000 | Strange Annihilation Fuel Rod | Hidden technology. |
| 14 | Antimatter Capsule [ 1 ] | 1818 | Controlled Annihilation Reaction (Tech) Plasma Turret (Tech) | Electromagnetic Matrix: 3000; Energy Matrix: 3000; Structure Matrix: 3000; Information Matrix: 3000; Gravity Matrix: 3000 | Antimatter Capsule |  |
]]

-- TIER 14

-- TIER 14
-- Artificial Star
data:extend(
	{
		utils.createDSPTechnology(
			"artificial-star",
			{
				{"electromagnetic-matrix", 1200},
				{"energy-matrix", 1200},
				{"structure-matrix", 1200},
				{"information-matrix", 1200},
				{"gravity-matrix", 1200}
			},
			{
				"tech-dyson-controlled-annihilation-reaction"
			},
			-- unlocks
			{
				"artificial-star"
			},
			30,
			1
		)
	}
)

-- High-Density Controlling Annihilation
local highDensityAnnihilation = utils.createDSPTechnology(
	"high-density-controlling-annihilation",
	{
		{"dark-fog-matrix", 2000}
	},
	{
		"tech-dyson-controlled-annihilation-reaction"
	},
	-- unlocks
	{
		"strange-annihilation-fuel-rod"
	},
	30,
	1
)
highDensityAnnihilation.hidden = true
data:extend({highDensityAnnihilation})

-- Antimatter Capsule
data:extend(
	{
		utils.createDSPTechnology(
			"antimatter-capsule",
			{
				{"electromagnetic-matrix", 3000},
				{"energy-matrix", 3000},
				{"structure-matrix", 3000},
				{"information-matrix", 3000},
				{"gravity-matrix", 3000}
			},
			{
				"tech-dyson-controlled-annihilation-reaction",
				"tech-dyson-plasma-turret"
			},
			-- unlocks
			{
				"antimatter-capsule"
			},
			30,
			1
		)
	}
)
