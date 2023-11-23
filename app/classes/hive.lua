Hive = {}

function Hive.new(args)
    local self = setmetatable({}, Hive)
    self.bees = args.bees
    self.beeCount = args.beeCount
    self.totalHealth = args.totalHealth
    self.totalProductivity = args.totalProductivity
    self.totalEndurance = args.totalEndurance

    return self
end