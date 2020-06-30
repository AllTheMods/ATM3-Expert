##########################################################################################
#modloaded agricraft
#priority 100

print("==================== loading mods agricraft.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// sprinkler
recipes.remove(<agricraft:sprinkler>);
recipes.addShaped(<agricraft:sprinkler>, [
    [null, <ore:slabTreatedWood>, null],
    [<ore:ingotRefinedIron>, <ore:blockIron>, <ore:ingotRefinedIron>],
    [<ore:barsIron>, <minecraft:bucket>, <ore:barsIron>]
]);

// seed analyzer
recipes.remove(<agricraft:seed_analyzer>);
recipes.addShaped(<agricraft:seed_analyzer>, [
    [<ore:stickTreatedWood>, <botania:managlasspane>, <ore:stickTreatedWood>],
    [null, <botania:livingrock0slab>, <ore:stickTreatedWood>],
    [<ore:plankTreatedWood>, <botania:livingwood0slab>, <ore:plankTreatedWood>]
]);


##########################################################################################
print("==================== end of mods agricraft.zs ====================");
