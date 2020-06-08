##########################################################################################
#modloaded agricraft
#priority 100

print("==================== loading mods agricraft.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// seed analyzer
recipes.remove(<agricraft:seed_analyzer>);
recipes.addShaped(<agricraft:seed_analyzer>, [
    [<ore:stickTreatedWood>, <botania:managlasspane>, <ore:stickTreatedWood>],
    [null, <botania:livingrock0slab>, <ore:stickTreatedWood>],
    [<ore:plankTreatedWood>, <botania:livingwood0slab>, <ore:plankTreatedWood>]
]);


##########################################################################################
print("==================== end of mods agricraft.zs ====================");
