require("gameNight-recipes.lua")
local MOM = require("gameNight-cardDataMoM.lua")

function Recipe.GameNight.OpenSealedMoMCards(craftRecipeData, character)

    local item = craftRecipeData:getAllConsumedItems():get(0)
    local result = craftRecipeData:getAllCreatedItems():get(0)
    if not item or not result then return end

    local prebuiltID = item:getModData()["gameNight_momPrebuilt"]
    if prebuiltID then
        result:getModData()["gameNight_momPrebuilt"] = prebuiltID
        return
    end

    result:getModData()["gameNight_specialOnCardApplyBoosterCount"] = item:getModData()["gameNight_specialOnCardApplyBoosterCount"]

    if #MOM._sets > 0 then
        result:getModData()["gameNight_specialOnCardApplyBoosterSet"] = MOM._sets[ZombRand(#MOM._sets)+1]
    end
end
