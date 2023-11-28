local config = {}

config.Rows = 4
config.PodsPerRow = 7
config.Floors = 2
config.HivesPerPod = 5
config.BlocksBetweenRows = 3
config.BlocksBetweenPods = 1
config.blockReaderDirection = "top"

config.start = {
    X = -66,
    Y = 64,
    Z = -383
}

-- Modify this function as needed to get your turtle to travel 
-- to the first block reader on the top floor.
function config.travelToTopFloorStart()
    for i=1, 11 do
        turtle.forward()
    end
    turtle.down()
    turtle.down()
    turtle.turnRight()
    turtle.forward()
end

function config.travelToHome()
    turtle.turnLeft()
    for i=1, 12 do
        turtle.forward()
    end
    local up = (config.Floors - 1) * 5 + 2 -- go back to same height as start
    for i=1,up  do
        turtle.up()
    end
    for i=1, 11 do
        turtle.forward()
    end

    turtle.turnLeft()
    turtle.turnLeft()
end

return config