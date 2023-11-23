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
    
    return createPod(table["Floor1"]["Pod2"])
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

init()



