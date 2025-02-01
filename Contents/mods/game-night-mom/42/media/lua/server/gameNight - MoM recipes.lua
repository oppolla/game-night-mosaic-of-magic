require "recipecode"
require "gameNight - recipes"


function Recipe.GameNight.OpenKitMoM(craftRecipeData, character)

    local item = craftRecipeData:getAllConsumedItems():get(0)
    local result = craftRecipeData:getAllCreatedItems():get(0)

    local prebuiltID = item:getModData()["gameNight_momPrebuilt"]
    if prebuiltID then
        result:getModData()["gameNight_momPrebuilt"] = prebuiltID
        return
    end

    result:getModData()["gameNight_specialOnCardApplyBoosterSet"] = item:getModData()["gameNight_specialOnCardApplyBoosterSet"]
    result:getModData()["gameNight_specialOnCardApplyBoosterCount"] = 4
end


function Recipe.GameNight.OpenBoosterMoM(craftRecipeData, character)

    local item = craftRecipeData:getAllConsumedItems():get(0)
    local result = craftRecipeData:getAllCreatedItems():get(0)

    local prebuiltID = item:getModData()["gameNight_momPrebuilt"]
    if prebuiltID then
        result:getModData()["gameNight_momPrebuilt"] = prebuiltID
        return
    end

    result:getModData()["gameNight_specialOnCardApplyBoosterSet"] = item:getModData()["gameNight_specialOnCardApplyBoosterSet"]
    result:getModData()["gameNight_specialOnCardApplyBoosterCount"] = 1
end