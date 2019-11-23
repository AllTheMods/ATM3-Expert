val strontium = mods.alchemistry.Util.get("strontium");
val bohrium = mods.alchemistry.Util.get("bohrium");
val tungsten = mods.alchemistry.Util.get("tungsten");
val fermium = mods.alchemistry.Util.get("fermium");
val thorium = mods.alchemistry.Util.get("thorium");
val mercury = mods.alchemistry.Util.get("mercury");

<alchemistry:element:38>.addTooltip(format.red("Combine in fusion multiblock for osmium"));

#remove diorite
mods.alchemistry.Dissolver.removeRecipe(<minecraft:stone:3>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:stone:4>);

mods.alchemistry.Dissolver.addRecipe(<immersivepetroleum:material>, true, 1,
[[8, strontium *8]]);

mods.alchemistry.Dissolver.addRecipe(<minecraft:ghast_tear>, true, 1,
[[8, strontium *8]]);

mods.alchemistry.Dissolver.addRecipe(<enderio:item_alloy_ingot:2>, true, 1,
[[8, bohrium *16]]);

mods.alchemistry.Dissolver.addRecipe(<botania:quartz:5>, true, 1,
[[8, tungsten *8]]);

mods.alchemistry.Dissolver.addRecipe(<immersivepetroleum:material>, true, 1,
[[8, strontium *8]]);

mods.alchemistry.Dissolver.addRecipe(<botania:manaresource:4>, true, 1,
[[100, strontium *12], [100, fermium *12]]);

mods.alchemistry.Dissolver.addRecipe(<immersivepetroleum:material>, true, 1,
[[100, <appliedenergistics2:material> *16], [55, mercury *12], [60, fermium *12]]);

#dissolver and combiner
recipes.remove(<alchemistry:chemical_dissolver>);
recipes.remove(<alchemistry:chemical_combiner>);
recipes.addShaped(<alchemistry:chemical_dissolver>, [[<actuallyadditions:item_crystal_empowered:3>, <atmtweaks:item_material:2>, <actuallyadditions:item_crystal_empowered:3>],[<actuallyadditions:item_crystal_empowered:3>, <minecraft:magma>, <actuallyadditions:item_crystal_empowered:3>], [<minecraft:magma>, <teslacorelib:machine_case>, <minecraft:magma>]]);
recipes.addShaped(<alchemistry:chemical_combiner>, [[<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>],[<atmtweaks:item_material:2>, <botania:rune>, <atmtweaks:item_material:2>], [<immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>]]);
mods.alchemistry.Combiner.removeRecipe(<nuclearcraft:ingot:11>);

#fusion controller
recipes.remove(<alchemistry:fusion_controller>);
recipes.addShaped("CTalfuscontroller", <alchemistry:fusion_controller>, 
 [[<alchemistry:ingot:34>, <botania:manaresource:9>, <alchemistry:ingot:34>],
 [<botania:elfglass>, <ic2:itemmisc:452>, <extendedcrafting:storage:2>], 
 [<alchemistry:ingot:34>, <botania:manaresource:9>, <alchemistry:ingot:34>]]);

mods.alchemistry.Combiner.removeRecipe(<libvulpes:productingot:7>);