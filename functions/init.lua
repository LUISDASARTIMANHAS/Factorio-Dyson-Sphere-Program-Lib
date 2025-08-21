-- init.lua
-- usado para exportar funções como uma blibioteca ou modelo control
local CO = require("functions.generic-functions.create-ore")
local CI = require("functions.generic-functions.create-item")
local CBI = require("functions.generic-functions.create-block-item")
local CBIR = require("functions.generic-functions.create-block-item-with-recipe")
local CF = require("functions.generic-functions.create-fluid")
local CG = require("functions.generic-functions.create-gas")
local CR = require("functions.generic-functions.create-recipe")
local CIR = require("functions.generic-functions.create-item-with-recipe")
local CFR = require("functions.generic-functions.create-fluid-with-recipe")
local CSIR = require("functions.create-smelting-item-with-recipe") -- ajuste no 
local CIRM = require("functions.create-item-with-recipe-matrix")
local CAIR = require("functions.create-assembler-item-with-recipe")
local CPCIR = require("functions.create-particle-collider-item-with-recipe")
local tech = require("functions.create-technology")
local CGR = require("functions.generic-functions.create-generic-recipe")

local functions = {}

functions.createOre = CO.createOre
functions.createItem = CI.createItem
functions.createBlockItem = CBI.createBlockItem
functions.createFluid = CF.createFluid
functions.createGas = CG.createGas
functions.createRecipe = CR.createRecipe
functions.createItemWithRecipe = CIR.createItemWithRecipe
functions.createFluidWithRecipe = CFR.createFluidWithRecipe
functions.createBlockItemWithRecipe = CBIR.createBlockItemWithRecipe
functions.createSmeltingItemWithRecipe = CSIR.createSmeltingItemWithRecipe
functions.createItemWithRecipeMatrix = CIRM.createItemWithRecipeMatrix
functions.createAssemblerItemWithRecipe = CAIR.createAssemblerItemWithRecipe
functions.createParticleColiderItemWithRecipe = CPCIR.createParticleColiderItemWithRecipe
functions.createTechnology = tech.createTechnology
functions.createGenericRecipe = CGR.createGenericRecipe

return functions
