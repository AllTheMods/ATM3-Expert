##########################################################################################
#modloaded rustic
#priority 100

print("==================== loading mods rustic.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// advanced alchemical condenser
recipes.remove(<rustic:condenser_advanced>);
recipes.addShaped(<rustic:condenser_advanced>, [
    [null, <minecraft:netherbrick>, null],
    [<minecraft:netherbrick>, <minecraft:bucket>, <minecraft:netherbrick>],
    [<minecraft:netherbrick>, <ore:ingotThaumium>, <minecraft:netherbrick>]
]);


##########################################################################################
print("==================== end of mods rustic.zs ====================");
