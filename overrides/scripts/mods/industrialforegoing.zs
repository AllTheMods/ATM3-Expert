##########################################################################################
#modloaded industrialforegoing
#priority 100

print("==================== loading mods industrialforegoing.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// block breaker
recipes.remove(<industrialforegoing:block_destroyer>);
recipes.addShaped(<industrialforegoing:block_destroyer>, [
    [<industrialforegoing:plastic>, <thermalfoundation:material:288>, <industrialforegoing:plastic>],
    [<minecraft:iron_pickaxe>, <teslacorelib:machine_case>, <minecraft:iron_shovel>],
    [<thermalfoundation:material:24>, <ore:dustRedstone>, <thermalfoundation:material:24>]
]);

// laser base
recipes.remove(<industrialforegoing:laser_base>);
recipes.addShaped(<industrialforegoing:laser_base>, [
    [<contenttweaker:quartzplate>, <contenttweaker:quartzplate>, <contenttweaker:quartzplate>],
    [<contenttweaker:quartzplate>, <teslacorelib:machine_case>, <contenttweaker:quartzplate>],
    [<bloodmagic:slate:2>, <bloodmagic:slate:2>, <bloodmagic:slate:2>]
]);

// laser drill
recipes.remove(<industrialforegoing:laser_drill>);
recipes.addShaped(<industrialforegoing:laser_drill>, [
    [<industrialforegoing:pink_slime_ingot>, <actuallyadditions:item_crystal_empowered>, <industrialforegoing:pink_slime_ingot>],
    [<ore:plateSteel>, <actuallyadditions:block_crystal_empowered:2>, <ore:plateSteel>],
    [<actuallyadditions:item_crystal_empowered>, <astralsorcery:itemcraftingcomponent:1>, <actuallyadditions:item_crystal_empowered>]
]);

// mob crusher
recipes.remove(<industrialforegoing:mob_relocator>);
recipes.addShaped(<industrialforegoing:mob_relocator>, [
    [<industrialforegoing:plastic>, <botania:elementiumsword>, <industrialforegoing:plastic>],
    [<thaumcraft:elemental_sword>, <teslacorelib:machine_case>, <astralsorcery:itemcrystalsword>],
    [<ore:gearEnderium>, <ore:ingotThaumium>, <ore:gearSignalum>]
]);


##########################################################################################
print("==================== end of mods industrialforegoing.zs ====================");
