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

print("xu2 changes");

#crusher and furnace
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));


#angel ring
recipes.remove(<extrautils2:angelring:1>);
recipes.remove(<extrautils2:angelring>);
recipes.remove(<extrautils2:angelring:2>);
recipes.remove(<extrautils2:angelring:3>);
recipes.remove(<extrautils2:angelring:4>);
recipes.remove(<extrautils2:angelring:5>);

#thickened glass 
recipes.removeShapeless(<extrautils2:decorativesolid:4>, []);
recipes.addShapeless(<extrautils2:decorativesolid:4> * 4, [<minecraft:sand>,<minecraft:glass>,<minecraft:glass>,<minecraft:sand>]);

#mechanical user
recipes.remove(<extrautils2:user>);
recipes.addShaped("CTmechuser", <extrautils2:user>, 
[[<minecraft:lever>, <ic2:itemmisc:451>, <minecraft:lever>],
[<immersiveengineering:wirecoil:5>, <minecraft:dispenser>, <immersiveengineering:wirecoil:5>],
[<botania:manaresource>, <actuallyadditions:item_crystal_empowered:4>, <botania:manaresource>]]);
