##########################################################################################
#modloaded thermaldynamics
#priority 100

print("==================== loading mods thermaldynamics.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// leadstone fluxduct
recipes.remove(<thermaldynamics:duct_0>);
recipes.addShaped(<thermaldynamics:duct_0> * 4, [
    [<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>],
    [<actuallyadditions:item_crystal>, <thermalfoundation:glass:3>, <actuallyadditions:item_crystal>],
    [<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>]
]);

// redstone energy fluxduct empty
recipes.remove(<thermaldynamics:duct_0:6>);
recipes.addShaped(<thermaldynamics:duct_0:6> * 3, [
    [null, null, null],
    [<thermalfoundation:material:353>, <thermalfoundation:glass_alloy>, <thermalfoundation:material:353>],
    [null, null, null]
]);


##########################################################################################
print("==================== end of mods thermaldynamics.zs ====================");
