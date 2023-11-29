local colony_display = require('colony_display')
local file_manager = require('file_manager')

local current_display = 'colony'
local clickMap = {} -- implement parent click map todo

function init()
    local lastFloorDisplayed = 1
    -- on startup, build a display from data on disk
    colony_display.show(1)

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
            print("The monitor on side " .. eventData[2] .. " was touched at (" .. eventData[3] .. ", " .. eventData[4] .. ")")
            -- local x = eventData[3]
            -- local y = eventData[4]
            -- for k, entry in pairs(clickMap) do
            --     if entry.x1 <= x and entry.x2 >= x and entry.y1 <= y and entry.y2 >= y then
            --         if entry.method == 'displayFloor1' then
            --             lastFloorDisplayed = 1
            --             displayFloorFromFile(1)
            --         end

            --         if entry.method == 'displayFloor2' then
            --             lastFloorDisplayed = 2
            --             displayFloorFromFile(2)
            --         end
            --     end
            -- end
        end
    end
end

init()