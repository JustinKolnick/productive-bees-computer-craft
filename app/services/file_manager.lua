local file_manager = {}

function file_manager.save(msg, filename)
    local outputFile = io.open(filename,'w')
    outputFile:write(textutils.serialize(msg))
    outputFile:close()
end

return file_manager