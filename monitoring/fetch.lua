local start = {
    X = -77,
    Y = 57,
    Z = -384
}

local blockReaderDirection = "top"

local output = {}

function fetchHiveData()
    local hive = peripheral.wrap(blockReaderDirection).getBlockData()
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
    output["Floor1"]["Pod1"] = {}

    for i=1,5 do
        print(i)
        output["Floor1"]["Pod1"]["Hive" .. i] = fetchHiveData()
        turtle.forward()
    end
    
    local outputFile = io.open('stored','w')
    outputFile:write(textutils.serialize(output))
    outputFile:close()

    for i=1,6 do
        turtle.back()
    end
    

end

init()



