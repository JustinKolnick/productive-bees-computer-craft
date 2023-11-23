Pod = {}

function Pod.new(args)
    local self = setmetatable({}, Pod)
    self.hives = args.hives
    self.hiveCount = args.hiveCount
    self.totalHealth = args.totalHealth
    self.totalProductivity = args.totalProductivity
    self.totalEndurance = args.totalEndurance

    return self
end