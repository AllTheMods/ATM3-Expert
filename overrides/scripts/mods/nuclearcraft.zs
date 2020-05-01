##########################################################################################
#modloaded nuclearcraft
#priority 100

print("==================== loading mods nuclearcraft.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// copper solenoid
recipes.remove(<nuclearcraft:part:4>);
recipes.addShaped(<nuclearcraft:part:4>, [
    [<thermalfoundation:material:160>, <libvulpes:productsheet:4>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:160>, <libvulpes:productrod:4>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:160>, <libvulpes:productsheet:4>, <thermalfoundation:material:160>]
]);

// servomechanism
recipes.remove(<nuclearcraft:part:7>);
recipes.addShaped(<nuclearcraft:part:7>, [
    [<nuclearcraft:alloy:6>, null, <nuclearcraft:alloy:6>],
    [<thermaldynamics:servo:4>, <mekanism:ingot:1>, <thermaldynamics:servo:4>],
    [<nuclearcraft:alloy:15>, <contenttweaker:planetshard>, <nuclearcraft:alloy:15>]
]);

// electric motor
recipes.remove(<nuclearcraft:part:8>);
recipes.addShaped(<nuclearcraft:part:8>, [
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <botania:manaresource:7>],
    [<nuclearcraft:part:4>, <nuclearcraft:part:4>, <libvulpes:productrod:4>],
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <botania:manaresource:7>]
]);

// machine chassis
recipes.remove(<nuclearcraft:part:10>);
recipes.addShaped(<nuclearcraft:part:10>, [
    [<thermalfoundation:material:160>, <botania:manaresource:7>, <thermalfoundation:material:160>],
    [<nuclearcraft:alloy:1>, <contenttweaker:corruptedstarmetal>, <nuclearcraft:alloy:1>],
    [<thermalfoundation:material:160>, <botania:manaresource:7>, <thermalfoundation:material:160>]
]);

// crystal binder
recipes.remove(<nuclearcraft:compound:1>);
recipes.addShaped(<nuclearcraft:compound:1>, [
    [<extendedcrafting:material:7>, <deepmoblearning:soot_covered_redstone>, <extendedcrafting:material:7>],
    [<appliedenergistics2:material:12>, <contenttweaker:crystallisedblood>, <appliedenergistics2:material:11>],
    [<extendedcrafting:material:7>, <deepmoblearning:soot_covered_redstone>, <extendedcrafting:material:7>]
]);


##########################################################################################
print("==================== end of mods nuclearcraft.zs ====================");
