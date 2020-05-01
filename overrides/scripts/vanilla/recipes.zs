##########################################################################################
#modloaded minecraft
#priority 150

print("==================== loading vanilla recipes.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// flint and steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [
    <ic2:itemmisc:53>,<ic2:itemmisc:256>
]);

// fire charge
recipes.remove(<minecraft:fire_charge>);
recipes.addShaped(<minecraft:fire_charge>, [
    [null, <minecraft:stick>, null],
    [<minecraft:stick>, <minecraft:wheat>, <minecraft:stick>],
    [null, <minecraft:stick>, null]
]);

// bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [
    [null, <ic2:itemcable>, null],
    [<thermalfoundation:material:32>, null, <thermalfoundation:material:32>],
    [null, <thermalfoundation:material:32>, null]
]);

// furnace
recipes.removeShaped(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [
    [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>],
    [<ore:blockSeared>, null, <ore:blockSeared>],
    [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]
]);


##########################################################################################
print("==================== end of vanilla recipes.zs ====================");
