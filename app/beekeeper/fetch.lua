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
local Rows = 4

local blockReaderDirection = "top"

local upgradeMap = {
    ["productivebees:upgrade_productivity"] = "Alpha",
    ["productivebees:upgrade_productivity_2"] = "Beta",
    ["productivebees:upgrade_productivity_3"] = "Gamma",
    ["productivebees:upgrade_productivity_4"] = "Omega",
    ["productivebees:upgrade_comb_block"] = "Block",
    ["productivebees:upgrade_simulator"] = "Sim",
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

function go()
    print("starting...")
    print("fuel level at " .. turtle.getFuelLevel())

    if (turtle.getFuelLevel() < 2000) then
        print("Refueling...")
        turtle.suckDown()
        turtle.refuel()
        turtle.pushDown()
    end

    turtle.forward()

    output["Floor1"] = {}
    for r=1,Rows do
        print("row: " .. r)
        output["Floor1"]["Row" .. r] = {}
        for p=1,PodsPerRow do
            print("pod: " .. p)
            output["Floor1"]["Row" .. r]["Pod" .. p] = {}
            for i=1,HivesPerPod do
                print("hive: " .. i)
                output["Floor1"]["Row" .. r]["Pod" .. p]["Hive" .. i] = fetchHiveData()
                turtle.forward()
            end
    
            for i=1,BlocksBetweenPods do
                turtle.forward()
            end
        end
        if r == Rows then
            turtle.turnLeft()
            for i=1, 12 do
                turtle.forward()
            end
            turtle.turnLeft()
            turtle.forward()
        elseif r % 2 == 0 then
            turtle.turnRight()
            for i=1, BlocksBetweenRows+1 do
                turtle.forward()
            end
            turtle.turnRight()
            turtle.forward()
            turtle.forward()
        else
            turtle.turnLeft()
            for i=1, BlocksBetweenRows+1 do
                turtle.forward()
            end
            turtle.turnLeft()
            turtle.forward()
            turtle.forward()
        end
    end 

    local outputFile = io.open('stored','w')
    outputFile:write(textutils.serialize(output))
    outputFile:close()

    peripheral.find("modem", rednet.open)

    -- send it to the main display computer(s)
    print(rednet.send(6, output))
end

function init()
    -- check that it's on the right block
    local x, y, z = gps.locate()
    if (start["X"] ~= x or start["Y"] ~= y or start["Z"] ~= z) then
        print("not at the start coords, exiting...")
        -- TODO: broadcast it's position to the main computer
        return
    end

    while true do
        os.pullEvent("redstone")
        if rs.getInput("right") then
            go()
        end
        sleep(10)
    end
end

init()
