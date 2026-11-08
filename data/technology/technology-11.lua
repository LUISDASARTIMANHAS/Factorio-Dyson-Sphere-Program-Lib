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
