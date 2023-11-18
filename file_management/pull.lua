local download = http.get("https://raw.githubusercontent.com/JustinKolnick/productive-bees-computer-craft/main/monitoring/fetch.lua") --This will make 'download' hold the contents of the file.
local handle = download.readAll() --Reads everything in download
download.close() --remember to close download!

local file = fs.open("run","w") --opens the file 'startup' with the permissions to write.
file.write(handle) --writes all the stuff in handle to the file 'startup'.
file.close() --remember to close download!