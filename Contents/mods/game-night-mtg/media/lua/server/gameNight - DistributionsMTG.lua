require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"

gameNightDistro.proceduralDistGameNight.itemsToAdd["mtgStarterKit"] = {
    chanceFactor = 0.5,
    perDistFactor = {
        ["ClassroomDesk"] = 0.001,
        ["BedroomDresser"] = 0.001,
        ["ClassroomMisc"] = 0.001,
        ["SchoolLockers"] = 0.001,
        ["OfficeDeskHome"]=0,
        ["BarCounterMisc"]=0,
        ["Hobbies"]=0.001,
        ["WardrobeChild"]=0.001,
        ["CrateRandomJunk"]=0.001,
    }
}

gameNightDistro.proceduralDistGameNight.itemsToAdd["mtgBoosterPack"] = {
    chanceFactor = 0.5,
    perDistFactor = {
        ["ClassroomDesk"] = 0.001,
        ["BedroomDresser"] = 0.001,
        ["ClassroomMisc"] = 0.001,
        ["SchoolLockers"] = 0.001,
        ["OfficeDeskHome"]=0,
        ["BarCounterMisc"]=0,
        ["Hobbies"]=0.001,
        ["WardrobeChild"]=0.001,
        ["CrateRandomJunk"]=0.001,
    }
}

gameNightDistro.proceduralDistGameNight.itemsToAdd["mtgCards"] = {
    chanceFactor = 0.5,
    perDistFactor = {
        ["Gifts"]=0,
        ["GigamartToys"]=0,
        ["HolidayStuff"]=0,
    }
}