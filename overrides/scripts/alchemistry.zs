val strontium = mods.alchemistry.Util.get("strontium");

#remove diorite
mods.alchemistry.Dissolver.removeRecipe(<minecraft:stone:3>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:stone:4>);

mods.alchemistry.Dissolver.addRecipe(<immersivepetroleum:material>, true, 1,
[[8, strontium *8]]);

mods.alchemistry.Dissolver.addRecipe(<minecraft:ghast_tear>, true, 1,
[[8, strontium *8]]);


