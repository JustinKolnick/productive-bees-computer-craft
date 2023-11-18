local key = "XrhqTuzj"
local filename = "run"

shell.run("delete" .. filename)
shell.run("pastebin get" .. key .. filename)