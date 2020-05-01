##########################################################################################
#modloaded scannable
#priority 100

print("==================== loading mods scannable.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

#scannables mod recipe changes
recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>.withTag({energy: 5000 as short}), [
    [<ic2:itemmisc:53>, <botania:livingrock:0>, <ic2:itemmisc:53>],
    [<ore:barsIron>, <ore:blockRedstone>, <ore:barsIron>],
    [<ore:ingotGold>, <botania:livingrock:0>, <ore:ingotGold>]
]);


##########################################################################################
print("==================== end of mods scannable.zs ====================");
