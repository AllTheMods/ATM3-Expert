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
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.MetalPress;

print("nuclearcraft  changes");

#quick nuclearcraft changes because im in a rush and cant sort through them at this point in time
recipes.remove(<nuclearcraft:part:4>);
recipes.remove(<nuclearcraft:part:8>);
recipes.remove(<nuclearcraft:part:10>);
recipes.addShaped(<nuclearcraft:part:8>, [[<thermalfoundation:material:160>, <thermalfoundation:material:160>, <botania:manaresource:7>],[<nuclearcraft:part:4>, <nuclearcraft:part:4>, <libvulpes:productrod:4>], [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <botania:manaresource:7>]]);
recipes.addShaped(<nuclearcraft:part:4>, [[<thermalfoundation:material:160>, <libvulpes:productsheet:4>, <thermalfoundation:material:160>],[<thermalfoundation:material:160>, <libvulpes:productrod:4>, <thermalfoundation:material:160>], [<thermalfoundation:material:160>, <libvulpes:productsheet:4>, <thermalfoundation:material:160>]]);
recipes.addShaped(<nuclearcraft:part:10>, [[<thermalfoundation:material:160>, <botania:manaresource:7>, <thermalfoundation:material:160>],[<nuclearcraft:alloy:1>, <contenttweaker:corruptedstarmetal>, <nuclearcraft:alloy:1>], [<thermalfoundation:material:160>, <botania:manaresource:7>, <thermalfoundation:material:160>]]);

