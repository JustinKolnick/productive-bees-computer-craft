Bee = {}
Bee.__index = Bee

function Bee.new(args)
    local self = setmetatable({}, Bee)
    self.name = args.Name
    self.health = args.Health
    self.endurance = args.Endurance
    self.productivity = args.Productivity

    return self
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