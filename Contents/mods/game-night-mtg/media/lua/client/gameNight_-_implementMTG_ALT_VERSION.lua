local applyItemDetails = require "gameNight - applyItemDetails"
local deckActionHandler = require "gameNight - deckActionHandler"
local gamePieceAndBoardHandler = require "gameNight - gamePieceAndBoardHandler"
local gameNightPieceContextMenu = require "gameNight - gamePeiceAndBoardHandler"

-- IMAGE NAMES WILL NOT MATCH FILES IN TEXTURE FOLDER

local alphaArtifacts = {
"MTG_Alpha_Artifacts_1",
"MTG_Alpha_Artifacts_10",
"MTG_Alpha_Artifacts_11",
"MTG_Alpha_Artifacts_12",
"MTG_Alpha_Artifacts_13",
"MTG_Alpha_Artifacts_14",
"MTG_Alpha_Artifacts_15",
"MTG_Alpha_Artifacts_16",
"MTG_Alpha_Artifacts_17",
"MTG_Alpha_Artifacts_18",
"MTG_Alpha_Artifacts_19",
"MTG_Alpha_Artifacts_2",
"MTG_Alpha_Artifacts_20",
"MTG_Alpha_Artifacts_21",
"MTG_Alpha_Artifacts_22",
"MTG_Alpha_Artifacts_23",
"MTG_Alpha_Artifacts_24",
"MTG_Alpha_Artifacts_25",
"MTG_Alpha_Artifacts_26",
"MTG_Alpha_Artifacts_27",
"MTG_Alpha_Artifacts_28",
"MTG_Alpha_Artifacts_29",
"MTG_Alpha_Artifacts_3",
"MTG_Alpha_Artifacts_30",
"MTG_Alpha_Artifacts_31",
"MTG_Alpha_Artifacts_32",
"MTG_Alpha_Artifacts_33",
"MTG_Alpha_Artifacts_34",
"MTG_Alpha_Artifacts_35",
"MTG_Alpha_Artifacts_36",
"MTG_Alpha_Artifacts_37",
"MTG_Alpha_Artifacts_38",
"MTG_Alpha_Artifacts_39",
"MTG_Alpha_Artifacts_4",
"MTG_Alpha_Artifacts_40",
"MTG_Alpha_Artifacts_41",
"MTG_Alpha_Artifacts_42",
"MTG_Alpha_Artifacts_43",
"MTG_Alpha_Artifacts_44",
"MTG_Alpha_Artifacts_45",
"MTG_Alpha_Artifacts_46",
"MTG_Alpha_Artifacts_47",
"MTG_Alpha_Artifacts_5",
"MTG_Alpha_Artifacts_6",
"MTG_Alpha_Artifacts_7",
"MTG_Alpha_Artifacts_8",
"MTG_Alpha_Artifacts_9",
}

local alphaBlack = {
"MTG_Alpha_Black_1",
"MTG_Alpha_Black_10",
"MTG_Alpha_Black_11",
"MTG_Alpha_Black_12",
"MTG_Alpha_Black_13",
"MTG_Alpha_Black_14",
"MTG_Alpha_Black_15",
"MTG_Alpha_Black_16",
"MTG_Alpha_Black_17",
"MTG_Alpha_Black_18",
"MTG_Alpha_Black_19",
"MTG_Alpha_Black_2",
"MTG_Alpha_Black_20",
"MTG_Alpha_Black_21",
"MTG_Alpha_Black_22",
"MTG_Alpha_Black_23",
"MTG_Alpha_Black_24",
"MTG_Alpha_Black_25",
"MTG_Alpha_Black_26",
"MTG_Alpha_Black_27",
"MTG_Alpha_Black_28",
"MTG_Alpha_Black_29",
"MTG_Alpha_Black_3",
"MTG_Alpha_Black_30",
"MTG_Alpha_Black_31",
"MTG_Alpha_Black_32",
"MTG_Alpha_Black_33",
"MTG_Alpha_Black_34",
"MTG_Alpha_Black_35",
"MTG_Alpha_Black_36",
"MTG_Alpha_Black_37",
"MTG_Alpha_Black_38",
"MTG_Alpha_Black_39",
"MTG_Alpha_Black_4",
"MTG_Alpha_Black_40",
"MTG_Alpha_Black_41",
"MTG_Alpha_Black_42",
"MTG_Alpha_Black_43",
"MTG_Alpha_Black_44",
"MTG_Alpha_Black_45",
"MTG_Alpha_Black_46",
"MTG_Alpha_Black_5",
"MTG_Alpha_Black_6",
"MTG_Alpha_Black_7",
"MTG_Alpha_Black_8",
"MTG_Alpha_Black_9",
}

local alphaWhite = {
"MTG_Alpha_White_1",
"MTG_Alpha_White_10",
"MTG_Alpha_White_11",
"MTG_Alpha_White_12",
"MTG_Alpha_White_13",
"MTG_Alpha_White_14",
"MTG_Alpha_White_15",
"MTG_Alpha_White_16",
"MTG_Alpha_White_17",
"MTG_Alpha_White_18",
"MTG_Alpha_White_19",
"MTG_Alpha_White_2",
"MTG_Alpha_White_20",
"MTG_Alpha_White_21",
"MTG_Alpha_White_22",
"MTG_Alpha_White_23",
"MTG_Alpha_White_24",
"MTG_Alpha_White_25",
"MTG_Alpha_White_26",
"MTG_Alpha_White_27",
"MTG_Alpha_White_28",
"MTG_Alpha_White_29",
"MTG_Alpha_White_3",
"MTG_Alpha_White_30",
"MTG_Alpha_White_31",
"MTG_Alpha_White_32",
"MTG_Alpha_White_33",
"MTG_Alpha_White_34",
"MTG_Alpha_White_35",
"MTG_Alpha_White_36",
"MTG_Alpha_White_37",
"MTG_Alpha_White_38",
"MTG_Alpha_White_39",
"MTG_Alpha_White_4",
"MTG_Alpha_White_40",
"MTG_Alpha_White_41",
"MTG_Alpha_White_42",
"MTG_Alpha_White_43",
"MTG_Alpha_White_44",
"MTG_Alpha_White_45",
"MTG_Alpha_White_5",
"MTG_Alpha_White_6",
"MTG_Alpha_White_7",
"MTG_Alpha_White_8",
"MTG_Alpha_White_9",
}

local alphaGreen = {
"MTG_Alpha_Green_1",
"MTG_Alpha_Green_10",
"MTG_Alpha_Green_11",
"MTG_Alpha_Green_12",
"MTG_Alpha_Green_13",
"MTG_Alpha_Green_14",
"MTG_Alpha_Green_15",
"MTG_Alpha_Green_16",
"MTG_Alpha_Green_17",
"MTG_Alpha_Green_18",
"MTG_Alpha_Green_19",
"MTG_Alpha_Green_2",
"MTG_Alpha_Green_20",
"MTG_Alpha_Green_21",
"MTG_Alpha_Green_22",
"MTG_Alpha_Green_23",
"MTG_Alpha_Green_24",
"MTG_Alpha_Green_25",
"MTG_Alpha_Green_26",
"MTG_Alpha_Green_27",
"MTG_Alpha_Green_28",
"MTG_Alpha_Green_29",
"MTG_Alpha_Green_3",
"MTG_Alpha_Green_30",
"MTG_Alpha_Green_31",
"MTG_Alpha_Green_32",
"MTG_Alpha_Green_33",
"MTG_Alpha_Green_34",
"MTG_Alpha_Green_35",
"MTG_Alpha_Green_36",
"MTG_Alpha_Green_37",
"MTG_Alpha_Green_38",
"MTG_Alpha_Green_39",
"MTG_Alpha_Green_4",
"MTG_Alpha_Green_40",
"MTG_Alpha_Green_41",
"MTG_Alpha_Green_42",
"MTG_Alpha_Green_43",
"MTG_Alpha_Green_44",
"MTG_Alpha_Green_45",
"MTG_Alpha_Green_46",
"MTG_Alpha_Green_5",
"MTG_Alpha_Green_6",
"MTG_Alpha_Green_7",
"MTG_Alpha_Green_8",
"MTG_Alpha_Green_9",
}

local alphaBlue = {
"MTG_Alpha_Blue_1",
"MTG_Alpha_Blue_10",
"MTG_Alpha_Blue_11",
"MTG_Alpha_Blue_12",
"MTG_Alpha_Blue_13",
"MTG_Alpha_Blue_14",
"MTG_Alpha_Blue_15",
"MTG_Alpha_Blue_16",
"MTG_Alpha_Blue_17",
"MTG_Alpha_Blue_18",
"MTG_Alpha_Blue_19",
"MTG_Alpha_Blue_2",
"MTG_Alpha_Blue_20",
"MTG_Alpha_Blue_21",
"MTG_Alpha_Blue_22",
"MTG_Alpha_Blue_23",
"MTG_Alpha_Blue_24",
"MTG_Alpha_Blue_25",
"MTG_Alpha_Blue_26",
"MTG_Alpha_Blue_27",
"MTG_Alpha_Blue_28",
"MTG_Alpha_Blue_29",
"MTG_Alpha_Blue_3",
"MTG_Alpha_Blue_30",
"MTG_Alpha_Blue_31",
"MTG_Alpha_Blue_32",
"MTG_Alpha_Blue_33",
"MTG_Alpha_Blue_34",
"MTG_Alpha_Blue_35",
"MTG_Alpha_Blue_36",
"MTG_Alpha_Blue_37",
"MTG_Alpha_Blue_38",
"MTG_Alpha_Blue_39",
"MTG_Alpha_Blue_4",
"MTG_Alpha_Blue_40",
"MTG_Alpha_Blue_41",
"MTG_Alpha_Blue_42",
"MTG_Alpha_Blue_43",
"MTG_Alpha_Blue_44",
"MTG_Alpha_Blue_45",
"MTG_Alpha_Blue_46",
"MTG_Alpha_Blue_5",
"MTG_Alpha_Blue_6",
"MTG_Alpha_Blue_7",
"MTG_Alpha_Blue_8",
"MTG_Alpha_Blue_9",
}

local alphaRed = {
"MTG_Alpha_Red_1",
"MTG_Alpha_Red_10",
"MTG_Alpha_Red_11",
"MTG_Alpha_Red_12",
"MTG_Alpha_Red_13",
"MTG_Alpha_Red_14",
"MTG_Alpha_Red_15",
"MTG_Alpha_Red_16",
"MTG_Alpha_Red_17",
"MTG_Alpha_Red_18",
"MTG_Alpha_Red_19",
"MTG_Alpha_Red_2",
"MTG_Alpha_Red_20",
"MTG_Alpha_Red_21",
"MTG_Alpha_Red_22",
"MTG_Alpha_Red_23",
"MTG_Alpha_Red_24",
"MTG_Alpha_Red_25",
"MTG_Alpha_Red_26",
"MTG_Alpha_Red_27",
"MTG_Alpha_Red_28",
"MTG_Alpha_Red_29",
"MTG_Alpha_Red_3",
"MTG_Alpha_Red_30",
"MTG_Alpha_Red_31",
"MTG_Alpha_Red_32",
"MTG_Alpha_Red_33",
"MTG_Alpha_Red_34",
"MTG_Alpha_Red_35",
"MTG_Alpha_Red_36",
"MTG_Alpha_Red_37",
"MTG_Alpha_Red_38",
"MTG_Alpha_Red_39",
"MTG_Alpha_Red_4",
"MTG_Alpha_Red_40",
"MTG_Alpha_Red_41",
"MTG_Alpha_Red_42",
"MTG_Alpha_Red_43",
"MTG_Alpha_Red_44",
"MTG_Alpha_Red_45",
"MTG_Alpha_Red_46",
"MTG_Alpha_Red_5",
"MTG_Alpha_Red_6",
"MTG_Alpha_Red_7",
"MTG_Alpha_Red_8",
"MTG_Alpha_Red_9",
}

local alphaBlackLand = {
"MTG_Alpha_Black_Land_1",
"MTG_Alpha_Black_Land_2",
}

local alphaWhiteLand = {
"MTG_Alpha_White_Land_1",
"MTG_Alpha_White_Land_2",
}

local alphaGreenLand = {
"MTG_Alpha_Green_Land_1",
"MTG_Alpha_Green_Land_2",
}

local alphaBlueLand = {
"MTG_Alpha_Blue_Land_1",
"MTG_Alpha_Blue_Land_2",
}

local alphaRedLand = {
"MTG_Alpha_Red_Land_1",
"MTG_Alpha_Red_Land_2",
}

local alphaRareLand = {
"MTG_Alpha_Red_White_Land_1",
"MTG_Alpha_Red_Black_Land_1",
"MTG_Alpha_White_Black_Land_1",
"MTG_Alpha_White_Green_Land_1",
"MTG_Alpha_Green_Red_Land_1",
"MTG_Alpha_Green_Blue_Land_1",
"MTG_Alpha_Blue_White_Land_1",
"MTG_Alpha_Black_Blue_Land_1",
"MTG_Alpha_Black_Green_Land_1",
}

local alphaAll = {
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



applyItemDetails.MTG_alphaAll("MTG_AlphaAll", alphaAll) -- for registering entire deck

--applyItemDetails.addDeck_alphaArtifacts("MTG_alphaArtifacts", alphaArtifacts)
--applyItemDetails.addDeck_alphaBlack("MTG_alphaBlack", alphaBlack)
--applyItemDetails.addDeck_alphaWhite("MTG_alphaWhite", alphaWhite)
--applyItemDetails.addDeck_alphaGreen("MTG_alphaGreen", alphaGreen)
--applyItemDetails.addDeck_alphaBlue("MTG_alphaBlue", alphaBlue)
--applyItemDetails.addDeck_alphaRed("MTG_alphaRed", alphaRed)
--applyItemDetails.addDeck_alphaGreenLand("MTG_alphaGreenLand", alphaGreenLand)
--applyItemDetails.addDeck_alphaWhiteLand("MTG_alphaWhiteLand", alphaWhiteLand)
--applyItemDetails.addDeck_alphaBlueLand("MTG_alphaBlueLand", alphaBlueLand)
--applyItemDetails.addDeck_alphaRedLand("MTG_Artifacts", alphaRedLand)
--applyItemDetails.addDeck_alphaRareLand("MTG_alphaRedLand", alphaRareLand)

local deckArchetypesList = {
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
    
    }

    local applyItemDetails = {}

    applyItemDetails.deckCatalogues = {}
    applyItemDetails.altDetails = {} --altNames, altIcons

    -- register all cards in deck
    function applyItemDetails.MTG_alphaAll(name, cards, altNames, altIcons)
    applyItemDetails.deckCatalogues[name] = cards

    if altNames or altIcons then
        applyItemDetails.altDetails[name] = {}
        if altNames then applyItemDetails.altDetails[name].altNames = altNames end
        if altIcons then applyItemDetails.altDetails[name].altIcons = altIcons end
        end
    end

    -- random string select
    local function shuffle(tbl)
        for i = #tbl, 2, -1 do
            local j = ZombRand(i)
            tbl[i], tbl[j] = tbl[j], tbl[i]
        end
        return tbl
    end

    -- deck recipes
    local uniqueDeck = {}

    function applyItemDetails.selectDeckArchetype()
        local randArchetype = ZombRand(1, #deckArchetypesList)
        local selectedDeck = deckArchetypesList[randArchetype]

        if selectedDeck == "White" then
            shuffle(alphaWhiteLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, alphaWhiteLand[i])
            end
            shuffle(alphaWhite)
            for i = 1, 36 do
                table.insert(uniqueDeck, alphaWhite[i])
            end

        elseif selectedDeck == "Black" then
            shuffle(alphaBlackLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, alphaBlackLand[i])
            end
            shuffle(alphaBlack)
            for i = 1, 36 do
                table.insert(uniqueDeck, alphaBlack[i])
            end

        elseif selectedDeck == "Green" then
            shuffle(alphaGreenLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, alphaGreenLand[i])
            end
            shuffle(alphaGreen)
            for i = 1, 36 do
                table.insert(uniqueDeck, alphaGreen[i])
            end

        elseif selectedDeck == "Blue" then
            shuffle(alphaBlackLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, alphaBlackLand[i])
            end
            shuffle(alphaBlack)
            for i = 1, 36 do
                table.insert(uniqueDeck, alphaBlack[i])
            end

        elseif selectedDeck == "Red" then
            shuffle(alphaRedLand)
            for i = 1, 24 do
                table.insert(uniqueDeck, alphaRedLand[i])
            end
            shuffle(alphaRed)
            for i = 1, 36 do
                table.insert(uniqueDeck, alphaRed[i])
            end

        elseif selectedDeck == "Azorius" then
            shuffle(alphaWhiteLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaWhiteLand[i])
            end
            shuffle(alphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaBlueLand[i])
            end
            shuffle(alphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaBlue[i])
            end
            shuffle(alphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaWhite[i])
            end

        elseif selectedDeck == "Dimir" then
            shuffle(alphaBlackLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaBlackLand[i])
            end
            shuffle(alphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaBlueLand[i])
            end
            shuffle(alphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaBlue[i])
            end
            shuffle(alphaBlack)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaBlack[i])
            end

        elseif selectedDeck == "Rakdos" then
            shuffle(alphaBlackLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaBlackLand[i])
            end
            shuffle(alphaRedLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaRedLand[i])
            end
            shuffle(alphaBlack)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaBlack[i])
            end
            shuffle(alphaRed)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaRed[i])
            end

        elseif selectedDeck == "Gruul" then
            shuffle(alphaRedLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaRedLand[i])
            end
            shuffle(alphaGreenLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaGreenLand[i])
            end
            shuffle(alphaRed)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaRed[i])
            end
            shuffle(alphaGreen)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaGreen[i])
            end

        elseif selectedDeck == "Selesnya" then
            shuffle(alphaWhiteLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaWhiteLand[i])
            end
            shuffle(alphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaBlueLand[i])
            end
            shuffle(alphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaWhite[i])
            end
            shuffle(alphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaWhite[i])
            end

        elseif selectedDeck == "Orzhov" then
            shuffle(alphaWhiteLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaWhiteLand[i])
            end
            shuffle(alphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaBlueLand[i])
            end
            shuffle(alphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaBlue[i])
            end
            shuffle(alphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaWhite[i])
            end

        elseif selectedDeck == "Izzet" then
            shuffle(alphaRedLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaRedLand[i])
            end
            shuffle(alphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaBlueLand[i])
            end
            shuffle(alphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaBlue[i])
            end
            shuffle(alphaRed)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaRed[i])
            end

        elseif selectedDeck == "Golgari" then
            shuffle(alphaBlackLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaBlackLand[i])
            end
            shuffle(alphaGreenLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaGreenLand[i])
            end
            shuffle(alphaBlack)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaBlack[i])
            end
            shuffle(alphaGreen)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaGreen[i])
            end

        elseif selectedDeck == "Boros" then
            shuffle(alphaWhiteLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaWhiteLand[i])
            end
            shuffle(alphaRedLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaRedLand[i])
            end
            shuffle(alphaRed)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaRed[i])
            end
            shuffle(alphaWhite)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaWhite[i])
            end

        elseif selectedDeck == "Simic" then
            shuffle(alphaGreenLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaGreenLand[i])
            end
            shuffle(alphaBlueLand)
            for i = 1, 12 do
                table.insert(uniqueDeck, alphaBlueLand[i])
            end
            shuffle(alphaBlue)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaBlue[i])
            end
            shuffle(alphaGreen)
            for i = 1, 18 do
                table.insert(uniqueDeck, alphaGreen[i])
            end
        else
            print("Invalid archetype")
        end
    
        return uniqueDeck
    end

    -- connect to applyGameNightToItem??
    deck = uniqueDeck

    -- add tap card
    local deckActionHandler = require "gameNight - deckActionHandler"

function deckActionHandler.onTapCard(deckItem)

    local deckStates = deckActionHandler.getDeckStates(item)
        if deckStates then
    local tap = context:addOptionOnTop(getText("IGUI_tapCard"), item, deckActionHandler.tapCard, playerObj)
            tap.iconTexture = gamePieceContext.gameNightContextMenuIcon.tap

	local current = deckItem:getModData()["gameNight_rotation"] or 0
	local state = (current+90) % 360 or current

	gamePieceAndBoardHandler.setModDataValue(deckItem, "gameNight_rotation", state)
    end
end





















        



       




    

