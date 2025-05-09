-- Copyright (c) 2025 GeekieChen
-- 此项目遵循 MIT 许可证，详见 LICENSE 文件。
-- 修复模组的问题
-- 修复 Nanobots2 的问题
if mods["Nanobots2"] then
    -- 修复科技的问题
    -- 修复 nanobots 的问题
    if data.raw.technology["nanobots"] then
        for i = #data.raw.technology["nanobots"].effects, 1, -1 do
            local effect = data.raw.technology["nanobots"].effects[i]
            if effect.type == "unlock-recipe" and effect.recipe == "iron-stick" then
                table.remove(data.raw.technology["nanobots"].effects, i)
                break
            end
        end
    end
end

-- 修复 Mini_Trains 的问题
if mods["Mini_Trains"] then
    -- 修复科技的问题
    -- 修复 mini-trains 的问题
    if data.raw.technology["mini-trains"] then
        for i = #data.raw.technology["mini-trains"].effects, 1, -1 do
            local effect = data.raw.technology["mini-trains"].effects[i]
            if effect.type == "unlock-recipe" and effect.recipe == "iron-stick" then
                table.remove(data.raw.technology["mini-trains"].effects, i)
                break
            end
        end
    end

    -- 修复 railway 的问题
    if data.raw.technology["railway"] then
        table.insert(data.raw.technology["railway"].prerequisites, "mini-trains")
    end
end

-- 修复 Transport_Drones_Meglinge_Fork 的问题
if mods["Transport_Drones_Meglinge_Fork"] then
    -- 修复科技的问题
    -- 修复 transport-system 的问题
    if data.raw.technology["transport-system"] then
        for i = #data.raw.technology["transport-system"].effects, 1, -1 do
            local effect = data.raw.technology["transport-system"].effects[i]
            if effect.type == "unlock-recipe" and effect.recipe == "iron-stick" then
                table.remove(data.raw.technology["transport-system"].effects, i)
                break
            end
        end
    end
end

-- 修复 pycoalprocessing 的问题
if mods["pycoalprocessing"] then
    -- 修复科技的问题
    -- 修复 concrete 的问题
    if data.raw.technology["concrete"] then
        for i = #data.raw.technology["concrete"].effects, 1, -1 do
            local effect = data.raw.technology["concrete"].effects[i]
            if effect.type == "unlock-recipe" and effect.recipe == "iron-stick" then
                table.remove(data.raw.technology["concrete"].effects, i)
                break
            end
        end
    end

    -- 修复 circuit-network 的问题
    if data.raw.technology["circuit-network"] then
        for i = #data.raw.technology["circuit-network"].effects, 1, -1 do
            local effect = data.raw.technology["circuit-network"].effects[i]
            if effect.type == "unlock-recipe" and effect.recipe == "iron-stick" then
                table.remove(data.raw.technology["circuit-network"].effects, i)
                break
            end
        end
    end

    -- 修复配方的问题
    -- 修复 burner-inserter 的问题
    if data.raw.recipe["burner-inserter"] then
        for _, ingredient in pairs(data.raw.recipe["burner-inserter"]
                                       .ingredients) do
            if ingredient.name == "iron-plate" then
                ingredient.amount = 1
            end

            if ingredient.name == "small-parts-01" then
                ingredient.amount = 1
            end
        end
    end
end

-- 修复 pypetroleumhandling 的问题
if mods["pypetroleumhandling"] then
    -- 修复配方的问题
    -- 修复 transport-belt-2 的问题
    if data.raw.recipe["transport-belt-2"] then
        table.insert(data.raw.recipe["transport-belt-2"].ingredients,
                     {type = "item", name = "electronic-circuit", amount = 3})
    end
end

-- 修复 wood-logistics 的问题
if mods["wood-logistics"] then
    -- 修复模组的问题
    -- 修复 bobinserters 的问题
    if mods["bobinserters"] then
        -- 修复科技的问题
        -- 修复 bob-long-inserters-1 的问题
        if data.raw.technology["bob-long-inserters-1"] then
            data.raw.technology["bob-long-inserters-1"].prerequisites = {
                "wood-logistics"
            }
        end

        -- 修复 bob-near-inserters 的问题
        if data.raw.technology["bob-near-inserters"] then
            data.raw.technology["bob-near-inserters"].prerequisites = {
                "wood-logistics"
            }
        end
    end

    -- 修复 bobtech 的问题
    if mods["bobtech"] then
        -- 修复配方的问题
        -- 修复 lab 的问题
        if data.raw.recipe["lab"] then
            table.insert(data.raw.recipe["lab"].ingredients,
                         {type = "item", name = "transport-belt", amount = 4})
        end
    else
        -- 修复配方的问题
        -- 修复 lab 的问题
        if data.raw.recipe["lab"] then
            for _, ingredient in ipairs(data.raw.recipe["lab"].ingredients) do
                if ingredient.name == "inserter" then
                    ingredient.name = "burner-inserter"
                    break
                end
            end

            table.insert(data.raw.recipe["lab"].ingredients, {
                type = "item",
                name = "wood-transport-belt",
                amount = 4
            })
        end
    end

    -- 修复实体的问题
    -- 修复 wood-underground-belt 的问题
    if data.raw["underground-belt"] and
        data.raw["underground-belt"]["wood-underground-belt"] then
        data.raw["underground-belt"]["wood-underground-belt"].max_distance = 5
    end

    -- 修复科技的问题
    -- 修复 logistics 的问题
    if data.raw.technology["logistics"] then
        table.insert(data.raw.technology["logistics"].effects or {},
                     {type = "unlock-recipe", recipe = "underground-belt"})
    end

    -- 修复配方的问题
    -- 修复 underground-belt 的问题
    if data.raw.recipe["underground-belt"] then
        data.raw.recipe["underground-belt"].enabled = false
    end

    -- 修复 transport-belt 的问题
    if data.raw.recipe["transport-belt"] then
        table.insert(data.raw.recipe["transport-belt"].ingredients,
                     {type = "item", name = "electronic-circuit", amount = 1})
    end
end

-- 修复 ElectricFurnacesRevamp 的问题
if mods["ElectricFurnacesRevamp"] then
    -- 修复科技的问题
    -- 修复 electronics 的问题
    if data.raw.technology["electronics"] then
        data.raw.technology["electronics"].effects =
            data.raw.technology["electronics"].effects or {}
        table.insert(data.raw.technology["electronics"].effects, {
            type = "unlock-recipe",
            recipe = "electric-stone-furnace"
        })
        table.insert(data.raw.technology["electronics"].effects,
                     {type = "unlock-recipe", recipe = "electric-boiler"})
    end

    -- 修复配方的问题
    if data.raw.recipe["electric-stone-furnace"] then
        data.raw.recipe["electric-stone-furnace"].enabled = false
    end

    if data.raw.recipe["electric-boiler"] then
        data.raw.recipe["electric-boiler"].enabled = false
    end
end

-- 修复 aai-loaders 的问题
if mods["aai-loaders"] then
    -- 修复实体的问题
    -- 修复 aai-loader 的问题
    if data.raw["loader-1x1"] then
        for _, item in pairs(data.raw["loader-1x1"]) do
            if item.speed then item.speed = item.speed * 2 end
        end
    end
end

-- 修复 easyvoid 的问题
if mods["easyvoid"] then
    -- 修复科技的问题
    -- 修复 void 的问题
    if data.raw.technology["void"] then
        data.raw.technology["void"].prerequisites = {"automation"}
    end
end

-- 修复 loaders-modernized 的问题
if mods["loaders-modernized"] then
    -- 修复配方的问题
    -- 修复 wood-mdrn-loader 的问题
    if data.raw.recipe["wood-mdrn-loader"] then
        for _, ingredient in ipairs(data.raw.recipe["wood-mdrn-loader"]
                                        .ingredients) do
            if ingredient.name == "inserter" then
                ingredient.name = "burner-inserter"
                break
            end
        end
    end

    -- 修复 mdrn-loader 的问题
    if data.raw.recipe["mdrn-loader"] then
        table.insert(data.raw.recipe["mdrn-loader"].ingredients,
                     {type = "item", name = "wood-mdrn-loader", amount = 1})
    end
end

-- 修复 earlier-teleporters_redux 的问题
if mods["earlier-teleporters_redux"] then
    -- 修复科技的问题
    -- 修复 teleporter 的问题
    if data.raw.technology["teleporter"] then
        data.raw.technology["teleporter"].prerequisites = {"electronics"}
    end
end

-- 修复 bobtech 的问题
if mods["bobtech"] then
    -- 修复模组的问题
    -- 修复 pycoalprocessing 的问题
    if mods["pycoalprocessing"] then
        -- 修复科技的问题
        -- 修复 steam-power 的问题
        if data.raw.technology["steam-power"] then
            for i = #data.raw.technology["steam-power"].effects, 1, -1 do
                local effect = data.raw.technology["steam-power"].effects[i]
                if effect.type == "unlock-recipe" and effect.recipe ==
                    "small-electric-pole" then
                    table.remove(data.raw.technology["steam-power"].effects, i)
                    break
                end
            end
        end

        -- 修复 automation-science-pack 的问题
        if data.raw.technology["automation-science-pack"] then
            for i = #data.raw.technology["automation-science-pack"].effects, 1, -1 do
                local effect = data.raw.technology["automation-science-pack"]
                                   .effects[i]
                if effect.type == "unlock-recipe" and effect.recipe == "lab" then
                    table.remove(data.raw.technology["automation-science-pack"]
                                     .effects, i)
                    break
                end
            end
        end
    end

    -- 修复 wood-logistics 的问题
    if mods["wood-logistics"] then
        -- 修复配方的问题
        -- 修复 bob-burner-lab 的问题
        if data.raw.recipe["bob-burner-lab"] then
            table.insert(data.raw.recipe["bob-burner-lab"].ingredients, {
                type = "item",
                name = "wood-transport-belt",
                amount = 4
            })
        end
    end

    -- 修复科技的问题
    -- 修复 bob-electricity 的问题
    if data.raw.technology["bob-electricity"] then
        for i = #data.raw.technology["bob-electricity"].effects, 1, -1 do
            local effect = data.raw.technology["bob-electricity"].effects[i]
            if effect.type == "unlock-recipe" and
                (effect.recipe == "copper-cable" or effect.recipe ==
                    "lighted-small-electric-pole") then
                table.remove(data.raw.technology["bob-electricity"].effects, i)
            end
        end
    end

    -- 修复配方的问题
    -- 修复 bob-burner-lab 的问题
    if data.raw.recipe["bob-burner-lab"] then
        table.insert(data.raw.recipe["bob-burner-lab"].ingredients,
                     {type = "item", name = "burner-inserter", amount = 4})
    end
end

-- 修复实体的问题
-- 修复 transport-belt 的问题
if data.raw["transport-belt"] then
    for _, item in pairs(data.raw["transport-belt"]) do
        if item.speed then item.speed = item.speed * 2 end
    end
end

-- 修复 underground-belt 的问题
if data.raw["underground-belt"] then
    for _, item in pairs(data.raw["underground-belt"]) do
        if item.speed then item.speed = item.speed * 2 end
    end
end

-- 修复 loader 的问题
if data.raw["loader"] then
    for _, item in pairs(data.raw["loader"]) do
        if item.speed then item.speed = item.speed * 2 end
    end
end

-- 修复 splitter 的问题
if data.raw["splitter"] then
    for _, item in pairs(data.raw["splitter"]) do
        if item.speed then item.speed = item.speed * 2 end
    end
end

-- 修复 inserter 的问题
if data.raw["inserter"] then
    for _, item in pairs(data.raw["inserter"]) do
        if item.rotation_speed then
            item.rotation_speed = item.rotation_speed * 1.5
        end
    end
end

-- 修复 underground-belt 的问题
if data.raw["underground-belt"] and
    data.raw["underground-belt"]["underground-belt"] then
    data.raw["underground-belt"]["underground-belt"].max_distance = 10
end

-- 修复 fast-underground-belt 的问题
if data.raw["underground-belt"] and
    data.raw["underground-belt"]["fast-underground-belt"] then
    data.raw["underground-belt"]["fast-underground-belt"].max_distance = 20
end

-- 修复 express-underground-belt 的问题
if data.raw["underground-belt"] and
    data.raw["underground-belt"]["express-underground-belt"] then
    data.raw["underground-belt"]["express-underground-belt"].max_distance = 40
end

-- 修复物品的问题
-- 修复 iron-plate 的问题
if data.raw.item["iron-plate"] then
    data.raw.item["iron-plate"].icon = "__base__/graphics/icons/iron-plate.png"
    data.raw.item["iron-plate"].icon_size = 64
end

-- 修复 copper-plate 的问题
if data.raw.item["copper-plate"] then
    data.raw.item["copper-plate"].icon =
        "__base__/graphics/icons/copper-plate.png"
    data.raw.item["copper-plate"].icon_size = 64
end

-- 自动排序科技效果
if data.raw.technology then
    for _, technology in pairs(data.raw.technology) do
        if technology.effects then
            local unlock_recipes = {}
            local other_effects = {}

            for _, effect in pairs(technology.effects) do
                if effect.type == "unlock-recipe" then
                    table.insert(unlock_recipes, effect)
                else
                    table.insert(other_effects, effect)
                end
            end

            table.sort(unlock_recipes,
                       function(a, b) return a.recipe < b.recipe end)

            technology.effects = other_effects
            for _, effect in ipairs(unlock_recipes) do
                table.insert(technology.effects, effect)
            end
        end
    end
end
