##########################################################################################
#modloaded computercraft
#priority 100

print("==================== loading mods computercraft.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// mining turtle
recipes.remove(<computercraft:turtle:1>);
recipes.addShaped(<computercraft:turtle:1>, [
    [<ic2:itemmisc:53>, <ic2:itemmisc:53>, <ic2:itemmisc:53>],
    [<ic2:itemmisc:452>, <computercraft:computer:*>, <thaumcraft:elemental_pick>],
    [<ic2:itemmisc:53>, <ic2:itemmisc:53>, <ic2:itemmisc:53>]
]);

// advanced mining turtle
recipes.remove(<computercraft:turtle_advanced>.withTag({leftUpgrade: 5 as short}));
recipes.addShaped(<computercraft:turtle_advanced>.withTag({leftUpgrade: 5 as short}), [
    [<ore:ingotGold>, <actuallyadditions:block_crystal_empowered:5>, <ore:ingotGold>],
    [<ore:ingotGold>, <computercraft:turtle:1>, <ore:ingotGold>],
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
]);


##########################################################################################
print("==================== end of mods computercraft.zs ====================");
