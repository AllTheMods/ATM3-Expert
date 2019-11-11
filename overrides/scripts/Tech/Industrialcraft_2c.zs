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
import mods.jei.JEI.removeAndHide as removal;
import mods.immersiveengineering.BlastFurnace;
import mods.forestry.ThermionicFabricator;
import mods.ic2.MetalFormer;
import mods.ic2.Macerator;
import mods.ic2.ThermalCentrifuge;
import mods.ic2.LiquidFuelGenerator;

print("ic2 changes");
val plutonium = mods.alchemistry.Util.get("plutonium");
val slag = <immersiveengineering:material:7>;
val concrete = <immersiveengineering:stone_decoration:5>;
val bronzeCable = <ic2:itemcable:13>;
val ultraLowCable = <ic2:itemcable:10>;
val hvCable = <ic2:itemcable:5>;
val copperCable = <ic2:itemcable>;
val goldCable = <ic2:itemcable:2>;
val ironPlate = <ore:plateIron>;
val coffeePowder = <ic2:itemmisc:154>;

#liquid fuels
//Arguments: liquid, ticks, powerOutput >> eu per tick
LiquidFuelGenerator.addFluid(<liquid:refinedcanolaoil>, 800, 20);

#flux generators
removal(<ic2:blockcompactedgenerator:6>);
removal(<ic2:blockcompactedgenerator:7>);
removal(<ic2:blockcompactedgenerator:8>);

#fabricator
recipes.remove(<ic2:blockmachinehv:1>);
recipes.addShaped("CTfabricator", <ic2:blockmachinehv:1>, 
 [[<mekanism:polyethene:2>, <ic2:itemmisc:452>, <mekanism:polyethene:2>],
 [<ic2:blockmachinemv>, <mekanism:controlcircuit:1>, <ic2:blockmachinemv>], 
 [<mekanism:polyethene:2>, <ic2:itemmisc:452>, <mekanism:polyethene:2>]]);

#metal bender
recipes.remove(<ic2c_extras:metalbender>);
recipes.addShaped(<ic2c_extras:metalbender>, 
[[<ic2:itemcable:1>, <thermalfoundation:material:256>, <ic2:itemcable:1>],
[<ic2:blockmachinelv:5>, <ic2:blockmachinelv>, <ic2:blockmachinelv:5>], 
[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]]);

#plutonium
mods.alchemistry.Dissolver.addRecipe(<ic2:itemmisc:500>, true, 1,
[[8, plutonium *16]]);

#Remove and hide
mods.jei.JEI.removeAndHide(<ic2:blockmachinelv:15>);
mods.jei.JEI.removeAndHide(<ic2:blockgenerator:1>);
mods.jei.JEI.removeAndHide(<ic2:blockgenerator:8>);
recipes.remove(<ic2:itemmisc:500>);

#Macerator
recipes.remove(<ic2:blockmachinelv:3>);
recipes.addShaped("CtMacerator",<ic2:blockmachinelv:3>,
[[slag, slag, slag],
[concrete, <ic2:blockmachinelv>, concrete],
[null, <ic2:itemmisc:451>, null]]);

#remove cutters
recipes.removeShaped(<ic2:itemtoolcutter>);
recipes.addShaped("CtCutters",<ic2c_extras:wirecutters>,
[[<ore:crystalCertusQuartz>,null,<ore:crystalCertusQuartz>],
[null,<ore:crystalCertusQuartz>,null],
[<ore:ingotTin>,null,<ore:ingotTin>]]);


#electronic circuit 

recipes.remove(<ic2:itemmisc:451>);
recipes.addShaped("CTCircuit", <ic2:itemmisc:451>,
[[<ic2:itemcable:1>,  <ic2:itemcable:1>, <ic2:itemcable:1>],
[<minecraft:redstone>, ironPlate, <minecraft:redstone>],
[<ic2:itemcable:1>, <ic2:itemcable:1>, <ic2:itemcable:1>]]);

#refined iron
furnace.remove(<ic2:itemmisc:53>,<minecraft:iron_ingot>);
furnace.remove(<ic2c_extras:refinedironblock>,<minecraft:iron_block>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
mods.immersiveengineering.BlastFurnace.addRecipe(<ic2:itemmisc:53>,<minecraft:iron_ingot>,2000,<immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<ic2c_extras:refinedironblock>,<minecraft:iron_block>,8000,<immersiveengineering:material:7>);

#machine block
recipes.addShaped("CTbasicframe", <ic2:blockmachinelv>, 
 [[<ic2:itemmisc:53>, <thermalfoundation:material:354>, <ic2:itemmisc:53>],
 [<thermalfoundation:material:354>, <tconstruct:clear_glass>, <thermalfoundation:material:354>], 
 [<ic2:itemmisc:53>, <thermalfoundation:material:354>, <ic2:itemmisc:53>]]);

#advanced circuit
mods.forestry.ThermionicFabricator.addCast(<ic2:itemmisc:452>, 
[[<actuallyadditions:item_crystal_empowered:1>,<minecraft:glowstone_dust>,<actuallyadditions:item_crystal_empowered>], 
[<minecraft:glowstone_dust>,<ic2:itemmisc:451>,<minecraft:glowstone_dust>],
[<actuallyadditions:item_crystal_empowered>,<minecraft:glowstone_dust>,<actuallyadditions:item_crystal_empowered:1>]], 
<liquid: glass> * 200);

#advanced machine casing
recipes.remove(<ic2:blockmachinemv>);
mods.forestry.ThermionicFabricator.addCast(<ic2:blockmachinemv>, 
[[<ore:plateSteel>, <ic2:itemmisc:256>, <ore:plateSteel>],
[<ic2:itemmisc:257>, <ore:circuitAdvanced>, <ic2:itemmisc:257>],
[<ore:plateSteel>, <ic2:itemmisc:256>, <ore:plateSteel>]], 
<liquid: glass> * 200);

#content tweaker plates /MetalFormer.addRollingRecipe(,);
MetalFormer.addRollingRecipe(<contenttweaker:manasteelplate>, <botania:manaresource>);
MetalFormer.addRollingRecipe(<contenttweaker:coldironplate>, <contenttweaker:coldironingot>);
MetalFormer.addRollingRecipe(<contenttweaker:quartzplate>, <contenttweaker:quartzingot>);
MetalFormer.addRollingRecipe(<contenttweaker:manadiamondplate>, <botania:manaresource:2>);
MetalFormer.addRollingRecipe(<thermalfoundation:material:355>, <thermalfoundation:material:163>);
MetalFormer.addRollingRecipe(<thermalfoundation:material:32>, <minecraft:iron_ingot>);
MetalFormer.addRollingRecipe(<thermalfoundation:material:322>, <thermalfoundation:material:130>);
MetalFormer.addRollingRecipe(<thermalfoundation:material:320>, <thermalfoundation:material:128>);
MetalFormer.addRollingRecipe(<thermalfoundation:material:352>, <thermalfoundation:material:160>);
MetalFormer.addRollingRecipe(<thermalfoundation:material:33>, <minecraft:gold_ingot>);
MetalFormer.addRollingRecipe(<thermalfoundation:material:323>, <thermalfoundation:material:131>);
MetalFormer.addRollingRecipe(<thermalfoundation:material:321>, <thermalfoundation:material:129>);

#electric furnace// ic2
recipes.remove(<ic2:blockmachinelv:2>);
recipes.addShapedMirrored("Ctelectricfurnace", <ic2:blockmachinelv:2>, 
 [[<minecraft:redstone>, <ic2:itemmisc:451>, <minecraft:redstone>],
 [<ic2:blockmachinelv:1>, <immersiveengineering:stone_decoration:1>, <ic2:blockmachinelv:1>], 
 [<minecraft:redstone>, <ic2:itemmisc:451>, <minecraft:redstone>]]);

#mixed metal ingots ic2
recipes.remove(<ic2:itemmisc:56>);
recipes.addShaped("CTmixedmetal", <ic2:itemmisc:56> * 2,
 [[<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],
 [<thermalfoundation:material:163>, <thermalfoundation:material:163>, <thermalfoundation:material:163>], 
 [<thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>]]);

#macerator obsidian
Macerator.addRecipe(<thermalfoundation:material:770> *4, <minecraft:obsidian>);

#coffee recipes
recipes.addShapeless("coffee_powder", coffeePowder, [<actuallyadditions:item_coffee_beans>]);
Macerator.addRecipe(coffeePowder * 3, <actuallyadditions:item_coffee_beans>);

#reactor chamber
recipes.remove(<ic2:blockchambers>);
recipes.addShaped(<ic2:blockchambers>, [[null, <ic2:itemmisc:259>, null],[<ic2:itemmisc:259>, <ic2:blockmachinemv>, <ic2:itemmisc:259>], [null, <ic2:itemmisc:259>, null]]);

#crushed and purified crushed ore recipes
ThermalCentrifuge.addRecipe([<thermalfoundation:material>, <ic2c_extras:goldtinydust>], <ore:crushedPurifiedIron>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:1>, <ic2c_extras:silvertinydust>], <ore:crushedPurifiedGold>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:64>, <ic2c_extras:tintinydust>], <ore:crushedPurifiedCopper>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:65>, <ic2c_extras:irontinydust>], <ore:crushedPurifiedTin>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:66>, <ic2c_extras:leadtinydust>], <ore:crushedPurifiedSilver>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:67>, <ic2c_extras:coppertinydust>], <ore:crushedPurifiedLead>, 400);

ThermalCentrifuge.addRecipe([<thermalfoundation:material>, <ic2c_extras:goldtinydust>, <ic2c_extras:stonedust>], <ore:crushedIron>, 600);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:1>, <ic2c_extras:silvertinydust>, <ic2c_extras:stonedust>], <ore:crushedGold>, 600);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:64>, <ic2c_extras:tintinydust>, <ic2c_extras:stonedust>], <ore:crushedCopper>, 600);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:65>, <ic2c_extras:irontinydust>, <ic2c_extras:stonedust>], <ore:crushedTin>, 600);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:66>, <ic2c_extras:leadtinydust>, <ic2c_extras:stonedust>], <ore:crushedSilver>, 600);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:67>, <ic2c_extras:coppertinydust>, <ic2c_extras:stonedust>], <ore:crushedLead>, 600);
