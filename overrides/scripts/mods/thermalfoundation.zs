##########################################################################################
#modloaded thermalfoundation
#priority 100

print("==================== loading mods thermalfoundation.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// steel block reimplementation
recipes.remove(<ore:blockSteel>);
recipes.addShaped(<thermalfoundation:storage_alloy>, [
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

// redstone reception coil
recipes.remove(<thermalfoundation:material:513>);
recipes.addShaped(<thermalfoundation:material:513>, [
    [null, null, <actuallyadditions:item_crystal>],
    [null, <minecraft:gold_ingot>, null],
    [<actuallyadditions:item_crystal>, null, null]
]);

// redstone transmission coil
recipes.remove(<thermalfoundation:material:514>);
recipes.addShaped(<thermalfoundation:material:514>, [
    [null, null, <actuallyadditions:item_crystal>],
    [null, <thermalfoundation:material:130>, null],
    [<actuallyadditions:item_crystal>, null, null]
]);

// redstone conductance coil
recipes.remove(<thermalfoundation:material:515>);
recipes.addShaped(<thermalfoundation:material:515>, [
    [<actuallyadditions:item_crystal>, null, null],
    [null, <thermalfoundation:material:161>, null],
    [null, null, <actuallyadditions:item_crystal>]
]);

// tool casing
recipes.remove(<thermalfoundation:material:640>);
recipes.addShaped(<thermalfoundation:material:640>, [
    [<thermalfoundation:material:353>, <actuallyadditions:block_crystal_empowered>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>, <thermalfoundation:material:353>]
]);

// drill head
recipes.remove(<thermalfoundation:material:656>);
recipes.addShaped(<thermalfoundation:material:656>, [
    [<ic2:itemmisc:303>, <ic2:itemmisc:303>, null],
    [<ic2:itemmisc:303>, <thermalfoundation:material:352>, <ic2:itemmisc:303>],
    [null, <ic2:itemmisc:303>, <thermalfoundation:material:352>]
]);

// saw blade
recipes.remove(<thermalfoundation:material:657>);
recipes.addShaped(<thermalfoundation:material:657>, [
    [null, <ic2:itemmisc:303>, null],
    [<ic2:itemmisc:303>, <thermalfoundation:material:352>, <ic2:itemmisc:303>],
    [null, <ic2:itemmisc:303>, null]
]);

// redstone servo
recipes.remove(<thermalfoundation:material:512>);
recipes.addShaped(<thermalfoundation:material:512>, [
    [<actuallyadditions:item_crystal>, <ore:ingotIron>, <actuallyadditions:item_crystal>],
    [null, <ore:ingotIron>, null],
    [<actuallyadditions:item_crystal>, <ore:ingotIron>, <actuallyadditions:item_crystal>]
]);

// reinforced upgrade kit
recipes.removeShaped(<thermalfoundation:upgrade:1>);
recipes.addShaped(<thermalfoundation:upgrade:1>, [
    [null, <thermalfoundation:material:353>, null],
    [<thermalfoundation:material:353>, <thermalfoundation:material:288>, <thermalfoundation:material:353>],
    [<ic2:itemmisc:451>, <actuallyadditions:item_crystal_empowered>, <ic2:itemmisc:451>]
]);

// wooden gear
recipes.remove(<thermalfoundation:material:22>);
recipes.addShaped(<thermalfoundation:material:22>, [
    [null, <ore:stickWood>, null],
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <ore:stickWood>, null]
]);

// stone gear
recipes.remove(<thermalfoundation:material:23>);
recipes.addShaped(<thermalfoundation:material:23>, [
    [null, <ore:cobblestone>, null],
    [<ore:cobblestone>, <ore:gearWood>, <ore:cobblestone>],
    [null, <ore:cobblestone>, null]
]);
recipes.addShaped(<thermalfoundation:material:23>, [
    [<ore:stickWood>, <ore:cobblestone>, <ore:stickWood>],
    [<ore:cobblestone>, null, <ore:cobblestone>],
    [<ore:stickWood>, <ore:cobblestone>, <ore:stickWood>]
]);

// diamond gear
recipes.remove(<thermalfoundation:material:26>);
recipes.addShaped(<thermalfoundation:material:26>, [
    [null, <ore:gemDiamond>, null],
    [<ore:gemDiamond>, <ore:gearGold>, <ore:gemDiamond>],
    [null, <ore:gemDiamond>, null]
]);

// emerald gear
recipes.addShaped(<thermalfoundation:material:27>, [
    [null, <ore:gemEmerald>, null],
    [<ore:gemEmerald>, <botania:manaresource:4>, <ore:gemEmerald>],
    [null, <ore:gemEmerald>, null]
]);


##########################################################################################
print("==================== end of mods thermalfoundation.zs ====================");
