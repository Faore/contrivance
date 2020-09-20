local term = require("term")
local component = require("component")
local serialization = require("serialization")

function debug(n)
    term.write("[DEBUG] " .. serialization.serialize(n) .. "\n")
end


local CraftManager = {}

function CraftManager:new()
    newObj = { controller = component.xnet }
    self.__index = self
    return setmetatable(newObj, self)
end

function CraftManager:run()
    term.write("Craft Manager Start \n")
    self:identify_blocks()
end

function CraftManager:identify_blocks()
    term.write("[IdentifyBlocks] Identifying blocks.\n")

    for index, block in ipairs(self.controller.getConnectedBlocks()) do
        debug(block)
    end
end

CraftManager:new():run();

return CraftManager