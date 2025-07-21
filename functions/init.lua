-- init.lua
local CI = require("functions.createItem")
local CF = require("functions.createFluid")
local CG = require("functions.createGas")
local CR = require("functions.createRecipe")
local CIR = require("functions.createItemWithRecipe")
local CFR = require("functions.createFluidWithRecipe")
local CSIR = require("functions.createSmeltingItemWithRecipe") -- ajuste no 
local CIRM = require("functions.createItemWithRecipeMatrix")
local CAIR = require("functions.createAssemblerItemWithRecipe")
local tech = require("functions.createTechnology")

local functions = {}

functions.createItem = CI.createItem
functions.createFluid = CF.createFluid
functions.createGas = CG.createGas
functions.createRecipe = CR.createRecipe
functions.createItemWithRecipe = CIR.createItemWithRecipe
functions.createFluidWithRecipe = CFR.createFluidWithRecipe
functions.createSmeltingItemWithRecipe = CSIR.createSmeltingItemWithRecipe
functions.createItemWithRecipeMatrix = CIRM.createItemWithRecipeMatrix
functions.createAssemblerItemWithRecipe = CAIR.createAssemblerItemWithRecipe
functions.createTechnology = tech.createTechnology

return functions
