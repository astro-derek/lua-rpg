local commands = require("engine.commands")

local module = {}

local function process()
    local input = io.read()
    local command = input:match("^(%S+)")
    local parameters = input:match("^%S+%s+(.*)")

    print(command)
    print(parameters)

    if input == "exit" then
        return false
    end

    if commands[command] then
        local description = commands[command](module, parameters)
        module.output(description)
    end

    return true
end

module.variables = require("engine.variables")
module.version = "0.0.10"
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

    local looping = true

    while looping do
        looping = process()
    end
end

module.finish = function()
    module.variables.save()
end

module.output = function(text)
    print(text)
end

return module