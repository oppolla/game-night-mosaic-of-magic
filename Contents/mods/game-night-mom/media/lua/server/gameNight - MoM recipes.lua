require "recipecode"
require "gameNight - recipes"

---@param items ArrayList
---@param result InventoryItem|InventoryContainer
---@param player IsoPlayer
function Recipe.GameNight.OpenKitMoM(items, result, player)

    local item = items:get(0)
    local cards = item:getModData()["gameNight_cardDeck"]
    if cards then
        result:getModData()["gameNight_cardDeck"] = cards
        result:getModData()["gameNight_cardFlipped"] = {}
        for i=1, #cards do result:getModData()["gameNight_cardFlipped"][i] = true end
        return
    end

    result:getModData()["gameNight_specialOnCardApplyBoosters"] = 4
end


---@param items ArrayList
---@param result InventoryItem|InventoryContainer
---@param player IsoPlayer
function Recipe.GameNight.OpenBoosterMoM(items, result, player)

    local item = items:get(0)
    local cards = item:getModData()["gameNight_cardDeck"]
    if cards then
        result:getModData()["gameNight_cardDeck"] = cards
        result:getModData()["gameNight_cardFlipped"] = {}
        for i=1, #cards do result:getModData()["gameNight_cardFlipped"][i] = true end
        return
    end
    
    result:getModData()["gameNight_specialOnCardApplyBoosters"] = 1
end