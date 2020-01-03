import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.game.IGame;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.ArcFurnace;

print("Immersive engineering changes");

#Engineer's Hammer
recipes.removeShaped(<immersiveengineering:tool>);
recipes.addShaped("CTImmersiveTool", <immersiveengineering:tool>,
[[null, <minecraft:iron_ingot>, <thermalfoundation:material:24>],
 [null, <minecraft:stick>, <minecraft:iron_ingot>],
 [<minecraft:stick>, null, null]]);

 #Coke Brick
recipes.removeShaped(<immersiveengineering:stone_decoration>);
recipes.addShaped("CtRefined",<immersiveengineering:stone_decoration>,
[[<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>],
[<minecraft:brick>,<tconstruct:seared>,<minecraft:brick>],
[<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>]]);

#Charcoal from coke oven
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);

#plates
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:manadiamondplate>, <botania:manaresource:2>, <immersiveengineering:mold>,1000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:coldironplate>, <contenttweaker:coldironingot>, <immersiveengineering:mold>,1000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:quartzplate>, <contenttweaker:quartzingot>, <immersiveengineering:mold>,1000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:manasteelplate>, <botania:manaresource>, <immersiveengineering:mold>,1000);

#cloche
recipes.remove(<immersiveengineering:metal_device1:13>);
mods.extendedcrafting.TableCrafting.addShaped(0, <immersiveengineering:metal_device1:13>, [
	[<actuallyadditions:block_greenhouse_glass>, <immersiveengineering:material:26>, <actuallyadditions:block_greenhouse_glass>, <immersiveengineering:material:26>, <actuallyadditions:block_greenhouse_glass>],
	[<actuallyadditions:block_greenhouse_glass>, <actuallyadditions:block_greenhouse_glass>, <actuallyadditions:block_greenhouse_glass>, <actuallyadditions:block_greenhouse_glass>, <actuallyadditions:block_greenhouse_glass>],
	[<ic2c_extras:coil>, <atmtweaks:item_material:1>, <immersiveengineering:material:9>, <atmtweaks:item_material:1>, <ic2c_extras:coil>],
	[<immersiveengineering:treated_wood>, <bloodmagic:slate:2>, <bloodmagic:slate:2>, <bloodmagic:slate:2>, <immersiveengineering:treated_wood>],
	[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]
]);

#scaffolding
recipes.remove(<immersiveengineering:metal_decoration1:1>);
recipes.addShaped("CTScaffolding",<immersiveengineering:metal_decoration1:1> * 4,
[[<ic2:itemmisc:53>,<ic2:itemmisc:53>, <ic2:itemmisc:53>],
[null, <immersiveengineering:material:1>,null],
[<immersiveengineering:material:1>,null, <immersiveengineering:material:1>]]);

#iron component
recipes.remove(<immersiveengineering:material:8>);
recipes.addShaped("CTIronComp",<immersiveengineering:material:8>,
[[<ic2c_extras:refinedironplate>,null, <ic2c_extras:refinedironplate>],
[null, <ore:ingotCopper>,null],
[<ic2c_extras:refinedironplate>,null, <ic2c_extras:refinedironplate>]]);


#mold recipes
#recipes.addShaped(<immersiveengineering:mold:0>, [[null, <ic2:itemmisc:53>, null],[<ic2:itemmisc:53>, <thermalfoundation:material:163>, <ic2:itemmisc:53>], [null, <ic2:itemmisc:53>, null]]);

#improved blast brick
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.addShaped("CTimprovedblastbrick", <immersiveengineering:stone_decoration:2>,
[[<ic2:itemmisc:11>, <contenttweaker:coldironplate>, <ic2:itemmisc:11>],
[<actuallyadditions:item_misc:5>, <immersiveengineering:stone_decoration:1>, <actuallyadditions:item_misc:5>],
[<ic2:itemmisc:11>, <actuallyadditions:item_misc:5>, <ic2:itemmisc:11>]]);

#reg blast brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped("CTBbrick", <immersiveengineering:stone_decoration:1> * 3,
[[<minecraft:brick>, <ceramics:unfired_clay:5>, <minecraft:brick>],
[<minecraft:brick>, <thermalfoundation:material:163>, <minecraft:brick>],
[<minecraft:brick>, <ceramics:unfired_clay:5>, <minecraft:brick>]]);

#unrefined hot steel
mods.immersiveengineering.BlastFurnace.addRecipe(<contenttweaker:unrefinedhotsteel>, <contenttweaker:quartzingot>, 1000, <thermalfoundation:material:865>);

#Black iron (extendedcrafting)
mods.immersiveengineering.BlastFurnace.addRecipe(<extendedcrafting:material>, <immersiveengineering:material:19>, 1000, <thermalfoundation:material:865>);

#HV capacitor
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:2>,
 [[<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],
 [<thermalfoundation:material:132>, <thermalfoundation:storage:3>, <thermalfoundation:material:132>],
 [<immersiveengineering:treated_wood>, <immersiveengineering:metal_device0:1>, <immersiveengineering:treated_wood>]]);

#MV capacitor
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.addShaped(<immersiveengineering:metal_device0:1>,
 [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
 [<thermalfoundation:material:161>, <actuallyadditions:item_crystal>, <thermalfoundation:material:161>],
 [<immersiveengineering:treated_wood>, <immersiveengineering:metal_device0>, <immersiveengineering:treated_wood>]]);

#Blast Furnace to Arc Furnace Recipes
mods.immersiveengineering.ArcFurnace.addRecipe(<extendedcrafting:material>, <immersiveengineering:material:19>, <thermalfoundation:material:865>, 125, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<ic2:itemmisc:53>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 250, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<ic2c_extras:refinedironblock>, <minecraft:iron_block>, <immersiveengineering:material:7> *4, 1000, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<ic2c_extras:refinedironplate>, <thermalfoundation:material:32>, <immersiveengineering:material:7>, 250, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_material:48> *4, <botania:overgrowthseed>, <enderio:item_material:50> *2, 250, 512);

/*
Light block
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped("CTHeavyBlock",<immersiveengineering:metal_decoration0:5>,
[[<ic2:itemmisc:53>,<immersiveengineering:material:8>, <ic2:itemmisc:53>],
[<minecraft:piston>, <ore:ingotElectrum>,<minecraft:piston>],
[<ic2:itemmisc:53>,<immersiveengineering:material:8>, <ic2:itemmisc:53>]]);

#Heavy block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped("CTLightBlock",<immersiveengineering:metal_decoration0:4>,
[[<ore:ingotSteel>,<immersiveengineering:material:9>, <ore:ingotSteel>],
[<ore:ingotCopper>, <ore:ingotCopper>,<ore:ingotCopper>],
[<ore:ingotSteel>,<immersiveengineering:material:9>, <ore:ingotSteel>]]);
*/
