-- init.lua
local CO = require("functions.create-ore")
local CI = require("functions.create-item")
local CF = require("functions.create-fluid")
local CG = require("functions.create-gas")
local CR = require("functions.create-recipe")
local CIR = require("functions.create-item-with-recipe")
local CFR = require("functions.create-fluid-with-recipe")
local CSIR = require("functions.create-smelting-item-with-recipe") -- ajuste no 
local CIRM = require("functions.create-item-with-recipe-matrix")
local CAIR = require("functions.create-assembler-item-with-recipe")
local CPCIR = require("functions.create-particle-collider-item-with-recipe")
local tech = require("functions.create-technology")

local functions = {}

functions.createOre = CO.createOre
functions.createItem = CI.createItem
functions.createFluid = CF.createFluid
functions.createGas = CG.createGas
functions.createRecipe = CR.createRecipe
functions.createItemWithRecipe = CIR.createItemWithRecipe
functions.createFluidWithRecipe = CFR.createFluidWithRecipe
functions.createSmeltingItemWithRecipe = CSIR.createSmeltingItemWithRecipe
functions.createItemWithRecipeMatrix = CIRM.createItemWithRecipeMatrix
functions.createAssemblerItemWithRecipe = CAIR.createAssemblerItemWithRecipe
functions.createParticleColiderItemWithRecipe = CPCIR.createParticleColiderItemWithRecipe
functions.createTechnology = tech.createTechnology

return functions
