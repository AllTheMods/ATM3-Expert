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
import mods.bloodmagic.BloodAltar;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.InductionSmelter;

print("Draconic changes start here");

#Draconium ingots
recipes.remove(<draconicevolution:draconium_ingot>);
recipes.addShapeless(<draconicevolution:draconium_ingot> * 9, [<draconicevolution:draconium_block>]);
recipes.addShaped(<draconicevolution:draconium_ingot>,
 [[<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>],
 [<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>], 
 [<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>]]);

#Removing draconium ingots from being obtained without blood magic/ adding them to blood magic
mods.bloodmagic.BloodAltar.addRecipe(<draconicevolution:draconium_ingot>, <draconicevolution:draconium_dust>, 4, 50000, 25, 5);
mods.immersiveengineering.ArcFurnace.removeRecipe(<draconicevolution:draconium_ingot>);
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<draconicevolution:draconium_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <draconicevolution:draconium_dust>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <draconicevolution:draconium_ore>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>, <draconicevolution:draconium_dust>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, <draconicevolution:draconium_dust>);
furnace.remove(<draconicevolution:draconium_ingot>);