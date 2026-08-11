local applyItemDetails = require("gameNight-applyItemDetails.lua")
local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceHandler = applyItemDetails.gamePieceHandler
local MOM = require("gameNight-cardDataMoM.lua")


function MOM.registerCardsUI()
    deckActionHandler.addDeck("momCards", MOM.catalogue, MOM.altNames, MOM.altIcons)
    gamePieceHandler.registerSpecial("Base.momCards", { shiftAction = {"channelCard"}, actions = { channelCard=true, examine=true}, examineScale = 0.75, applyCards = "applyCardForMOM", textureSize = {100,140} })

    gamePieceHandler.registerSpecial("Base.momBoosterPack", { hideUI = true })
    gamePieceHandler.registerSpecial("Base.momStarterKit", { hideUI = true })
end
Events.OnGameBoot.Add(MOM.registerCardsUI)


function applyItemDetails.applyBoostersToMOMCards(item, n, set)
    ---FIX LEFT OVER ALT NAMES IN ITEMS
    item:getModData()["gameNight_cardAltNames"] = nil

    local cards = {}
    n = n or 1
    for i=1, n do MOM.unpackBooster(cards, set) end
    item:getModData()["gameNight_cardDeck"] = cards
    item:getModData()["gameNight_cardFlipped"] = {}
    for i=1, #cards do item:getModData()["gameNight_cardFlipped"][i] = true end
end


function applyItemDetails.applyCardForMOM(item)

    local prebuiltID = item:getModData()["gameNight_momPrebuilt"]
    local prebuilt = prebuiltID and MOM.preBuiltSets[prebuiltID]
    if prebuilt then
        item:getModData()["gameNight_momPrebuilt"] = nil
        ---avoid applying boosters later
        item:getModData()["gameNight_specialOnCardApplyBoosterCount"] = nil
        item:getModData()["gameNight_cardDeck"] = {}
        local cards = item:getModData()["gameNight_cardDeck"]
        item:getModData()["gameNight_cardFlipped"] = {}
        for _,cardID in pairs(prebuilt.cards) do
            local setIdForCard = prebuilt.set and prebuilt.set~="Prima" and prebuilt.set.."_" or ""
            local cardIdWithSet = setIdForCard..cardID
            table.insert(cards, cardIdWithSet)
        end
        for i=1, #cards do item:getModData()["gameNight_cardFlipped"][i] = true end
        return
    end

    local applyBoosters = item:getModData()["gameNight_specialOnCardApplyBoosterCount"]
    --- recipe sets this modData to the resulting item, 1 booster = 15 cards, 4 = 60.
    --- the recipe (OpenSealedMoMCards) now also resolves gameNight_specialOnCardApplyBoosterSet
    --- server-side at craft time, across every installed expansion's registered sets - the
    --- fallback below only matters for cards spawned without ever going through a sealed pack.
    if applyBoosters then

        local setType = item:getModData()["gameNight_specialOnCardApplyBoosterSet"]
        setType = setType or MOM._sets[ZombRand(#MOM._sets)+1]

        item:getModData()["gameNight_specialOnCardApplyBoosterSet"] = nil
        item:getModData()["gameNight_specialOnCardApplyBoosterCount"] = nil

        applyItemDetails.applyBoostersToMOMCards(item, applyBoosters, setType)
        return
    end

    ---FIX LEFT OVER ALT NAMES IN ITEMS
    item:getModData()["gameNight_cardAltNames"] = nil

    if not item:getModData()["gameNight_cardDeck"] then

        local itemCont = item:getContainer()
        local zombie = itemCont and (itemCont:getType() == "inventorymale" or itemCont:getType() == "inventoryfemale")

        if (ZombRand(10) < 1) or zombie then
            local card = MOM.spawnRandomCard(true)
            item:getModData()["gameNight_cardDeck"] = { card }
            item:getModData()["gameNight_cardFlipped"] = { true }
            item:getModData()["gameNight_specialOnCardApplyDeck"] = nil
        else
            local cards = MOM.buildDeck()
            item:getModData()["gameNight_cardDeck"] = cards
            item:getModData()["gameNight_cardFlipped"] = {}
            for i=1, #cards do item:getModData()["gameNight_cardFlipped"][i] = true end
        end
    end
end


function deckActionHandler.channelCard_isValid(deckItem, player) if deckItem and deckItem:getWorldItem() then return true end end
function deckActionHandler.channelCard(deckItem, player)
    local current = deckItem:getModData()["gameNight_rotation"] or 0
    local state = current == 90 and 0 or 90

    gamePieceHandler.playSound(deckItem, player)
    gamePieceHandler.pickupAndPlaceGamePiece(player, deckItem, {gamePieceHandler.setModDataValue, deckItem, "gameNight_rotation", state})
end
