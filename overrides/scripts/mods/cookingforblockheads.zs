##########################################################################################
#modloaded cookingforblockheads
#priority 100

print("==================== loading mods cookingforblockheads.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// sink
recipes.remove(<cookingforblockheads:sink>);
recipes.addShaped(<cookingforblockheads:sink>, [
    [<ore:gemDiamond>, <ore:xuUpgradeMining>, <ore:gemDiamond>],
    [<ore:hardenedClay>, <extrautils2:grocket:2>, <ore:hardenedClay>],
    [<ore:hardenedClay>, <openblocks:tank>, <ore:hardenedClay>]
]);


##########################################################################################
print("==================== end of mods cookingforblockheads.zs ====================");
