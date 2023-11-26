Bee = {}
Bee.__index = Bee

function Bee.new(args)
    local self = setmetatable({}, Bee)
    self.name = args.Name
    self.health = args.Health or 0
    self.endurance = args.Endurance or 0
    self.productivity = args.Productivity or 0

    return self
end

function Bee:getName()
    return self.name
end

function Bee:getHealth()
    return self.health
end

function Bee:getEndurance()
    return self.endurance
end

function Bee:getProductivity()
    return self.productivity
end