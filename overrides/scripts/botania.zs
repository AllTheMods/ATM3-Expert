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

#diluted mana pool
recipes.remove(<botania:pool:2>);
recipes.addShaped("CTdilutepool", <botania:pool:2>,
[[null, null, null],
[<botania:livingrock0slab>, null, <botania:livingrock0slab>],
[<botania:livingrock>, <ic2:itemmisc:256>, <botania:livingrock>]]);