local commands = require("engine.commands")

local module = {}

module.variables = require("engine.variables")

module.version = "0.0.4"
module.author = "Derek Potter"
module.license = "MIT"
module.description = "An RPG Engine built in lua."

module.map = nil

module.initialize = function()
    module.variables.load()
end

module.loop = function()
    if module.map == nil then
        return "You must set a map before you can start the game loop."
    end

    module.output(commands.describe())
end

module.finish = function()
    module.variables.save()
end

module.output = function(text)
    print(text)
end

return module