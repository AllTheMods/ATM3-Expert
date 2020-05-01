##########################################################################################
#modloaded superfactorymanager
#priority 100

print("==================== loading mods superfactorymanager.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// inventory cable
recipes.remove(<superfactorymanager:cable>);
recipes.addShaped(<superfactorymanager:cable> * 2, [
    [<thermalfoundation:glass:3>, <quark:obsidian_pressure_plate>, <thermalfoundation:glass:3>],
    [<thermaldynamics:duct_32>, <modularmachinery:itemmodularium>, <thermaldynamics:duct_16:2>],
    [<thermalfoundation:glass:3>, <quark:obsidian_pressure_plate>, <thermalfoundation:glass:3>]
]);

// machine inventory manager
recipes.remove(<superfactorymanager:manager>);
recipes.addShaped(<superfactorymanager:manager>, [
    [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>],
    [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered:5>],
    [<ore:blockSeared>, <minecraft:piston>, <ore:blockSeared>]
]);


##########################################################################################
print("==================== end of mods superfactorymanager.zs ====================");
