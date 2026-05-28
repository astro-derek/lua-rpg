local module = {}

module.describe = function(engine)
    local current_location = engine.variables.get("current_location")
    local location = engine.map[current_location]

    return location.description
end

return module