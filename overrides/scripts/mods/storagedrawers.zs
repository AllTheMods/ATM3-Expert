##########################################################################################
#modloaded storagedrawers
#priority 100

print("==================== loading mods storagedrawers.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// drawer controller
recipes.remove(<storagedrawers:controller>);
recipes.addShaped(<storagedrawers:controller>, [
    [<ic2:itemmisc:256>, <actuallyadditions:block_testifi_bucks_green_wall>, <ic2:itemmisc:256>],
    [<randomthings:stableenderpearl>, <thermalexpansion:frame:64>, <randomthings:stableenderpearl>],
    [<actuallyadditions:item_crystal>, <actuallyadditions:block_testifi_bucks_green_wall>, <actuallyadditions:item_crystal>]
]);


##########################################################################################
print("==================== end of mods storagedrawers.zs ====================");
