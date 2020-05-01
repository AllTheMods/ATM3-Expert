##########################################################################################
#modloaded simplyjetpacks
#priority 100

print("==================== loading mods simplyjetpacks.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// leather strap
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShapedMirrored(<simplyjetpacks:metaitem:4>, [
    [null, null, null],
    [<minecraft:leather>, <botania:manaresource>, <minecraft:leather>],
    [<minecraft:leather>, <botania:manaresource>, <minecraft:leather>]
]);


##########################################################################################
print("==================== end of mods simplyjetpacks.zs ====================");
