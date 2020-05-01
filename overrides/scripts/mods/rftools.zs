##########################################################################################
#modloaded rftools
#priority 100

print("==================== loading mods rftools.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// storage scanner
recipes.remove(<rftools:storage_scanner>);
recipes.addShaped(<rftools:storage_scanner>, [
    [<minecraft:ender_pearl>, <contenttweaker:manadiamondplate>, <actuallyadditions:item_crystal>],
    [<contenttweaker:manadiamondplate>, <thermalexpansion:frame>, <contenttweaker:manadiamondplate>],
    [<actuallyadditions:item_crystal>, <contenttweaker:manadiamondplate>, <minecraft:ender_pearl>]
]);

// modular storage
recipes.remove(<rftools:modular_storage>);
recipes.addShaped(<rftools:modular_storage>, [
    [<ore:chest>, <minecraft:quartz>, <ore:chest>],
    [<minecraft:quartz>, <thermalexpansion:frame>, <minecraft:quartz>],
    [<contenttweaker:manadiamondplate>, <minecraft:quartz>, <contenttweaker:manadiamondplate>]
]);

// shape card quarry
recipes.remove(<rftools:shape_card:2>);
recipes.addShaped(<rftools:shape_card:2>, [
    [<thaumcraft:elemental_pick>, <contenttweaker:elementiumprocessor>, <contenttweaker:quartzingot>],
    [<industrialforegoing:laser_drill>, <rftools:shape_card>, <industrialforegoing:laser_drill>],
    [<contenttweaker:quartzingot>, <contenttweaker:elementiumprocessor>, <thaumcraft:elemental_pick>]
]);
recipes.addShaped(<rftools:shape_card:2>, [
    [<ore:dirt>, <ore:dirt>, <ore:dirt>],
    [<ore:dirt>, <rftools:shape_card:5>, <ore:dirt>],
    [<ore:dirt>, <ore:dirt>, <ore:dirt>]
]);

// shape card silk quarry
recipes.remove(<rftools:shape_card:3>);
recipes.addShaped(<rftools:shape_card:3>, [
    [<minecraft:nether_star>, <contenttweaker:corruptedstarmetal>, <minecraft:nether_star>],
    [<contenttweaker:corruptedstarmetal>, <rftools:shape_card:2>, <contenttweaker:corruptedstarmetal>],
    [<minecraft:nether_star>, <contenttweaker:corruptedstarmetal>, <minecraft:nether_star>]
]);
recipes.addShaped(<rftools:shape_card:3>, [
    [<ore:dirt>, <ore:dirt>, <ore:dirt>],
    [<ore:dirt>, <rftools:shape_card:6>, <ore:dirt>],
    [<ore:dirt>, <ore:dirt>, <ore:dirt>]
]);

// shape card fortune quarry
recipes.remove(<rftools:shape_card:4>);
recipes.addShaped(<rftools:shape_card:4>, [
    [<threng:material:13>, <contenttweaker:corruptedstarmetal>, <ic2:itemmisc:264>],
    [<contenttweaker:corruptedstarmetal>, <rftools:shape_card:2>, <contenttweaker:corruptedstarmetal>],
    [<ic2:itemmisc:264>, <contenttweaker:corruptedstarmetal>, <threng:material:13>]
]);


##########################################################################################
print("==================== end of mods rftools.zs ====================");
