local component = require("component")
local shell = require("shell")
local filesystem = require("filesystem")

-- Get the component address or type from the arguments passed to the script
local args = shell.parse(...)
local componentName = args[1]

-- Open or create the file with the component name in the home directory
local filename = "/home/" .. componentName .. "_help.txt"
local file, fileReason = filesystem.open(filename, "w")

-- Write function names and descriptions to file
if file then
    for k,v in pairs(component[...]) do
        file:write(tostring(k) .. ":" .. tostring(v) .. "\n")
    end
    file:close() -- Close the file
    print("Finished writing the file.")
else
    print("Failed to open the file!")
end