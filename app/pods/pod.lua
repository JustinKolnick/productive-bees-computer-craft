local function pod.new(args)
    local self = {
        hives = [],
        hiveCount = 0, -- assumed 5 on init
        totalHealth = 0,
        totalProductivity = 0,
        totalEndurance = 0,
    }
end