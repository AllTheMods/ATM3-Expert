##########################################################################################
#modloaded appliedenergistics2
#priority 100

import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher;

print("==================== loading mods appliedenergistics.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// energy acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
    [<contenttweaker:quartzplate>, <thermalfoundation:material:160>, <contenttweaker:quartzplate>],
    [<actuallyadditions:item_crystal_empowered>, <appliedenergistics2:fluix_block>, <actuallyadditions:item_crystal_empowered>],
    [<contenttweaker:quartzplate>, <thermalfoundation:material:160>, <contenttweaker:quartzplate>]
]);

// me controller
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [
    [<contenttweaker:elementiumprocessor>, <ore:ingotPlutonium>, <contenttweaker:elementiumprocessor>],
    [<appliedenergistics2:material:12>, <actuallyadditions:block_crystal_empowered:5>, <appliedenergistics2:material:12>],
    [<contenttweaker:elementiumprocessor>, <ore:ingotPlutonium>, <contenttweaker:elementiumprocessor>]
]);

// inscriber
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],
    [<contenttweaker:quartzplate>, <minecraft:piston>, <astralsorcery:itemcraftingcomponent:1>],
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>]
]);

// me drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [
    [<thermalfoundation:material:160>, <ore:stickSteel>, <thermalfoundation:material:160>],
    [<contenttweaker:quartzingot>, <rftools:modular_storage>, <contenttweaker:quartzingot>],
    [<thermalfoundation:material:160>, <ore:stickSteel>, <thermalfoundation:material:160>]
]);

// crafting unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShapedMirrored(<appliedenergistics2:crafting_unit>, [
    [<appliedenergistics2:material:7>, <thermalfoundation:material:160>, <appliedenergistics2:material:7>],
    [<contenttweaker:quartzplate>, <contenttweaker:elementiumprocessor>, <contenttweaker:quartzplate>],
    [<appliedenergistics2:material:7>, <thermalfoundation:material:160>, <appliedenergistics2:material:7>]
]);

// 1k me storage component
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [
    [<thaumcraft:ingot>, <ironchest:iron_chest:3>, <thaumcraft:ingot>],
    [<actuallyadditions:item_crystal>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>],
    [<thermalfoundation:material:160>, <thermalfoundation:material:515>, <thermalfoundation:material:160>]
]);

// annihilation core
recipes.remove(<appliedenergistics2:material:44>);
recipes.addShapedMirrored(<appliedenergistics2:material:44>, [
    [null, <appliedenergistics2:material:8>, null],
    [<minecraft:quartz>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>],
    [null, null, null]
]);

// formation core
recipes.remove(<appliedenergistics2:material:43>);
recipes.addShapedMirrored(<appliedenergistics2:material:43>, [
    [null, <appliedenergistics2:material:8>, null],
    [<appliedenergistics2:material>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>],
    [null, null, null]
]);

// wireless receiver
recipes.remove(<appliedenergistics2:wireless_access_point>);
recipes.addShaped(<appliedenergistics2:wireless_access_point>, [
    [null, <appliedenergistics2:material:41>, null],
    [<contenttweaker:quartzingot>, <actuallyadditions:block_item_viewer>, <contenttweaker:quartzingot>],
    [<contenttweaker:quartzingot>, <appliedenergistics2:material:12>, <contenttweaker:quartzingot>]
]);

// fluix pearl
recipes.remove(<appliedenergistics2:material:9>);
recipes.addShaped(<appliedenergistics2:material:9>, [
    [null, <appliedenergistics2:material:12>, null],
    [<appliedenergistics2:material:12>, <rftools:infused_enderpearl>, <appliedenergistics2:material:12>],
    [null, <appliedenergistics2:material:12>, null]
]);

// pattern terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShapeless(<appliedenergistics2:part:340>, [
    <appliedenergistics2:part:360>, <contenttweaker:elementiumprocessor>
]);

// circuit etcher | LazyAE2
recipes.remove(<threng:machine:2>);
recipes.addShaped(<threng:machine:2>, [
    [<appliedenergistics2:material:14>, <enderio:item_material:1>, <appliedenergistics2:material:15>],
    [<contenttweaker:elementiumprocessor>, <threng:material:4>, <contenttweaker:elementiumprocessor>],
    [<appliedenergistics2:material:13>, <teslacorelib:machine_case>, <appliedenergistics2:material:19>]
]);


### FURNACE RECIPES ###

// certus quartz from end ore
furnace.addRecipe(<appliedenergistics2:material> * 4, <netherendingores:ore_end_modded_1:9>, 0.0);

// charged certus quartz from end ore
furnace.addRecipe(<appliedenergistics2:material:1> * 2, <netherendingores:ore_end_modded_1:10>, 0.0);


### INSCRIBER ###

// printed elementium | ContentTweaker
Inscriber.addRecipe(<contenttweaker:elementiumprint>, <botania:manaresource:7>, true, <appliedenergistics2:material:14>);

// elementium processor | ContentTweaker
Inscriber.addRecipe(<contenttweaker:elementiumprocessor>, <ore:dustRedstone>, false, <contenttweaker:elementiumprint>, <appliedenergistics2:material:20>);


### CIRCUIT ETCHER | LAZY AE2 ###

// elementium processor | ContentTweaker
Etcher.addRecipe(<contenttweaker:elementiumprocessor>, <botania:manaresource:7>);


##########################################################################################
print("==================== end of mods appliedenergistics.zs ====================");
