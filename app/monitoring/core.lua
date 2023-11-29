local core = {}

local monitor = peripheral.find("monitor")

function core.write(text, bgColor, textColor, padding, x, y)
    if padding ~= nil then
        for i=1, padding do
            text = " " .. text .. " "
        end
    end

    monitor.setBackgroundColor(bgColor)
    monitor.setTextColor(textColor)
    monitor.setCursorPos(x, y)
    monitor.write(text)
end

function core.whitespace(len, bgColor, x, y)
    local s = ""
    for i=1, len do
        s = s .. " "
    end
    monitor.setBackgroundColor(bgColor)
    monitor.setCursorPos(x, y)
    monitor.write(s)
end

function core.emptyString(len)
    local s = ""
    for i=1, len do s = s .. " " end
    return s
end

return core