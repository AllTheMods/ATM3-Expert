##########################################################################################
#modloaded forestry
#priority 100

import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;

print("==================== loading mods forestry.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// sturdy casing
recipes.removeShaped(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>, [
    [null, <thermalfoundation:material:355>, null],
    [<ore:ingotBronze>, <actuallyadditions:block_misc:9>, <ore:ingotBronze>],
    [null, <thermalfoundation:material:355>, null]
]);

// thermionic fabricator
recipes.removeShaped(<forestry:fabricator>);
recipes.addShaped(<forestry:fabricator>, [
    [<thermalfoundation:material:33>, <ore:blockGlass>, <thermalfoundation:material:33>],
    [<ic2:itemmisc:451>, <forestry:sturdy_machine>, <ic2:itemmisc:451>],
    [<thermalfoundation:material:33>, <ore:chestWood>, <thermalfoundation:material:33>]
]);

// carpenter
recipes.removeShaped(<forestry:carpenter>);
recipes.addShaped(<forestry:carpenter>, [
    [<thermalfoundation:material:355>, <ore:blockGlass>, <thermalfoundation:material:355>],
    [<ic2:itemmisc:451>, <forestry:sturdy_machine>, <ic2:itemmisc:451>],
    [<thermalfoundation:material:355>, <ore:blockGlass>, <thermalfoundation:material:355>]
]);

// squeezer
recipes.removeShaped(<forestry:squeezer>);
recipes.addShaped(<forestry:squeezer>, [
    [<thermalfoundation:material:321>, <ore:blockGlass>, <thermalfoundation:material:321>],
    [<ic2:itemmisc:451>, <forestry:sturdy_machine>, <ic2:itemmisc:451>],
    [<thermalfoundation:material:321>, <ore:blockGlass>, <thermalfoundation:material:321>]
]);

// centrifuge
recipes.removeShaped(<forestry:centrifuge>);
recipes.addShaped(<forestry:centrifuge>, [
    [<thermalfoundation:material:320>, <ore:blockGlass>, <thermalfoundation:material:320>],
    [<ic2:itemmisc:451>, <forestry:sturdy_machine>, <ic2:itemmisc:451>],
    [<thermalfoundation:material:320>, <ore:blockGlass>, <thermalfoundation:material:320>]
]);

// still
recipes.remove(<forestry:still>);
recipes.addShaped(<forestry:still>, [
    [<ic2:itemmisc:257>, <ic2c_extras:stonedustblock>, <ic2:itemmisc:257>],
    [<ic2:itemmisc:257>, <forestry:sturdy_machine>, <ic2:itemmisc:257>],
    [<ic2:itemmisc:257>, <ic2c_extras:stonedustblock>, <ic2:itemmisc:257>]
]);


### CARPENTER ###

// basic circuit board
Carpenter.removeRecipe(<forestry:chipsets>.withTag({T: 0 as short}));
Carpenter.addRecipe(<forestry:chipsets>.withTag({T: 0 as short}), [
    [<actuallyadditions:item_crystal>, <immersiveengineering:material:26>, <actuallyadditions:item_crystal>],
    [<forestry:thermionic_tubes:1>, <ic2c_extras:refinedironplate>, <forestry:thermionic_tubes:1>],
    [<actuallyadditions:item_crystal>, <contenttweaker:manadiamondplate>, <actuallyadditions:item_crystal>]
], 100, <liquid:soldering_alloy> * 250);

// enhanced circuit board
Carpenter.removeRecipe(<forestry:chipsets:1>.withTag({T: 1 as short}));
Carpenter.addRecipe(<forestry:chipsets:1>.withTag({T: 1 as short}), [
    [<actuallyadditions:item_crystal>, <immersiveengineering:material:26>, <actuallyadditions:item_crystal>],
    [<forestry:thermionic_tubes:2>, <ic2c_extras:refinedironplate>, <forestry:thermionic_tubes:2>],
    [<actuallyadditions:item_crystal>, <ore:plateBronze>, <actuallyadditions:item_crystal>]
], 100, <liquid:soldering_alloy> * 250);

// refined circuit board
Carpenter.removeRecipe(<forestry:chipsets:2>.withTag({T: 2 as short}));
Carpenter.addRecipe(<forestry:chipsets:2>.withTag({T: 2 as short}), [
    [<actuallyadditions:item_crystal>, <immersiveengineering:material:26>, <actuallyadditions:item_crystal>],
    [<forestry:thermionic_tubes:3>, <ic2c_extras:refinedironplate>, <forestry:thermionic_tubes:3>],
    [<actuallyadditions:item_crystal>, <ore:plateIron>, <actuallyadditions:item_crystal>]
], 100, <liquid:soldering_alloy> * 250);

// intricate circuit board
Carpenter.removeRecipe(<forestry:chipsets:3>.withTag({T: 3 as short}));
Carpenter.addRecipe(<forestry:chipsets:3>.withTag({T: 3 as short}), [
    [<actuallyadditions:item_crystal>, <immersiveengineering:material:26>, <actuallyadditions:item_crystal>],
    [<forestry:thermionic_tubes:4>, <ic2c_extras:refinedironplate>, <forestry:thermionic_tubes:4>],
    [<actuallyadditions:item_crystal>, <ore:plateGold>, <actuallyadditions:item_crystal>]
], 100, <liquid:soldering_alloy> * 250);


### THERMIONIC FABRICATOR ###

// electron tubes
ThermionicFabricator.removeCast(<forestry:thermionic_tubes:*>);
ThermionicFabricator.addCast(<forestry:thermionic_tubes>, [
    [null, <ore:plateCopper>, null],
    [<actuallyadditions:item_crystal>, <ore:plateCopper>, <actuallyadditions:item_crystal>],
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:1>, [
    [null, <ore:plateTin>, null],
    [<actuallyadditions:item_crystal>, <ore:plateTin>, <actuallyadditions:item_crystal>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:2>, [
    [null, <ore:plateBronze>, null],
    [<actuallyadditions:item_crystal>, <ore:plateBronze>, <actuallyadditions:item_crystal>],
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:3>, [
    [null, <ore:plateIron>, null],
    [<actuallyadditions:item_crystal>, <ore:plateIron>, <actuallyadditions:item_crystal>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:4>, [
    [null, <ore:plateGold>, null],
    [<actuallyadditions:item_crystal>, <ore:plateGold>, <actuallyadditions:item_crystal>],
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:5>, [
    [null, <actuallyadditions:item_crystal:2>, null],
    [<actuallyadditions:item_crystal>, <actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal>],
    [<actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:6>, [
    [null, <ore:dustObsidian>, null],
    [<actuallyadditions:item_crystal>, <ore:dustObsidian>, <actuallyadditions:item_crystal>],
    [<ore:dustObsidian>, <ore:dustObsidian>, <ore:dustObsidian>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:7>, [
    [null, <minecraft:blaze_rod>, null],
    [<actuallyadditions:item_crystal>, <minecraft:blaze_rod>, <actuallyadditions:item_crystal>],
    [<minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_rod>]
], <liquid:glass>*500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:8>, [
    [null, <ore:itemRubber>, null],
    [<actuallyadditions:item_crystal>, <ore:itemRubber>, <actuallyadditions:item_crystal>],
    [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:9>, [
    [null, <ore:dustEmerald>, null],
    [<actuallyadditions:item_crystal>, <ore:dustEmerald>, <actuallyadditions:item_crystal>],
    [<ore:dustEmerald>, <ore:dustEmerald>, <ore:dustEmerald>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:10>, [
    [null, <forestry:apatite>, null],
    [<actuallyadditions:item_crystal>, <forestry:apatite>, <actuallyadditions:item_crystal>],
    [<forestry:apatite>, <forestry:apatite>, <forestry:apatite>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:11>, [
    [null, <ore:dustLapis>, null],
    [<actuallyadditions:item_crystal>, <ore:dustLapis>, <actuallyadditions:item_crystal>],
    [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:12>, [
    [null, <minecraft:ender_eye>, null],
    [<actuallyadditions:item_crystal>, <minecraft:ender_eye>, <actuallyadditions:item_crystal>],
    [<minecraft:ender_eye>, <minecraft:end_stone>, <minecraft:ender_eye>]
], <liquid:glass> * 500);
ThermionicFabricator.addCast(<forestry:thermionic_tubes:13>, [
    [null, <actuallyadditions:item_crystal>, null],
    [<extrautils2:redorchid>, <actuallyadditions:item_crystal>, <extrautils2:redorchid>],
    [<actuallyadditions:item_crystal>, <actuallyadditions:item_crystal>, <actuallyadditions:item_crystal>]
], <liquid:glass> * 500);

// quartz glass | Applied Energistics 2
ThermionicFabricator.addCast(<appliedenergistics2:quartz_glass> * 3, [
    [<botania:quartz:6>, <botania:managlass>, <botania:quartz:1>],
    [<botania:managlass>, <thermalfoundation:glass_alloy>, <botania:managlass>],
    [<botania:quartz:1>, <botania:managlass>, <botania:quartz:6>]
], <liquid:glass> * 250);
ThermionicFabricator.addCast(<appliedenergistics2:quartz_glass> * 2, [
    [null, <ore:dustQuartz>, null],
    [<ore:dustQuartz>, <botania:managlass>, <ore:dustQuartz>],
    [null, <ore:dustQuartz>, null]
], <liquid:glass> * 100);

// advanced circuit | IC2Classic
ThermionicFabricator.addCast(<ic2:itemmisc:452>, [
    [<actuallyadditions:item_crystal_empowered:1>, <ore:dustGlowstone>, <actuallyadditions:item_crystal_empowered>],
    [<ore:dustGlowstone>, <ic2:itemmisc:451>, <ore:dustGlowstone>],
    [<actuallyadditions:item_crystal_empowered>, <ore:dustGlowstone>, <actuallyadditions:item_crystal_empowered:1>]
], <liquid:glass> * 200);

// advanced machine block | IC2Classic
ThermionicFabricator.addCast(<ic2:blockmachinemv>, [
    [<ore:plateSteel>, <ic2:itemmisc:256>, <ore:plateSteel>],
    [<ic2:itemmisc:257>, <ore:circuitAdvanced>, <ic2:itemmisc:257>],
    [<ore:plateSteel>, <ic2:itemmisc:256>, <ore:plateSteel>]
], <liquid:glass> * 200);

// machine frame |RFTools
ThermionicFabricator.addCast(<rftools:machine_frame>, [
    [<contenttweaker:coldironplate>, <thermalfoundation:glass_alloy>, <contenttweaker:coldironplate>],
    [<thermalfoundation:glass_alloy>, <thermalfoundation:material:512>, <thermalfoundation:glass_alloy>],
    [<contenttweaker:coldironplate>, <thermalfoundation:glass_alloy>, <contenttweaker:coldironplate>]
], <liquid: glass> * 400);

// industrium ingot | ATM Tweaks
ThermionicFabricator.addCast(<atmtweaks:item_material:2> * 3, [
    [<thermalfoundation:material:352>, <bloodmagic:slate:2>, <contenttweaker:manasteelplate>],
    [<astralsorcery:itemcraftingcomponent:1>, <appliedenergistics2:material:43>, <astralsorcery:itemcraftingcomponent:1>],
    [<contenttweaker:manasteelplate>, <enderio:item_material:77>, <thermalfoundation:material:352>]
], <liquid: glass> * 1000);


##########################################################################################
print("==================== end of mods forestry.zs ====================");
