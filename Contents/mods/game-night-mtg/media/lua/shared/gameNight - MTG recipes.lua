require "recipecode"
require "gameNight - recipes"

local applyItemDetails = require "gameNight - applyItemDetails"

---@param items ArrayList
---@param result InventoryItem|InventoryContainer
---@param player IsoPlayer
function Recipe.GameNight.UnboxMTG(items, result, player) applyItemDetails.applyBoostersToCards(result, 4) end

---@param items ArrayList
---@param result InventoryItem|InventoryContainer
---@param player IsoPlayer
function Recipe.GameNight.OpenBoosterMTG(items, result, player) applyItemDetails.applyBoostersToCards(result, 1) end