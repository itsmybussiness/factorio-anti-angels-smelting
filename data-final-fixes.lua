local OV = angelsmods.functions.OV

OV.remove_prereq( "cobalt-processing", "angels-cobalt-steel-smelting-1" )
--OV.disable_recipe({ "cobalt-oxide", "cobalt-oxide-from-copper", "cobalt-plate", "cobalt-steel-alloy" })

OV.remove_prereq( "silicon-processing", "angels-silicon-smelting-1" )
--OV.disable_recipe({ "bob-silicon-plate" })
OV.remove_prereq( "titanium-processing", "angels-titanium-smelting-1" )
--OV.disable_recipe({ "bob-titanium-plate" })
OV.remove_prereq( "tungsten-processing", "angels-tungsten-smelting-1" )
--OV.disable_recipe({ "tungstic-acid", "tungsten-oxide", "powdered-tungsten", "bob-tungsten-plate" })
OV.remove_prereq( "zinc-processing", "angels-brass-smelting-1" )
--OV.disable_recipe({ "bob-zinc-plate", "brass-alloy", "gunmetal-alloy" })

OV.remove_prereq( "alloy-processing-1", "angels-bronze-smelting-1" )
--OV.disable_recipe({ "bronze-alloy" })

OV.remove_prereq( "nitinol-processing", "angels-nitinol-smelting-1" )
--OV.disable_recipe({ "nitinol-alloy" })

-- EXECUTE OVERRIDES
OV.execute()
	