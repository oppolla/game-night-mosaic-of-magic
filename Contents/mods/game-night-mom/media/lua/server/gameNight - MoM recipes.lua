require "recipecode"
require "gameNight - recipes"

---@param items ArrayList
---@param result InventoryItem|InventoryContainer
---@param player IsoPlayer
function Recipe.GameNight.OpenKitMoM(items, result, player)

    local item = items:get(0)
    local prebuiltID = item:getModData()["gameNight_momPrebuilt"]
    if prebuiltID then result:getModData()["gameNight_momPrebuilt"] = prebuiltID end

    result:getModData()["gameNight_specialOnCardApplyBoosters"] = 4
end


---@param items ArrayList
---@param result InventoryItem|InventoryContainer
---@param player IsoPlayer
function Recipe.GameNight.OpenBoosterMoM(items, result, player)

    local item = items:get(0)
    local prebuiltID = item:getModData()["gameNight_momPrebuilt"]
    if prebuiltID then result:getModData()["gameNight_momPrebuilt"] = prebuiltID end

    result:getModData()["gameNight_specialOnCardApplyBoosters"] = 1
end