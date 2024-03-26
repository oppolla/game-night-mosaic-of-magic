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
    "MTG Alpha Artifacts 2", -- Gauntlet of Might
    "MTG Alpha Artifacts 5", -- Disrupting Scepter
    "MTG Alpha Artifacts 8", -- Sunglasses of Urza
    "MTG Alpha Artifacts 11", -- Mox Emerald
    "MTG Alpha Artifacts 16", -- Winter Orb
    "MTG Alpha Artifacts 17", -- Mox Jet
    "MTG Alpha Artifacts 18", -- Chaos Orb
    "MTG Alpha Artifacts 19", -- Time Vault
    "MTG Alpha Artifacts 20", -- Mox Pearl
    "MTG Alpha Artifacts 22", -- Cyclopean Tomb
    "MTG Alpha Artifacts 23", -- Mox Ruby
    "MTG Alpha Artifacts 28", -- Dingus Egg
    "MTG Alpha Artifacts 29", -- Illusionary Mask
    "MTG Alpha Artifacts 35", -- Jade Monolith
    "MTG Alpha Artifacts 36", -- Kormus Bell
    "MTG Alpha Artifacts 37", -- Forcefield
    "MTG Alpha Artifacts 38", -- Helm of Chatzuk
    "MTG Alpha Artifacts 44", -- Mana Vault
    "MTG Alpha Artifacts 45", -- Meekstone
    "MTG Alpha Black 2", -- Nether Shadow
    "MTG Alpha Black 3", -- Mind Twist
    "MTG Alpha Black 6", -- Darkpact
    "MTG Alpha Black 18", -- Will-O-The-Wisp
    "MTG Alpha Black 19", -- Warp Artifact
    "MTG Alpha Black 20", -- Contract from Below
    "MTG Alpha Black 21", -- Word of Command
    "MTG Alpha Black 26", -- Deathlace
    "MTG Alpha Black 36", -- Zombie Master
    "MTG Alpha Black Blue Land 1", -- Underground Sea
    "MTG Alpha Black Green Land 1", -- Bayou
    "MTG Alpha Blue 4", -- Drain Power
    "MTG Alpha Blue 7", -- Time Walk
    "MTG Alpha Blue 10", -- Sleight of Mind
    "MTG Alpha Blue 12", -- Pirate Ship
    "MTG Alpha Blue 15", -- Stasis
    "MTG Alpha Blue 16", -- Volcanic Eruption
    "MTG Alpha Blue 18", -- Timetwister
    "MTG Alpha Blue 25", -- Mana Short
    "MTG Alpha Blue 26", -- Ancestral Recall
    "MTG Alpha Blue 33", -- Mahamoti Djinn
    "MTG Alpha Blue 34", -- Magical Hack
    "MTG Alpha Blue 37", -- Lord of Atlantis
    "MTG Alpha Blue 46", -- Copy Artifact
    "MTG Alpha Blue White Land 1", -- Tundra
    "MTG Alpha Green 5", -- Gaea's Liege
    "MTG Alpha Green 16", -- Timber Wolves
    "MTG Alpha Green 20", -- Kudzu
    "MTG Alpha Green 23", -- Natural Selection
    "MTG Alpha Green 25", -- Verduran Enchantress
    "MTG Alpha Green 27", -- Cockatrice
    "MTG Alpha Green 31", -- Living Lands
    "MTG Alpha Green 37", -- Birds of Paradise
    "MTG Alpha Green 39", -- Lifelace
    "MTG Alpha Green 41", -- Web
    "MTG Alpha Green 45", -- Force of Nature
    "MTG Alpha Green Blue Land 1", -- Tropical Island
    "MTG Alpha Green Red Land 1", -- Taiga
    "MTG Alpha Red 1", -- Shivan Dragon
    "MTG Alpha Red 2", -- Granite Gargoyle
    "MTG Alpha Red 5", -- Fork
    "MTG Alpha Red 6", -- Earthquake
    "MTG Alpha Red 22", -- Mana Flare
    "MTG Alpha Red 24", -- Smoke
    "MTG Alpha Red 31", -- Wheel of Fortune
    "MTG Alpha Red 32", -- Power Surge
    "MTG Alpha Red 33", -- Raging River
    "MTG Alpha Red 34", -- Manabarbs
    "MTG Alpha Red 35", -- Goblin King
    "MTG Alpha Red 39", -- Rock Hydra
    "MTG Alpha Red Black Land 1", -- Badlands
    "MTG Alpha Red White Land 1", -- Plateau
    "MTG Alpha White 3", -- Blessing
    "MTG Alpha White 12", -- Righteousness
    "MTG Alpha White 13", -- Savannah Lions
    "MTG Alpha White 14", -- Veteran Bodyguard
    "MTG Alpha White 15", -- Personal Incarnation
    "MTG Alpha White 20", -- Wrath of God
    "MTG Alpha White 22", -- Blaze of Glory
    "MTG Alpha White 27", -- Balance
    "MTG Alpha White 31", -- Armageddon
    "MTG Alpha White Black Land 1", -- Scrubland
    "MTG Alpha White Green Land 1", -- Savannah
}

local uncommon = {
    "MTG Alpha Artifacts 1", -- Juggernaut
    "MTG Alpha Artifacts 6", -- Conservator
    "MTG Alpha Artifacts 7", -- Sol Ring
    "MTG Alpha Artifacts 8", -- Sunglasses of Urza
    "MTG Alpha Artifacts 9", -- Wooden Sphere
    "MTG Alpha Artifacts 12", -- Rod of Ruin
    "MTG Alpha Artifacts 13", -- Celestial Prism
    "MTG Alpha Artifacts 14", -- Throne of Bone
    "MTG Alpha Artifacts 15", -- Ivory Cup
    "MTG Alpha Artifacts 21", -- Jade Statue
    "MTG Alpha Artifacts 25", -- Black Vise
    "MTG Alpha Artifacts 26", -- Crystal Rod
    "MTG Alpha Artifacts 27", -- Basalt Monolith
    "MTG Alpha Artifacts 30", -- Iron Star
    "MTG Alpha Artifacts 33", -- Obsianus Golem
    "MTG Alpha Artifacts 34", -- Living Wall
    "MTG Alpha Artifacts 39", -- Copper Tablet
    "MTG Alpha Artifacts 40", -- Soul Net
    "MTG Alpha Artifacts 41", -- Icy Manipulator
    "MTG Alpha Artifacts 43", -- Library of Leng
    "MTG Alpha Black 9", -- Cursed Land
    "MTG Alpha Black 11", -- Black Knight
    "MTG Alpha Black 14", -- Hypnotic Specter
    "MTG Alpha Black 16", -- Wall of Bone
    "MTG Alpha Black 17", -- Gloom
    "MTG Alpha Black 23", -- Animate Dead
    "MTG Alpha Black 24", -- Nettling Imp
    "MTG Alpha Black 25", -- Demonic Tutor
    "MTG Alpha Black 29", -- Bog Wraith
    "MTG Alpha Black 32", -- Sengir Vampire
    "MTG Alpha Black 34", -- Scavenging Ghoul
    "MTG Alpha Black 38", -- Simulacrum
    "MTG Alpha Black 40", -- Deathgrip
    "MTG Alpha Black 43", -- Sacrifice
    "MTG Alpha Black 45", -- Evil Presence
    "MTG Alpha Blue 2", -- Clone
    "MTG Alpha Blue 8", -- Wall of Air
    "MTG Alpha Blue 9", -- Siren's Call
    "MTG Alpha Blue 17", -- Psionic Blast
    "MTG Alpha Blue 19", -- Water Elemental
    "MTG Alpha Blue 22", -- Steal Artifact
    "MTG Alpha Blue 23", -- Control Magic
    "MTG Alpha Blue 27", -- Air Elemental
    "MTG Alpha Blue 29", -- Animate Artifact
    "MTG Alpha Blue 32", -- Wall of Water
    "MTG Alpha Blue 42", -- Lifetap
    "MTG Alpha Blue 43", -- Feedback
    "MTG Alpha Blue 44", -- Counterspell
    "MTG Alpha Blue 45", -- Phantasmal Forces
    "MTG Alpha Green 3", -- Ley Druid
    "MTG Alpha Green 4", -- Thicket Basilisk
    "MTG Alpha Green 6", -- Lifeforce
    "MTG Alpha Green 7", -- Berserk
    "MTG Alpha Green 11", -- Wall of Ice
    "MTG Alpha Green 14", -- Channel
    "MTG Alpha Green 17", -- Regrowth
    "MTG Alpha Green 21", -- Wall of Brambles
    "MTG Alpha Green 26", -- Tsunami
    "MTG Alpha Green 28", -- Ice Storm
    "MTG Alpha Green 35", -- Instill Energy
    "MTG Alpha Green 38", -- Hurricane
    "MTG Alpha Green 40", -- Camouflage
    "MTG Alpha Green 43", -- Lure
    "MTG Alpha Green 44", -- Wanderlust
    "MTG Alpha Red 3", -- Wall of Fire
    "MTG Alpha Red 4", -- Flashfires
    "MTG Alpha Red 7", -- Fire Elemental
    "MTG Alpha Red 12", -- Earth Elemental
    "MTG Alpha Red 13", -- Tunnel
    "MTG Alpha Red 15", -- Orcish Artillery
    "MTG Alpha Red 17", -- Burrowing
    "MTG Alpha Red 18", -- Orcish Oriflamme
    "MTG Alpha Red 19", -- Keldon Warlord
    "MTG Alpha Red 21", -- Stone Giant
    "MTG Alpha Red 30", -- Dragon Whelp
    "MTG Alpha Red 37", -- Goblin balloon Brigade
    "MTG Alpha Red 42", -- Uthden Troll
    "MTG Alpha Red 44", -- Wall of Stone
    "MTG Alpha Red 46", -- Dwarven Demolition Team
    "MTG Alpha White 2", -- Serra Angel
    "MTG Alpha White 8", -- Red Ward
    "MTG Alpha White 9", -- Lance
    "MTG Alpha White 11", -- Consecrate Land
    "MTG Alpha White 18", -- Castle
    "MTG Alpha White 21", -- Wall of Swords
    "MTG Alpha White 24", -- Blue Ward
    "MTG Alpha White 28", -- Karma
    "MTG Alpha White 32", -- White Knight
    "MTG Alpha White 33", -- Resurrection
    "MTG Alpha White 34", -- White Ward
    "MTG Alpha White 35", -- Swords to Plowshares
    "MTG Alpha White 39", -- Green Ward
    "MTG Alpha White 41", -- Black Ward
    "MTG Alpha White 42", -- Conversion
}

local common = {
    "MTG Alpha Black 4", -- Dark Ritual
    "MTG Alpha Black 5", -- Scathe Zombies
    "MTG Alpha Black 7", -- Pestilence
    "MTG Alpha Black 8", -- Frozen Shade
    "MTG Alpha Black 10", -- Raise Dead
    "MTG Alpha Black 12", -- Paralyze
    "MTG Alpha Black 15", -- Plague Rats
    "MTG Alpha Black 22", -- Unholy Strength
    "MTG Alpha Black 30", -- Drain Life
    "MTG Alpha Black 37", -- Weakness
    "MTG Alpha Black 41", -- Drudge Skeletons
    "MTG Alpha Black 42", -- Terror
    "MTG Alpha Black 44", -- Fear
    "MTG Alpha Black 46", -- Sinkhole
    "MTG Alpha Blue 1", -- Psychic Venom
    "MTG Alpha Blue 3", -- Creature Bond
    "MTG Alpha Blue 5", -- Prodigal Sorcerer
    "MTG Alpha Blue 11", -- Sea Serpent
    "MTG Alpha Blue 13", -- Power Leak
    "MTG Alpha Blue 14", -- Jump
    "MTG Alpha Blue 20", -- Unsummon
    "MTG Alpha Blue 21", -- Spell Blast
    "MTG Alpha Blue 28", -- Flight
    "MTG Alpha Blue 31", -- Twiddle
    "MTG Alpha Blue 35", -- Merfolk of the Pearl Trident
    "MTG Alpha Blue 38", -- Blue Elemental Blast
    "MTG Alpha Blue 39", -- Phantasmal Terrain
    "MTG Alpha Blue 40", -- Power Sink
    "MTG Alpha Blue 41", -- Invisibility
    "MTG Alpha Green 2", -- Wild Growth
    "MTG Alpha Green 8", -- Llanowar Elves
    "MTG Alpha Green 9", -- Fog
    "MTG Alpha Green 10", -- Grizzly Bears
    "MTG Alpha Green 13", -- War Mammoth
    "MTG Alpha Green 15", -- Craw Wurm
    "MTG Alpha Green 18", -- Ironroot Treefolk
    "MTG Alpha Green 19", -- Regeneration
    "MTG Alpha Green 22", -- Stream of Life
    "MTG Alpha Green 30", -- Shanodin Dryads
    "MTG Alpha Green 32", -- Giant Spider
    "MTG Alpha Green 33", -- Tranquility
    "MTG Alpha Green 34", -- Scryb Sprites
    "MTG Alpha Green 42", -- Giant Growth
    "MTG Alpha Red 8", -- Lightning Bolt
    "MTG Alpha Red 9", -- Ironclaw Orcs
    "MTG Alpha Red 10", -- Fireball
    "MTG Alpha Red 11", -- Mons's Goblin Raiders
    "MTG Alpha Red 16", -- Earthbind
    "MTG Alpha Red 20", -- Disintegrate
    "MTG Alpha Red 23", -- False Orders
    "MTG Alpha Red 25", -- Hurloon Minotaur
    "MTG Alpha Red 26", -- Red Elemental Blast
    "MTG Alpha Red 27", -- Gray Ogre
    "MTG Alpha Red 36", -- Stone Rain
    "MTG Alpha Red 38", -- Shatter
    "MTG Alpha Red 40", -- Firebreathing
    "MTG Alpha Red 43", -- Dwarven Warriors
    "MTG Alpha Red 45", -- Hill Giant
    "MTG Alpha White 1", -- Death Ward
    "MTG Alpha White 4", -- Samite Healer
    "MTG Alpha White 5", -- Mesa Pegasus
    "MTG Alpha White 7", -- Healing Salve
    "MTG Alpha White 17", -- Circle of Protection: Red
    "MTG Alpha White 19", -- Holy Armor
    "MTG Alpha White 25", -- Circle of Protection: White
    "MTG Alpha White 26", -- Circle of Protection: Blue
    "MTG Alpha White 29", -- Pearled Unicorn
    "MTG Alpha White 38", -- Disenchant
    "MTG Alpha White 40", -- Circle of Protection: Green
    "MTG Alpha White 43", -- Benalish Hero
    "MTG Alpha White 44", -- Guardian Angel
}

local lands = {
    "MTG Alpha Red Land 1", -- Mountain
    "MTG Alpha Red Land 2", -- Mountain
    "MTG Alpha Blue Land 1", -- Island
    "MTG Alpha Blue Land 2", -- Island
    "MTG Alpha Green Land 1", -- Forest
    "MTG Alpha Green Land 2", -- Forest
    "MTG Alpha White Land 1", -- Plains
    "MTG Alpha White Land 2", -- Plains
    "MTG Alpha Black Land 1", -- Swamp
    "MTG Alpha Black Land 2", -- Swamp
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