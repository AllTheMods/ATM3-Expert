#Immersive engineering
val = BronzeGear <thermalfoundation:material:291>

#Engineer's Hammer
recipes.remove(immersiveengineering:tool);
Recipes.addshaped("CTImmersiveTool", immersiveengineering:tool,
[[null, minecraft:iron_ingot, <thermalfoundation:material:291>], 
 [null, minecraft:stick, minecraft:iron_ingot],
 [minecraft:stick, null, null]]);