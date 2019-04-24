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

print("Immersive engineering changes");

#Engineer's Hammer
recipes.remove(<immersiveengineering:tool>);
Recipes.addshaped("CTImmersiveTool", <immersiveengineering:tool>,
[[null, <minecraft:iron_ingot>, <thermalfoundation:material:24>], 
 [null, <minecraft:stick>, <minecraft:iron_ingot>],
 [<minecraft:stick>, null, null]]);