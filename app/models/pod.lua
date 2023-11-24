Pod = {}
Pod.__index = Pod

function Pod.new(args)
    local self = setmetatable({}, Pod)
    self.hives = args.hives

    return self
end

function Pod:getName()
    if self.name then return self.name end
    local names = {}
    for k, v in pairs(self.hives) do
        if names[v:getName()] == nil then
            names[v:getName()] = 1
        else
            names[v:getName()] = names[v:getName()] + 1
        end
    end

    maxName = ""
    max = 0
    count = 0

    for k, v in pairs(names) do
        count = count + 1
        if v > max then
            maxName = k
            max = v
        end
    end

    if maxName == "" then
        self.name = "Empty"
        return self.name
    end

    local name = maxName
    if count > 1 then
        name = name .. "*"
    end

    self.name = name
    return self.name
end

function Pod:getTotalHealth()
    
    -- check if cached is nil, if so used true, other wise use false
    if self.totalHealth then return self.totalHealth end

    local totalHealth = 0
    for k, v in pairs(self.hives) do
        totalHealth = totalHealth + v:getTotalHealth()
    end

    self.totalHealth = totalHealth

    return self.totalHealth
end

function Pod:getTotalEndurance()

    -- check if cached is nil, if so used true, other wise use false
    if self.totalEndurance then return self.totalEndurance end

    local totalEndurance = 0
    for k, v in pairs(self.hives) do
        totalEndurance = totalEndurance + v:getTotalEndurance()
    end

    self.totalEndurance = totalEndurance

    return self.totalEndurance
end

function Pod:getTotalProductivity()
    if self.totalProductivity then return self.totalProductivity end

    local totalProductivity = 0
    for k, v in pairs(self.hives) do
        totalProductivity = totalProductivity + v:getTotalProductivity()
    end

    self.totalProductivity = totalProductivity

    return self.totalProductivity
end

function Pod:getUpgrades()
    if self.upgrades then return self.upgrades end

    local podUpgrades = {}

    for k, v in pairs(self.hives) do
        local hiveUpgrades = v:getUpgrades()

        for k1, v1 in pairs(hiveUpgrades) do
            if podUpgrades[k1] == nil then
                podUpgrades[k1] = v1.Count
            else
                podUpgrades[k1] = podUpgrades[k1] + v1.Count 
            end
        end
    end

    self.upgrades = podUpgrades

    return self.upgrades
end

function Pod:getPodStats()
    return {
        totalHealth = self:getTotalHealth(),
        totalEndurance = self:getTotalEndurance(),
        totalProductivity = self:getTotalProductivity(),
    }
end