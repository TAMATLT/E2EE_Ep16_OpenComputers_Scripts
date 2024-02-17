local component = require("component")
local shell = require("shell")

-- This function attempts to identify the type based on common labels or storage size.
-- It's a simple heuristic and might not be accurate for all configurations.
local function identifyFilesystem(address)
    local fs = component.proxy(address)
    local label = fs.getLabel() or "Unnamed"
    local capacity = fs.spaceTotal()
	return label
end

-- List all filesystem components and print their identification.
for address, _ in component.list("filesystem") do
    print(address .. " is " .. identifyFilesystem(address))
end