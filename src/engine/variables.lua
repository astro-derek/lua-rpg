local module = {}

module.variables = {}

module.load = function()
    -- Load variables here
end

module.save = function()
    -- Save variables here
end

module.get = function(key)
    if module.variables[key] == nil then
        return false
    end

    return module.variables[key]
end

module.set = function(key, value)
    module.variables[key] = value
end

return module