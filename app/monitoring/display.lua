package.path = package.path .. ';../services/?.lua;'

local colonyBuilder = require('colonyBuilder')

function createPods(table)
    function createPod(pod)

        function getBeeCount(pod)
            totalCount = 0

            for _, v in pairs(pod) do
                for _ in pairs(v["Bees"]) do
                    totalCount = totalCount + 1
                end
            end
            
            return totalCount
        end
        
        function getTotalHealth(pod)
            totalHealth = 0

            for k, v in pairs(pod) do
                for k, v in pairs(v["Bees"]) do
                    totalHealth = totalHealth + v["Health"]
                end
            end
            
            return totalHealth
        end

        function getTotalEndurance(pod)
            totalEndurance = 0

            for k, v in pairs(pod) do
                for k, v in pairs(v["Bees"]) do
                    totalEndurance = totalEndurance + v["Endurance"]
                end
            end
            
            return totalEndurance
        end

        function getTotalProductivity(pod)
            totalProductivity = 0

            for k, v in pairs(pod) do
                for k, v in pairs(v["Bees"]) do
                    totalProductivity = totalProductivity + v["Endurance"]
                end
            end
            
            return totalProductivity
        end
        
        
        return {
            name = "Oily Bees",
            beeCount = getBeeCount(pod),
            totalHealth = getTotalHealth(pod),
            totalEndurance = getTotalEndurance(pod),
            totalProductivity = getTotalProductivity(pod),
        }
    end
    
    return createPod(table["Floor1"]["Pod4"])
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

function init()
    -- loop infinitely, checking for messages

    monitor = peripheral.find("monitor")
    -- set dimensions and stuff

    while true do
        local id, table = rednet.receive()

        local keyset={}
        local n=0

        for k,v in pairs(table) do
            n=n+1
            keyset[n]=k
        end

        monitor.clear()
        monitor.setCursorPos(1, 1)

        p = createPods(table)
        monitor.write(p.name)
        monitor.setCursorPos(1, 2)
        monitor.write("Bee Count: " .. p.beeCount)
        monitor.setCursorPos(1, 3)
        monitor.write("Total Health: " .. p.totalHealth)
        monitor.setCursorPos(1, 4)
        monitor.write("Total Endurance: " .. p.totalEndurance)
        monitor.setCursorPos(1, 5)
        monitor.write("Total Productivity: " .. p.totalProductivity)
        monitor.setCursorPos(1, 6)
    end
end

--init()

function test()
    local c = colonyBuilder.build()
    print(tprint(c[1][1].hives[1].bees[1])) -- still fails sometimes because we don't always get a hive with bees, need to fix missing key
end


test()
