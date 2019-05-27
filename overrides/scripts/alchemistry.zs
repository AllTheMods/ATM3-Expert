val strontium = mods.alchemistry.Util.get("strontium");
val bohrium = mods.alchemistry.Util.get("bohrium");

<alchemistry:element:38>.addTooltip(format.white("Cobmine in fusion multiblock for osmium"));

#remove diorite
mods.alchemistry.Dissolver.removeRecipe(<minecraft:stone:3>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:stone:4>);

mods.alchemistry.Dissolver.addRecipe(<immersivepetroleum:material>, true, 1,
[[8, strontium *8]]);

mods.alchemistry.Dissolver.addRecipe(<minecraft:ghast_tear>, true, 1,
[[8, strontium *8]]);

mods.alchemistry.Dissolver.addRecipe(<enderio:item_alloy_ingot:2>, true, 1,
[[8, bohrium *16]]);


