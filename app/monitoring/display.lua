local colony_display = require('colony_display')
local file_manager = require('file_manager')

local current_display = 'floor1'

function getClickMap()
    if current_display == 'floor1' or current_display == 'floor2' then
        return colony_display.getClickMap()
    end
end

function init()
    -- on startup, build a display from data on disk
    colony_display.show(1)
    current_display = 'floor1'
    peripheral.find("modem", rednet.open)

    while true do
        local eventData = {os.pullEvent()}

        -- loop infinitely, checking for messages or monitor touch
        if eventData[1] == "rednet_message" then
            -- when we receive new data, update the underlying data store
            local msg = eventData[3]
            file_manager.save(msg, "stored")

            local timeString = os.date("%D, %r, %Z", os.epoch("local") / 1000)
            file_manager.save(timeString, "last_updated")
        elseif eventData[1] == "monitor_touch" then
            -- TODO: check position against displayClickMap to see what should be displayed next
            local x = eventData[3]
            local y = eventData[4]
            print("The monitor on side " .. eventData[2] .. " was touched at (" .. x .. ", " .. y .. ")")

            local clickMap = getClickMap()

            for k, entry in pairs(clickMap) do
                if entry.x1 <= x and entry.x2 >= x and entry.y1 <= y and entry.y2 >= y then
                    if entry.method == 'displayFloor1' then
                        colony_display.show(1)
                        current_display = 'floor1'
                    end

                    if entry.method == 'displayFloor2' then
                        colony_display.show(2)
                        current_display = 'floor2'
                    end
                end
            end
        end
    end
end

init()