##########################################################################################
#modloaded gamestages
#priority 500

import crafttweaker.item.IIngredient;
import mods.DimensionStages;
import mods.recipestages.Recipes;

print("==================== loading misc stages.zs ====================");
##########################################################################################


### TIER 1 ###

// storage crates
val storageCrates as IIngredient[] = [
    <actuallyadditions:item_chest_to_crate_upgrade>,
    <actuallyadditions:item_small_to_medium_crate_upgrade>,
    <actuallyadditions:item_medium_to_large_crate_upgrade>,
    <actuallyadditions:item_crate_keeper>,
    <actuallyadditions:block_giant_chest_large>,
    <actuallyadditions:block_giant_chest_medium>,
    <actuallyadditions:block_giant_chest>
];
for entry in storageCrates {
    Recipes.setRecipeStage("crates", entry);
}

// scannable
Recipes.setRecipeStageByMod("scanners", "scannable");


### TIER 2 ###

// building gadgets
Recipes.setRecipeStageByMod("gadgets", "buildinggadgets");
Recipes.addShaped("gadgets", <buildinggadgets:destructiontool>, [
    [<actuallyadditions:item_crystal:5>, <minecraft:ender_pearl>, <actuallyadditions:item_crystal:5>],
    [<minecraft:ender_pearl>, <thermalfoundation:material:640>, <minecraft:ender_pearl>],
    [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:5>]
]);
Recipes.addShaped("gadgets", <buildinggadgets:buildingtool>, [
    [<actuallyadditions:item_crystal:5>, <minecraft:gold_ingot>, <actuallyadditions:item_crystal:5>],
    [<actuallyadditions:item_crystal_empowered:1>, <thermalfoundation:material:640>, <actuallyadditions:item_crystal_empowered:1>],
    [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:5>]
]);
Recipes.addShaped("gadgets", <buildinggadgets:exchangertool>, [
    [<actuallyadditions:item_crystal:5>, <minecraft:gold_ingot>, <actuallyadditions:item_crystal:5>],
    [<actuallyadditions:item_crystal_empowered:2>, <thermalfoundation:material:640>, <actuallyadditions:item_crystal_empowered:2>],
    [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:5>]
]);

// compact machines
Recipes.setRecipeStageByMod("compact", "compactmachines");


### TIER 3 ###

// environmental controller
val enviroController as IIngredient[] = [
    <rftools:environmental_controller>,
    <rftools:regeneration_module>,
    <rftools:regenerationplus_module>,
    <rftools:speed_module>,
    <rftools:speedplus_module>,
    <rftools:haste_module>,
    <rftools:hasteplus_module>,
    <rftools:saturation_module>,
    <rftools:saturationplus_module>,
    <rftools:featherfalling_module>,
    <rftools:featherfallingplus_module>,
    <rftools:peaceful_module>,
    <rftools:waterbreathing_module>,
    <rftools:nightvision_module>,
    <rftools:blindness_module>,
    <rftools:weakness_module>,
    <rftools:poison_module>,
    <rftools:slowness_module>,
    <rftools:glowing_module>,
    <rftools:luck_module>,
    <rftools:noteleport_module>
];
for entry in enviroController {
    Recipes.setRecipeStage("control", entry);
}

// spectre energy
Recipes.setRecipeStage("injector", <randomthings:spectreenergyinjector>);


### TIER 4 ###

// infinity booster card
Recipes.addShaped("infinity", <ae2wtlib:infinity_booster_card>, [
    [<threng:material:14>, <mekanism:polyethene:2>, <contenttweaker:elementiumprocessor>],
    [<ic2c_extras:plutoniumingot>, <atmtweaks:item_material:10>, <ic2c_extras:plutoniumingot>],
    [<contenttweaker:elementiumprocessor>, <mekanism:polyethene:2>, <threng:material:14>]
]);

// time in a bottle
Recipes.addShaped("bottledtime", <randomthings:timeinabottle>, [
    [<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:3>],
    [<ore:blockSteel>, <minecraft:clock>, <ore:blockSteel>],
    [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered:4>]
]);


### DIMENSIONAL STAGES ###

// nether
DimensionStages.addDimensionStage("nether", -1);

// end
DimensionStages.addDimensionStage("end", 1);

// atum
DimensionStages.addDimensionStage("atum", 17);


##########################################################################################
print("==================== end of misc stages.zs ====================");
