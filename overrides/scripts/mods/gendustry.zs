##########################################################################################
#modloaded gendustry
#priority 100

print("==================== loading mods gendustry.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// bee receptacle
recipes.remove(<gendustry:bee_receptacle>);
recipes.addShaped(<gendustry:bee_receptacle>, [
    [<thermalfoundation:material:163>, <atmtweaks:item_material:2>, <thermalfoundation:material:163>],
    [<atmtweaks:item_material:2>, <ore:blockGlass>, <atmtweaks:item_material:2>],
    [<thermalfoundation:material:163>, <ore:dustRedstone>, <thermalfoundation:material:163>]
]);


##########################################################################################
print("==================== end of mods gendustry.zs ====================");
