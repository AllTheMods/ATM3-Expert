##########################################################################################
#modloaded immersiveengineering
#priority 100

import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.MetalPress;

print("==================== loading mods immersiveengineering.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// engineers hammer
recipes.removeShaped(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [
    [null, <minecraft:iron_ingot>, <thermalfoundation:material:24>],
    [null, <minecraft:stick>, <minecraft:iron_ingot>],
    [<minecraft:stick>, null, null]
]);

// steel scaffolding
recipes.remove(<immersiveengineering:metal_decoration1:1>);
recipes.addShaped(<immersiveengineering:metal_decoration1:1> * 4, [
    [<ic2:itemmisc:53>, <ic2:itemmisc:53>, <ic2:itemmisc:53>],
    [null, <immersiveengineering:material:1>, null],
    [<immersiveengineering:material:1>, null, <immersiveengineering:material:1>]
]);

// iron mechanical component
recipes.remove(<immersiveengineering:material:8>);
recipes.addShaped(<immersiveengineering:material:8>, [
    [<ic2c_extras:refinedironplate>, null, <ic2c_extras:refinedironplate>],
    [null, <ore:ingotCopper>, null],
    [<ic2c_extras:refinedironplate>, null, <ic2c_extras:refinedironplate>]
]);

// coke brick
recipes.removeShaped(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration>, [
    [<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>],
    [<minecraft:brick>,<tconstruct:seared>,<minecraft:brick>],
    [<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>]
]);

// blast brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [
    [<minecraft:brick>, <ceramics:unfired_clay:5>, <minecraft:brick>],
    [<minecraft:brick>, <thermalfoundation:material:163>, <minecraft:brick>],
    [<minecraft:brick>, <ceramics:unfired_clay:5>, <minecraft:brick>]
]);

// improved blast brick
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.addShaped(<immersiveengineering:stone_decoration:2>, [
    [<ic2:itemmisc:11>, <contenttweaker:coldironplate>, <ic2:itemmisc:11>],
    [<actuallyadditions:item_misc:5>, <immersiveengineering:stone_decoration:1>, <actuallyadditions:item_misc:5>],
    [<ic2:itemmisc:11>, <actuallyadditions:item_misc:5>, <ic2:itemmisc:11>]
]);

// mv capacitor
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.addShaped(<immersiveengineering:metal_device0:1>, [
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<thermalfoundation:material:161>, <actuallyadditions:item_crystal>, <thermalfoundation:material:161>],
    [<immersiveengineering:treated_wood>, <immersiveengineering:metal_device0>, <immersiveengineering:treated_wood>]
]);

// hv capacitor
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:2>, [
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:132>, <thermalfoundation:storage:3>, <thermalfoundation:material:132>],
    [<immersiveengineering:treated_wood>, <immersiveengineering:metal_device0:1>, <immersiveengineering:treated_wood>]
]);


### ARC FURNACE ###

// black iron ingot | ExtendedCrafting
ArcFurnace.addRecipe(<extendedcrafting:material>, <immersiveengineering:material:19>, <thermalfoundation:material:865>, 125, 512);

// refined iron ingot | IC2Classic
ArcFurnace.addRecipe(<ic2:itemmisc:53>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 250, 512);

// refined iron block | IC2Classic Extras
ArcFurnace.addRecipe(<ic2c_extras:refinedironblock>, <minecraft:iron_block>, <immersiveengineering:material:7> * 4, 1000, 512);

// refined iron plate | IC2Classic Extras
ArcFurnace.addRecipe(<ic2c_extras:refinedironplate>, <thermalfoundation:material:32>, <immersiveengineering:material:7>, 250, 512);

// dark steel ingot | EnderIO
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:160>, <immersiveengineering:material:17>, 200, 512, [<immersiveengineering:material:19>]);

// organic green dye | EnderIO
ArcFurnace.addRecipe(<enderio:item_material:48> *4, <botania:overgrowthseed>, <enderio:item_material:50> * 2, 250, 512);

// draconium ingot | Draconic Evolution
ArcFurnace.removeRecipe(<draconicevolution:draconium_ingot>);

// osmiridium ingot | PlusTic
ArcFurnace.addRecipe(<plustic:osmiridiumingot>, <ore:ingotOsmium>, null, 400, 512, [<ore:ingotIridium>]);

// osgloglas ingot | PlusTic
ArcFurnace.addRecipe(<plustic:osgloglasingot>, <ore:ingotOsmium>, null, 400, 512, [<ore:ingotRefinedObsidian>, <ore:ingotRefinedGlowstone>]);


### BLAST FURNACE ###

// black iron ingot | ExtendedCrafting
BlastFurnace.addRecipe(<extendedcrafting:material>, <immersiveengineering:material:19>, 1000, <thermalfoundation:material:865>);

// cracked hot steel | ContentTweaker
BlastFurnace.addRecipe(<contenttweaker:unrefinedhotsteel>, <contenttweaker:quartzingot>, 1000, <thermalfoundation:material:865>);

// organic green dye | EnderIO
BlastFurnace.addRecipe(<enderio:item_material:48> *4, <botania:overgrowthseed>, 1000, <enderio:item_material:50> *2);

// refined iron ingot | IC2Classic
BlastFurnace.addRecipe(<ic2:itemmisc:53>, <minecraft:iron_ingot>, 2000, <immersiveengineering:material:7>);

// refined iron block | IC2Classic Extras
BlastFurnace.addRecipe(<ic2c_extras:refinedironblock>, <minecraft:iron_block>, 8000, <immersiveengineering:material:7> * 4);

// refined iron plate | IC2Classic Extras
BlastFurnace.addRecipe(<ic2c_extras:refinedironplate>, <thermalfoundation:material:32>, 2000, <immersiveengineering:material:7>);


### COKE OVEN ###

// remove charcoal from coke oven | Vanilla
CokeOven.removeRecipe(<minecraft:coal:1>);


### METAL PRESS ###

// cold iron plate | ContentTweaker
MetalPress.addRecipe(<contenttweaker:coldironplate>, <contenttweaker:coldironingot>, <immersiveengineering:mold>,1000);

// quartz plate | ContentTweaker
MetalPress.addRecipe(<contenttweaker:quartzplate>, <contenttweaker:quartzingot>, <immersiveengineering:mold>,1000);

// mana steel plate | ContentTweaker
MetalPress.addRecipe(<contenttweaker:manasteelplate>, <botania:manaresource>, <immersiveengineering:mold>,1000);

// mana diamond plate | ContentTweaker
MetalPress.addRecipe(<contenttweaker:manadiamondplate>, <botania:manaresource:2>, <immersiveengineering:mold>,1000);


##########################################################################################
print("==================== end of mods immersiveengineering.zs ====================");
