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
import mods.forestry.ThermionicFabricator;

print("ic2 changes");

val slag = <immersiveengineering:material:7>;
val concrete = <immersiveengineering:stone_decoration:5>;
val bronzeCable = <ic2:itemcable:13>;
val ultraLowCable = <ic2:itemcable:10>;
val hvCable = <ic2:itemcable:5>;
val copperCable = <ic2:itemcable>;
val goldCable = <ic2:itemcable:2>;
val ironPlate = <ore:plateIron>;

#Remove and hide
mods.jei.JEI.removeAndHide(<ic2:blockmachinelv:15>);
mods.jei.JEI.removeAndHide(<ic2:blockgenerator:1>);
mods.jei.JEI.removeAndHide(<ic2:blockgenerator:8>);
mods.jei.JEI.removeAndHide(<ic2:itemcrop>);

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
[<thermalfoundation:material:354>, <botania:managlass>, <thermalfoundation:material:354>], 
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