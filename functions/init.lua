-- init.lua
local createItem = require("functions.createItem")
local createRecipe = require("functions.createRecipe")
local createItemWithRecipe = require("functions.createItemWithRecipe") -- ajuste no 
local createItemWithRecipeMatrix = require("functions.createItemWithRecipeMatrix")

local functions = {}

functions.createItem = createItem.createItem
functions.createRecipe = createRecipe.createRecipe
functions.createItemWithRecipe = createItemWithRecipe.createItemWithRecipe
functions.createItemWithRecipeMatrix = createItemWithRecipeMatrix.createItemWithRecipeMatrix

return functions
