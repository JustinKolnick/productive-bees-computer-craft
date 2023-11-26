package.path = package.path .. ';../services/?.lua;'

local colonyBuilder = require('colonyBuilder')

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

function displayFromFile()
    local file = fs.open("stored", "r")
    local table = textutils.unserialize(file.readAll())

    monitor = peripheral.find("monitor")

    print("refreshing display...")
    
    local c = colonyBuilder.build(table)

    for fk, floor in pairs(c) do
        monitor.setBackgroundColor(colors.lightGray)
        monitor.setTextColor(colors.white)
        monitor.clear()
        
        local w, h = monitor.getSize()
        monitor.setTextScale(0.9)
        local sw = 4
        local sh = 2
        monitor.setCursorPos(sw, sh)
        print("width " .. w)
        print("height " .. h)

        for rk, row in pairs(floor) do -- loop over rows

            for k, pod in pairs(row) do -- loop over pods in row
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
            print("resetting: " .. sw .. " " .. sh)
            monitor.setCursorPos(sw, sh)
        end
    end

    monitor.setBackgroundColor(colors.lightGray)
    monitor.setCursorPos(4, 51)
    monitor.setTextColor(colors.black)
    local time = os.epoch("local") / 1000
    monitor.write("Last updated " .. os.date("%D, %r, %Z", time))
end

function save(msg)
    local outputFile = io.open('stored','w')
    outputFile:write(textutils.serialize(msg))
    outputFile:close()
end

function init()
    -- on startup, build a display from data on disk
    -- displayFromFile()

    while true do
        local eventData = {os.pullEvent()}

        -- loop infinitely, checking for messages or monitor touch
        if eventData[1] == "rednet_message" then
            local msg = eventData[3]
            save(msg)
            displayFromFile()
        elseif eventData[1] == "monitor_touch" then
            -- TODO: check position against displayClickMap to see what should be displayed next
            print("The monitor on side " .. eventData[2] .. " was touched at (" .. eventData[3] .. ", " .. eventData[4] .. ")")
        end
    end
end

init()