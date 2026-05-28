local commands = require("engine.commands")

local module = {}
local private = {}

private.process = function()
    module.output("What do you want to do?")

    local input = io.read()
    if (input == "exit") then
        return false
    end

    local command, parameters = private.parse(input)
    commands[command](module, parameters)

    return true
end

private.parse = function(input)
    local words = {}
    for item in input:gmatch("%S+") do
        table.insert(words, item)
    end

    return {words[1], {table.unpack(words, 2)}}
end

module.variables = require("engine.variables")
module.version = "0.0.14"
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
        looping = private.process()
    end
end

module.finish = function()
    module.variables.save()
end

module.output = function(text)
    print(text)
end

return module