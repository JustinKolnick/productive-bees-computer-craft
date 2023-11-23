local h = fs.open("stored", "r")
local t = textutils.unserialize(h.readAll())

-- rednet.send(6, t)