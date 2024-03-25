local applyItemDetails = require "gameNight - applyItemDetails"

local MTG = {}

MTG.alpha = { --"MTG Alpha "

    ["Artifacts"] = {
        "Juggernaut", "Gauntlet of Might", "Glasses of Urza", "Jayemdae Tome", "Disrupting Scepter",
        "Conservator", "Sol Ring", "Sunglasses of Urza", "Wooden Sphere", "Black Lotus", "Mox Emerald",
        "Rod of Ruin", "Celestial Prism", "Throne of Bone", "Ivory Cup", "Winter Orb", "Mox Jet",
        "Chaos Orb", "Time Vault", "Mox Pearl", "Jade Statue", "Cyclopean Tomb", "Mox Ruby", "Mox Sapphire",
        "Black Vise", "Crystal Rod", "Basalt Monolith", "Dingus Egg", "Illusionary Mask", "Iron Star",
        "The Hive", "Howling Mine", "Obsianus Golem", "Living Wall", "Jade Monolith", "Kormus Bell",
        "Forcefield", "Helm of Chatzuk", "Copper Tablet", "Soul Net", "Icy Manipulator", "Clockwork Beast",
        "Library of Leng", "Mana Vault", "Meekstone", "Nevinyrral's Disk", "Ankh of Mishra",
    },

    ["Black"] = {
        "Demonic Attorney", "Nether Shadow", "Mind Twist", "Dark Ritual", "Scathe Zombies", "Darkpact",
        "Pestilence", "Frozen Shade", "Cursed Land", "Raise Dead", "Black Knight", "Paralyze", "Nightmare",
        "Hypnotic Specter", "Plague Rats", "Wall of Bone", "Gloom", "Will-O-The-Wisp", "Warp Artifact",
        "Contract from Below", "World of Command", "Unholy Strength", "Animate Dead", "Nettling Imp",
        "Demonic Tutor", "Deathlace", "Demonic Hordes", "Howl from Beyond", "Bog Wraith", "Drain Life",
        "Royal Assassin", "Sengir Vampire", "Bad Moon", "Scavenging Ghoul", "Lich", "Zombie Master",
        "Weakness", "Simulacrum", "Lord of the Pit", "Deathgrip ", "Drudge Skeletons", "Terror",
        "Sacrifice", "Fear", "Evil Presence", "Sinkhole",
    },

    ["White"] = {
        "Death Ward", "Serra Angel", "Blessing", "Samite Healer", "Mesa Pegasus", "Holy Strength",
        "Healing Salve", "Red Ward", "Lance", "Animate Wall", "Consecrate Land", "Righteousness",
        "Savannah Lions", "Veteran Bodyguard", "Personal Incarnation", "Island Sanctuary",
        "Circle of Protection: Red", "Castle", "Holy Armor", "Wrath of God", "Wall of Swords",
        "Blaze of Glory", "Reverse Damage", "Blue Ward", "Circle of Protection: White",
        "Circle of Protection: Blue", "Balance", "Karma", "Pearled Unicorn", "Northern Paladin",
        "Armageddon", "White Knight", "Ressurection", "White Ward", "Swords to Plowshares",
        "Farmstead", "Purelace", "Disenchant", "Green Ward", "Circle of Protection: Green",
        "Black Ward", "Conversion", "Benalish Hero", "Guardian Angel", "Crusade",
    },

    ["Green"] = {
        "Aspect of Wolf", "Wild Growth", "Ley Druid", "Thicket Basilisk", "Gaea's Liege", "Lifeforce",
        "Berserk", "Llanowar Elves", "Fog", "Grizzly Bears", "Wall of Ice", "Living Artifact", "War Mammoth",
        "Channel", "Craw Wurm", "Timber Wolves", "Regrowth", "Ironroot Treefolk", "Regenreation", "Kudzu",
        "Wall of Brambles", "Stream of Life", "Natural Selection", "Fastbond", "Verduran Enchantress",
        "Tsunami", "Cockatrice", "Ice Storm", "Wall of Wood", "Shanodin Dryads", "Living Lands", "Giant Spider",
        "Tranquility", "Scryb Sprites", "Instill Energy", "Fungusaur", "Birds of Paradise", "Hurricane",
        "Lifelace", "Camouflage", "Web", "Giant Growth", "Lure", "Wanderlust", "Force of Nature", "Elvish Archers",
    },

    ["Blue"] = {
        "Psychic Venom", "Clone", "Creature Bond", "Drain Power", "Prodigal Sorcerer", "Phantom Monster",
        "Time Walk", "Wall of Air", "Siren's Call", "Sleight of Mind", "Sea Serpent", "Pirate Ship",
        "Power Leak", "Jump", "Stasis", "Volcanic Eruption", "Psionic Blast", "Timetwister", "Water Elemental",
        "Unsummon", "Spell Blast", "Steal Artifact", "Control Magic", "Vesuvan Doppelganger", "Mana Short",
        "Ancestral Recall", "Air Elemental", "Flight", "Animate Artifact", "Braingeyser", "Twiddle",
        "Wall of Water", "Mahamoti Djinn", "Magical Hack", "Merfolk of the Pearl Trident", "Thoughtlace",
        "Lord of Atlantis", "Blue Elemental Blast", "Phantasmal Terrain", "Power Sink", "Invisibility",
        "Lifetap", "Feedback", "Counterspell", "Phantasmal Forces", "Copy Artifact",
    },

    ["Red"] = {
        "Shivan Dragon", "Granite Gargoyle", "Wall of Fire", "Flashfires", "Fork", "Earthquake", "Fire Elemental",
        "Lightning Bolt", "Ironclaw Orcs", "Fireball", "Mons's Goblin Raiders", "Earth Elemental", "Tunnel",
        "Sedge Troll", "Orcish Artillery", "Earthbind", "Burrowing", "Orcish Oriflamme", "Keldon Warlord",
        "Disintegrate", "Stone Giant", "Mana Flare", "False Orders", "Smoke", "Hurloon Minotaur",
        "Red Elemental Blast", "Gray Ogre", "Roc of Kher Ridges", "Chaoslace", "Dragon Whelp",
        "Wheel of Fortune", "Power Surge", "Raging River", "Manabarbs", "Goblin King", "Stone Rain",
        "Goblin balloon Brigade", "Shatter", "Rock Hydra", "Firebreathing", "Two-Handed Giant of Foriys",
        "Uthden Troll", "Dwarven Warriors", "Wall of Stone", "Hill Giant", "Dwarven Demolition Team",
    },

    ["Black Land"] = { "Swamp", "Swamp", },
    ["White Land"] = { "Plains", "Plains", },
    ["Green Land"] = { "Forest", "Forest", },
    ["Blue Land"] = { "Island", "Island", },
    ["Red Land"] = { "Mountain", "Mountain", },

    ["Blue White Land"] = { "Tundra" },
    ["Black Blue Land"] = { "Underground Sea" },
    ["White Black Land"] = { "Scrubland" },
    ["Red Black Land"] = { "Badlands" },
    ["Red White Land"] = { "Plateau" },
    ["Green Red Land"] = { "Taiga" },
    ["White Green Land"] = { "Savannah" },
    ["Green Blue Land"] = { "Tropical Island" },
    ["Black Green Land"] = { "Bayou" },

}

MTG.catalogue = {}
MTG.altNames = {}

local test = {set = {}}

--- Build entire catalogue as a deck
for set,cards in pairs(MTG.alpha) do

    if not test.set[set] then
        test.set[set] = true
        print(" SET: ", set, " ", #cards)
    end

    for i,card in pairs(cards) do
        local cardID = "MTG Alpha "..set.." "..i
        MTG.altNames[cardID] = card
        table.insert(MTG.catalogue, cardID)
    end
end

applyItemDetails.addDeck("mtgCards", MTG.catalogue, MTG.altNames)


local rares = {
    "Artifact 1", "Artifact 2", "Artifact 3", "Artifact 4", "Artifact 5", "Artifact 6", "Artifact 7", "Artifact 8",
    "Artifact 9", "Artifact 10", "Artifact 11", "Artifact 12", "Artifact 13", "Artifact 14", "Artifact 15",
    "Artifact 16", "Artifact 17", "Artifact 18", "Artifact 19", "Artifact 20", "Artifact 21", "Artifact 22",
    "Artifact 23", "Artifact 24", "Artifact 25", "Artifact 26", "Artifact 27",

    "Blue White Land 1", "Black Blue Land 1", "White Black Land 1", "Red Black Land 1", "Red White Land 1",
    "Green Red Land 1", "White Green Land 1", "Green Blue Land 1", "Black Green Land 1", "Black 33", "Black 20",
    "Black 6", "Black 26", "Black 1", "Black 27",
}

--TODO: Add the rest of the uncommon cards.
local uncommon = {
    "Artifact 28", "Artifact 29", "Artifact 30", "Artifact 31", "Artifact 32", "Artifact 33", "Artifact 34",
    "Artifact 35", "Artifact 36", "Artifact 37", "Artifact 38", "Artifact 39", "Artifact 40", "Artifact 41",
    "Artifact 42", "Artifact 43", "Artifact 44", "Artifact 45", "Artifact 46", "Artifact 47",
}

local lands = {
    "Red Land 1", "Red Land 2", "Blue Land 1", "Blue Land 2", "Green Land 1", "Green Land 2",
    "White Land 1", "White Land 2", "Black Land 1", "Black Land 2",
}




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

    "AlphaBoosterPack", -- 1 land, 10 common, 3 uncommon, 1 rare [16]
    "AlphaStarterPack", -- [17]

    -- tri decks -- future option? too complex?
    --"Bant", --White/Blue/Green
    --"Esper", --White/Blue/Black
    --"Grixis", --Blue/Black/Red
    --"Jund", --Black/Red/Green
    --"Naya", --White/Red/Green
    --"Abzan", --White/Black/Green
    --"Jeskai", --White/Blue/Red
    --"Sultai", --Blue/Black/Green
    --"Mardu", --White/Black/Red
    --"Temur", --Blue/Red/Green
    }

--[[

-- deck pre-construct shuffler
local function shuffle(tbl)
    for i = #tbl, 2, -1 do
        local j = ZombRand(i)
        tbl[i], tbl[j] = tbl[j], tbl[i]
    end
    return tbl
end


local function buildDeck()
    local uniqueDeck = {}

    -- TODO: Still need to figure out how to include artifacts in decks

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

    elseif selectedDeck == "AlphaBoosterPack" then
        shuffle(alphaCommons)
        for i = 1, 10 do
            table.insert(uniqueDeck, alphaCommons[i])
        end
        shuffle(alphaLands)
        for i = 1, 1 do
            table.insert(uniqueDeck, alphaLands[i])
        end
        shuffle(alphaUncommons)
        for i = 1, 3 do
            table.insert(uniqueDeck, alphaUncommons[i])
        end
        shuffle(alphaRares)
        for i = 1, 1 do
            table.insert(uniqueDeck, alphaRares[i])
        end

    elseif selectedDeck == "AlphaStarterPack" then
        shuffle(alphaLands)
        for i = 1, 22 do
            table.insert(uniqueDeck, alphaLands[i])
        end
        shuffle(alphaCommons)
        for i = 1, 30 do
            table.insert(uniqueDeck, alphaCommons[i])
        end
        shuffle(alphaUncommons)
        for i = 1, 12 do
            table.insert(uniqueDeck, alphaUncommons[i])
        end
        shuffle(alphaRares)
        for i = 1, 2 do
            table.insert(uniqueDeck, alphaRares[i])
        end

    else
        print("Invalid archetype")
    end
end
--]]

-- TODO: connect to applyGameNightToItem? Not sure how to do this
--cards = uniqueDeck
--deck = uniqueDeck

--[[
-- TODO SPECIAL CONTEXT MENU FUNCTION : Tapping (turning card sideways)
local deckActionHandler = require "gameNight - deckActionHandler"
local gamePieceAndBoardHandler = require "gameNight - gamePieceAndBoardHandler"
local gameNightPieceContextMenu = require "gameNight - gamePeiceAndBoardHandler"
--]]

--[[
function deckActionHandler.onTapCard(deckItem)
    local deckStates = deckActionHandler.getDeckStates(deckItem)
    if deckStates then
        local tap = context:addOptionOnTop(getText("IGUI_tapCard"), deckItem, deckActionHandler.tapCard, playerObj)
        tap.iconTexture = gamePieceContext.gameNightContextMenuIcon.tap

        local current = deckItem:getModData()["gameNight_rotation"] or 0
        local state = (current+90) % 360 or current

        gamePieceAndBoardHandler.setModDataValue(deckItem, "gameNight_rotation", state)
    end
end
--]]

    



