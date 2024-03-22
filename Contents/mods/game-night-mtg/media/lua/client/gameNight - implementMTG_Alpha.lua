local applyItemDetails = require "gameNight - applyItemDetails"

local alphaArtifacts = {
"MTG Alpha Artifacts 1",
"MTG Alpha Artifacts 2",
"MTG Alpha Artifacts 3",
"MTG Alpha Artifacts 4",
"MTG Alpha Artifacts 5",
"MTG Alpha Artifacts 6",
"MTG Alpha Artifacts 7",
"MTG Alpha Artifacts 8",
"MTG Alpha Artifacts 9",
"MTG Alpha Artifacts 10",
"MTG Alpha Artifacts 11",
"MTG Alpha Artifacts 12",
"MTG Alpha Artifacts 13",
"MTG Alpha Artifacts 14",
"MTG Alpha Artifacts 15",
"MTG Alpha Artifacts 16",
"MTG Alpha Artifacts 17",
"MTG Alpha Artifacts 18",
"MTG Alpha Artifacts 19",
"MTG Alpha Artifacts 20",
"MTG Alpha Artifacts 21",
"MTG Alpha Artifacts 22",
"MTG Alpha Artifacts 23",
"MTG Alpha Artifacts 24",
"MTG Alpha Artifacts 25",
"MTG Alpha Artifacts 26",
"MTG Alpha Artifacts 27",
"MTG Alpha Artifacts 28",
"MTG Alpha Artifacts 29",
"MTG Alpha Artifacts 30",
"MTG Alpha Artifacts 31",
"MTG Alpha Artifacts 32",
"MTG Alpha Artifacts 33",
"MTG Alpha Artifacts 34",
"MTG Alpha Artifacts 35",
"MTG Alpha Artifacts 36",
"MTG Alpha Artifacts 37",
"MTG Alpha Artifacts 38",
"MTG Alpha Artifacts 39",
"MTG Alpha Artifacts 40",
"MTG Alpha Artifacts 41",
"MTG Alpha Artifacts 42",
"MTG Alpha Artifacts 43",
"MTG Alpha Artifacts 44",
"MTG Alpha Artifacts 45",
"MTG Alpha Artifacts 46",
"MTG Alpha Artifacts 47",
}

local alphaBlack = {
"MTG Alpha Black 1",
"MTG Alpha Black 2",
"MTG Alpha Black 3",
"MTG Alpha Black 4",
"MTG Alpha Black 5",
"MTG Alpha Black 6",
"MTG Alpha Black 7",
"MTG Alpha Black 8",
"MTG Alpha Black 9",
"MTG Alpha Black 10",
"MTG Alpha Black 11",
"MTG Alpha Black 12",
"MTG Alpha Black 13",
"MTG Alpha Black 14",
"MTG Alpha Black 15",
"MTG Alpha Black 16",
"MTG Alpha Black 17",
"MTG Alpha Black 18",
"MTG Alpha Black 19",
"MTG Alpha Black 20",
"MTG Alpha Black 21",
"MTG Alpha Black 22",
"MTG Alpha Black 23",
"MTG Alpha Black 24",
"MTG Alpha Black 25",
"MTG Alpha Black 26",
"MTG Alpha Black 27",
"MTG Alpha Black 28",
"MTG Alpha Black 29",
"MTG Alpha Black 30",
"MTG Alpha Black 31",
"MTG Alpha Black 32",
"MTG Alpha Black 33",
"MTG Alpha Black 34",
"MTG Alpha Black 35",
"MTG Alpha Black 36",
"MTG Alpha Black 37",
"MTG Alpha Black 38",
"MTG Alpha Black 39",
"MTG Alpha Black 40",
"MTG Alpha Black 41",
"MTG Alpha Black 42",
"MTG Alpha Black 43",
"MTG Alpha Black 44",
"MTG Alpha Black 45",
"MTG Alpha Black 46",
}

local alphaWhite = {
"MTG Alpha White 1",
"MTG Alpha White 2",
"MTG Alpha White 3",
"MTG Alpha White 4",
"MTG Alpha White 5",
"MTG Alpha White 6",
"MTG Alpha White 7",
"MTG Alpha White 8",
"MTG Alpha White 9",
"MTG Alpha White 10",
"MTG Alpha White 11",
"MTG Alpha White 12",
"MTG Alpha White 13",
"MTG Alpha White 14",
"MTG Alpha White 15",
"MTG Alpha White 16",
"MTG Alpha White 17",
"MTG Alpha White 18",
"MTG Alpha White 19",
"MTG Alpha White 20",
"MTG Alpha White 21",
"MTG Alpha White 22",
"MTG Alpha White 23",
"MTG Alpha White 24",
"MTG Alpha White 25",
"MTG Alpha White 26",
"MTG Alpha White 27",
"MTG Alpha White 28",
"MTG Alpha White 29",
"MTG Alpha White 30",
"MTG Alpha White 31",
"MTG Alpha White 32",
"MTG Alpha White 33",
"MTG Alpha White 34",
"MTG Alpha White 35",
"MTG Alpha White 36",
"MTG Alpha White 37",
"MTG Alpha White 38",
"MTG Alpha White 39",
"MTG Alpha White 40",
"MTG Alpha White 41",
"MTG Alpha White 42",
"MTG Alpha White 43",
"MTG Alpha White 44",
"MTG Alpha White 45",
}

local alphaGreen = {
"MTG Alpha Green 1",
"MTG Alpha Green 2",
"MTG Alpha Green 3",
"MTG Alpha Green 4",
"MTG Alpha Green 5",
"MTG Alpha Green 6",
"MTG Alpha Green 7",
"MTG Alpha Green 8",
"MTG Alpha Green 9",
"MTG Alpha Green 10",
"MTG Alpha Green 11",
"MTG Alpha Green 12",
"MTG Alpha Green 13",
"MTG Alpha Green 14",
"MTG Alpha Green 15",
"MTG Alpha Green 16",
"MTG Alpha Green 17",
"MTG Alpha Green 18",
"MTG Alpha Green 19",
"MTG Alpha Green 20",
"MTG Alpha Green 21",
"MTG Alpha Green 22",
"MTG Alpha Green 23",
"MTG Alpha Green 24",
"MTG Alpha Green 25",
"MTG Alpha Green 26",
"MTG Alpha Green 27",
"MTG Alpha Green 28",
"MTG Alpha Green 29",
"MTG Alpha Green 30",
"MTG Alpha Green 31",
"MTG Alpha Green 32",
"MTG Alpha Green 33",
"MTG Alpha Green 34",
"MTG Alpha Green 35",
"MTG Alpha Green 36",
"MTG Alpha Green 37",
"MTG Alpha Green 38",
"MTG Alpha Green 39",
"MTG Alpha Green 40",
"MTG Alpha Green 41",
"MTG Alpha Green 42",
"MTG Alpha Green 43",
"MTG Alpha Green 44",
"MTG Alpha Green 45",
"MTG Alpha Green 46",
}

local alphaBlue = {
"MTG Alpha Blue 1",
"MTG Alpha Blue 2",
"MTG Alpha Blue 3",
"MTG Alpha Blue 4",
"MTG Alpha Blue 5",
"MTG Alpha Blue 6",
"MTG Alpha Blue 7",
"MTG Alpha Blue 8",
"MTG Alpha Blue 9",
"MTG Alpha Blue 10",
"MTG Alpha Blue 11",
"MTG Alpha Blue 12",
"MTG Alpha Blue 13",
"MTG Alpha Blue 14",
"MTG Alpha Blue 15",
"MTG Alpha Blue 16",
"MTG Alpha Blue 17",
"MTG Alpha Blue 18",
"MTG Alpha Blue 19",
"MTG Alpha Blue 20",
"MTG Alpha Blue 21",
"MTG Alpha Blue 22",
"MTG Alpha Blue 23",
"MTG Alpha Blue 24",
"MTG Alpha Blue 25",
"MTG Alpha Blue 26",
"MTG Alpha Blue 27",
"MTG Alpha Blue 28",
"MTG Alpha Blue 29",
"MTG Alpha Blue 30",
"MTG Alpha Blue 31",
"MTG Alpha Blue 32",
"MTG Alpha Blue 33",
"MTG Alpha Blue 34",
"MTG Alpha Blue 35",
"MTG Alpha Blue 36",
"MTG Alpha Blue 37",
"MTG Alpha Blue 38",
"MTG Alpha Blue 39",
"MTG Alpha Blue 40",
"MTG Alpha Blue 41",
"MTG Alpha Blue 42",
"MTG Alpha Blue 43",
"MTG Alpha Blue 44",
"MTG Alpha Blue 45",
"MTG Alpha Blue 46",
}

local alphaRed = {
"MTG Alpha Red 1",
"MTG Alpha Red 2",
"MTG Alpha Red 3",
"MTG Alpha Red 4",
"MTG Alpha Red 5",
"MTG Alpha Red 6",
"MTG Alpha Red 7",
"MTG Alpha Red 8",
"MTG Alpha Red 9",
"MTG Alpha Red 10",
"MTG Alpha Red 11",
"MTG Alpha Red 12",
"MTG Alpha Red 13",
"MTG Alpha Red 14",
"MTG Alpha Red 15",
"MTG Alpha Red 16",
"MTG Alpha Red 17",
"MTG Alpha Red 18",
"MTG Alpha Red 19",
"MTG Alpha Red 20",
"MTG Alpha Red 21",
"MTG Alpha Red 22",
"MTG Alpha Red 23",
"MTG Alpha Red 24",
"MTG Alpha Red 25",
"MTG Alpha Red 26",
"MTG Alpha Red 27",
"MTG Alpha Red 28",
"MTG Alpha Red 29",
"MTG Alpha Red 30",
"MTG Alpha Red 31",
"MTG Alpha Red 32",
"MTG Alpha Red 33",
"MTG Alpha Red 34",
"MTG Alpha Red 35",
"MTG Alpha Red 36",
"MTG Alpha Red 37",
"MTG Alpha Red 38",
"MTG Alpha Red 39",
"MTG Alpha Red 40",
"MTG Alpha Red 41",
"MTG Alpha Red 42",
"MTG Alpha Red 43",
"MTG Alpha Red 44",
"MTG Alpha Red 45",
"MTG Alpha Red 46",
}

local alphaBlackLand = {
"MTG Alpha Black Land 1",
"MTG Alpha Black Land 2",
}

local alphaWhiteLand = {
"MTG Alpha White Land 1",
"MTG Alpha White Land 2",
}

local alphaGreenLand = {
"MTG Alpha Green Land 1",
"MTG Alpha Green Land 2",
}

local alphaBlueLand = {
"MTG Alpha Blue Land 1",
"MTG Alpha Blue Land 2",
}

local alphaRedLand = {
"MTG Alpha Red Land 1",
"MTG Alpha Red Land 2",
}

local alphaRareLand = {
"MTG Alpha Blue White Land 1",
"MTG Alpha Black Blue Land 1",
"MTG Alpha White Black Land 1",
"MTG Alpha Red Black Land 1",
"MTG Alpha Red White Land 1",
"MTG Alpha Green Red Land 1",
"MTG Alpha White Green Land 1",
"MTG Alpha Green Blue Land 1",
"MTG Alpha Black Green Land 1"
}

-- TODO: Rareness for booster packs. Is there a better way?
local alphaCommons = {}

local alphaUncommons = {}

local alphaRares = {}

local alphaLands = {
"MTG Alpha Red Land 1",
"MTG Alpha Red Land 2",
"MTG Alpha Blue Land 1",
"MTG Alpha Blue Land 2",
"MTG Alpha Green Land 1",
"MTG Alpha Green Land 2",
"MTG Alpha White Land 1",
"MTG Alpha White Land 2",
"MTG Alpha Black Land 1",
"MTG Alpha Black Land 2",
}



local mtgAlpha = {
    table.unpack(alphaArtifacts),
    table.unpack(alphaBlack),
    table.unpack(alphaWhite),
    table.unpack(alphaGreen),
    table.unpack(alphaBlue),
    table.unpack(alphaRed),
    table.unpack(alphaGreenLand),
    table.unpack(alphaWhiteLand),
    table.unpack(alphaBlueLand),
    table.unpack(alphaRedLand),
    table.unpack(alphaRareLand),
}

applyItemDetails.addDeck("mtgAlphaDeck", mtgAlpha)


local deckArchetypesList = {
    -- TODO: Add weights?
    -- mono decks
    "White", -- [1]
    "Black", -- [2]
    "Green", -- [3]
    "Blue",  -- [4]
    "Red", -- [5]
    
    -- duo decks
    "Azorius", --White/Blue -- [6]
    "Dimir", --Blue/Black -- [7]
    "Rakdos", --Black/Red -- [8]
    "Gruul", --Red/Green -- [9]
    "Selesnya", --White/Green -- [10]
    "Orzhov", --White/Black -- [11]
    "Izzet", --Blue/Red -- [12]
    "Golgari", --Black/Green -- [13]
    "Boros", --Red/White -- [14]
    "Simic", --Blue/Green -- [15]
    
    -- tri decks -- future option? too complex?
    --"Bant", --White/Blue/Green -- [16]
    --"Esper", --White/Blue/Black -- [17]
    --"Grixis", --Blue/Black/Red -- [18]
    --"Jund", --Black/Red/Green -- [19]
    --"Naya", --White/Red/Green -- [20]
    --"Abzan", --White/Black/Green -- [21]
    --"Jeskai", --White/Blue/Red -- [22]
    --"Sultai", --Blue/Black/Green -- [23]
    --"Mardu", --White/Black/Red -- [24]
    --"Temur", --Blue/Red/Green -- [25]

    -- Booster packs

    --"AlphaBoosterPack" -- 1 land, 10 common, 3 uncommon, 1 rare [26]
    
    }

    -- deck pre-construct shuffler
    local function shuffle(tbl)
        for i = #tbl, 2, -1 do
            local j = ZombRand(i)
            tbl[i], tbl[j] = tbl[j], tbl[i]
        end
        return tbl
    end

    local uniqueDeck = {}

    local randArchetype = ZombRand(1, #deckArchetypesList)
        local selectedDeck = deckArchetypesList[randArchetype]

        if selectedDeck == "White" then
            shuffle(mtgAlphaWhiteLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, mtgAlphaWhiteLand[i])
            end
            shuffle(mtgAlphaWhite)
            for i = 1, 36 do
                table.insert(uniqueDeck, mtgAlphaWhite[i])
            end

        elseif selectedDeck == "Black" then
            shuffle(mtgAlphaBlackLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, mtgAlphaBlackLand[i])
            end
            shuffle(mtgAlphaBlack)
            for i = 1, 36 do
                table.insert(uniqueDeck, mtgAlphaBlack[i])
            end

        elseif selectedDeck == "Green" then
            shuffle(mtgAlphaGreenLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, mtgAlphaGreenLand[i])
            end
            shuffle(mtgAlphaGreen)
            for i = 1, 36 do
                table.insert(uniqueDeck, mtgAlphaGreen[i])
            end

        elseif selectedDeck == "Blue" then
            shuffle(mtgAlphaBlackLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, mtgAlphaBlackLand[i])
            end
            shuffle(mtgAlphaBlack)
            for i = 1, 36 do
                table.insert(uniqueDeck, mtgAlphaBlack[i])
            end

        elseif selectedDeck == "Red" then
            shuffle(mtgAlphaRedLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, mtgAlphaRedLand[i])
            end
            shuffle(mtgAlphaRed)
            for i = 1, 36 do
                table.insert(uniqueDeck, mtgAlphaRed[i])
            end

        elseif selectedDeck == "Azorius" then
            shuffle(mtgAlphaWhiteLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaWhiteLand[i])
            end
            shuffle(mtgAlphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaBlueLand[i])
            end
            shuffle(mtgAlphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaBlue[i])
            end
            shuffle(mtgAlphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaWhite[i])
            end

        elseif selectedDeck == "Dimir" then
            shuffle(mtgAlphaBlackLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaBlackLand[i])
            end
            shuffle(mtgAlphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaBlueLand[i])
            end
            shuffle(mtgAlphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaBlue[i])
            end
            shuffle(mtgAlphaBlack)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaBlack[i])
            end

        elseif selectedDeck == "Rakdos" then
            shuffle(mtgAlphaBlackLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaBlackLand[i])
            end
            shuffle(mtgAlphaRedLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaRedLand[i])
            end
            shuffle(mtgAlphaBlack)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaBlack[i])
            end
            shuffle(mtgAlphaRed)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaRed[i])
            end

        elseif selectedDeck == "Gruul" then
            shuffle(mtgAlphaRedLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaRedLand[i])
            end
            shuffle(mtgAlphaGreenLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaGreenLand[i])
            end
            shuffle(mtgAlphaRed)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaRed[i])
            end
            shuffle(mtgAlphaGreen)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaGreen[i])
            end

        elseif selectedDeck == "Selesnya" then
            shuffle(mtgAlphaWhiteLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaWhiteLand[i])
            end
            shuffle(mtgAlphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaBlueLand[i])
            end
            shuffle(alphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaWhite[i])
            end
            shuffle(mtgAlphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaWhite[i])
            end

        elseif selectedDeck == "Orzhov" then
            shuffle(mtgAlphaWhiteLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaWhiteLand[i])
            end
            shuffle(mtgAlphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaBlueLand[i])
            end
            shuffle(mtgAlphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaBlue[i])
            end
            shuffle(mtgAlphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaWhite[i])
            end

        elseif selectedDeck == "Izzet" then
            shuffle(mtgAlphaRedLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaRedLand[i])
            end
            shuffle(mtgAlphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaBlueLand[i])
            end
            shuffle(mtgAlphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaBlue[i])
            end
            shuffle(mtgAlphaRed)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaRed[i])
            end

        elseif selectedDeck == "Golgari" then
            shuffle(mtgAlphaBlackLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaBlackLand[i])
            end
            shuffle(mtgAlphaGreenLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaGreenLand[i])
            end
            shuffle(mtgAlphaBlack)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaBlack[i])
            end
            shuffle(mtgAlphaGreen)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaGreen[i])
            end

        elseif selectedDeck == "Boros" then
            shuffle(mtgAlphaWhiteLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaWhiteLand[i])
            end
            shuffle(mtgAlphaRedLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaRedLand[i])
            end
            shuffle(mtgAlphaRed)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaRed[i])
            end
            shuffle(mtgAlphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaWhite[i])
            end

        elseif selectedDeck == "Simic" then
            shuffle(mtgAlphaGreenLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaGreenLand[i])
            end
            shuffle(mtgAlphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, mtgAlphaBlueLand[i])
            end
            shuffle(mtgAlphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaBlue[i])
            end
            shuffle(mtgAlphaGreen)
            for i = 1, 18 do
                table.insert(uniqueDeck, mtgAlphaGreen[i])
            end
        else
            print("Invalid archetype")
        end



        -- TODO SPECIAL CONTEXT MENU FUNCTION : Tapping (turning card sideways)
        -- function deckActionHandler.onTapCard(deckItem)

        --     local deckStates = deckActionHandler.getDeckStates(item)
        --         if deckStates then
        --     local tap = context:addOptionOnTop(getText("IGUI_tapCard"), item, deckActionHandler.tapCard, playerObj)
        --             tap.iconTexture = gamePieceContext.gameNightContextMenuIcon.tap
        
        --     local current = deckItem:getModData()["gameNight_rotation"] or 0
        --     local state = (current+90) % 360 or current
        
        --     gamePieceAndBoardHandler.setModDataValue(deckItem, "gameNight_rotation", state)
        --     end
    



