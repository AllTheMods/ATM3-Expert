##########################################################################################
#modloaded quark
#priority 100

print("==================== loading mods quark.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// iron plate
recipes.remove(<quark:iron_plate>);
recipes.addShaped(<quark:iron_plate> * 24, [
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [null, <ore:ingotIron>, null],
    [<ore:ingotIron>, null, <ore:ingotIron>]
]);
recipes.addShapeless(<quark:iron_plate> * 3, [
    <quark:iron_plate_stairs>, <quark:iron_plate_stairs>,
    <quark:iron_plate_stairs>, <quark:iron_plate_stairs>
]);

// polished sandstone
recipes.remove(<quark:sandstone_new>);
recipes.addShaped(<quark:sandstone_new> * 9, [
    [<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>],
    [<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>],
    [<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>]
]);
recipes.addShapeless(<quark:sandstone_new>, [
    <quark:sandstone_smooth_slab>, <quark:sandstone_smooth_slab>
]);


##########################################################################################
print("==================== end of mods quark.zs ====================");
