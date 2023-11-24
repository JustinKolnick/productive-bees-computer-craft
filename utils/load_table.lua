local h = fs.open("stored", "r")
local t = textutils.unserialize(h.readAll())
peripheral.find("modem", rednet.open)
rednet.send(6, t)