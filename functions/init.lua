-- init.lua
local CI = require("functions.createItem")
local CR = require("functions.createRecipe")
local CIR = require("functions.createItemWithRecipe") -- ajuste no 
local CIRM = require("functions.createItemWithRecipeMatrix")
local tech = require("functions.createTechnology")

local functions = {}

functions.createItem = CI.createItem
functions.createRecipe = CR.createRecipe
functions.createItemWithRecipe = CIR.createItemWithRecipe
functions.createItemWithRecipeMatrix = CIRM.createItemWithRecipeMatrix
functions.createTechnology = tech.createTechnology

return functions
