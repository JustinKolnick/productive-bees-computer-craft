-- Requirements
-- - PlayerDetector
-- - Redstone signal to track player movement for sign updates

local detector = peripheral.find("playerDetector")
local monitor = peripheral.wrap("front")

monitor.setTextColor(colors.orange)
monitor.setTextScale(1.5)

while true do
    os.pullEvent("redstone")
    if rs.getInput("back") then -- change side to the side you want to check
        monitor.clear();
        monitor.setCursorPos(1,1)
        local players = detector.getPlayersInRange(5)
        monitor.write("Welcome")
        monitor.setCursorPos(1,2)
        monitor.write(players[1])
    end
end
  