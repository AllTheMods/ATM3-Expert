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

print("Draconic changes start here");

#Draconium ingots
recipes.remove(<draconicevolution:draconium_ingot>);
recipes.addShapeless(<draconicevolution:draconium_ingot> * 9, [<draconicevolution:draconium_block>]);
recipes.addShaped(<draconicevolution:draconium_ingot>,
 [[<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>],
 [<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>], 
 [<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>]]);
mods.bloodmagic.BloodAltar.addRecipe(<draconicevolution:draconium_ingot>, <draconicevolution:draconium_dust>, 4, 50000, 25, 5);
