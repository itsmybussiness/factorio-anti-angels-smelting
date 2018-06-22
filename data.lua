if angelsmods then
    antiangelsmods = {}
    antiangelsmods.ignore_recipes = {
        "cobalt-oxide",
        "cobalt-oxide-from-copper",
        "cobalt-plate",
        "cobalt-steel-alloy",
        "bob-silicon-plate",
        "bob-titanium-plate",
        "tungstic-acid",
        "tungsten-oxide",
        "powdered-tungsten",
        "bob-tungsten-plate",
        "bob-zinc-plate",
        "brass-alloy",
        "gunmetal-alloy",
        "bronze-alloy",
        "nitinol-alloy"
    }
    antiangelsmods.Set = function(t)
        local s = {}
        for _, v in pairs(t) do s[v] = true end
        return s
    end

    antiangelsmods.contains = function(t, e)
        return t[e]
    end

    antiangelsmods.ignore_recipes = antiangelsmods.Set(antiangelsmods.ignore_recipes)
    local temp = angelsmods.functions.OV.disable_recipe

    angelsmods.functions.OV.disable_recipe = function(recipe)
        if type(recipe) == "table" then
            local shrink_recipe = {}
            for _, rec in pairs(recipe) do
                if not antiangelsmods.contains(antiangelsmods.ignore_recipes, rec) then
                    shrink_recipe[#shrink_recipe+1] = rec
                end
            end
            temp(shrink_recipe)
        else
            if not antiangelsmods.contains(antiangelsmods.ignore_recipes, recipe) then
                temp(recipe)
            end
        end
    end
end