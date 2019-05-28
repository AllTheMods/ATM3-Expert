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

#universal cable
recipes.remove(<mekanism:transmitter>);



recipes.addShaped("mekbasicuni", <mekanism:transmitter> * 4, [[<ic2:itemcable:9>, <ic2:itemcable:9>, <ic2:itemcable:9>],[<mekanism:enrichedalloy>, <actuallyadditions:item_crystal_empowered>, <mekanism:enrichedalloy>], [<ic2:itemcable:9>, <ic2:itemcable:9>, <ic2:itemcable:9>]]);
