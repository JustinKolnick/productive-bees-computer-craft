package.path = package.path .. ';../services/?.lua;../?.lua;'

local colony_display = {}

local colonyBuilder = require('colonyBuilder')
local core = require('core')
local file_manager = require('file_manager')
local config = require('config')

local Rows = config.Rows
local Floors = config.Floors
local Pods = config.PodsPerRow

local monitor = peripheral.find("monitor")
local colony = nil

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

function displayFloor(floorData)
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
        local row = floorData["Row"..rk]

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
end

function colony_display.show(f)
    if f < 1 or f > config.Floors then
        printError("Floor is not in range!")
        return
    end

    print("refreshing display...")

    local colony = colonyBuilder.get()

    displayFloor(colony["Floor"..f])
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


return colony_display