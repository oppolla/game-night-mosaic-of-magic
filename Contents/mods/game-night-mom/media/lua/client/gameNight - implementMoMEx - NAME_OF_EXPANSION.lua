--TODO: REMOVE THIS WHEN YOU MAKE YOUR OWN FILE.
if true then return end --TODO: REMOVE THIS WHEN YOU MAKE YOUR OWN FILE.
--TODO: REMOVE THIS WHEN YOU MAKE YOUR OWN FILE.

--- This file expansion file is required to be in /client/ to work.
--- Rename file to replace `NAME_OF_EXPANSION` in  `gameNight - implementMoMEx - NAME_OF_EXPANSION`

--- FOR ART
-- Place artwork with in a sub folder named `SETNAME` (to be changed) in `Item_momCards/`
--- For example: `Item_momCards/Prima/`
-- `SET NAME` should match the set you're adding.

-- This line is required as a means to load the MOM module.
local MOM = require "gameNight - implementMoM"

--- SETNAME needs to be equal to the directory inside of Item_momCards/
MOM.sets.SETNAME = {

    --- CARDS ARE SORTED BY COLOR, RELIC, AND DOMAINS
    cards = {
        ["Black"] = {
            "card name","card name",
        },

        ["White"] = {
            "card name","card name",
        },

        ["Green"] = {
            "card name","card name",
        },

        ["Red"] = {
            "card name","card name",
        },

        ["Blue"] = {
            "card name","card name",
        },

        ["Relics"] = {
            "card name","card name", --etc
        },

        --- Domains need to be their own "type" for each of the color (and combo)

        ["Black Domain"] = { "Swamp", "Swamp", "Swamp"},
        ["White Domain"] = { "Plains", "Plains", "Plains"},
        ["Green Domain"] = { "Forest", "Forest", "Forest"},
        ["Blue Domain"] = { "Island", "Island", "Island"},
        ["Red Domain"] = { "Mountain", "Mountain", "Mountain"},

        ["Blue White Domain"] = { "Tundra" },
        ["Black Blue Domain"] = { "Underground Sea" },
        ["White Black Domain"] = { "Scrubland" },
        ["Red Black Domain"] = { "Badlands" },
        ["Red White Domain"] = { "Plateau" },
        ["Green Red Domain"] = { "Taiga" },
        ["White Green Domain"] = { "Savannah" },
        ["Green Blue Domain"] = { "Tropical Island" },
        ["Black Green Domain"] = { "Bayou" },
        ["Blue Red Domain"] = { "Volcanic Island" },
    },

    ---RARITIES ARE LISTED TO MATCH THE CARDS' LIST - "RELICS 2" IS THE 2ND CARD IN THE RELICS LIST, ETC.
    rarities = {
        --- THESE ARE THE SAME AS THE TEXTURE FILE
        Rare = {
            "Relics 2", "Relics 5", "Relics 8", "Relics 11", "Relics 16", "Relics 17", "Relics 18",
        },

        Uncommon = {
            "Relics 1", "Relics 6", "Relics 7", "Relics 8", "Relics 9", "Relics 12", "Relics 13",
        },

        Common = {
            "Black 4", "Black 5", "Black 7", "Black 8", "Black 10", "Black 12", "Black 15", "Black 22", "Black 30",
        },

        --- The domains you want to be in circulation (Note the Prima set doesn't include combo domains)
        Domain = {
            "Red Domain 1", "Red Domain 2", "Red Domain 3", "Blue Domain 1", "Blue Domain 2", "Blue Domain 3",
        },
    }
}