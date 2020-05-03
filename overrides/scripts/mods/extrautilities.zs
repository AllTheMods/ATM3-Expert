##########################################################################################
#modloaded extrautils2
#priority 100

print("==================== loading mods extrautilities.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// climograph base unit
recipes.remove(<extrautils2:terraformer:9>);
recipes.addShaped(<extrautils2:terraformer:9>, [
    [<ore:ingotIron>, <ore:gemDiamond>, <ore:ingotIron>],
    [<ore:treeSapling>, <ore:blockSteel>, <ore:treeSapling>],
    [<ore:ingotIron>, <ore:gemDiamond>, <ore:ingotIron>]
]);

// stone drum
recipes.remove(<extrautils2:drum>);
recipes.addShaped(<extrautils2:drum>, [
    [<tconstruct:seared>, <minecraft:stone_pressure_plate>, <tconstruct:seared>],
    [<tconstruct:seared>, <xlfoodmod:bowl>, <tconstruct:seared>],
    [<tconstruct:seared>, <minecraft:stone_pressure_plate>, <tconstruct:seared>]
]);

// iron drum
recipes.remove(<extrautils2:drum:1>);
recipes.addShaped(<extrautils2:drum:1>, [
    [<contenttweaker:coldironingot>, <quark:obsidian_pressure_plate>, <contenttweaker:coldironingot>],
    [<contenttweaker:coldironingot>, <extrautils2:drum>, <contenttweaker:coldironingot>],
    [<contenttweaker:coldironingot>, <quark:obsidian_pressure_plate>, <contenttweaker:coldironingot>]
]);

// sandy glass
recipes.remove(<extrautils2:decorativesolid:4>);
recipes.addShapeless(<extrautils2:decorativesolid:4> * 4, [
    <ore:sand>, <ore:blockGlass>, <ore:blockGlass>, <ore:sand>
]);

// mechanical user
recipes.remove(<extrautils2:user>);
recipes.addShaped(<extrautils2:user>, [
    [<minecraft:lever>, <ic2:itemmisc:451>, <minecraft:lever>],
    [<immersiveengineering:wirecoil:5>, <minecraft:dispenser>, <immersiveengineering:wirecoil:5>],
    [<botania:manaresource>, <actuallyadditions:item_crystal_empowered:4>, <botania:manaresource>]
]);


##########################################################################################
print("==================== end of mods extrautilities.zs ====================");
