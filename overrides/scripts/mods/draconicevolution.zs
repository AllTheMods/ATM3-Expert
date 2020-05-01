##########################################################################################
#modloaded draconicevolution
#priority 100

print("==================== loading mods draconicevolution.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// draconium ingot
recipes.remove(<draconicevolution:draconium_ingot>);
recipes.addShapeless(<draconicevolution:draconium_ingot> * 9, [
    <draconicevolution:draconium_block>
]);
recipes.addShaped(<draconicevolution:draconium_ingot>, [
    [<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>],
    [<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>],
    [<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>]
]);

// draconic core
recipes.remove(<draconicevolution:draconic_core>);
recipes.addShaped(<draconicevolution:draconic_core>, [
    [<thermalfoundation:material:294>, <botania:manaresource:7>, <contenttweaker:planetshard>],
    [<draconicevolution:draconium_ingot>, <contenttweaker:corruptedstarmetal>, <draconicevolution:draconium_ingot>],
    [<contenttweaker:planetshard>, <ore:ingotThaumium>, <thermalfoundation:material:295>]
]);

// draconium chest
recipes.addShaped(<draconicevolution:draconium_chest>, [
    [<contenttweaker:manadiamondplate>, <minecraft:crafting_table>, <contenttweaker:manadiamondplate>],
    [<ironchest:iron_chest:6>, <thermalexpansion:frame>, <ironchest:iron_chest:6>],
    [<ic2:blockmachinelv:1>, <ic2:blockmachinelv:1>, <ic2:blockmachinelv:1>]
]);


### FURNACE RECIPES ###

// draconium ingot
furnace.remove(<draconicevolution:draconium_ingot>);


##########################################################################################
print("==================== end of mods draconicevolution.zs ====================");
