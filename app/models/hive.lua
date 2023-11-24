Hive = {}
Hive.__index = Hive

function Hive.new(args)
    local self = setmetatable({}, Hive)
    self.bees = args.bees
    self.upgrades = args.upgrades

    return self
end

function Hive:getName()
    if self.name then return self.name end
    local names = {}
    for k, v in pairs(self.bees) do
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

    local name = maxName .. 's'
    if count > 1 then
        name = name .. "*"
    end

    self.name = name
    return self.name
end

function Hive:getUpgrades()
    return self.upgrades
end

function Hive:getTotalHealth()
    if self.totalHealth then return self.totalHealth end

    local totalHealth = 0
    for k, v in pairs(self.bees) do
        totalHealth = totalHealth + v:getHealth()
    end

    self.totalHealth = totalHealth

    return self.totalHealth
end

function Hive:getTotalEndurance()
    -- check if cached is nil, if so used true, other wise use false
    if self.totalEndurance then return self.totalEndurance end

    local totalEndurance = 0
    for k, v in pairs(self.bees) do
        totalEndurance = totalEndurance + v:getEndurance()
    end

    self.totalEndurance = totalEndurance

    return self.totalEndurance
end

function Hive:getTotalProductivity()
    -- check if cached is nil, if so used true, other wise use false
    if self.totalProductivity then return self.totalProductivity end

    local totalProductivity = 0
    for k, v in pairs(self.bees) do
        totalProductivity = totalProductivity + v:getProductivity()
    end

    self.totalProductivity = totalProductivity

    return self.totalProductivity
end


