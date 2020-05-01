##########################################################################################
#modloaded translocators
#priority 100

print("==================== loading mods translocators.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// item translocator
recipes.remove(<translocators:translocator_part>);
recipes.addShaped(<translocators:translocator_part> * 2, [
    [<actuallyadditions:item_crystal>, <minecraft:ender_pearl>, <actuallyadditions:item_crystal>],
    [<ore:ingotIron>, <minecraft:piston>, <ore:ingotIron>],
    [<actuallyadditions:item_crystal>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>]
]);

// liquid translocator
recipes.remove(<translocators:translocator_part:1>);
recipes.addShaped(<translocators:translocator_part:1> * 2, [
    [<actuallyadditions:item_crystal>, <minecraft:ender_eye>, <actuallyadditions:item_crystal>],
    [<ore:ingotIron>, <minecraft:piston>, <ore:ingotIron>],
    [<actuallyadditions:item_crystal>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>]
]);


##########################################################################################
print("==================== end of mods translocators.zs ====================");
