##########################################################################################
#modloaded xnet
#priority 100

print("==================== loading mods xnet.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// controller
recipes.remove(<xnet:controller>);
recipes.addShaped(<xnet:controller>, [
    [<ic2c_extras:refinedironplate>, <thermaldynamics:duct_0:2>, <ic2c_extras:refinedironplate>],
    [<minecraft:comparator>, <superfactorymanager:manager>, <minecraft:comparator>],
    [<ore:dustRedstone>, <thermaldynamics:duct_0:2>, <ore:dustRedstone>]
]);

// blue network cable
recipes.remove(<xnet:netcable>);
recipes.addShaped(<xnet:netcable> * 8, [
    [<minecraft:string>, <ore:dustRedstone>, <minecraft:string>],
    [<ore:dustRedstone>, <superfactorymanager:cable>, <ore:dustRedstone>],
    [<minecraft:string>, <ore:dustRedstone>, <minecraft:string>]
]);

// routing network cable
recipes.remove(<xnet:netcable:4>);
recipes.addShaped(<xnet:netcable:4> * 4, [
    [<minecraft:string>, <ore:blockRedstone>, <minecraft:string>],
    [<ore:blockRedstone>, <superfactorymanager:cable>, <ore:blockRedstone>],
    [<minecraft:string>, <ore:blockRedstone>, <minecraft:string>]
]);


##########################################################################################
print("==================== end of mods xnet.zs ====================");
