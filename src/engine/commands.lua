local module = {}

---Retrieves the current map location and executes the describe function
---for that location, returning the result.
---@param engine The engine instance to retrieve the current location from.
---@return string The description of the current location.
module.describe = function(engine)
    local current_location = engine.variables.get("current_location")
    local location = engine.map[current_location]

    engine.output(location.describe())
end


module.go = function(engine, parameters)
    local current_location = engine.variables.get("current_location")
    local location = engine.map[current_location]

    local key = parameters[1]
    if location.go(key) then
        module.describe(engine)
    else
        engine.output("You can't go that way.")
    end
end

return module