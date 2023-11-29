local file_manager = {}

function file_manager.save(msg, filename)
    local outputFile = io.open(filename,'w')
    outputFile:write(textutils.serialize(msg))
    outputFile:close()
end

function file_manager.get(filename)
    local file = fs.open(filename, "r")
    return textutils.unserialize(file.readAll())
end

return file_manager