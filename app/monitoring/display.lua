package.path = package.path .. ';../services/?.lua;'

local colonyBuilder = require('colonyBuilder')
local core = require('core')

local Rows = 4
local Floors = 2
local Pods = 7

local displayColorMap = {
    ["Electrum Bees"] = colors.orange,
    ["Emerald Bees"] = colors.green,
    ["Diamond Bees"] = colors.cyan,
    ["Inferium Bees"] = colors.green,
    ["Lead Bees"] = colors.gray,
    ["Nickel Bees"] = colors.gray,
    ["Iron Bees"] = colors.gray,
    ["Oily Bees"] = colors.black,
    ["Tungsten Bees"] = colors.gray,
    ["Zirconium Bees"] = colors.orange,
}

function save(msg, filename)
    local outputFile = io.open(filename,'w')
    outputFile:write(textutils.serialize(msg))
    outputFile:close()
end

function tprint (tbl, indent)
    if not indent then indent = 0 end
    local toprint = string.rep(" ", indent) .. "{\r\n"
    indent = indent + 2 
    for k, v in pairs(tbl) do
      toprint = toprint .. string.rep(" ", indent)
      if (type(k) == "number") then
        toprint = toprint .. "[" .. k .. "] = "
      elseif (type(k) == "string") then
        toprint = toprint  .. k ..  "= "   
      end
      if (type(v) == "number") then
        toprint = toprint .. v .. ",\r\n"
      elseif (type(v) == "string") then
        toprint = toprint .. "\"" .. v .. "\",\r\n"
      elseif (type(v) == "table") then
        toprint = toprint .. tprint(v, indent + 2) .. ",\r\n"
      else
        toprint = toprint .. "\"" .. tostring(v) .. "\",\r\n"
      end
    end
    toprint = toprint .. string.rep(" ", indent-2) .. "}"
    return toprint
end

function longestString(strs)
    local maxLen = 0
    local longestStr = ""
    for k, v in ipairs(strs) do
        if string.len(v) > maxLen then
            maxLen = string.len(v)
            longestStr = v
        end
    end
    return longestStr, maxLen
end

function emptyString(len)
    local s = ""
    for i=1, len do s = s .. " " end
    return s
end

function floorNav(f)
    core.write("Floor", colors.white, colors.black, nil, 136, 17)

    core.whitespace(5, colors.lightGray, 136, 20)
    core.write("^", colors.lightGray, colors.black, 2, 136, 21)
    core.whitespace(5, colors.lightGray, 136, 22)

    for i=1, Floors do
        local color = colors.lightGray
        if i == f then
            color = colors.green
        end
        core.write(i, color, colors.black, 2, 136, 23 + (i*2))
    end

    core.whitespace(5, colors.lightGray, 136, 30)
    core.write("v", colors.lightGray, colors.black, 2, 136, 31)
    core.whitespace(5, colors.lightGray, 136, 32)
end

function timestamp()
    local time = os.epoch("local") / 1000
    local timestr = "Last updated " .. os.date("%D, %r, %Z", time)
    core.write(timestr, colors.white, colors.black, 0, 4, 51)
end

function displayLegend(f)
    timestamp()
    floorNav(f)
end

function displayFloorFromFile(f)
    if f < 1 or f > 2 then
        printError("Floor is not in range!")
        return
    end

    local file = fs.open("stored", "r")
    local table = textutils.unserialize(file.readAll())

    monitor = peripheral.find("monitor")

    print("refreshing display...")
    
    local c = colonyBuilder.build(table)

    save(c, "parsedColony")

    local floor = c["Floor"..f]
    print("Floor" .. f)
    monitor.setBackgroundColor(colors.white)
    monitor.setTextColor(colors.white)
    monitor.clear()
    
    local w, h = monitor.getSize()
    monitor.setTextScale(0.9)
    local sw = 4
    local sh = 2
    monitor.setCursorPos(sw, sh)
    print("width " .. w)
    print("height " .. h)

    for rk = Rows,1, -1 do -- loop over rows
        local row = floor["Row"..rk]

        -- this code changes the direction of the loop so that the pods display
        -- in the same order as they are positioned in the world
        local start = 1
        local fin = 1
        local dir = 1

        if rk % 2 == 0 then
            start = 1
            fin = Pods
            dir = 1
        else
            start = Pods
            fin = 1
            dir = -1
        end

        for pk = start, fin, dir do -- loop over pods in row

            local pod = row["Pod"..pk]

            local name = pod:getName()
            monitor.setBackgroundColor(pod:getColor())
            
            local health = "Health: " .. pod:getTotalHealth()
            local endur = "End: " .. pod:getTotalEndurance()
            local produc = "Prod: " .. pod:getTotalProductivity()
            local length = 15
            local psw = sw
            local psh = sh
            -- bees
            monitor.write(" " .. emptyString(length) .. " ")
            sh = sh + 1
            monitor.setCursorPos(sw, sh)

            monitor.write(" " .. name .. emptyString(length - string.len(name)) .. " ")
            sh = sh + 1
            monitor.setCursorPos(sw, sh)

            monitor.write(" " .. health .. emptyString(length - string.len(health)) .. " ")
            sh = sh + 1
            monitor.setCursorPos(sw, sh)

            monitor.write(" " .. endur .. emptyString(length - string.len(endur)) .. " ")
            sh = sh + 1
            monitor.setCursorPos(sw, sh)

            monitor.write(" " .. produc .. emptyString(length - string.len(produc)) .. " ")
            sh = sh + 1
            monitor.setCursorPos(sw, sh)

            monitor.write(" " .. emptyString(length) .. " ")
            sh = sh + 1
            monitor.setCursorPos(sw, sh)


            -- upgrades
            local title = "Upgrades"
            
            psw = sw + length + 2
            length = 10

            monitor.setCursorPos(psw, psh)
            monitor.write(" " .. emptyString(length) .. " ")
            psh = psh + 1
            monitor.setCursorPos(psw, psh)

            local numDisplayedUpgrades = 4
            local count = 0

            for k, v in pairs(pod:getUpgrades()) do
                if count >= numDisplayedUpgrades-1 then
                    monitor.write(" " .. "..." .. emptyString(length - string.len("...")) .. " ")
                    psh = psh + 1
                    monitor.setCursorPos(psw, psh)
                    count = count + 1
                    break
                end

                local msg = k .. " x" .. v

                monitor.write(" " .. msg .. emptyString(length - string.len(msg)) .. " ")
                psh = psh + 1
                monitor.setCursorPos(psw, psh)

                count = count + 1
            end

            local temp = numDisplayedUpgrades - count

            for i=1,temp do
                monitor.write(" " .. emptyString(length) .. " ")
                psh = psh + 1
                monitor.setCursorPos(psw, psh)
            end

            monitor.write(" " .. emptyString(length) .. " ")
            psh = psh + 1
            monitor.setCursorPos(psw, psh)

            sh = sh + 1
            monitor.setCursorPos(sw, sh)
        end

        sw = sw + 12 + 17 + 4 -- 12 (Bees+stats), 17 (upgrades), 4 (spacing)
        sh = 2
        monitor.setCursorPos(sw, sh)
    end

    displayLegend(f)

end

local clickMap = {
    {
        x1 = 136,
        x2 = 141,
        y1 = 30,
        y2 = 32,
        method = "displayFloor2"
    },
    {
        x1 = 136,
        x2 = 141,
        y1 = 20,
        y2 = 22,
        method = "displayFloor1"
    },
    {
        x1 = 136,
        x2 = 141,
        y1 = 25,
        y2 = 25,
        method = "displayFloor1"
    },
    {
        x1 = 136,
        x2 = 141,
        y1 = 27,
        y2 = 27,
        method = "displayFloor2"
    },
}

function init()
    local lastFloorDisplayed = 1
    -- on startup, build a display from data on disk
    displayFloorFromFile(1)

    while true do
        local eventData = {os.pullEvent()}

        -- loop infinitely, checking for messages or monitor touch
        if eventData[1] == "rednet_message" then
            local msg = eventData[3]
            save(msg, "stored")
            displayFloorFromFile(1)
        elseif eventData[1] == "monitor_touch" then
            -- TODO: check position against displayClickMap to see what should be displayed next
            print("The monitor on side " .. eventData[2] .. " was touched at (" .. eventData[3] .. ", " .. eventData[4] .. ")")
            local x = eventData[3]
            local y = eventData[4]
            for k, entry in pairs(clickMap) do
                if entry.x1 <= x and entry.x2 >= x and entry.y1 <= y and entry.y2 >= y then
                    if entry.method == 'displayFloor1' then
                        lastFloorDisplayed = 1
                        displayFloorFromFile(1)
                    end

                    if entry.method == 'displayFloor2' then
                        lastFloorDisplayed = 2
                        displayFloorFromFile(2)
                    end
                end
            end
        end
    end
end

init()