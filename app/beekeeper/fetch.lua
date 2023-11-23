local start = {
    X = -77,
    Y = 57,
    Z = -384
}

-- testing a comment change
local HivesPerPod = 5
local PodsPerRow = 7
local BlocksBetweenRows = 3
local BlocksBetweenPods = 1

local blockReaderDirection = "top"

local upgradeMap = {
    ["productivebees:upgrade_productivity"] = "Alpha",
    ["productivebees:upgrade_productivity_2"] = "Beta",
    ["productivebees:upgrade_productivity_3"] = "Gamma",
    ["productivebees:upgrade_productivity_4"] = "Omega",
    ["productivebees:upgrade_comb_block"] = "Block",
    ["productivebees:upgrade_simulator"] = "Simulator",
}

local output = {}

function fetchHiveData()
    local r = peripheral.wrap(blockReaderDirection)
    if r == nil then
        print("couldn't find a reader at " .. gps.locate())
        return
    end

    local hive = r.getBlockData()
    local hiveOutput = {}

    if hive["BeeList"] and hive["BeeList"]["Inhabitants"] then
        hiveOutput["Bees"] = {}
        -- loop over bees and add to hiveOutput
        for k, details in pairs(hive["BeeList"]["Inhabitants"]) do
            hiveOutput["Bees"][k] = {
                Name = details["Name"],
                Endurance = details["EntityData"]["bee_endurance"],
                Productivity = details["EntityData"]["bee_productivity"],
                Health = details["EntityData"]["Health"],
            }
        end
    end

    if hive["upgrades"] and hive["upgrades"]["Items"] then
        -- loop over items and add to hiveOutput
        hiveOutput["Upgrades"] = {}


        for k, details in pairs(hive["upgrades"]["Items"]) do
            local id = upgradeMap[details["id"]] or details["id"]

            if hiveOutput["Upgrades"][id] == nil then
                hiveOutput["Upgrades"][id] = { Name = id, Count = details["Count"] }
            else
                hiveOutput["Upgrades"][id]["Count"] = hiveOutput["Upgrades"][id]["Count"] + details["Count"]
            end
        end
    end

    return hiveOutput
end

function init()
    -- check that it's on the right block
    local x, y, z = gps.locate()
    if (start["X"] ~= x or start["Y"] ~= y or start["Z"] ~= z) then
        print("not at the start coords, exiting...")
        -- TODO: broadcast it's position to the main computer
        return
    end
    print("starting...")

    turtle.forward()

    output["Floor1"] = {}

    for p=1,PodsPerRow do
        print("pod: " .. p)
        output["Floor1"]["Pod" .. p] = {}
        for i=1,HivesPerPod do
            print("hive: " .. i)
            output["Floor1"]["Pod" .. p]["Hive" .. i] = fetchHiveData()
            turtle.forward()
        end

        for i=1,BlocksBetweenPods do
            turtle.forward()
        end
    end

    
    local outputFile = io.open('stored','w')
    outputFile:write(textutils.serialize(output))
    outputFile:close()

    -- send it to the main display computer(s)
    rednet.send(6, output)
end

init()
