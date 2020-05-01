##########################################################################################
#modloaded alchemistry
#priority 100

import mods.alchemistry.Combiner;
import mods.alchemistry.Dissolver;
import mods.alchemistry.Liquifier;

print("==================== loading mods alchemistry.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// chemical dissolver
recipes.remove(<alchemistry:chemical_dissolver>);
recipes.addShaped(<alchemistry:chemical_dissolver>, [
    [<actuallyadditions:item_crystal_empowered:3>, <atmtweaks:item_material:2>, <actuallyadditions:item_crystal_empowered:3>],
    [<actuallyadditions:item_crystal_empowered:3>, <minecraft:magma>, <actuallyadditions:item_crystal_empowered:3>],
    [<minecraft:magma>, <teslacorelib:machine_case>, <minecraft:magma>]
]);

// chemical combiner
recipes.remove(<alchemistry:chemical_combiner>);
recipes.addShaped(<alchemistry:chemical_combiner>, [
    [<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>],
    [<atmtweaks:item_material:2>, <botania:rune>, <atmtweaks:item_material:2>],
    [<immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>]
]);

// fusion controller
recipes.remove(<alchemistry:fusion_controller>);
recipes.addShaped(<alchemistry:fusion_controller>, [
    [<alchemistry:ingot:34>, <botania:manaresource:9>, <alchemistry:ingot:34>],
    [<botania:elfglass>, <ic2:itemmisc:452>, <extendedcrafting:storage:2>],
    [<alchemistry:ingot:34>, <botania:manaresource:9>, <alchemistry:ingot:34>]
]);


### CHEMICAL DISSOLVER ###

// diorite | Vanilla
Dissolver.removeRecipe(<minecraft:stone:3>);
Dissolver.removeRecipe(<minecraft:stone:4>);

// ghast tear | Vanilla
Dissolver.addRecipe(<minecraft:ghast_tear>, true, 1, [[8, <alchemistry:element:38> * 8]]);

// certus quartz | Applied Energistics 2
Dissolver.addRecipe(<appliedenergistics2:material>, true, 1, [[55, <alchemistry:element:80> * 12], [95, <alchemistry:element:90> * 16]]);

// elven quartz | Botania
Dissolver.addRecipe(<botania:quartz:5>, true, 1, [[8, <alchemistry:element:74> * 8]]);

// terrasteel | Botania
Dissolver.addRecipe(<botania:manaresource:4>, true, 1, [[1, <alchemistry:element:38> * 12], [3, <alchemistry:element:100> * 12]]);

// near depleted uranium cell | IC2Classic
Dissolver.addRecipe(<ic2:itemmisc:500>, true, 1, [[8, <alchemistry:element:94> * 16]]);

// bitumen | Immersive Petroleum
Dissolver.addRecipe(<immersivepetroleum:material>, true, 1, [[8, <alchemistry:element:38> * 8]]);

// vibrant alloy ingot | EnderIO
Dissolver.addRecipe(<enderio:item_alloy_ingot:2>, true, 1, [[8, <alchemistry:element:107> * 16]]);


### CHEMICAL COMBINER ###

// end steel chassis | EnderIO
Combiner.addRecipe(<enderio:item_material:66> * 2, [<plustic:mirioningot>, <enderio:item_alloy_ingot:8>, <alchemistry:ingot:107>, <enderio:item_alloy_ingot:8>, <enderio:item_material:1> * 2, <enderio:item_alloy_ingot:8>, <alchemistry:ingot:107>, <enderio:item_alloy_ingot:8>, <plustic:mirioningot>]);

// titanium ingot | LibVulpes
Combiner.removeRecipe(<libvulpes:productingot:7>);

// manganese dust | NuclearCraft
Combiner.removeRecipe(<nuclearcraft:dust:11>);

// manganese ingot | NuclearCraft
Combiner.removeRecipe(<nuclearcraft:ingot:11>);


### LIQUIFIER ###

// manganese
Liquifier.removeRecipe(<alchemistry:element:25>);


##########################################################################################
print("==================== end of mods alchemistry.zs ====================");
