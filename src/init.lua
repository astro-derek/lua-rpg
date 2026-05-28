local commands = require("engine.commands")

local module = {}

local function process()
    module.output("What do you want to do?")
    local input = io.read()

    local words = {}
    for item in input:gmatch("%S+") do
        table.insert(words, item)
    end

    print(words)

    local command = words[1]
    if command == "exit" then
        return false
    end

    local parameters = {table.unpack(words, 2)}
    commands[command](module, parameters)

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