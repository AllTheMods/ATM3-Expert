##########################################################################################
#modloaded bloodmagic
#priority 100

import mods.bloodmagic.BloodAltar;
import mods.bloodtransmutation.transmutation;

print("==================== loading mods bloodmagic.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// rudimentary snare
recipes.remove(<bloodmagic:soul_snare>);
recipes.addShaped(<bloodmagic:soul_snare> * 3, [
    [<botania:manaresource:16>, <ic2:itemmisc:53>, <botania:manaresource:16>],
    [<ic2:itemmisc:53>, <astralsorcery:itemusabledust:1>, <ic2:itemmisc:53>],
    [<botania:manaresource:16>, <ic2:itemmisc:53>, <botania:manaresource:16>]
]);

// incense altar
recipes.remove(<bloodmagic:incense_altar>);
recipes.addShaped(<bloodmagic:incense_altar>, [
    [null, <botania:grassseeds:1>, null],
    [<immersiveengineering:material:18>, <bloodmagic:slate:1>, <immersiveengineering:material:18>],
    [<ore:plankWood>, <bloodmagic:slate:1>, <ore:plankWood>]
]);


### BLOOD ALTAR ###

// blank slate
BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.addRecipe(<bloodmagic:slate>, <botania:livingrock:4>, 0, 1000, 25, 5);

// crystallized blood pile | ContentTweaker
BloodAltar.addRecipe(<contenttweaker:crystallisedblood>, <botania:manaresource:8>, 3, 30000, 50, 10);

// draconium ingot | Draconic Evolution
BloodAltar.addRecipe(<draconicevolution:draconium_ingot>, <draconicevolution:draconium_dust>, 4, 50000, 25, 5);


### BLOOD TRANSMUTATION ###

// luminessence | Extended Crafting
transmutation.addRecipe(3, 1000, <minecraft:glowstone_dust>, <extendedcrafting:material:7>);

// overgrowth seed | Botania
transmutation.addRecipe(3, 25000, <atmtweaks:item_material:1>, <botania:overgrowthseed> * 3);


##########################################################################################
print("==================== end of mods bloodmagic.zs ====================");
