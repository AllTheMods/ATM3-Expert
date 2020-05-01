##########################################################################################
#modloaded deepmoblearning
#priority 100

print("==================== loading mods deepmoblearning.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// ender dragon data model
recipes.remove(<deepmoblearning:data_model_dragon>);
recipes.addShaped(<deepmoblearning:data_model_dragon>, [
    [<botania:manaresource:4>, <minecraft:dragon_egg>, <botania:manaresource:14>],
    [<ic2:itemmisc:202>, <deepmoblearning:data_model_blank>, <ic2:itemmisc:202>],
    [<botania:manaresource:14>, <minecraft:dragon_egg>, <botania:manaresource:4>]
]);

// wither data model
recipes.remove(<deepmoblearning:data_model_wither>);
recipes.addShaped(<deepmoblearning:data_model_wither>, [
    [<botania:manaresource:4>, <extendedcrafting:storage:2>, <botania:manaresource:14>],
    [<ic2:itemmisc:202>, <deepmoblearning:data_model_blank>, <ic2:itemmisc:202>],
    [<botania:manaresource:14>, <extendedcrafting:storage:2>, <botania:manaresource:4>]
]);

// soot covered machine casing
recipes.remove(<deepmoblearning:machine_casing>);
recipes.addShaped(<deepmoblearning:machine_casing>, [
    [<deepmoblearning:soot_covered_plate>, <contenttweaker:planetshard>, <deepmoblearning:soot_covered_plate>],
    [<ic2:blockmachinemv>, <contenttweaker:corruptedstarmetal>, <libvulpes:advancedmotor>],
    [<deepmoblearning:soot_covered_plate>, <ic2:itemmisc:202>, <deepmoblearning:soot_covered_plate>]
]);

// simulation chamber
recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.addShaped(<deepmoblearning:simulation_chamber>, [
    [<industrialforegoing:mob_imprisonment_tool>, <industrialforegoing:pink_slime_ingot>, <industrialforegoing:mob_imprisonment_tool>],
    [<industrialforegoing:mob_relocator>, <deepmoblearning:machine_casing>, <industrialforegoing:mob_relocator>],
    [<industrialforegoing:mob_imprisonment_tool>, <industrialforegoing:mob_duplicator>, <industrialforegoing:mob_imprisonment_tool>]
]);

// extraction chamber
recipes.remove(<deepmoblearning:extraction_chamber>);
recipes.addShaped(<deepmoblearning:extraction_chamber>, [
    [<ic2:itemscrapbox>, <ic2:itemscrapbox>, <ic2:itemscrapbox>],
    [<contenttweaker:elementiumprocessor>, <deepmoblearning:machine_casing>, <contenttweaker:elementiumprocessor>],
    [<contenttweaker:corruptedstarmetal>, <minecraft:comparator>, <contenttweaker:corruptedstarmetal>]
]);


##########################################################################################
print("==================== end of mods deepmoblearning.zs ====================");
