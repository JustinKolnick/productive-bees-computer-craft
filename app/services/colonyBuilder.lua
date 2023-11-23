local colonyBuilder = {}

package.path = package.path .. ';../models/?.lua;'

require('bee')
require('hive')
require('pod')

function colonyBuilder.build(stored)
    local colony = {}

    for k1, v1 in pairs(stored) do -- loop over floors
        local pods = {}
    
        for k2, v2 in pairs(v1) do -- loop over pods
            local hives = {}
    
            for k3, v3 in pairs(v2) do -- loop over hives
                local bees = {}
                
                if v3["Bees"] ~= nil then -- key Bees could not exist! TODO should change this to an empty table instead of a non-existant key
                    for k4, v4 in pairs(v3["Bees"]) do -- loop over bees
                        local b = Bee.new(v4)
                        table.insert(bees, b)
                    end
                end

                local h = Hive.new({
                    bees = bees,
                    upgrades = {},
                })
    
                table.insert(hives, h)
            end
    
            local p = Pod.new({
                hives = hives,
            })

            table.insert(pods, p)
        end
    
        table.insert(colony, pods)
    end
    return colony
end

return colonyBuilder