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
import mods.jei.JEI.removeAndHide;
import mods.immersiveengineering.BlastFurnace;

print("ic2 changes");

val = slag <immersiveengineering:material:7>
val = concrete <immersiveengineering:stone_decoration:5>
val bronzeCable= <ic2:itemcable:13>;
val ultraLowCable = <ic2:itemcable:10>;
val hvCable = <ic2:itemcable:5>;
val copperCable = <ic2:itemcable>;
val goldCable = <ic2:itemcable:2>;

#Stone macerator recipe
mods.jei.JEI.removeAndHide(<ic2:blockmachinelv:15>);

#Macerator
recipes.remove(<ic2:blockmachinelv:3>);
recipes.addshaped(<<ic2:blockmachinelv:3>,
[[slag, slag, slag],
[concrete, <ic2:blockmachinelv>, concrete],
[null, <ic2:itemmisc:451>, null]]);

#remove cutters
recipes.removeShaped(<ic2:itemtoolcutter>);
recipes.addShaped("CtCutters",<ic2:itemtoolcutter>,
[[<ore:crystalCertusQuartz>,null,<ore:crystalCertusQuartz>],
[null,<ore:crystalCertusQuartz>,null],
[<ore:ingotTin>,null,<ore:ingotTin>]]);

#add cables
recipes.addShaped("CtBronzeCable",bronzeCable * 2,
[[<ore:ingotBronze>,<ic2:itemtoolcutter>]]);

recipes.addShaped("CtUltraLow",ultraLowCable * 4,
[[<ore:ingotTin>,<ic2:itemtoolcutter>]]);

recipes.addShaped("CtHvCable",hvCable * 1,
[[<ore:ingotRefinedIron>,<ic2:itemtoolcutter>]]);

recipes.addShaped("CtCopperCable",copperCable * 3,
[[<ore:ingotCopper>,<ic2:itemtoolcutter>]]);

recipes.addShaped("CtGoldCable",goldCable * 2,
[[<ore:ingotGold>,<ic2:itemtoolcutter>]]);

#electronic circuit 

recipes.remove(<ic2:itemmisc:451>);
recipes.addShaped("CTCircuit", <ic2:itemmisc:451>,
[[copperCable,  copperCable, copperCable],
[minecraft:redstone, plateIron, minecraft:redsone],
[copperCable, copperCable, copperCable]]);

#refined iron
furnace.remove(<ic2:itemmisc:53>,<minecraft:iron_ingot>);
furnace.remove(<ic2c_extras:refinedironblock>,<minecraft:iron_block>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
mods.immersiveengineering.BlastFurnace.addRecipe(<ic2:itemmisc:53>,<minecraft:iron_ingot>,2000,<immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<ic2c_extras:refinedironblock>,<minecraft:iron_block>,8000,<immersiveengineering:material:7>);
