Bee = {}

function Bee.new(args)
    local self = setmetatable({}, Bee)
    self.name = args.Name
    self.health = args.Health
    self.endurance = args.Endurance
    self.productivity = args.Productivity

    return self
end