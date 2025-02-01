require "recipecode"
require "gameNight - recipes"


function Recipe.GameNight.OpenSealedMoMCards(craftRecipeData, character)

    local item = craftRecipeData:getAllConsumedItems():get(0)
    local result = craftRecipeData:getAllCreatedItems():get(0)

    local prebuiltID = item:getModData()["gameNight_momPrebuilt"]
    if prebuiltID then
        result:getModData()["gameNight_momPrebuilt"] = prebuiltID
        return
    end

    result:getModData()["gameNight_specialOnCardApplyBoosterSet"] = item:getModData()["gameNight_specialOnCardApplyBoosterSet"]
    result:getModData()["gameNight_specialOnCardApplyBoosterCount"] = item:getModData()["gameNight_specialOnCardApplyBoosterCount"]
end