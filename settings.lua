-- Copyright (c) 2025 JackieChen
-- 此项目遵循 MIT 许可证，详见 LICENSE 文件。
data:extend{
    {
        type = "bool-setting",
        name = "disable-crash-site",
        setting_type = "startup",
        default_value = false,
        order = "a-a"
    }, {
        type = "bool-setting",
        name = "disable-hand-crafting",
        setting_type = "startup",
        default_value = false,
        order = "a-b"
    }, {
        type = "bool-setting",
        name = "furnace-recipe-select",
        setting_type = "startup",
        default_value = false,
        order = "a-c"
    }, {
        type = "bool-setting",
        name = "inventory-clear",
        setting_type = "startup",
        default_value = false,
        order = "a-d"
    }, {
        type = "bool-setting",
        name = "enable-machine-item-stack-size-tweak",
        setting_type = "startup",
        default_value = false,
        order = "a-e"
    }, {
        type = "bool-setting",
        name = "start-robot",
        setting_type = "startup",
        default_value = false,
        order = "x-a"
    }, {
        type = "bool-setting",
        name = "start-burner-mining-drill",
        setting_type = "startup",
        default_value = false,
        order = "x-b"
    }, {
        type = "bool-setting",
        name = "start-weapon",
        setting_type = "startup",
        default_value = false,
        order = "x-c"
    }, {
        type = "bool-setting",
        name = "enable-item-stack-size-multiplier",
        setting_type = "startup",
        default_value = false,
        order = "y-a"
    }, {
        type = "double-setting",
        name = "item-stack-size-multiplier",
        setting_type = "startup",
        minimum_value = 1,
        default_value = 10,
        maximum_value = 2147483647,
        order = "y-b"
    }, {
        type = "bool-setting",
        name = "enable-transport-belt-speed-multiplier",
        setting_type = "startup",
        default_value = false,
        order = "y-e"
    }, {
        type = "double-setting",
        name = "transport-belt-speed-multiplier",
        setting_type = "startup",
        minimum_value = 1,
        default_value = 1,
        maximum_value = 2147483647,
        order = "y-f"
    }, {
        type = "bool-setting",
        name = "enable-inserter-speed-multiplier",
        setting_type = "startup",
        default_value = false,
        order = "y-g"
    }, {
        type = "double-setting",
        name = "inserter-speed-multiplier",
        setting_type = "startup",
        minimum_value = 1,
        default_value = 1,
        maximum_value = 2147483647,
        order = "y-h"
    }, {
        type = "bool-setting",
        name = "enable-player-running-speed-multiplier",
        setting_type = "startup",
        default_value = false,
        order = "y-i"
    }, {
        type = "double-setting",
        name = "player-running-speed-multiplier",
        setting_type = "startup",
        minimum_value = 1,
        default_value = 1,
        maximum_value = 2147483647,
        order = "y-j"
    }
}

if not mods["pypostprocessing"] then
    data:extend{
        {
            type = "bool-setting",
            name = "enable-robot-speed-multiplier",
            setting_type = "startup",
            default_value = false,
            order = "y-c"
        }, {
            type = "double-setting",
            name = "robot-speed-multiplier",
            setting_type = "startup",
            minimum_value = 1,
            default_value = 1,
            maximum_value = 2147483647,
            order = "y-d"
        }
    }
end

