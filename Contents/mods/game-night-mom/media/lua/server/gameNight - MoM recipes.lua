require "recipecode"
require "gameNight - recipes"

---@param items ArrayList
---@param result InventoryItem|InventoryContainer
---@param player IsoPlayer
function Recipe.GameNight.OpenKitMoM(items, result, player) result:getModData()["gameNight_specialOnCardApplyBoosters"] = 4 end

---@param items ArrayList
---@param result InventoryItem|InventoryContainer
---@param player IsoPlayer
function Recipe.GameNight.OpenBoosterMoM(items, result, player) result:getModData()["gameNight_specialOnCardApplyBoosters"] = 1 end