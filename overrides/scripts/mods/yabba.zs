##########################################################################################
#modloaded yabba
#priority 100

print("==================== loading mods yabba.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// item barrel connector
recipes.remove(<yabba:item_barrel_connector>);
recipes.addShaped(<yabba:item_barrel_connector>, [
    [<ore:plankWood>, <ore:gemDiamond>, <ore:plankWood>],
    [<randomthings:stableenderpearl>,<thermalexpansion:frame:64> , <randomthings:stableenderpearl>],
    [<ore:plankWood>, <ore:gemDiamond>, <ore:plankWood>]
]);


##########################################################################################
print("==================== end of mods yabba.zs ====================");
