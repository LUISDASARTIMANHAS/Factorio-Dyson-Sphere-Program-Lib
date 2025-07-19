local Module = {}

function Module.createItem(name, icon, stack_size)
    return {
        type = "item",
        name = name.."-item",
        icon = icon,
        icon_size = 64,
        stack_size = stack_size or 100
    }
end

return Module
