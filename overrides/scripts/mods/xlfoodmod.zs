##########################################################################################
#modloaded xlfoodmod
#priority 100

print("==================== loading mods xlfoodmod.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// dough
recipes.remove(<xlfoodmod:dough>);
recipes.addShapeless(<xlfoodmod:dough>, [
    <minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>, <ore:waterBucket>
]);


##########################################################################################
print("==================== end of mods xlfoodmod.zs ====================");
