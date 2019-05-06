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
import mods.actuallyadditions.Empowerer;

print("Industrial foregoing");

#machine casing
recipes.remove(<teslacorelib:machine_case>);
mods.actuallyadditions.Empowerer.addRecipe(<teslacorelib:machine_case>, <actuallyadditions:block_crystal>, <actuallyadditions:item_crystal:5>, <contenttweaker:quartzplate>, <actuallyadditions:item_crystal:5>, <contenttweaker:quartzplate>, 12500, 400);

